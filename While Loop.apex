// // unit used: gallons
// Integer gasTank = 20;
// Integer speed = 0;
// Integer speedLimit = 50;
// Boolean desintationNotReached = true;
// Boolean notArrested = true;
// while (desintationNotReached && notArrested) {
//     if (gasTank != 0) {
//         speed+=5;
//         gasTank-=1;
//         system.debug('Our current speed is ' + speed+'\nOur current gas is '+ gasTank);
//         if (speed > speedLimit) {
//             system.debug('Sir, do you know how fast you were going?');
//             Integer myLie = speed-10;
//             system.debug('ME: yes, i was going ' + myLie);
//             system.debug('No, you were going '+speed+'\nSir, you are going to jail');
//             notArrested = false;
//         }
//     } else {
//         desintationNotReached = false;
//     }
// }

//player stats hp = 20, named = Ass,  defense = 10, attack = 10
//fight to the death
//monster stats 0 defense, 15 attack, 15 hp
// encounter your_attack minus monsters_defense, if it survives, monster attack minus your defense, if player hp = 0 GAMEOVER
//bonus: make the monster values random, give each monster a random name, maybe put in a boss battle after 3 encounters?\
 //need player hp to be outside loop but monster hp to reset each loop (primitive vs non?)
// the hints are:
// think of turn based combat
// you are only missing one major component (and some minor components that make the major comp work) 
// heres what i like btw:
// the if/else's are clever 
// you use multiple if statements and its not nested
// your debug comments really tell the story, e.g., "a new enemy appears" is a big indicator that its technically a new enemy instead of a conclusion of the fight
// great use of variables in and out of the while loop so things dont get constantly re-instantiated 
// what could be better:
// conventions, since this is Java, we follow the following standards:
// Classes: MyClass, Integer, String, etc. (PascalCase)
// Constants (we'll get into these later): MY_CONSTANT (UPPERCASE_SNAKE_CASE)
// Everything else: myVariable, myMethod (camelCase)
// while: 
//  event_1
//  event_2
//  event_3
//  goto while (aka repeat)
// range
Integer maxValue = 15;
Integer minValue = 1;
//Player Stats
string playerName = 'Joestar';
Integer playerHp = 20;
Integer playerDef = 10;
Integer playerAtk = 5;
Boolean playerIsAlive = true;
//Monster Stats
string monsterName = 'Dio';
Integer numberOfRounds = 0;
// Integer monsterHp = 15;
// Integer monster_def = 0;
//Integer monsterAtk = 20;
//Boolean monster_isAlive = true;


while (playerIsAlive ){
 
    numberOfRounds++;
    Integer monsterDef = 0;
    Integer monsterAtk = 5;
    Integer monsterHp = 15;
    //Integer monsterHp =  (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
    //Integer monster_def =  (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
    //Integer monsterAtk = (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
    System.debug('A new enemy appears!');
    system.debug('Monster Hp: ' + monsterHp + ' Monster Def: ' + monsterDef + ' Monster Atk: ' + monsterAtk);
    system.debug('Player Hp: ' + playerHp + ' Player Def: ' + playerDef + ' Player Atk: ' + playerAtk);
    monsterHp -= playerAtk;
    System.debug('Player ' + playerName + ' attacks ' + monsterName );
    System.debug(monsterName + ' has taken: ' + playerAtk + ' damage. ' + monsterName + ' has ' + monsterHp + ' remaining HP.');
                if (playerHp <= 0) {
                    playerIsAlive = false;
                    System.debug(monsterName + ' won the battle.\n');
                    }
                    else {
                        playerHp -= monsterAtk;
                System.debug('Monster '+ monsterName + ' attacks ' + playerName);
                System.debug(playerName + ' has taken: ' + monsterAtk + ' damage. ' + playerName + ' has ' + playerHp + ' remaining HP.');
                            }
                if (monsterHp <= 0) {
                            System.debug(playerName + ' won the battle.\n');
                           
                            }
                // System.debug('Monster Hp: ' + monsterHp);
                // System.debug('Player HP: '+ playerHp);  
               
   
       
 
 
   
}
System.debug(playerName + ' went a total of: ' + numberOfRounds + ' rounds');