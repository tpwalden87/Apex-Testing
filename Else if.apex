Integer Age = 65;

if (age < 2 ) {
    System.debug('You are a baby');
}
else if (age <= 3 && age >= 2) {
    System.debug('You\'re a toddler, congratulations.');
} 
else if (age <= 12 && age > 3) {
    System.debug('You\'re a kid, congratulations');
} 
else if (age <= 19 && age >= 13) {
    System.debug('You\'re a teenager, congratulations');
} 
else if (age < 65 && age >=20 ) {
    System.debug('You\'re an adult, congratulations');
} 
else {
    System.debug('You are Unc');
}