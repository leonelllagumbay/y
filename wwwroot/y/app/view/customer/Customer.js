
Ext.define("iBOSe.view.customer.Customer",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.CustomerController",
        "iBOSe.view.customer.CustomerModel"
    ],
    xtype: "ibosecustomers",
    title: "eCustomers",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-customer",
    viewModel: {
        type: "customer-customer"
    },

    html: "Hello, eCustomers!!"
});
