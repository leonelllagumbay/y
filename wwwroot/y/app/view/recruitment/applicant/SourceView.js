
Ext.define("iBOSe.view.recruitment.applicant.SourceView",{
    extend: "Ext.panel.Panel",
    xtype: "sourceview",
    requires: [
        "iBOSe.view.recruitment.applicant.SourceViewController",
        "iBOSe.view.recruitment.applicant.SourceViewModel"
    ],

    controller: "recruitment-applicant-sourceview",
    viewModel: {
        type: "recruitment-applicant-sourceview"
    },

    title: 'SOURCE',
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
				xtype: 'displayfield',
				value: 'How did you come to know about this job opening?'
			},{
				xtype: 'radiofield',
				inputValue: 'companysite',
				fieldLabel: 'Company Career Site',
				name: 'SOURCEEMPLOYMENT'
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'radiofield',
					fieldLabel: 'Online',
					inputValue: 'online',
					name: 'SOURCEEMPLOYMENT',
					action: 'online',
					listeners: {
						change: 'onSourceWebSiteChange'
					}
				},{
					xtype: 'textfield',
					fieldLabel: 'Web Site',
					padding: '0 0 0 50',
					maxLength: 100,
					width: 400,
					bind: {
						hidden: '{sourcewebsitesel}'
					},
					name: 'WEBSITE'
				}]
			},{
				xtype: 'radiofield',
				inputValue: 'walkin',
				fieldLabel: 'Walk-in',
				name: 'SOURCEEMPLOYMENT'
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'radiofield',
					fieldLabel: 'Jobfair',
					inputValue: 'jobfair',
					name: 'SOURCEEMPLOYMENT',
					action: 'jobfair',
					listeners: {
						change: 'onSourceJobFairChange'
					}
				},{
					xtype: 'textfield',
					fieldLabel: 'Where',
					padding: '0 0 0 50',
					maxLength: 100,
					style: {
						marginLeft: 25
					},
					bind: {
						hidden: '{sourcejobfairsel}'
					},
					name: 'SOURCEJOBFAIRWHERE'
				},{
					xtype: 'monthfield',
					format: 'F Y',
					padding: '0 0 0 50',
					fieldLabel: 'Date',
					style: {
						marginLeft: 25
					},
					bind: {
						hidden: '{sourcejobfairsel}'
					},
					name: 'SOURCEJOBFAIRDATE'
				}]
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'radiofield',
					inputValue: 'referral',
					fieldLabel: 'Referral',
					name: 'SOURCEEMPLOYMENT',
					action: 'referral',
					listeners: {
						change: 'onSourceReferralChange'
					}
				},{
					xtype: 'textfield',
					maxLength: 30,
					padding: '0 0 0 50',
					fieldLabel: 'Referred by',
					style: {
						marginLeft: 25
					},
					bind: {
						hidden: '{sourcereferralsel}'
					},
					name: 'SOURCEREFERREDBY'
				}]
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'radiofield',
					inputValue: 'other',
					fieldLabel: 'Other',
					name: 'SOURCEEMPLOYMENT',
					action: 'other',
					listeners: {
						change: 'onSourceOtherChange'
					}
				},{
					xtype: 'textfield',
					maxLength: 50,
					padding: '0 0 0 50',
					fieldLabel: 'Specify',
					bind: {
						hidden: '{sourceothersel}'
					},
					style: {
						marginLeft: 25
					},
					name: 'SOURCEOTHERVALUE'
				}]
			}],
			
		this.callParent(arguments);
	}
});
