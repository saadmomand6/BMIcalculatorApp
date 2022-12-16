import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
import 'calculations.dart';

const Color mycolor= Color.fromARGB(255, 101, 123, 150);
const inactivecardcolor = Color.fromARGB(255, 101, 123, 150);
const activecardcolor= Color.fromARGB(255, 40, 51, 65);
//enums are used when you have multiple option
enum Gender{male,female}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height =180;
  int weight = 65;
  int age= 21;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children:  [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedgender=Gender.male;
                      });
                    },
                    child: Reuseablecard(
                      
                      color: selectedgender==Gender.male ? activecardcolor : inactivecardcolor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.mars,
                          size: 30,
                          color: Color.fromARGB(255, 228, 252, 14),),
                          SizedBox(
                            height: 10,
                          ),
                          Text('MALE',
                          style: TextStyle(fontSize: 20,
                          color: Color.fromARGB(255, 228, 252, 14)),
                          )
                  
                        ],
                      ),                  
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedgender=Gender.female;
                      });
                    },
                    child: Reuseablecard(
                      color: selectedgender==Gender.female ? activecardcolor : inactivecardcolor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.venus,
                          size: 30,
                          color: Color.fromARGB(255, 228, 252, 14)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('FEMALE',
                          style: TextStyle(fontSize: 20,
                          color: Color.fromARGB(255, 228, 252, 14)),)
                  
                        ],
                      ),    
                    ),
                  ),
                )
              ],
              
            ),
          ),
          SingleChildScrollView(
            child: Expanded(
              child: Reuseablecard(
                color: mycolor,
                cardchild: Column(
                  children: [
                    const Text('HEIGHT',
                    style: TextStyle(fontSize: 20,
                            color: Color.fromARGB(255, 228, 252, 14)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                         Text(height.toString(),
                    style:const TextStyle(fontSize: 50,
                    fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 228, 252, 14)),
                    ),
                    const Text('cm',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 228, 252, 14)),
                    ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: const  Color.fromARGB(255, 140, 174, 182),
                        inactiveTickMarkColor: const Color(0xFF0A0E21),
                        thumbShape:const RoundSliderThumbShape(enabledThumbRadius: 12),
                        thumbColor:const Color.fromARGB(255, 228, 252, 14),
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24),
                        overlayColor: const  Color.fromARGB(255, 140, 174, 182),
                      ),
                      child: Slider(
                        value: height.toDouble(), 
                        min: 100,
                        max: 200,
                        onChanged: (double myheightvalue){
                          setState(() {
                            height =myheightvalue.round();
                          });
                        }),
                    ),
                      const SizedBox(
                        height: 10,
                      )
                  ]
                )
              ),
            ),
          ),
          Expanded(
            child: Row(
                children:  [
                Expanded(
                  child: SingleChildScrollView(
                    child: Reuseablecard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Weight',style: TextStyle(fontSize: 20,
                            color: Color.fromARGB(255, 228, 252, 14)), ),
                          Text(weight.toString(),
                          style:const TextStyle(fontSize: 50,
                    fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 228, 252, 14)),
                          
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                                RoundIconButton(
                                 icon: FontAwesomeIcons.minus,
                                 onPressed: () {
                                   setState(() {
                                     weight--;
                                   });
                                 },
                                 ),
                                 
                               const SizedBox(
                                  width: 40,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                  weight++;
                                 });
                                  }
                                
                                ),
                            ],
                          ),
                        ],
                      ),
                      color: mycolor),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Reuseablecard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE',style: TextStyle(fontSize: 20,
                            color: Color.fromARGB(255, 228, 252, 14)), ),
                          Text(age.toString(),
                          style:const TextStyle(fontSize: 50,
                    fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 228, 252, 14)),
                          
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                                RoundIconButton(
                                 icon: FontAwesomeIcons.minus,
                                 onPressed: () {
                                   setState(() {
                                     age--;
                                   });
                                 },
                                 ),
                                 
                               const SizedBox(
                                  width: 40,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                  age++;
                                 });
                                  }
                                
                                ),
                            ],
                          ),
                        ],
                      ),
                      color: mycolor),
                  ),
                ),
              ],
              
            ),),
            GestureDetector(
              onTap: (){
                Bmibrain calc = Bmibrain(height, weight);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  ResultPage(
                  bmiresult: calc.calculate(),
                  gettext: calc.getresult(),
                  getadvice: calc.getadvice(),
                )
                ));
              },
              child: Container(
                color: const Color.fromARGB(255, 255, 235, 59),
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(bottom: 20),
                height: 80,
                child: const Center(
                  child: Text('CALCULATE',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
              ),
            )
        ],
      ),
      
    );
  }
}

class RoundIconButton extends StatelessWidget {

  final IconData? icon;
  final VoidCallback? onPressed;

  const RoundIconButton({
    required this.icon,
    this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: const Color.fromARGB(255, 251, 255, 0),
      elevation: 9,
      constraints: const BoxConstraints.tightFor(
            width: 45.0,
            height: 45.0,
          ),
      
      
      onPressed: onPressed,
      child: Icon(icon, color: const Color.fromARGB(255, 5, 31, 53),));
  }
}




class Reuseablecard extends StatelessWidget {

  final Color color;
  final Widget? cardchild;

  const Reuseablecard({
    this.cardchild,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: cardchild,
    );
  }
}