global class AccountProcessor {
    
    @future 
    
    //Set para listas - LIST para cualquier otro dato
    public static void countContacts(Set<Id> recordIds){
        List<Account> accounts = [Select Id, Number_of_Contacts__c , (select id from contacts) from account Where Id IN :recordIds];
        
        for(Account cuenta : accounts){
            
            List<Contact> listcont = cuenta.contacts;
            cuenta.Number_of_Contacts__c = listcont.size(); 
        }
        update accounts;
    }

}