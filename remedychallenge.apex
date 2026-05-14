
// Account a = new Account(name = 'Soggy Weiner');
// insert a;

List<Contact> ContactList = [SELECT Id,Name,AccountId FROM Contact WHERE AccountId  = '001ak00001P0OhqAAF'];
Account swAccount = [SELECT Id FROM Account WHERE name = 'Soggy Weiner'];
for (Contact Contact : ContactList) {
    Id originalAccountID = Contact.AccountId;
    system.debug('The original account ID: ' +originalAccountID);
    id newAccountID = swAccount.id;
    system.debug('The original account ID: '+newAccountID);
}