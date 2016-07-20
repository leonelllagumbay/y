
Ext.define("iBOSe.view.recruitment.applicant.SpecialSkillsItemView",{
    extend: "Ext.panel.Panel",
    xtype: "specialskillsitemview",
    requires: [],

    width: '100%',
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	defaults: {
		padding: '0 7 0 0'
	},
	items: [{
		xtype: 'textfield',
		name: 'SPECIALSKILLS',
		maxLength: 255,
		flex: 6
	},{
		xtype: 'numberfield',
		value: 0,
		minValue: 0,
		maxValue: 99,
		name: 'SPECIALSKILLSYEARSP',
		hidden: true,
		flex: 1
	},{
		xtype: 'combobox',
		name: 'SPECIALSKILLSLEVEL',
		maxLength: 35,
		store: {
	    	type: 'iboselevelofexpertisestore'
	    },
		displayField: 'levelofexpertisename',
		valueField: 'levelofexpertisecode',
		flex: 3,
		queryMode: 'remote',
		pageSize: 30
	}]
});
