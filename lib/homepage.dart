import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  Widget calcButton(String buttonText){
    return Expanded(
                    child: Container(
                      margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: MaterialButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:20.0),
                        
                        child: Text(
                          buttonText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            ),
                        ),  
                      ),
                      color:Colors.grey[900],
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        // side:BorderSide(color: Colors.red[500])
                        
                      ),
                      onPressed: (){
                      
                      },
                  ),
                    ),
                );

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body:Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Text("0",style: TextStyle(color: Colors.white,fontSize: 40,),),
            
            Expanded(child: Divider(),),
            
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    calcButton("7"),
                    calcButton("8"),
                    calcButton("9"),
                    calcButton("/"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("4"),
                    calcButton("5"),
                    calcButton("6"),
                    calcButton("X"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("1"),
                    calcButton("2"),
                    calcButton("3"),
                    calcButton("4"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("."),
                    calcButton("0"),
                    calcButton("00"),
                    calcButton("+"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    calcButton("CLEAR"),
                    calcButton("=")
                  ],
                
                ),
              ],
            )

          ],
          
          ),
      )
      
      );
  }
}