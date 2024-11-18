import 'package:flutter/material.dart';
import 'dart:async';

class NutritionixAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>NutritionixAnimationState();

}

class NutritionixAnimationState extends State<NutritionixAnimation>
with SingleTickerProviderStateMixin{
  List<bool>_isHighted=List.generate(11, (index)=>false); //for each letter
  int _currentLetter=0;
  Timer?_timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startAnimation();
  }


  void _startAnimation(){
    _timer=Timer.periodic(const Duration(milliseconds: 300), (timer){
      setState(() {
        _isHighted[_currentLetter]=true; //Highlight current letter
        Future.delayed(const Duration(milliseconds: 150),(){
          setState(() {
            _isHighted[_currentLetter]=false; //Reset current letter
          });
        });

        _currentLetter=(_currentLetter+1)%11;  //Move to the next letter
      });
    });
  }


  @override
  void dispose() {
   _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body:Center(
       child:Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children:[
           for(int i=0;i<11;i++)
             AnimatedDefaultTextStyle(
                 child: Text(_getLetter(i)),
                 style: TextStyle(
                   fontSize:40,
                   color:_isHighted[i]?Colors.red:Colors.black, //Highlight color
                   fontWeight:_isHighted[i]?FontWeight.bold:FontWeight.normal,

                 ),
                 duration: Duration(milliseconds: 150), //Animation duration

             ),
         ],
       ),
     ),
   );
  }

  String _getLetter(int index){
    const appName="NUTRITIONIX";
    return appName[index];
  }
  }




