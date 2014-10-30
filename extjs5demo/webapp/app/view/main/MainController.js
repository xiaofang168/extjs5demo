Ext.define('MyApp.controller.main.MainController', {
  extend: 'Ext.app.ViewController',
  requires: ['Ext.MessageBox'],
  alias: 'controller.main',
  onClickButton: function() {
    return Ext.Msg.confirm('Confirm', 'Are you sure?', 'onConfirm', this);
  },
  onConfirm: function(choice) {
    if (choice === 'yes') {
      return this.getView().getViewModel().set('name', "修改后的title");
    }
  },
  onMainMenuClick: function(menuitem) {
    var maincenter;
    maincenter = this.getView().down('maincenter');
    return maincenter.setActiveTab(maincenter.add({
      xtype: 'panel',
      title: menuitem.text,
      closable: true,
      reorderable: true
    }));
  }
});
