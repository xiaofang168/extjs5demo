Ext.define 'MyApp.controller.proxy.ProxyController',
	extend: 'Ext.app.ViewController'
	alias: 'controller.proxy'
	requires: ['MyApp.view.proxy.Add']
	addProxySetting: ->
		# 弹出添加配置窗口
		proxyaddwin = Ext.create "Ext.Window",
			modal : true
			width: 500
			height: 400
			region: 'center'
			title: '数据库代理'
			layout: 'column'
			items:[
				xtype: 'proxyadd'
			]
		proxyaddwin.show()