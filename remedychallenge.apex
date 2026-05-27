
// Account a = new Account(name = 'Soggy Weiner');
// insert a;
//001ak00001P0OhlAAF

List<Contact> contactList = [SELECT Id,Name,AccountId FROM Contact WHERE AccountId  = '001ak00001P0OhlAAF'];
Account swAccount = [SELECT Id FROM Account WHERE name = 'Soggy Weiner'];
for (Contact con : contactList) {
    Id originalAccountID = con.AccountId;
    system.debug('The original account ID: ' +originalAccountID);
    Id newAccountID = swAccount.id;
    system.debug('The new account ID: '+newAccountID);
    con.AccountId = newAccountID;
    //update contact;
    system.debug(con.AccountId);
}




