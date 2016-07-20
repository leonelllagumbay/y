
Ext.define("iBOSe.view.customer.Estimates",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.EstimatesController",
        "iBOSe.view.customer.EstimatesModel"
    ],
    xtype: "iboseestimates",
    title: "eEstimates",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-estimates",
    viewModel: {
        type: "customer-estimates"
    },

    html: "Hello, eEstimates!!"
});
