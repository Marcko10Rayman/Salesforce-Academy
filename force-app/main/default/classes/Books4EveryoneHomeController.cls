public with sharing class Books4EveryoneHomeController {
    
    /*QUERY for get books with name and description*/
  /*@AuraEnabled
      public static List<Book__c> getBooks(){
        return [SELECT Id,Name,Description__c
  						FROM Book__c];
      }*/
    
    /*QUERY for get books with name, description and author*/
  	@AuraEnabled
    public static List<Book__c> getBooksAndAuthor(){
        return [SELECT Id,Name, Description__c, Author__r.Name
               			FROM Book__c];
    }
    
    /*------------Create a INNER JOIN IN SOQL----------------*/
    @AuraEnabled
        public static List<Recommendation__c> getBookRecommendations(){
			return [SELECT Name, Review__c, Rating__c, Book__r.Name, Book__r.Author__r.Name
  							FROM Recommendation__c
  							WHERE Book__c != null];
    
        }
      
    
    /*------------Create a INNER RIGHT ANTI JOIN----------------*/
    @AuraEnabled
    public static List<Book__c> getBooksWithoutAuthors(){
        return [SELECT Name
               			FROM Book__c
               			Where Author__c = null];
    }
    
}