Ext.define('iBOSe.view.recruitment.applicant.OtherDetailsViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-otherdetailsview',
    
    onOtherDetailsOneChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		otherdetailsone: !newValue
    	});
    },
    
    onOtherDetailsTwoChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		otherdetailstwo: !newValue
    	});
    },
    
    onOtherDetailsThreeChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		otherdetailsthree: !newValue
    	});
    },
    
    onOtherDetailsFourChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		otherdetailsfour: !newValue
    	});
    },
    
    onOtherDetailsFiveChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		otherdetailsfive: !newValue
    	});
    },
    
    onOtherDetailsSixChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		otherdetailssix: !newValue
    	});
    }
    
});
