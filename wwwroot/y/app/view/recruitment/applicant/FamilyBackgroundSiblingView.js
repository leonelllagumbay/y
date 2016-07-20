Ext.define("iBOSe.view.recruitment.applicant.FamilyBackgroundSiblingView",{
    extend: "Ext.container.Container",
    xtype: "familybackgroundsiblingview",
    requires: [],

    layout: {
		type: 'hbox',
		align: 'stretch'
	},
	items: [{
		xtype: 'checkboxfield',
		name: 'BRODECEASED',
		uncheckedValue: 'N',
		padding: '0 7 0 0',
		hidden: true
	},{
		xtype: 'textfield',
		flex: 5,
		name: 'SIBLINGFULLNAME',
		maxLength: 50,
		padding: '0 7 0 0',
		fieldLabel: 'Sibling'
	},{
		xtype: 'numberfield',
		flex: 1,
		name: 'SIBLINGAGE',
		minValue: 0,
		padding: '0 7 0 0',
		maxValue: 99
	},{
		xtype: 'textfield',
		flex: 3,
		name: 'SIBLINGOCCUPATION',
		maxLength: 50,
		padding: '0 7 0 0'
	},{
		xtype: 'textfield',
		flex: 3,
		name: 'SIBLINGCOMPANY',
		padding: '0 7 0 0',
		maxLength: 50
	},{
		xtype: 'numberfield',
		flex: 2,
		name: 'SIBLINGCONTACTNO',
		padding: '0 7 0 0',
		maxLength: 15
	},{
		xtype: 'datefield',
		flex: 2,
		name: 'SIBLINGBIRTHDAY',
		padding: '0 7 0 0',
		allowBlank: true
	}]
});
