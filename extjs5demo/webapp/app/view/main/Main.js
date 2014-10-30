Ext.define('MyApp.view.main.Main', {
  extend: 'Ext.container.Container',
  requires: ['MyApp.controller.main.MainController', 'MyApp.view.main.MainModel', 'MyApp.view.main.region.AccordionMainMenu'],

  /*
  		uses (被引用的类可以在该类之后才加载)
  		requires (被引用的类必须在该类之前加载)
   */
  uses: ['MyApp.ux.ButtonTransparent', 'MyApp.view.main.region.Center'],
  xtype: 'app-main',
  controller: 'main',
  viewModel: {
    type: 'main'
  },
  layout: {
    type: 'border'
  },
  items: [
    {
      xtype: 'mainmenuaccordion',
      region: 'west',
      width: 250,
      split: true
    }, {
      region: 'center',
      xtype: 'maincenter'
    }
  ],
  initComponent: function() {
    Ext.setGlyphFontFamily('FontAwesome');
    return this.callParent();
  }
});
