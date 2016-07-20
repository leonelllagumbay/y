
Ext.define("iBOSe.view.book.Book",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.book.BookController",
        "iBOSe.view.book.BookModel"
    ],
    xtype: "ibosebooks",
    title: "eBooks",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,
    

    controller: "book-book",
    viewModel: {
        type: "book-book"
    },

    html: "Hello, eBooks!!"
});
