import 'dart:async';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'questionBox.dart';
import 'result.dart';
import 'package:timer_count_down/timer_count_down.dart';
Quiz quiz=Quiz();
Result result=Result();
class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}
class _Screen1State extends State<Screen1> {
  int CurrentQuestion=0;
  bool press=false;
  int Q=1;
  double co=0;
  double wr=0;
  CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(
          width: double.infinity,
          decoration:BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/image.jpg'),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 20,top: 50),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(' QUESTION  #  $Q ',style:TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.normal),
                      textAlign: TextAlign.justify,),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 40,top: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black26,
                    ),
                    child:CircularCountDownTimer(
                      duration: 180,
                      controller: _controller,
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 12,
                      color: Colors.white,
                      fillColor: Colors.red,
                      backgroundColor: null,
                      strokeWidth: 5.0,
                      textStyle: TextStyle(
                          fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
                      isReverse: false,
                      isReverseAnimation: false,
                      isTimerTextShown: true,
                      onComplete: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(top: 30,left: 30,right: 30),
                child:   Text(quiz.getquestiontext(CurrentQuestion),
                  style:TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.normal),
                  textAlign: TextAlign.justify,
                  maxLines: 3,),
              ),
              SizedBox(height: 30),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 50,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: SweepGradient(
                        colors: [
                          Colors.yellowAccent,
                          Colors.orange,
                          Colors.lightGreen,
                        ],
                      ),
                    ),
                    child:FlatButton(
                      onPressed: (){
                        setState(() {
                          if(press==false)
                          {
                            if(compare(quiz.getoptionA(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==true)
                            {
                              result.getcorrect(CurrentQuestion);
                               co++;

                            }
                            else if (compare(quiz.getoptionA(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==false)
                            {
                              result.getwrong(CurrentQuestion);
                              wr++;
                            }
                            press=true;
                          }
                        });
                        nextquestion();
                      },
                      child:Text(quiz.getoptionA(CurrentQuestion),style:TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center, maxLines: 1,),
                    ),
                  ),

                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 50,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: SweepGradient(
                        colors: [
                          Colors.yellowAccent,
                          Colors.orange,
                          Colors.lightGreen,
                        ],
                      ),
                    ),
                    child:    FlatButton(
                      onPressed: (){
                        setState(() {
                          if(press==false)
                          {
                            if(compare(quiz.getoptionB(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==true)
                            {
                              result.getcorrect(CurrentQuestion);
                              co++;
                            }
                            else if (compare(quiz.getoptionB(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==false)
                            {
                              result.getwrong(CurrentQuestion);
                              wr++;
                            }
                            press=true;
                          }
                        });
                        nextquestion();
                      },
                      child:Text(quiz.getoptionB(CurrentQuestion),style:TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center, maxLines: 1,),
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 50,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: SweepGradient(
                        colors: [
                          Colors.yellowAccent,
                          Colors.orange,
                          Colors.lightGreen,
                        ],
                      ),
                    ),
                    child: FlatButton(
                    onPressed: (){
                      setState(() {
                        if(press==false)
                        {
                          if(compare(quiz.getoptionC(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==true)
                          {
                            result.getcorrect(CurrentQuestion);
                            co++;
                          }
                          else if (compare(quiz.getoptionC(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==false)
                          {
                            result.getwrong(CurrentQuestion);
                            wr++;
                          }
                          press=true;
                        }
                      });
                      nextquestion();
                    },
                    child:Text(quiz.getoptionC(CurrentQuestion),style:TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center, maxLines: 1,),
                  ),),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 50,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: SweepGradient(
                        colors: [
                          Colors.yellowAccent,
                          Colors.orange,
                          Colors.lightGreen,
                        ],
                      ),
                    ),
                    child: FlatButton(
                    onPressed: (){
                      setState(() {
                        if (press==false)
                        {
                          if(compare(quiz.getoptionD(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==true)
                          {
                            result.getcorrect(CurrentQuestion);
                            co++;
                          }
                          else if (compare(quiz.getoptionD(CurrentQuestion), quiz.getcorrectAnser(CurrentQuestion))==false)
                          {
                            result.getwrong(CurrentQuestion);
                            wr++;
                          }
                          press=true;
                        }
                      });
                      nextquestion();
                    },
                    child:Text(quiz.getoptionD(CurrentQuestion),style:TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center, maxLines: 1,),
                  ),
                  ),
                ],
              ),
             Container( margin: EdgeInsets.only(top: 100,left: 10),
               child: Row(
                 children: <Widget>[
                   Container(

                     child: CircularPercentIndicator(
                       radius: 100.0,
                       lineWidth: 10.0,
                       percent:co/10,
                       header: new Text("Correct",style: TextStyle(fontSize: 20),),
                       center: new Icon(
                         Icons.check,
                         size: 50.0,
                         color: Colors.black,
                       ),
                       backgroundColor: Colors.red,
                       progressColor: Colors.green,
                     ),
                   ),
                   Container(
                    margin: EdgeInsets.only(left: 170),
                     child: CircularPercentIndicator(
                       radius: 100.0,
                       lineWidth: 10.0,
                       percent:wr/10,
                       header: new Text("Wrong",style: TextStyle(fontSize: 20),),
                       center: new Icon(
                         Icons.close,
                         size: 50.0,
                         color: Colors.black,
                       ),
                       backgroundColor: Colors.green,
                       progressColor: Colors.red,
                     ),
                   ),
                 ],
               ),
             ),
            ],
          ),
        ) ,
      ),
    );
  }
 void nextquestion()
 {
   if(Q==10)
   {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
   }
   setState(() {

     if(Q<10)
     {
       CurrentQuestion=quiz.nextquestion();
       Q++;
       press=false;
     }
   });
 }
  bool compare(String Op,String Co)
  {
    if(Op==Co)
    {
      return true;
    }
    else if( Op!= Co)
    {
      return false;
    }
  }
}
