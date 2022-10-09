import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'reusable_widget.dart';
import 'card_Icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'round_button.dart';
import 'result_page.dart';
import 'calculator_brain.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

late CalculatorBrain brain;




class _InputPageState extends State<InputPage> {

  int height = 180;
  int weight = 60;
  int age = 20;
   Gender selectedGender = Gender.other;
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        // backgroundColor: Color.fromARGB(0xFF, 10, 13, 34),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                 ReusableWidget(
                   onPress: (){
                     setState(() {
                       selectedGender = Gender.male;
                     });
                   },
                   colour: selectedGender==Gender.male?kActiveCardColour:kInactiveCardColour,
                   cardChild: const CardIcon(icon: FontAwesomeIcons.mars, iconText: 'MALE')

                 ),
                 ReusableWidget(
                   onPress: (){
                     setState(() {
                       selectedGender = Gender.female;
                     });
                   },
                     colour:selectedGender==Gender.female?kActiveCardColour:kInactiveCardColour,
                     cardChild: const CardIcon(iconText: 'FEMALE', icon: FontAwesomeIcons.venus)
                 )
              ]
            ),
          ),
           ReusableWidget(
             colour:kActiveCardColour,
             cardChild:Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'HEIGHT',
                    style: kStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                          height.toString(),
                        style: kStyle2,
                      ),
                      const Text(
                        'cm',
                        style: kStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor:  const Color(0xFF8D8E98),
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15.0
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 20.0
                      )

                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: kMinHeight.toDouble(),
                        max: kMaxHeight.toDouble(),
                        onChanged: (double newValue){
                          setState(() {
                        height = newValue.round();
                      });
                    }),
                  )
                ],
              ) ,
             onPress: (){},),
          Expanded(
            child:  Row(
              children: [
                ReusableWidget(
                    colour:kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',style: kStyle,),
                        Text(weight.toString(),style: kStyle2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  onPress: (){
                      setState(() {

                      });
                  },
                ),
                ReusableWidget(
                    colour:kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: kStyle,),
                        Text(age.toString(),style: kStyle2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    onPress: (){})
              ],
            ),
          ),
          BottomButton(buttonText: 'CALCULATE', ontap: (){
            brain = CalculatorBrain(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResultPage()));
          },)


        ],
      )

    );
  }
}




