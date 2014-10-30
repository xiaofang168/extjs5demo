Ext.define 'MyApp.view.proxy.Add',
	extend : 'Ext.panel.Panel'
	alias : 'widget.proxyadd'
	items:[
		xtype:'form'
		title: '添加数据库代理配置'
		defaults:
			labelSeparator :'：'#分隔符   
			labelWidth: 'auto'
			labelAlign : 'left'#标签对齐方式
			width : 'auto' #字段宽度
			fieldStyle: 'text-align: right;'
			allowBlank : false #是否允许为空   
			blankText : '不允许为空'
		items:[
			xtype : 'textfield',   
			fieldLabel : '被代理应用名称'
		,
			xtype : 'textfield'
			fieldLabel : '被代理应用ip地址'
		]
	]