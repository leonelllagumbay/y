Ext.define('iBOSe.view.recruitment.applicant.SpecialSkillsViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-specialskillsview',
    
    init: function() {
    	this.listen({
    		component: {
    			'button[action=specialskills]': {
    				'click': 'onAddSkillsClick'
    			},
    			'pagingtoolbar': {
    				'beforeadd': 'onPagingToolbarBeforeAdd'
    			},
    		}
    	});
    },
    
    onAddSkillsClick: function(dbtn) {
    	var eduComp = dbtn.up('specialskillsview');
    	if(typeof eduComp.currentCount === 'undefined') {
    		eduComp.currentCount = 0;
    	} else {
    		if(eduComp.currentCount == 7) {
    			dbtn.setVisible(false);
    		} else {
    			eduComp.currentCount += 1;
    		}
    	}
    	
    	eduComp.insert(2,[{
			xtype: 'specialskillsitemview'
		}]);
    },
    
    onPagingToolbarBeforeAdd: function(tthis) { // Solves the error of registering duplicate component id undefined-paging-toolbar
    	tthis.setId("u" + new Date().getTime().toString());
    }
    
});
