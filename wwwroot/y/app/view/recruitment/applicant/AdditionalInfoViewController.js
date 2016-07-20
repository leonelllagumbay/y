Ext.define('iBOSe.view.recruitment.applicant.AdditionalInfoViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-additionalinfoview',
    
    init: function() {
    	this.listen({
    		component: {
    			'button[action=addgovexam]': {
    				'click': 'onAddGovExamClick'
    			},
    			'pagingtoolbar': {
    				'beforeadd': 'onPagingToolbarBeforeAdd'
    			}
    		}
    	});
    },
    
    onAddGovExamClick: function(dbtn) {
    	var eduComp = dbtn.up('additionalinfoview');
    	if(typeof eduComp.currentCount === 'undefined') {
    		eduComp.currentCount = 0;
    	} else {
    		if(eduComp.currentCount == 5) {
    			dbtn.setVisible(false);
    		} else {
    			eduComp.currentCount += 1;
    		}
    	}
    	
    	eduComp.insert(1,[{
			xtype: 'additionalinfogovexam'
		}]);
    },
    
    onPagingToolbarBeforeAdd: function(tthis) { // Solves the error of registering duplicate component id undefined-paging-toolbar
    	tthis.setId("u" + new Date().getTime().toString());
    }
    
});
