Ext.define 'MyApp.view.main.region.AccordionMainMenu',
	extend : 'Ext.panel.Panel'
	alias: 'widget.mainmenuaccordion'
	title: '系统菜单'
	iconCls : ''
	layout: 
		type : 'accordion'
		animate : true
	viewModel: 'main'
	initComponent : ->
		@items = []
		menus = @getViewModel().get('systemMenu')
		for menugroup in menus
			accpanel = 
				menuAccordion : true
				xtype : 'panel'
				title : menugroup.text
				bodyStyle : 
					padding : '10px'
				layout : 'fit'
				dockedItems : [
						dock : 'left'
						xtype : 'toolbar'
						items : []
				]
				glyph : menugroup.glyph
			for menumodule in menugroup.items
				accpanel.dockedItems[0].items.push(
					xtype : 'buttontransparent'
					textAlign: 'left'
					text : menumodule.text
					iconCls : menumodule.iconCls
					view: menumodule.view
					handler : 'onMainMenuClick'
				)
			@items.push(accpanel)
		@callParent(arguments)
