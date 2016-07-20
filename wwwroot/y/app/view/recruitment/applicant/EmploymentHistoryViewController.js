Ext.define('iBOSe.view.recruitment.applicant.EmploymentHistoryViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-employmenthistoryview',
    
    init: function() {
    	this.listen({
    		component: {
    			'button[action=addemploymenthistory]': {
    				'click': 'onAddEmploymentHistoryClick'
    			}
    		}
    	});
    },
    
    onAddEmploymentHistoryClick: function(dbtn) {
    	var eduComp = dbtn.up('employmenthistoryview').down('tabpanel');
    	
    	if (eduComp.items.length < 7) {
    		eduComp.add([{
    			xtype: "employmenthistoryitemview",
    		}]);
    		var tablen = eduComp.items.length;
        	eduComp.getLayout().setActiveItem(tablen - 1);
        	eduComp.items.items[tablen - 1].setTitle("Employment " + tablen);
    	} 
    	if (eduComp.items.length >= 7) {
    		dbtn.setVisible(false);
    	}
    }
});
