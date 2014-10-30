Ext.define('MyApp.view.main.region.AccordionMainMenu', {
  extend: 'Ext.panel.Panel',
  alias: 'widget.mainmenuaccordion',
  title: '系统菜单',
  iconCls: '',
  layout: {
    type: 'accordion',
    animate: true
  },
  viewModel: 'main',
  initComponent: function() {
    var accpanel, menugroup, menumodule, menus, _i, _j, _len, _len1, _ref;
    this.items = [];
    menus = this.getViewModel().get('systemMenu');
    for (_i = 0, _len = menus.length; _i < _len; _i++) {
      menugroup = menus[_i];
      accpanel = {
        menuAccordion: true,
        xtype: 'panel',
        title: menugroup.text,
        bodyStyle: {
          padding: '10px'
        },
        layout: 'fit',
        dockedItems: [
          {
            dock: 'left',
            xtype: 'toolbar',
            items: []
          }
        ],
        glyph: menugroup.glyph
      };
      _ref = menugroup.items;
      for (_j = 0, _len1 = _ref.length; _j < _len1; _j++) {
        menumodule = _ref[_j];
        accpanel.dockedItems[0].items.push({
          xtype: 'buttontransparent',
          textAlign: 'left',
          text: menumodule.text,
          iconCls: menumodule.iconCls,
          handler: 'onMainMenuClick'
        });
      }
      this.items.push(accpanel);
    }
    return this.callParent(arguments);
  }
});
