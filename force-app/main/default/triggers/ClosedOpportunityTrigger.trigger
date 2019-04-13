trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> listTask = new List<Task>();
    
        
        /*for(Opportunity opp = Trigger.New ){
        
            if(opp.StageName == 'Closed Won'){
            
                listTask.add(new Task(whatid = opp.Id, Subject = 'Follow Up Test Task'));

            }
        
        }
    
        */
    
        for (Opportunity opp : Trigger.New){
            
            if(opp.StageName == 'Closed Won'){
                
                Task taskId = new Task(
                whatid = opp.Id,
                Subject = 'Follow Up Test Task'
                );
                
                listTask.add(taskId);
                
            }
                
        }
    if(listTask.size() > 0){
       
        insert listTask;
        
    }
    
    
}