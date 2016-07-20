
Ext.define("iBOSe.view.sample.PolarChart",{
	extend: "Ext.container.Container",
    xtype: 'samplepolarchart',
    requires: [
        "iBOSe.view.sample.PolarChartController",
        "iBOSe.view.sample.PolarChartModel"
    ],

    controller: "sample-polarchart",
    viewModel: {
        type: "sample-polarchart"
    },

    layout: {
    	type: 'fit'
    },
    
    items: [{
    	xtype: 'polar',
    	title: 'Polar Chart',
    	height: 500,
    	width: 500,
    	store: {
    		fields: ['sample', 'value'],
    		data: [{
    			sample: '1',
    			value: 100
    		},{
    			sample: '2',
    			value: 250
    		},{
    			sample: '3',
    			value: 175
    		}]
    	},
    	series: [{
    		type: 'pie',
    		xField: 'value',
    		label: {
    			field: 'sample',
    			renderer: function(txt) {
    				return "Sample " + txt;
    			}
    		}
    	}]
    }]
});
