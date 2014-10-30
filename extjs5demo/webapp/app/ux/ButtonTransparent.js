
/*定义了一个背景透明的Button类，继承于Button */
Ext.define('MyApp.ux.ButtonTransparent', {
  extend: 'Ext.button.Button',
  alias: 'widget.buttontransparent',
  initComponent: function() {
    this.listeners = {
      mouseout: function() {
        return this.setTransparent(document.getElementById(this.id));
      },
      mouseover: function() {
        var b;
        b = document.getElementById(this.id);
        b.style.backgroundImage = '';
        b.style.backgroundColor = '';
        return b.style.borderColor = '';
      },
      afterrender: function() {
        return this.setTransparent(document.getElementById(this.id));
      }
    };
    return this.callParent(arguments);
  },
  setTransparent: function(b) {
    b.style.backgroundImage = 'inherit';
    b.style.backgroundColor = 'inherit';
    return b.style.borderColor = 'transparent';
  }
});
