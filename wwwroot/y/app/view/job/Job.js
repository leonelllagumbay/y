
Ext.define("iBOSe.view.job.Job",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.job.JobController",
        "iBOSe.view.job.JobModel"
    ],
    xtype: "ibosejobs",
    title: "eJobs",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "job-job",
    viewModel: {
        type: "job-job"
    },

    html: "Hello, eJobs!!"
});
