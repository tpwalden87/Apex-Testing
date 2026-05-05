// when you construct
List<String> myStrings = new List<String>{'John','Mary','Sue'};
// set to null then add
List<String> myManualStrings = new List<String>();
myManualStrings.add('John');
myManualStrings.add('Mary');
myManualStrings.add('Sue');
 
system.debug('myStrings '+ myStrings);
system.debug('myManualStrings '+ myManualStrings);
 
// String myName = 'John';
// myName.toLowerCase();
// system.debug(myName);
 