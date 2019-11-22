import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

Color cardColor =kInactiveCardColor;

enum Gender {
  male,
  female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedG;
  int height=180;
  int weight=60;
  int age=12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'ሰውነት ግዙፍነት መለኪያ',
          textAlign: TextAlign.center,
        )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState((){
                          selectedG=Gender.male;
                        });
                      },
                      colour: cardColor=selectedG==Gender.male ? kActiveCardColor : kInactiveCardColor,
                      cardChild: IconContent(
                          gender: 'ወንድ', iconGender: FontAwesomeIcons.mars),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState((){
                          selectedG=Gender.female;
                        });
                      },
                      colour: cardColor = selectedG==Gender.female ? kActiveCardColor : kInactiveCardColor,
                      cardChild: new IconContent(
                        gender: 'ሴት',
                        iconGender: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('ቁመት',style:kLableTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style:kNumberSytle,
                          ),
                          Text(
                            "ሴ.ሜ.",
                            style: kLableTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data:SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xff8d8e98),
                          overlayColor: Color(0x29eb1555),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 9.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 18.0),
                          thumbColor: Color(0xffeb1555),

                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max:220.0,
                          onChanged: (double newValue){
                            setState((){
                              height=newValue.toInt();
                            });
                          },

                        ),
                      )
                    ],
                  ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ክብደት',
                           style:kLableTextStyle ,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberSytle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onaction:(){
                                setState(() {
                                  weight--;
                                });
                              } ,
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onaction: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("እድሜ",
                        style: kLableTextStyle,),
                        Text(age.toString(),
                        style:kNumberSytle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onaction:(){
                                setState(() {
                                  age--;
                                });
                              } ,
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onaction: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Container(
              child: Text("አስብ"),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
class RoundIconButton extends StatelessWidget{
  RoundIconButton({@required this.icon,@required this.onaction});
  final IconData icon;
  final Function onaction;
  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:onaction,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      shape:CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}