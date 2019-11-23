import "package:flutter/material.dart";
import "constants.dart";
import "reusable_card.dart";
import "bottom_btn.dart";

class Results extends StatelessWidget{
  Results({@required this.bmiResult,@required this.bmiText,@required this.bmiDesc });
  final String bmiResult;
  final String bmiText;
  final String bmiDesc;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ሰውነት ግዝፈት መለኪያ፡ ማሰቢያ'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child:Container(
              padding:EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("ውጤትዎ",
              style: kTitleTextStyle,),
            )
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiDesc,
                  style: kResultTextStyle,),
                  Text(
                    bmiResult,
                    style:kBMITextStyle,
                  ),
                  Text(bmiText,
                  textAlign: TextAlign.center,
                  style:kBodyTextStyle,)
                ],
              ),
            ),
          ),
          BottomBtn(buttonTitle: "እንደና አስብ",
          onTap: (){
            Navigator.pop(context);
          },)
        ],
      )
    );
  }
}