import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_1/bmi_result_screen.dart';



class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
 bool isMale=true;
 double height =120.0;
 int weight=40;
 int age=20;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          //1
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               children: [


                 // Male box
                 Expanded(
                   // we use widget GestureDetector to touch it because container do not have on tap
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale=true;



                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,

                         children: [
                           Image(
                             image: AssetImage('assets/images/male.png'),
                             height: 90.0,
                             width: 90.0,
                           ),
                           SizedBox(
                             height: 15.0,
                           ),
                           Text(
                             'MALE',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                           ),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         color: isMale?Colors.blue:Colors.grey[400],
                       ),
                     ),
                   ),
                 ),

                SizedBox(
                  width: 20.0,
                ),

                 //Female box
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale=false;

                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                             image: AssetImage('assets/images/female.png'),
                             height: 90.0,
                             width: 90.0,
                           ),
                           SizedBox(
                             height: 15.0,
                           ),
                           Text('FEMALE',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 25.0,
                             color: Colors.white,
                           ),
                           ),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         color: isMale?Colors.grey[400]:Colors.blue,
                       ),
                     ),
                   ),
                 ),
               ],
              ),
            ),
          ),


          // 2
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //height
                    Text('HEIGHT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    // cm
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${height.round()}',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 45.0,
                          color: Colors.white,
                        ),),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text('cm',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),),
                      ],
                    ),

                    // Slider
                    Slider(
                      value:height ,
                      max: 220.0,
                      min: 80.0,
                      onChanged:(value){
                        setState(() {
                          height=value;
                        });
                        //.round used to make the value عدد صحيح
                        print(value.round());
                      } ,
                    ),



                  ],


                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey[400],
                ),
              ),
            ),

          ),





          //3
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  //first col in part 3
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                          Text('$weight',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;

                                });

                              },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,

                                ),

                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                                heroTag: 'weight+',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  //second col in part 3
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            //color: Colors.white,

                          ),),
                          Text('$age',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40.0,
                            color: Colors.white,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },


                              mini: true,
                                heroTag: 'age-',
                              child: Icon(
                                Icons.remove,
                              ),),

                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                heroTag: 'age+',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),






          // calculate button
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: (){
                double result = weight / pow(height/ 100, 2);
                print(result.round());


                //to sent the information to next screen we use navigator flutter
                //the push take two thing 1-the place you are in (context and the place you want to go (route)
                Navigator.push(
                    context,
                  MaterialPageRoute(
                    builder: (context)=> BmiResultScreen(
                      result: result.round(),
                      age: age,
                      isMale: isMale,
                    ),
                  ),
                );


              },
              height: 50.0,
              child: Text(
                  'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
              ,),
          )

        ],
      ),
    );
  }
}






