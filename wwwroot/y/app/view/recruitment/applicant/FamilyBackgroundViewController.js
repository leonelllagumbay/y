Ext.define('iBOSe.view.recruitment.applicant.FamilyBackgroundViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-familybackgroundview',
    
    init: function() {
    	this.listen({
    		component: {
    			'button[action=addchild]': {
    				'click': 'onAddChildClick'
    			},
    			'button[action=addsibling]': {
    				'click': 'onAddSiblingClick'
    			}
    		}
    	});
    },
    
    onAddChildClick: function(dbtn) {
    	var eduComp = dbtn.up('familybackgroundview');
    	if(typeof eduComp.currentCount === 'undefined') {
    		eduComp.currentCount = 0;
    	} else {
    		if(eduComp.currentCount == 30) {
    			dbtn.setVisible(false);
    		} else {
    			eduComp.currentCount += 1;
    		}
    	}
    	
    	eduComp.insert(6,[{
			xtype: 'familybackgroundchildview'
		}]);
    },
    
    onAddSiblingClick: function(dbtn) {
    	var eduComp = dbtn.up('familybackgroundview');
    	if(typeof eduComp.currentCount === 'undefined') {
    		eduComp.currentCount = 0;
    	} else {
    		if(eduComp.currentCount == 30) {
    			dbtn.setVisible(false);
    		} else {
    			eduComp.currentCount += 1;
    		}
    	}
    	
    	eduComp.insert(6,[{
			xtype: 'familybackgroundsiblingview'	
		}]);
    }
});
