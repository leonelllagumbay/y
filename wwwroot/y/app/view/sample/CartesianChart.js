
Ext.define("iBOSe.view.sample.CartesianChart",{
    extend: "Ext.container.Container",
    xtype: 'samplecartesianchart',
    requires: [
        "iBOSe.view.sample.CartesianChartController",
        "iBOSe.view.sample.CartesianChartModel",
        "Ext.chart.CartesianChart"
    ],

    controller: "sample-cartesianchart",
    viewModel: {
        type: "sample-cartesianchart"
    },

    layout: {
    	type: 'fit'
    },
    
    
    items: [{
    	xtype: 'cartesian',
    	title: 'Cartesian Chart',
    	height: 500,
    	width: 500,
    	insetPadding: 40,
    	legend: true,
    	store: {
    		fields: ['month', 'sales', 'order'],
    		data: [{
    		    	month: 'Q1',
    		    	sales: 100,
    		    	order: 20
    		},{
		    	month: 'Q2',
		    	sales: 250,
		    	order: 120
		    },{
		    	month: 'Q3',
		    	sales: 75,
		    	order: 40
		    },{
		    	month: 'Q4',
		    	sales: 120,
		    	order: 25
		    }]
    	},
    	axes: [{
    		title: 'Sale',
    		type: 'numeric',
    		position: 'left',
    		fields: ['sales']
    	},{
    		title: 'Order',
    		type: 'numeric',
    		position: 'right',
    		fields: ['order'],
    		maximum: 200
    	},{
    		title: 'Quarter',
    		type: 'category',
    		position: 'bottom',
    		fields: ['month']
    	}],
    	sprites: [{
    		type: 'text',
    		text: 'Quarterly Sales and Orders',
    		font: '22px Helvetica',
    		width: 100,
    		height: 20,
    		x: 40,
    		y: 20
    	}],
    	series: [{
    		type: 'bar',
    		xField: 'month',
    		yField: 'sales',
    		title: 'Sale'
    	},{
    		type: 'area',
    		xField: 'month',
    		yField: 'order',
    		showMarkers: true,
    		marker: {
    			type: 'circle',
    			radius: 5
    		},
    		style: {
    			opacity: 0.5
    		}
    	}]
    }]
    
});
