import 'package:quizzer/questionclass.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'main.dart';

class Questiobank{
    
   int _quenumber = 0;

   List<Question> _quebank = [
       Question(q:"C++ is faster than Python",a:"true"),
       Question(q:"String can be changed",a:"false"),
       Question(q:"C++ is case sensetive",a:"true"),
       Question(q:"Python is dynamic language",a:"true"),
       Question(q:"c is mid level language",a:"true"),
       Question(q:"unreal is a programming IDE",a:"false"),
       Question(q:"Orkut was establised after facebook",a:"false"),
       Question(q:"Numpy is written in c++",a:"true"),
       Question(q:"i++ is = i+2",a:"false"),
       Question(q:"Pandas are used for Data Handling",a:"true"),
  ];
   

  String getque(){
         return _quebank[_quenumber].question;    
  }

  String getans(){
         return _quebank[_quenumber].answer;
  }

  void reset(){
         _quenumber = 0;        

  }

  void next()
  {
    if(_quenumber<_quebank.length)
    _quenumber++;   
    else{
      print(_quenumber);
    }
  } 

  int givelength()
  {
    return _quebank.length;
  }

  int giveno()
  {
    return _quenumber;
  }
  
}