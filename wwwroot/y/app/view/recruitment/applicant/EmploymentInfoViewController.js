Ext.define('iBOSe.view.recruitment.applicant.EmploymentInfoViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-employmentinfoview',
    
    init: function() {
    	this.listen({
    		component: {
    			'pagingtoolbar': {
    				'beforeadd': 'onPagingToolbarBeforeAdd'
    			},
    			'employmentinfoview radiofield[action=PREVEMPLOYED]': {
    				'change': 'onPrevEmployedChange'
    			},
    			'employmentinfoview radiofield[action=PREVAPPLIED]': {
    				'change': 'onPrevAppliedChange'
    			}
    		}
    	});
    },
    
    onPrevEmployedChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		prevemployed: !newValue
    	});
    },
    
    onPrevAppliedChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		prevappliedlast: !newValue
    	});
    },
    
    onPagingToolbarBeforeAdd: function(tthis) { // Solves the error of registering duplicate component id undefined-paging-toolbar
    	tthis.setId("u" + new Date().getTime().toString());
    }
});
