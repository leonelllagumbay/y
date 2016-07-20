
Ext.define("iBOSe.view.worksked.Worksked",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.worksked.WorkskedController",
        "iBOSe.view.worksked.WorkskedModel"
    ],
    xtype: "iboseworksked",
    title: "eWorksked",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "worksked-worksked",
    viewModel: {
        type: "worksked-worksked"
    },

    html: "Hello, eWorksked!!"
});
