Ext.define("iBOSe.view.recruitment.applicant.FamilyBackgroundChildView",{
    extend: "Ext.container.Container",
    xtype: "familybackgroundchildview",
    requires: [],

    layout: {
		type: 'hbox',
		align: 'stretch'
	},
	items: [{
		xtype: 'checkboxfield',
		name: 'CHILDDECEASED',
		uncheckedValue: 'N',
		hidden: true
	},{
		xtype: 'textfield',
		flex: 5,
		name: 'CHILDFULLNAME',
		maxLength: 50,
		padding: '0 7 0 0',
		fieldLabel: 'Child'
	},{
		xtype: 'numberfield',
		flex: 1,
		name: 'CHILDAGE',
		minValue: 0,
		padding: '0 7 0 0',
		maxValue: 99
	},{
		xtype: 'textfield',
		flex: 3,
		name: 'CHILDOCCUPATION',
		padding: '0 7 0 0',
		maxLength: 50
	},{
		xtype: 'textfield',
		flex: 3,
		name: 'CHILDCOMPANY',
		padding: '0 7 0 0',
		maxLength: 50
	},{
		xtype: 'numberfield',
		flex: 2,
		name: 'CHILDCONTACTNO',
		padding: '0 7 0 0',
		maxLength: 15
	},{
		xtype: 'datefield',
		flex: 2,
		name: 'CHILDBIRTHDAY',
		padding: '0 7 0 0',
		allowBlank: true
	}]
});
