public class NewCaseListController {

    //private String cases = 'New';
    
    public List<case> getNewCases(){
        
        List<case> results = database.query(
        	'SELECT ID, CaseNumber FROM Case where status = \'New\'' 
        );
        
        return results;
    }
    
    
    
}