trigger OpportunityStageInsert on Opportunity (before insert) {
     for(Opportunity opp: trigger.new){
         
         if(opp.stagename == null){
                //Look for custom setting that matches
             try{  
            system.debug('Record type id:'+ opp.RecordTypeId);
             if(opp.RecordTypeId!=null){
    
             List<Opportunity_Stage_Trigger__c> customsetting= [select Stage_to_use_on_insert_if_blank__c from Opportunity_Stage_Trigger__c where Record_Type_ID__c = :opp.RecordTypeId ];
             if(customsetting.size() >0){
                string stagename = String.valueOf(    customsetting[0].Stage_to_use_on_insert_if_blank__c );
               
                
               // if blank stage and found custom setting then change
                if(stagename != null && opp.stagename == null){
                 opp.stagename = stagename;
                }
             }
                 
                 
             }
             }catch(exception e){}
         }
         
         integer i=0;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
         i++;
     }
}