
Ext.define("iBOSe.view.report.Report",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.report.ReportController",
        "iBOSe.view.report.ReportModel"
    ],
    xtype: "ibosereports",
    title: "eReports",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "report-report",
    viewModel: {
        type: "report-report"
    },

    html: "Hello, eReports!!"
});
