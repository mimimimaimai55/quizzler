import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

  class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];
  List<String> questions = [
    '好きな食べ物はなんですか？',
    '出身地はどこですか？',
    '年齢はおいくつですか？',
    '年齢はおいくつですか？',
    '年齢はおいくつですか？',

  ];

  int questionNumber = 0;

    @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding:EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                  questions[questionNumber],
                     textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding:EdgeInsets.all(15.0),
            child:ElevatedButton(
              child: Text(
                'True',
               style: TextStyle(
               fontSize: 20.0,
               color: Colors.white,
                ),
               ),
              onPressed: (){
                //The user picked true.
                setState(() {

                });
                scoreKeeper.add(
                  Icon(Icons.check,color:Colors.green,),
                );
              },
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding:EdgeInsets.all(15.0),
            child:ElevatedButton(

              child: Text(
                'False',

                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: (){},
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}



