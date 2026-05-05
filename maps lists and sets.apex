/*
    List:
    0: Tim
    1: Alayna
    2: Tim
 
    Set:
    oifjhw03940234ffwe: Tim
    0293fj9fuw24143242: Alayna
 
*/
List<String> names = new List<String>{'Tim', 'Alayna', 'Tim'};
Set<String> uniqueNames = new Set<String>();
 
for (String name : names ) {
    uniqueNames.add(name);
}
 
// system.debug(uniqueNames);
 
String name = 'Tim';
Integer age = 24;
Boolean hasKids = true;
 
// key : value
List<Map<String, Object>> persons = new List<Map<String, Object>>();
final String NAME_KEY = 'name';
final String AGE_KEY = 'age';
final String HAS_KIDS_KEY = 'hasKids';
final String NUMBER_OF_CHILDREN_KEY = 'numberOfChildren';
for (Integer i = 0; i < 20; i++){
    String name = 'test'+i;
    Integer age = 20+i;
    Integer numberOfChildren = 0+i;
    Boolean hasKids = false;
    if (numberOfChildren > 0) {
        hasKids = true;
    }
    Map<String, Object> person = new Map<String, Object>{
        NAME_KEY => name,
        AGE_KEY => age,
        HAS_KIDS_KEY => hasKids,
        NUMBER_OF_CHILDREN_KEY => numberOfChildren
    };
    system.debug('I have added a person with the following values:\n'+person);
    persons.add(person);
}
/*
    Standard: ******MOST IMPORTANT******
    [
        {name: tim, age=20},
        {name: rich}
    ]    
    Records:
    {
        name:[],
        age:[],
        hasKids:[]
    }
*/

Map<String,List<String>> mapOfLists = new Map<String,List<String>>();
mapOfLists.put('This is Entry One',new List<String>{'Entry one','contents of entry one'});
system.debug(mapOfLists);


Map<String, List<String>> persons = new Map<String, List<String>>{

'names' => new List<String>{'Tim', 'Rich'},

'hairColor' => new List<String>{'Brown', 'Brown'}

};

// challenge: loop through names and hair colors and print them


// Challenge - Where's the fking Map
//  [ Map1, Map2, Map3 ] 
// this is the structure were going for
// Have 3 treasure maps that give information like longitude, latitude, probability of loot
// Hold those 3 treasure maps in a list called treasureMaps
// Loop through the maps and if you find one with a probability >60%, print the long and lat and say something a pirate would say