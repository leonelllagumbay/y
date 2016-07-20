Ext.define("iBOSe.view.recruitment.applicant.ExtraCurricularItemView",{
    extend: "Ext.container.Container",
    xtype: "extracurricularitemview",
    requires: [],

    width: '100%',
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	items: [{
		xtype: 'textfield',
		padding: '0 7 0 0',
		name: 'EXTRAORGNAME',
		maxLength: 100,
		flex: 1
	},{
		xtype: 'container',
		flex: 1,
		layout: {
			type: 'hbox',
			align: 'stretch'
		},
		items: [{
			xtype: 'monthfield',
		    format: 'F Y',
		    padding: '0 7 0 0',
			name: 'EXTRAORGIDATE',
			emptyText: 'From',
			flex: 1
		},{
			xtype: 'monthfield',
		    format: 'F Y',
		    padding: '0 7 0 0',
			name: 'EXTRAORGIDATE2',
			emptyText: 'To',
			flex: 1
		}]
	},{
		xtype: 'textfield',
		padding: '0 7 0 0',
		name: 'EXTRAORGHIGHPOSHELD',
		maxLength: 50,
		flex: 1
	}]
});
