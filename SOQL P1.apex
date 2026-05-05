// single sobject, list of sobjects
[SELECT Subject, Additional_Course_Details__c FROM Case LIMIT 1]
 
// list of sobjects
[SELECT Subject, Additional_Course_Details__c FROM Case LIMIT 10]
 
// single sobject, list of sobjects
[SELECT COUNT(Id) FROM Case]
 
// Map
new Map<Id, Case>([SELECT Subject, Additional_Course_Details__c FROM Case LIMIT 10])
 
// integer
[SELECT COUNT() FROM Case]
 
// single sobject, list of sobject
[SELECT Subject, Additional_Course_Details__c FROM Case WHERE Id = '5001N00000lK000QAG']