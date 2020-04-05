import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String output="0";

double numa=0;

double numb=0;

String operand="";

buttonPressed(String buttontext){
  if(buttontext=="CLEAR"){
    output="0";
    numa=0;
    numb=0;
    operand="";
  }
  else if(buttontext=="+" || buttontext=="-" || buttontext=="/" || buttontext=="X"){
    numa=double.parse(output);
    operand=buttontext;
    output="0";
  }
  else if(buttontext=="."){

    if(output.contains(".")){
      return;
    }
    else{
      output=output+buttontext;
    }
  }
  else if(buttontext=="="){
    numb=double.parse(output);

    if(operand=="+"){
      output=(numa+numb).toString();
    }
    else if(operand=="-"){
      output=(numa-numb).toString();
    }
    else if(operand=="/"){
      output=(numa/numb).toString();
    }
    else if(operand=="X"){
      output=(numa*numb).toString();
    }

    numa=0;
    numb=0;


  }
  else{
    output=output+buttontext;
  }

  setState((){
    output=double.parse(output).toStringAsFixed(2);
  });

}

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
                        buttonPressed(buttonText);
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
            
            Container(
              padding:EdgeInsets.symmetric(vertical:50, horizontal:24),
              alignment: Alignment.centerRight,
              child: Text(output,
              style: TextStyle(color: Colors.red,fontSize: 72,fontWeight: FontWeight.bold),
              ),
              ),
            
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