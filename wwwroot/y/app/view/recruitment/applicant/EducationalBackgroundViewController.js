Ext.define('iBOSe.view.recruitment.applicant.EducationalBackgroundViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-educationalbackgroundview',
    
    init: function() {
    	this.listen({
    		component: {
    			'pagingtoolbar': {
    				'beforeadd': 'onPagingToolbarBeforeAdd'
    			},
    			
    			'button[action=addschool]': {
    				'click': 'onAddSchoolClick'
    			}
    		}
    	});
    },
    
    onPagingToolbarBeforeAdd: function(tthis) { // Solves the error of registering duplicate component id undefined-paging-toolbar
    	tthis.setId("u" + new Date().getTime().toString());
    },
    
    onAddSchoolClick: function(dbtn) {
    	var eduComp = dbtn.up('educationalbackgroundview');
    	if(typeof eduComp.currentCount === 'undefined') {
    		eduComp.currentCount = 0;
    	} else {
    		if(eduComp.currentCount == 5) {
    			dbtn.setVisible(false);
    		} else {
    			eduComp.currentCount += 1;
    		}
    	}
    	var ccount = eduComp.currentCount + 2;
    	eduComp.insert(3,[{
			xtype: 'educationalbackgroundcollegeview'
		}]);
    }
    
});
