
Ext.define("iBOSe.view.dtr.Dtr",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.dtr.DtrController",
        "iBOSe.view.dtr.DtrModel"
    ],
    xtype: "ibosedtr",
    title: "eDTR",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "dtr-dtr",
    viewModel: {
        type: "dtr-dtr"
    },

    html: "Hello, eDTR!!"
});
