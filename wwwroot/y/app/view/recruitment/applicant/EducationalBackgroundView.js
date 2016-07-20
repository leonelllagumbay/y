Ext.define("iBOSe.view.recruitment.applicant.EducationalBackgroundView",{
    extend: "Ext.panel.Panel",
    xtype: "educationalbackgroundview",
    requires: [
        "iBOSe.view.recruitment.applicant.EducationalBackgroundViewController",
        "iBOSe.view.recruitment.applicant.EducationalBackgroundViewModel",
        "iBOSe.store.recruitment.applicant.SchoolStore",
        "iBOSe.store.recruitment.applicant.SchoolFieldStore",
        "iBOSe.store.recruitment.applicant.SchoolCourseStore",
        "iBOSe.model.recruitment.applicant.SchoolModel",
        "iBOSe.model.recruitment.applicant.SchoolCourseModel",
        "Ext.ux.form.MonthField",
        "iBOSe.view.recruitment.applicant.EducationalBackgroundCollegeView"
    ],

    controller: "recruitment-applicant-educationalbackgroundview",
    viewModel: {
        type: "recruitment-applicant-educationalbackgroundview"
    },

    title: 'EDUCATIONAL BACKGROUND',
	width: '100%', 
	height: '100%',
	'overflow-y': 'auto',
	'overflow-x': 'hidden',
	collapsible: true,
	defaults: {
		anchor: '100%',
		padding: '7 0 0 0'
	},
    defaultType: 'textfield',
	initComponent: function() {   
		this.items = [{
				xtype: 'panel',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'displayfield',
					value: '<b>Name of School</b>',
					flex: 7  
				},{
					xtype: 'displayfield',
					value: '<b>Field of Study</b>',
					hidden: true,
					flex: 5
				},{
					xtype: 'displayfield',
					value: '<b>Location</b>',
					flex: 3
				},{
					xtype: 'displayfield',
					value: '<b>Course</b>',
					flex: 5
				},{
					xtype: 'displayfield',
					value: '<b>Graduate?</b>',
					flex: 3
				},{
					xtype: 'displayfield',
					value: '<b>From</b>',
					flex: 3
				},{
					xtype: 'displayfield',
					value: '<b>To</b>',
					flex: 3
				},{
					xtype: 'displayfield',
					value: '<b>Honors/Awards</b>',
					flex: 6
				}]
			},{
				xtype: 'container',
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
					fieldLabel: 'Post Graduate',
					labelAlign: 'top',
					id: 'alsdkfjs',
					minChars: 1,
					name: 'POSTGRADSCHOOL',
					maxLength: 100,
					store: {
				    	type: 'iboseschoolstore'
				    },
					displayField: 'schoolname',
					valueField: 'schoolcode',
					pageSize: 20,
					flex: 7,
					queryMode: 'remote'
				},{
					xtype: 'combobox',
					name: 'POSTGRADFIELD',
					maxLength: 100,
					fieldLabel: ' ',
					labelAlign: 'top',
					store: {
				    	type: 'iboseschoolfieldstore'
				    },
					displayField: 'schoolname',
					valueField: 'schoolcode',
					forceSelection: true,
					hidden: true,
					minChars: 1,
					pageSize: 30,
					flex: 5
				},{
					xtype: 'textfield',
					name: 'POSTGRADLOCATION',
					maxLength: 100,
					fieldLabel: ' ',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'combobox',
					fieldLabel: ' ',
					labelAlign: 'top',
					minChars: 1,
					name: 'POSTGRADCOURSE',
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
						name: 'POSTGRADISGRAD',
						inputValue: 'Y',
						flex: 1,
						style: {
							marginLeft: 20
						},
						labelAlign: 'top',
						fieldLabel: 'Yes'
					},{
						xtype: 'radiofield',
						name: 'POSTGRADISGRAD',
						inputValue: 'N',
						flex: 1,
						labelAlign: 'top',
						fieldLabel: 'No'
					}]
				},{
					xtype: 'monthfield',
					format: 'F Y',
					name: 'POSTGRADFROM',
					fieldLabel: ' ',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'monthfield',
					format: 'F Y',
					fieldLabel: ' ',
					labelAlign: 'top',
					name: 'POSTGRADTO',
					flex: 3
				},{
					xtype: 'textfield',
					fieldLabel: ' ',
					labelAlign: 'top',
					maxLength: 200,
					name: 'POSTGRADHONORS',
					flex: 6
				}]
			},{
				xtype: 'educationalbackgroundcollegeview'	
			},{
				xtype: 'container',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'button',
					action: 'addschool',
					text: 'Add school',
					padding: 7,
					margin: 7
				}]
			},{
				xtype: 'container',
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
					fieldLabel: 'Vocational',
					labelAlign: 'top',
					minChars: 1,
					name: 'VOCATIONALSCHOOL',
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
					name: 'VOCATIONALFIELD',
					maxLength: 100,
					fieldLabel: ' ',
					labelAlign: 'top',
					store: {
				    	type: 'iboseschoolfieldstore'
				    },
				    displayField: 'schoolname',
					valueField: 'schoolcode',
					forceSelection: true,
					minChars: 1,
					pageSize: 30,
					hidden: true,
					flex: 5
				},{
					xtype: 'textfield',
					name: 'VOCATIONALLOCATION',
					maxLength: 100,
					fieldLabel: ' ',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'combobox',
					fieldLabel: ' ',
					labelAlign: 'top',
					minChars: 1,
					name: 'VOCATIONALCOURSE',
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
						name: 'VOCATIONALISGRAD',
						inputValue: 'Y',
						flex: 1,
						style: {
							marginLeft: 20
						},
						labelAlign: 'top',
						fieldLabel: 'Yes'
					},{
						xtype: 'radiofield',
						name: 'VOCATIONALISGRAD',
						inputValue: 'N',
						flex: 1,
						labelAlign: 'top',
						fieldLabel: 'No'
					}]
				},{
					xtype: 'monthfield',
					format: 'F Y',
					name: 'VOCATIONALFROM',
					fieldLabel: ' ',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'monthfield',
					format: 'F Y',
					fieldLabel: ' ',
					labelAlign: 'top',
					name: 'VOCATIONALTO',
					flex: 3
				},{
					xtype: 'textfield',
					fieldLabel: ' ',
					labelAlign: 'top',
					name: 'VOCATIONALHONORS',
					maxLength: 200,
					flex: 6
				}]
			},{
				xtype: 'container',
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
					fieldLabel: 'Secondary',
					labelAlign: 'top',
					minChars: 1,
					name: 'SECONDARYSCHOOL',
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
					name: 'SECONDARYFIELD',
					maxLength: 100,
					fieldLabel: ' ',
					labelAlign: 'top',
					store: {
				    	type: 'iboseschoolfieldstore'
				    },
				    displayField: 'schoolname',
					valueField: 'schoolcode',
					minChars: 1,
					forceSelection: true,
					pageSize: 30,
					hidden: true,
					flex: 5
				},{
					xtype: 'textfield',
					name: 'SECONDARYLOCATION',
					maxLength: 100,
					fieldLabel: ' ',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'combobox',
					fieldLabel: ' ',
					labelAlign: 'top',
					minChars: 1,
					name: 'SECONDARYCOURSE',
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
						name: 'SECONDARYISGRAD',
						inputValue: 'Y',
						flex: 1,
						style: {
							marginLeft: 20
						},
						labelAlign: 'top',
						fieldLabel: 'Yes'
					},{
						xtype: 'radiofield',
						name: 'SECONDARYISGRAD',
						inputValue: 'N',
						flex: 1,
						labelAlign: 'top',
						fieldLabel: 'No'
					}]
				},{
					xtype: 'monthfield',
					format: 'F Y',
					name: 'SECONDARYFROM',
					fieldLabel: ' ',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'monthfield',
					format: 'F Y',
					fieldLabel: ' ',
					labelAlign: 'top',
					name: 'SECONDARYTO',
					flex: 3
				},{
					xtype: 'textfield',
					fieldLabel: ' ',
					labelAlign: 'top',
					name: 'SECONDARYHONORS',
					maxLength: 200,
					flex: 6
				}]
			}],
			
		this.callParent(arguments);
	}
});
