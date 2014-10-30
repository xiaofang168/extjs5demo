 Ext.define 'MyApp.view.main.MainModel',
	extend: 'Ext.app.ViewModel'
	alias: 'viewmodel.main'
	data:
		name: 'MyApp'
		systemMenu : [
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
	getMenus : ->
		items = []
		menuData = @get('systemMenu')
		Ext.Array.each menuData, (group)->
			submenu = []
			Ext.Array.each group.items, (menuitem) ->
				submenu.push(
						mainmenu : 'true'
						moduleName : menuitem.module
						text : menuitem.text
						iconCls : menuitem.iconCls
						view: menuitem.view
						handler : 'onMainMenuClick'
					)
			item =
				text : group.text
				menu : submenu
				iconCls : group.iconCls
			items.push(item)
		items
