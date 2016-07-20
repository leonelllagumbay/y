
Ext.define("iBOSe.view.sample.SpaceFillingChart",{
    extend: "Ext.container.Container",
    xtype: 'samplespacefillingchart',
    requires: [
        "iBOSe.view.sample.SpaceFillingChartController",
        "iBOSe.view.sample.SpaceFillingChartModel",
        "Ext.chart.series.Gauge"
    ],

    controller: "sample-spacefillingchart",
    viewModel: {
        type: "sample-spacefillingchart"
    },

    layout: {
    	type: 'fit'
    },
    
    items: [{
    	xtype: 'polar',
    	title: 'Gauge Chart',
    	height: 500,
    	width: 500,
    	store: {
    		fields: ['mph', 'fuel', 'temp', 'rpm'],
    		data: [{
    			mph: 65,
    			fuel: 50,
    			temp: 150,
    			rpm: 6000
    		}]
    	},
    	series: {
    		type: 'gauge',
    		// colors: ['orange', 'blue'],
    		angleField: 'mph',
    		needle: true,
    		donut: 30
    	}
    }]
});
