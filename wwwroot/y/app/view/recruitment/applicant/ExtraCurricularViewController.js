Ext.define('iBOSe.view.recruitment.applicant.ExtraCurricularViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-extracurricularview',
    
    init: function() {
    	this.listen({
    		component: {
    			'button[action=extracurricular]': {
    				'click': 'onAddExtraCurricularClick'
    			}
    		}
    	});
    },
    
    onAddExtraCurricularClick: function(dbtn) {
    	var eduComp = dbtn.up('extracurricularview');
    	if(typeof eduComp.currentCount === 'undefined') {
    		eduComp.currentCount = 0;
    	} else {
    		if(eduComp.currentCount == 4) {
    			dbtn.setVisible(false);
    		} else {
    			eduComp.currentCount += 1;
    		}
    	}
    	
    	eduComp.insert(1,[{
			xtype: 'extracurricularitemview'
		}]);
    }
    
});
