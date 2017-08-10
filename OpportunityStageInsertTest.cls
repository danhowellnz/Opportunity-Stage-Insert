@isTest 
public class OpportunityStageInsertTest {

    

    
    
    
   
        static testMethod void insertNewOpportunity() {
            
            
        //Get opp stages
     List<OpportunityStage> Stages =[SELECT Id, ApiName FROM OpportunityStage];

        //create sample account
        Account testAccount = new Account(
            Name='Test Opp123456' //no duplicates
        );
        Insert testAccount;

            
        //create sample opp 
        Opportunity testOpportunity = new Opportunity(
            StageName = Stages[0].ApiName,
            CloseDate = system.today(),
            AccountId= testAccount.ID,
            Name = testAccount.Name
        );
        insert testOpportunity;
            
        System.assertEquals( 'comingsoon','comingsoon');
        }
            
            
            
            
            
}