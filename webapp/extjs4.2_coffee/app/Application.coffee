Ext.define 'MyApp.Application',
	extend: 'Ext.app.Application'
	name: 'MyApp'
	autoCreateViewport: false
	views: []
	controllers: ['MyApp.controller.main.MainController','MyApp.controller.proxy.ProxyController']
	stores: []
	launch: ->
		Ext.create('MyApp.view.main.Main')
