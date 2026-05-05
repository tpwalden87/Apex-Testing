
Integer numberofloops = 20;

List<Integer> oddOrEven = new List<Integer>();

for(Integer i = 0; i <= numberofloops; i++) {
   //if (i == 10) {
   if (i == 0){
        continue;
   }
   if(Math.mod(i, 2) == 0){
       system.debug('The number '+i+' is even');
       oddOrEven.add(i);

   } else {
       system.debug('The number '+i+' is odd');
   }
   
}
system.Debug(oddOrEven); 