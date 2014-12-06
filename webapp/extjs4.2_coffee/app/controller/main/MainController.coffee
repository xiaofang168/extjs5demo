Ext.define 'MyApp.controller.main.MainController',
	extend: 'Ext.app.Controller'
	views : [
		'MyApp.view.main.Main'
		'MyApp.view.main.region.AccordionMainMenu'
		'MyApp.view.main.region.Center'
	]
	requires:[
		'MyApp.view.main.Main'
	]
	init: ->
		this.control(
				'panel > toolbar > button' :
					click : @onMainMenuClick 
		)
	onClickButton: ->
		Ext.Msg.confirm('Confirm', 'Are you sure?', 'onConfirm', @)
	onConfirm: (choice) ->
		if choice is 'yes' 
			""
	onMainMenuClick:(button) ->
		#maincenter = Ext.ComponentQuery.query('maincenter')[0]
		maincenter = Ext.getCmp('maincenter')
		#console.log view
		maincenter.setActiveTab(maincenter.add(
			xtype : button.view
		))


