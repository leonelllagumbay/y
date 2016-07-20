
Ext.define("iBOSe.view.recruitment.applicant.FooterView",{
    extend: "Ext.panel.Panel",
    xtype: "footerview",
    requires: [
        "iBOSe.view.recruitment.applicant.FooterViewController",
        "iBOSe.view.recruitment.applicant.FooterViewModel"
    ],

    controller: "recruitment-applicant-footerview",
    viewModel: {
        type: "recruitment-applicant-footerview"
    },

    title: ' ',
    width: '100%',
	defaults: {
		anchor: '100%',
		padding: '7 0 0 0'
	},
	layout: {
		type: 'vbox',
		align: 'left'
	},
    defaultType: 'textfield',
	initComponent: function() {   
		this.items = [{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'center'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'displayfield',
					height: 120,
					width: 500,
					padding: 7,
					border: 1,
					margin: '10 10 10 50',
					style: {
					    borderStyle: 'solid'
					},
					value: '<p style="padding: 10px 10px 10px 10px;">I certify that the above information is true and correct and hereby authorize the company to verify said information. I understand that any misrepresentation and false information contained herein shall be considered sufficient cause for cancellation of my application or ground for my dismissal anytime during my employment.</p>'
				},{
				    height: 130,
					xtype: 'container',
					layout: {
						type: 'vbox',
						align: 'left'
					},
					defaults: {
						padding: '0 7 0 0'
					},
					items: [{
						xtype: 'radiofield',
						fieldLabel: 'I agree',
						labelAlign: 'top',
						padding: 10,
						checked: true,
						listeners: {
							change: 'onAgreementChange'
						},
						margin: '10 0 0 40',
						name: 'agree'
					},{
						xtype: 'radiofield',
						labelAlign: 'top',
						padding: 10,
						fieldLabel: 'I do not agree',
						margin: '0 0 0 40',
						name: 'agree'
					}]
				}]
			},{
				xtype: 'displayfield',
				id: 'thecaptchaa',
				name: 'mycaptcha',
				padding: '0 0 0 100',
				value: ' -- '
				
			},{
				xtype: 'button',
				text: 'Regenerate captcha',
				action: 'regeneratecaptcha',
				padding: 5,
				margin: 7
			},{
				xtype: 'textfield',
				maxLength: 20,
				padding: '0 0 0 100',
				fieldLabel: 'Type the characters above (no spaces)',
				labelWidth: 260,
				name: 'capchaval',
				allowBlank: false,
				id: 'capchachavalddd',
				vtype: 'captcha'
			},{
				xtype: 'textfield',
				hidden: true,
				maxLength: 20,
				value: ' -- ',
				name: 'chapchacontenttent',
				id: 'chapchacontenttent'
			}]
		
		this.callParent(arguments);
	}
});
