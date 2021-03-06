Ext.define 'MyApp.view.proxy.Add',
	extend : 'Ext.form.Panel'
	alias : 'widget.proxyadd'
	title: '添加数据库代理配置'
	width: 800
	height: 400
	frame: true # 渲染蓝色背景色并有边框
	#bodyStyle: 'background-color:#dfe8f5;'
	layout: 'form'
	defaultType: 'textfield'
	fieldDefaults:
		labelSeparator :'：'#分隔符   
		labelWidth: 70
		labelAlign: 'left'
		width:200
		allowBlank : false #是否允许为空   
		blankText : '不允许为空' 
	items:[
		xtype:'fieldset'
		title: '被代理应用信息'
		autoHeight:true
		collapsible: true #是否为可折叠  
		collapsed: false #默认是否折叠  
		layout:'column'
		border:true
		items:[
			columnWidth:.35 #该列在整行中所占百分比 
			xtype: 'container'
			frame: true
			#border:false 
			items:[
				xtype:'textfield'
				fieldLabel:'应用名称'
				name:'app_name'
			,
				xtype:'textfield'
				fieldLabel:'应用名称'
				name:'app_name2'
			]
		,
			columnWidth:.35 #该列在整行中所占百分比
			xtype: 'container'
			frame: true
			#border:false
			items: [
				xtype:'textfield'
				fieldLabel: 'ip地址'
				name:'ip'
			]
		,
			columnWidth:.28 #该列在整行中所占百分比 
			xtype: 'container'
			frame: true
			#border:false
			items: [
				xtype:'textfield'
				fieldLabel:'服务是否启用'
				name:'is_enable'
				labelWidth: 100
				width: 140
			]
		]
	]