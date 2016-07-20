
Ext.define("iBOSe.view.banking.Reconcile",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.ReconcileController",
        "iBOSe.view.banking.ReconcileModel"
    ],
    xtype: "ibosereconcile",
    title: "eReconcile",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-reconcile",
    viewModel: {
        type: "banking-reconcile"
    },

    html: "Hello, eReconcile!!"
});
