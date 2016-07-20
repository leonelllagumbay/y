
Ext.define("iBOSe.view.form.Form",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.form.FormController",
        "iBOSe.view.form.FormModel"
    ],
    xtype: "iboseforms",
    title: "eForms",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "form-form",
    viewModel: {
        type: "form-form"
    },

    html: "Hello, eForms!!"
});
