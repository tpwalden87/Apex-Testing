// range 
Integer maxValue = 100;
Integer minValue = 1; 
// you want to talk about chaining? 
Integer randomNumberBetweenMaxAndMin = (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
// see the randominess for yourself
system.debug(randomNumberBetweenMaxAndMin);