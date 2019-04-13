public class AccountHandler {

    public static Account insertNewAccount(String acc){
        
        Account accNew = new Account();
        accNew.Name = acc;
        
        try {
            insert accNew;
            
        } catch (DmlException e){
            System.debug('Error has occurred' + e.getMessage());
            return null;
        }
      return accNew;
    }
    
}