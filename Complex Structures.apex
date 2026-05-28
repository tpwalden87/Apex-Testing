// PREWORK: Replace LinkedEntityId with the Contact Id you attach this payload file to
ContentDocumentLink cdl = [SELECT ContentDocumentId FROM contentdocumentlink WHERE LinkedEntityId = '003ak00000edt8yAAA'];
String jsonData = [SELECT VersionData FROM ContentVersion WHERE ContentDocumentId = :cdl.ContentDocumentId][0].VersionData.toString();
Map<String, Object> payload = (Map<String, Object>) JSON.deserializeUntyped(jsonData);

// 0. Give the first baseSymbol existing in our payload 
// Returns a list 
List<Object> ex0_myData = (List<Object>) payload.get('data');
system.debug(ex0_myData);
// Returns a Map
Map<String, Object> ex0_myFirstPieceOfData = (Map<String, Object>) ex0_myData[0];
// Returns the piece of data we are looking for (it's still technically an object)
system.debug('ANSWER FOR EXAMPLE 0: '+ ex0_myFirstPieceOfData.get('baseSymbol'));

/*
    INSTRUCTIONS:
        For each example, name your variables after your example e.g., Example 1 var would be ex1_myVar
        Ensure expected answer and your answer are the same
*/

// 1. Give the total. Expected answer: 9997
Integer ex1_myVar = (Integer)payload.get('total');
system.debug('ANSWER FOR EXAMPLE 1: '+ ex1_myVar);

// 2. Give the count. Expected answer: 20 
Integer ex2_myVar = (Integer)payload.get('count');
system.debug('ANSWER FOR EXAMPLE 2: '+ ex2_myVar);

// 3. Give the first instance of symbolType (ignore raw). Expected answer: Call
List<Object> ex3_myData = (List<Object>) payload.get('data');
Map<String, Object> ex3_myFirstPieceOfData = (Map<String, Object>) ex3_myData[0];
system.debug('ANSWER FOR EXAMPLE 3: '+ ex3_myFirstPieceOfData.get('symbolType'));

// // 4. Give the last instance of tradeSize (ignore raw). Expected answer: 600
// List<Object> ex4_myData = (List<Object>) payload.get('data');
// Map<String, Object> ex4_myFirstPieceOfData = (Map<String, Object>) ex4_myData[19];
// system.debug('ANSWER FOR EXAMPLE 4: '+ ex4_myFirstPieceOfData.get('tradeSize'));

// 4. Give the last instance of tradeSize (ignore raw). Expected answer: 600
List<Object> ex4_myData = (List<Object>) payload.get('data');
Integer ex4_myDataLength = ex4_myData.size() - 1;
Map<String, Object> ex4_myFirstPieceOfData = (Map<String, Object>) ex4_myData[ex4_myDataLength];
system.debug('ANSWER FOR EXAMPLE 4: '+ ex4_myFirstPieceOfData.get('tradeSize'));

// 5. Give the first instance dte in raw. Expected answer: 10
List<Object> ex5_myData = (List<Object>) payload.get('data');
Map<String, Object> ex5_myFirstPieceOfData = (Map<String, Object>) ex5_myData[0];
Map<String, Object> ex5_mySecondPieceOfData = (Map<String, Object>)ex5_myFirstPieceOfData.get('raw');
system.debug('ANSWER FOR EXAMPLE 5: '+ex5_mySecondPieceOfData.get('dte'));

// 6. Give the description for lastPrice. Expected answer: The underlying price, at the time of the options trade.
Map<String, Object> ex6_myFirstPieceOfData = (Map<String, Object>)payload.get('meta');
Map<String, Object> ex6_mySecondPieceOfData = (Map<String, Object>)ex6_myFirstPieceOfData.get('field');
Map<String, Object> ex6_myThirdPieceOfData = (Map<String, Object>)ex6_mySecondPieceOfData.get('description');
system.debug('ANSWER FOR EXAMPLE 6: '+ex6_myThirdPieceOfData.get('lastPrice'));

// 7. Loop through the maps in data until you find the baseSymbol, 'NVDA' and give its strike price (ignore raw). Expected answer: 200.00
List<Object> ex7_myData =  (List<Object>)payload.get('data');
  for(Object payloadData : ex7_myData){
    Map<String, Object> ex7_myFirstPieceOfData = (Map<String, Object>) payloadData;
     if(ex7_myFirstPieceOfData.get('baseSymbol') == 'NVDA')
     {
          system.debug('ANSWER FOR EXAMPLE 7: '+ex7_myFirstPieceOfData.get('strikePrice'));
          break;
     }
     
  }
// system.debug('ANSWER FOR EXAMPLE 7: ');

// 8. Loop through the maps in data until you find a volume < 1k and give the lastPrice from the raw. Expected answer: 167.6
List<Object> ex8_myData =  (List<Object>)payload.get('data');
Object ex8_Answer;
  for(Object payloadData : ex8_myData){
    Map<String, Object> ex8_myFirstPieceOfData = (Map<String, Object>) payloadData;
    Map<String, Object> ex8_mySecondPieceOfData = (Map<String, Object>)ex8_myFirstPieceOfData.get('raw');
    //system.debug(ex8_mySecondPieceOfData.get('volume'));
    Integer ex8_myVar = (Integer)ex8_mySecondPieceOfData.get('volume');
     if( ex8_myVar < 1000 )
     {
          //system.debug('ANSWER FOR EXAMPLE 8: '+ex8_mySecondPieceOfData.get('lastPrice'));
          ex8_Answer = ex8_mySecondPieceOfData.get('lastPrice');
          break;
     }
     
  }
system.debug('ANSWER FOR EXAMPLE 8: '+ex8_Answer);