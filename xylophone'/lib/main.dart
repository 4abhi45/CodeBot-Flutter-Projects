import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.redAccent,
         title: Center(
           child: Text(
             "XyloPhone"
           ),
         ),
       ),
       body: Body(),
      ),
     
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  
  void play({int number})
  {
    final player = AudioCache();
    player.play("note$number.wav");
  }

  Expanded xbox({color,name,int number})
   {
     return Expanded(       
       child: FlatButton(
           onPressed: (){           
           play(number:number);
         },
         color: color,                 
       ),
     );  
    }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
           xbox(color:Colors.purple,name:"Purple",number:1),
            xbox(color:Colors.indigo,name:"Indigo",number:2),
             xbox(color:Colors.blue,name:"Blue",number:3),
              xbox(color:Colors.green,name:"Green",number:4),
               xbox(color:Colors.yellow,name:"Yellow",number:5),
                xbox(color:Colors.orange,name:"Orange",number:6),
                 xbox(color:Colors.red,name:"red",number:7),               
      ],
    );
  }
}

