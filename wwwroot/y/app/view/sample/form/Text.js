   
Ext.define("iBOSe.view.sample.form.Text",{
    extend: "Ext.form.Panel",
    xtype: "sampletext",
    requires: [
        "iBOSe.view.sample.form.TextController",
        "iBOSe.view.sample.form.TextModel"
    ],

    controller: "sample-form-text",
    viewModel: {
        type: "sample-form-text"
    },
 
    items: [{
    	xtype: 'textfield',
		name: 'email',
		fieldLabel: 'Email',
		allowBlank: false,
		vtype: 'email' 
    },{
    	xtype: 'numberfield',
    	name: 'Count',
    	fieldLabel: 'Count',
    	value: 0,
    	maxValue: 10,
    	minValue: 0
    },{
    	xtype: 'combobox',
    	fieldLabel: 'Choose Month',
    	store: Ext.create('Ext.data.Store', {
    		fields: ['abbr', 'name'],
    		data: [{
    			"abbr":"JAN", "name":"January"
    		},{
    			"abbr":"FEB", "name":"February"
    		},{
    			"abbr":"MAR", "name":"March"
    		},{
    			"abbr":"APR", "name":"April"
    		}]
    	}),
    	queryMode: 'local',
    	displayField: 'name',
    	valueField: 'abbr'
    },{
    	xtype: 'htmleditor',
    	width: 800,
    	height: 200
    },{
    	xtype: 'checkboxgroup',
    	fieldLabel: 'Skills',
    	vertical: true,
    	columns: 1,
    	items: [{
    		boxLabel: 'C++',
    		name: 'rb',
    		inputValue: '1'
    	},{
    		boxLabel: '.Net Framework',
    		name: 'rb',
    		inputValue: '2'
    	},{
    		boxLabel: 'C#',
    		name: 'rb',
    		inputValue: '3'
    	}]
    },{
    	xtype: 'fieldcontainer',
    	fieldLabel: 'Name',
    	layout: 'hbox',
    	combineErrors: true,
    	defaultType: 'textfield',
    	defaults: {
    		hideLabel: true
    	},
    	items: [{
    		name: 'firstName',
    		fieldLabel: 'First Name',
    		flex: 2,
    		emptyText: 'First',
    		allowBlank: false
    	},{
    		name: 'lastName',
    		fieldLabel: 'Last Name',
    		flex: 3,
    		margin: '0 0 0 6',
    		emptyText: 'Last',
    		allowBlank: false
    	}]
    },{
    	xtype: 'radiogroup',
    	fieldLabel: 'Sex',
    	vertical: true,
    	columns: 1,
    	items: [{
    		boxLabel: 'Male',
    		name: 'rb',
    		inputValue: '1'
    	},{
    		boxLabel: 'Female',
    		name: 'rb',
    		inputValue: '2'
    	}]
    },{
    	xtype: 'toolbar',
    	width: 800,
    	items: [{
    		text: 'My Button'
    	},{
    		text: 'Split Button',
    		menu: [{
    			text: 'Item 1'
    		},{
    			text: 'Item 2'
    		},{
    			text: 'Item 3'
    		},{
    			text: 'Menu with divider',
    			tooltip: {
    				text: 'Tooltip info',
    				title: 'Tip Title'
    			},
    			menu: {
    				items: [{
    					text: 'Task 1',
    					handler: 'onItemClick'
    				}, '-', {
    					text: 'Task 2',
    					handler: 'onItemClick'
    				},{
    					text: 'Task 3',
    					handler: 'onItemClick'
    				}]
    			}
    		}]
    	}, '->', 
		{
			xtype: 'textfield',
			name: 'field1',
			emptyText: 'search web site'
		}, '-', 
		'Some Info', 
		{
			xtype: 'tbspacer'
		},{
			name: 'Count',
			xtype: 'numberfield',
			value: 0,
			maxValue: 10,
			minValue: 0,
			width: 60
		}]
    }],
    buttons: [{
    	text: 'Submit',
    	handler: 'onSubmit',
    	name: 'actionsubmit'
    }]
});
