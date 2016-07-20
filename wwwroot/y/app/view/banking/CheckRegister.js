
Ext.define("iBOSe.view.banking.CheckRegister",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.CheckRegisterController",
        "iBOSe.view.banking.CheckRegisterModel"
    ],
    xtype: "ibosecheckregister",
    title: "eCheckRegister",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-checkregister",
    viewModel: {
        type: "banking-checkregister"
    },

    html: "Hello, eCheckRegister!!"
});
