Ext.define("iBOSe.view.recruitment.applicant.EducationalBackgroundCollegeView",{
    extend: "Ext.container.Container",
    xtype: "educationalbackgroundcollegeview",
    requires: [],

    width: '100%',
	layout: {
		type: 'hbox',
		align: 'left'
	},
	defaults: {
		padding: '0 7 0 0'
	},
	items: [{
		xtype: 'combobox',
		fieldLabel: 'College*',
		labelAlign: 'top',
		minChars: 1,
		name: 'COLLEGESCHOOL',
		allowBlank: false,
		maxLength: 100,
		store: {
	    	type: 'iboseschoolstore'
	    },
		displayField: 'schoolname',
		valueField: 'schoolcode',
		pageSize: 30,
		flex: 7,
		queryMode: 'remote'
	},{
		xtype: 'combobox',
		name: 'COLLEGEFIELD',
		maxLength: 100,
		fieldLabel: '*',
		labelAlign: 'top',
		store: {
	    	type: 'iboseschoolfieldstore'
	    },
	    displayField: 'schoolname',
		valueField: 'schoolcode',
		minChars: 1,
		forceSelection: true,
		hidden: true,
		pageSize: 30,
		flex: 5
	},{
		xtype: 'textfield',
		name: 'COLLEGELOCATION',
		allowBlank: false,
		maxLength: 100,
		fieldLabel: '*',
		labelAlign: 'top',
		flex: 3
	},{
		xtype: 'combobox',
		fieldLabel: '*',
		labelAlign: 'top',
		minChars: 1,
		name: 'COLLEGECOURSE',
		allowBlank: false,
		maxLength: 100,
		store: {
	    	type: 'iboseschoolcoursestore'
	    },
	    displayField: 'schoolcoursename',
		valueField: 'schoolcoursecode',
		pageSize: 30,
		flex: 5,
		queryMode: 'remote'
	},{
		xtype: 'container',
		flex: 3,
		layout: {
			type: 'hbox',
			align: 'stretch'
		},
		defaults: {
			padding: '0 7 0 0'
		},
		items: [{
			xtype: 'radiofield',
			name: 'COLLEGEISGRAD',
			inputValue: 'Y',
			flex: 1,
			style: {
				marginLeft: 20
			},
			labelAlign: 'top',
			fieldLabel: 'Yes'
		},{
			xtype: 'radiofield',
			name: 'COLLEGEISGRAD',
			inputValue: 'N',
			flex: 1,
			labelAlign: 'top',
			fieldLabel: 'No'
		}]
	},{
		xtype: 'monthfield',
		format: 'F Y',
		name: 'COLLEGEFROM',
		fieldLabel: ' ',
		labelAlign: 'top',
		flex: 3
	},{
		xtype: 'monthfield',
		format: 'F Y',
		fieldLabel: ' ',
		labelAlign: 'top',
		name: 'COLLEGETO',
		flex: 3
	},{
		xtype: 'textfield',
		fieldLabel: ' ',
		labelAlign: 'top',
		name: 'COLLEGEHONORS',
		maxLength: 200,
		flex: 6
	}]
});
