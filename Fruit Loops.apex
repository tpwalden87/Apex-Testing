/*
two types of for loops:
1. for each
2. traditional for loop
*/
 
List<String> myStrings = new List<String>{'John','Mary','Sue', 'John'};
 
List<String> desiredNames = new List<String>();
 
// for each loop
for(String myString : myStrings) {
    if (myString == 'John') {
        desiredNames.add(myString);
    }
    // system.debug(myString);
}
 
// system.debug('Here\'s my full list: '+desiredNames); //(John, John)
system.debug('myStrings size is '+myStrings.size());
for(Integer i = 0; i < myStrings.size(); i++) {
    system.debug('Current index: '+i);
    system.debug(myStrings[i]);
}


