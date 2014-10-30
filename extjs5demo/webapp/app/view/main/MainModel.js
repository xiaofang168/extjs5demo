Ext.define('MyApp.view.main.MainModel', {
  extend: 'Ext.app.ViewModel',
  alias: 'viewmodel.main',
  data: {
    name: 'MyApp',
    systemMenu: [
      {
        text: '配置管理',
        iconCls: '',
        expanded: true,
        description: '',
        items: [
          {
            text: '配置列表',
            module: 'Global',
            iconCls: 'fa fa-list'
          }, {
            text: '配置查询',
            module: 'Project',
            iconCls: 'fa fa-search'
          }
        ]
      }, {
        text: '日志管理',
        iconCls: '',
        expanded: true,
        items: [
          {
            text: '日志列表',
            module: 'Agreement',
            iconCls: 'fa fa-list'
          }, {
            text: '日志查询',
            module: 'AgreementPlan',
            iconCls: 'fa fa-search'
          }
        ]
      }
    ]
  },
  getMenus: function() {
    var items, menuData;
    items = [];
    menuData = this.get('systemMenu');
    Ext.Array.each(menuData, function(group) {
      var item, submenu;
      submenu = [];
      Ext.Array.each(group.items, function(menuitem) {
        return submenu.push({
          mainmenu: 'true',
          moduleName: menuitem.module,
          text: menuitem.text,
          iconCls: menuitem.iconCls,
          handler: 'onMainMenuClick'
        });
      });
      item = {
        text: group.text,
        menu: submenu,
        iconCls: group.iconCls
      };
      return items.push(item);
    });
    return items;
  }
});
