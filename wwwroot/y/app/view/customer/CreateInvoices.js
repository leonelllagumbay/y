
Ext.define("iBOSe.view.customer.CreateInvoices",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.CreateInvoicesController",
        "iBOSe.view.customer.CreateInvoicesModel"
    ],
    xtype: "ibosecreateinvoices",
    title: "eCreateInvoices",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-createinvoices",
    viewModel: {
        type: "customer-createinvoices"
    },

    html: "Hello, eCreateInvoices!!"
});
