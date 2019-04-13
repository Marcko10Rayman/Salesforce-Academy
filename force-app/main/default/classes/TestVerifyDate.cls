@isTest
private class TestVerifyDate {

    @isTest static void testVerifyDate(){
        
	date day1 = System.today();
    date day2 = System.today().addDays(20);
    date day3 = System.today().addDays(70);
        
        VerifyDate.CheckDates(day1, day2);
        VerifyDate.CheckDates(day1, day3);
        
    }
    
}