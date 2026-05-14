
// Account a = new Account(name = 'Soggy Weiner');
// insert a;
//001ak00001P0OhlAAF

List<Contact> ContactList = [SELECT Id,Name,AccountId FROM Contact WHERE AccountId  = '001ak00001P0OhlAAF'];
Account swAccount = [SELECT Id FROM Account WHERE name = 'Soggy Weiner'];
for (Contact Contact : ContactList) {
    Id originalAccountID = Contact.AccountId;
    system.debug('The original account ID: ' +originalAccountID);
    id newAccountID = swAccount.id;
    system.debug('The new account ID: '+newAccountID);
    Contact.AccountId = newAccountID;
    //update contact;
    system.debug(Contact.AccountId);
}




