({
    
  /*doInit: function(component, event, helper) {
    var action = component.get("c.getBooks");
      
    action.setCallback(this, function(data) {
      component.set("v.Books", data.getReturnValue());
      console.log(data.getReturnValue());
    });
      
    $A.enqueueAction(action);
  */
    
    /*------------------ fuction for get Book and Author-------*/
    
    doInit: function(component, event, helper) {
        var action = component.get("c.getBooksAndAuthor");
        
        action.setCallback(this, function(data) {
        	component.set("v.Books", data.getReturnValue());
        	console.log(data.getReturnValue());
        });
     $A.enqueueAction(action);
    }
    
})