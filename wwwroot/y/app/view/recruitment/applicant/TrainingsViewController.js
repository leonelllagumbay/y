Ext.define('iBOSe.view.recruitment.applicant.TrainingsViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-trainingsview',
    
    init: function() {
    	this.listen({
    		component: {
    			'button[action=trainingandseminars]': {
    				'click': 'onAddTrainingSeminarClick'
    			}
    		}
    	});
    },
    
    onAddTrainingSeminarClick: function(dbtn) {
    	var eduComp = dbtn.up('trainingsandseminarview');
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
			xtype: 'trainingsitemview'
		}]);
    }
    
});
