Ext.define 'MyApp.view.main.region.AccordionMainMenu',
	extend : 'Ext.panel.Panel'
	alias: 'widget.mainmenuaccordion'
	title: '系统菜单'
	width: 150
	layout: 
		type : 'accordion'
		animate : true
	initComponent : ->
		@items = []
		menus = [
			text : '配置管理'
			iconCls : ''
			expanded : true
			description : ''
			items : [
				text : '配置列表'
				module : 'Global'
				iconCls : 'fa fa-list'
				view:'proxylist'
			,
				text : '配置查询'
				module : 'Project'
				iconCls : 'fa fa-search'
				view: 'proxysearch'
		]
		,
			text : '日志管理'
			iconCls : ''
			expanded : true
			items : [
				text : '日志列表'
				module : 'Agreement'
				iconCls : 'fa fa-list'
				view: 'loglist'
			,
				text : '日志查询'
				module : 'AgreementPlan'
				iconCls : 'fa fa-search'
				view : 'logsearch'
			]
		]
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
						width: @width
						layout: 'vbox'
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
				)
			@items.push(accpanel)
		@callParent(arguments)
