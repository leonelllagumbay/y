
Ext.define("iBOSe.view.administrator.Monitoring",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.administrator.MonitoringController",
        "iBOSe.view.administrator.MonitoringModel"
    ],

    controller: "administrator-monitoring",
    viewModel: {
        type: "administrator-monitoring"
    },

    html: "Hello, World!!"
});
