//player stats hp = 20, named = Ass,  defense = 10, attack = 10
//fight to the death
//monster stats 0 defense, 15 attack, 15 hp
// encounter your_attack minus monsters_defense, if it survives, monster attack minus your defense, if player hp = 0 GAMEOVER
//bonus: make the monster values random, give each monster a random name, maybe put in a boss battle after 3 encounters?\
//range
Integer maxValue = 15;
Integer minValue = 1;
//Player Stats
string playerName = 'Joestar';
Integer playerHp = 20;
Integer playerDef = 10;
Integer playerAtk = 5;
Boolean playerIsAlive = true;
// Boolean battle = true;
string monsterName = 'Dio';
Integer numberOfRounds = 0;
 
while (playerisAlive) {
    numberOfRounds++;
    Integer monsterDef = (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
    Integer monsterAtk = (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
    Integer monsterHp = (Integer) Math.abs(Math.floor((Math.random() * (maxValue - minValue + 1) + minValue)));
    Boolean battle = true;
    System.debug('A new enemy appears!');
    system.debug(monsterName+ ' Hp: ' + monsterHp + ' Def: ' + monsterDef + ' Atk: ' + monsterAtk);
    system.debug(playerName+ ' Hp: '+ playerHp + ' Def: ' + playerDef + ' Atk: ' + playerAtk);
    while (battle) {
        if (monsterHp > 0 ) {
            System.debug( playerName + ' attacks ' + monsterName );
            // monsterHp = monsterHp - (playerAtk - monsterDef);  
            monsterHp -= playerAtk;        
            System.debug(monsterName + ' has taken: ' + playerAtk + ' damage. ' + monsterName + ' has ' + monsterHp + ' remaining HP.');
            if (monsterHp <= 0 ) {
                System.debug(playerName + ' won the battle.\n');
            battle = false;
            break;
            }
        }
        // else {
        //     System.debug(playerName + ' won the battle.\n');
        //     battle = false;
        //     break;
        // }
        if (playerHp > 0) {
            System.debug( monsterName + ' attacks ' + playerName);
            playerHp -= monsterAtk;
            System.debug(playerName + ' has taken: ' + monsterAtk + ' damage. ' + playerName + ' has ' + playerHp + ' remaining HP.');
            if (playerHp <= 0) {
                playerIsAlive = false;
                battle = false;
                System.debug('GAMEOVER');
            }
        }
        // else {
        //     playerIsAlive = false;
        //     battle = false;
        //     System.debug('GAMEOVER');
        // }
       
    }
}
System.debug(playerName + ' made it to level: ' + numberOfRounds );
 
 
 