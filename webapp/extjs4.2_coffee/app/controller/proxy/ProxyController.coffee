Ext.define 'MyApp.controller.proxy.ProxyController',
	extend: 'Ext.app.Controller'
	alias: 'controller.proxy'
	views: ['MyApp.view.proxy.Add','MyApp.view.proxy.List']
	init: ->
		console.log 'Add'
		this.control(
				'panel > toolbar > button[action=addProxySetting]' :
					click : @addProxySetting 
		)
	addProxySetting: ->
		# 弹出添加配置窗口
		console.log 'addProxySetting'
		proxyaddwin = Ext.create "MyApp.view.proxy.Add",
			modal : true
			region: 'center'
			floating: true
			closable : true
			draggable: true
		proxyaddwin.show()