import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  //final Color colors;

  @override
  Widget build(context){
    return Container(
      alignment: Alignment.center,
      child: Center(
        child:Column(children: [
              Image.asset('assets/images/image1.png'),
              Text('Learn Flutter the fun way',
                  style: TextStyle(
                  fontSize: 23,
                  color: Colors.white),
                  ),
              ElevatedButton(onPressed: null, 
                      child: Text('BUTTON', 
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.white)
                     ,)
              ,)
            ,]
          ,)
     )
    );
  }
}