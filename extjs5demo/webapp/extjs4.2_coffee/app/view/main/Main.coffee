Ext.define 'MyApp.view.main.Main',
	extend: 'Ext.container.Viewport'
	###
		uses (被引用的类可以在该类之后才加载)
		requires (被引用的类必须在该类之前加载)
	###
	uses : ['MyApp.ux.ButtonTransparent','MyApp.view.main.region.Center']
	xtype: 'app-main'
	layout:
		type: 'border'
	items: [
		xtype: 'mainmenuaccordion'
		region: 'west'
		width : 150
		split: true
		collapsible: true
	,
		region: 'center'
		xtype: 'maincenter',
		items:[
			title: 'Tab 1'
			xtype: 'panel'
			html: '<h2>Content appropriate for the current navigation.</h2>'
		]
	]
	initComponent: ->
		Ext.setGlyphFontFamily('FontAwesome')
		this.callParent()
