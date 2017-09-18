public with sharing class PrimesController
{
    @AuraEnabled
	public static Object requestPrimes(Integer count)
    {
        Prime__c currentMax = PrimeSelector.newInstance().getCurrentMax();
        return HerokuConnector.newInstance().requestPrimes(count, currentMax);
	}
}