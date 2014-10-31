Ext.define 'MyApp.view.proxy.Add',
	extend : 'Ext.form.Panel'
	alias : 'widget.proxyadd'
	title: '添加数据库代理配置'
	width: 800
	height: 400
	labelWidth:80
	frame: true
	items:[
		xtype:'fieldset'
		anchor:'100%'
		title: '被代理应用信息'
		layout:'column'
		columnWidth:.1
		border:true
		items:[
			columnWidth:.4 #该列在整行中所占百分比  
			layout:'form' #从上往下布局
			border:true 
			items:[
				xtype:'textfield'
				fieldLabel : '应用名称'
				name:'app_name'
				width: 150
			]
		,
			columnWidth:.4 #该列在整行中所占百分比  
			layout:'form' #从上往下布局
			items: [
				xtype:'textfield'
				fieldLabel : 'ip地址'
				name:'ip'
				width: 300
			]
		,
			columnWidth:.2 #该列在整行中所占百分比  
			layout:'form' #从上往下布局
			items: [
				xtype:'textfield'
				fieldLabel : '服务是否启用'
				name:'is_enable'
				width: 100
			]
		]
	]