@isTest
private class AnimalLocatorTest {
     @isTest static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    String response = AnimalLocator.getAnimalNameById(1);
    system.debug('string returned: ' + response);
    // Verify that the response received contains fake values
    //String contentType = response.getHeader('Content-Type');
   // System.assert(contentType == 'application/json');
   // String actualValue = response.getBody();
    //System.debug(response.getBody());
    String expectedResult = 'chicken';
    System.assertEquals(response, expectedResult);
    //System.assertEquals(200, response.getStatusCode());
    }   
}