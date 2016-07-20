
Ext.define("iBOSe.view.manager.Scheduler",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.manager.SchedulerController",
        "iBOSe.view.manager.SchedulerModel"
    ],
    xtype: "ibosescheduler",
    title: "eScheduler",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "manager-scheduler",
    viewModel: {
        type: "manager-scheduler"
    },

    html: "Hello, eScheduler!!"
});
