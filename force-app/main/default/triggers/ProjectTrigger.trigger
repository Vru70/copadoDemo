trigger ProjectTrigger on Project__c (after update) {
    //Call the Billing Service callout logic here
    If (Trigger.isAfter && Trigger.isUpdate){
        BillingCalloutService.callBillingService(trigger.new, trigger.oldMap);
    }
}