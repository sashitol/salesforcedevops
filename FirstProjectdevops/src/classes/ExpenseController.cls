public with sharing class ExpenseController {
    @AuraEnabled
    public static List<siddhant__Expense__c> getExpenses() {

        // Perform isAccessible() check here
        return [SELECT Id, Name, siddhant__Amount__c, siddhant__Client__c, siddhant__Date__c,
        siddhant__Reimbursed__c, CreatedDate FROM siddhant__Expense__c];
    }
    
    @AuraEnabled
	public static Expense__c saveExpense(siddhant__Expense__c expense) {

    // Perform isUpdateable() check here
    upsert expense;
    return expense;
	}
}
//test1