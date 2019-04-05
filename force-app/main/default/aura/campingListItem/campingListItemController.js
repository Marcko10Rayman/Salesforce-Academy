({
		
    packItem : function(component, event, helper){
        
       component.set("v.item.Packed__c", True);		//se coloca true por que es un checkbox y se utiliza el field Packed, Item es del atributo
       event.getSource().get("v.disabled", True);
        
    }
    
})