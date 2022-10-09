import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
              child: ReusableWidget(
                onPress: (){},
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    Text(
                      brain.getResult(),
                      style:kTitleStyle ,
                    ),
                    Text(brain.calculateBMI(),style: kBMITextStyle,),
                    Text(

                      brain.getInterpretation(),
                      textAlign: TextAlign.center,
                      style: kSuggestionTextStyle,
                    )
                  ],

                ),
              )),
        BottomButton(buttonText: 'RE_CALCULATE', ontap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const InputPage()));
        })
        ],
      )
    );
  }
}
