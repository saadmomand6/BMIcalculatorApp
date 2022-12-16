import 'package:bmicalculatorapp/input_page.dart';
import 'package:flutter/material.dart';



class ResultPage extends StatelessWidget {
  
  
  final String bmiresult;
  final String gettext;
  final String getadvice; 

  const ResultPage({
    required this.bmiresult,
    required this.gettext,
    required this.getadvice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
           Expanded(child: Container(
            padding:const EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child:const Text('YOUR RESULT IS HERE',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
          )),
          Expanded(
            flex: 5,
            child: Reuseablecard(
              color: mycolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(gettext.toUpperCase(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 37, 248, 150),
                    fontSize: 40,
                  ),),
                   Text(bmiresult,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),),
                   Text(getadvice,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),),
                  

                ],
              ),
            
            
            ),
           

          ),
           GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                color: const Color.fromARGB(255, 255, 235, 59),
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(bottom: 20),
                height: 80,
                child: const Center(
                  child: Text('RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
              ),
            )
        ],
        )
      
      );
  }
}