import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcTwo extends StatefulWidget {
  @override
  _CalcTwoState createState() => _CalcTwoState();
}

class _CalcTwoState extends State<CalcTwo> {
  var userInput = 'userinput';
  var answer = 'answer';
  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.headline4;
    var height = AppBar().preferredSize.height;
    Size screen = MediaQuery.of(context).size;

    double buttonSize = screen.width / 4 - 5;
    double displayHeight = screen.height - (buttonSize * 5) - height - 22;

    return Scaffold(
      appBar: new AppBar(
        // backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black26,
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(
              icon: Icon(Icons.lightbulb),
              color: Colors.black26,
              onPressed: () {
                setState(() {
                  AdaptiveTheme.of(context).toggleThemeMode();
                });
              },
            ),
          ),
        ],
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff028E83),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Calculator',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff028E83),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Convertor',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.greenAccent,
            height: displayHeight,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.centerRight,
                  child: Text(userInput, style: style),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    answer,
                    style: style,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: Theme.of(context).buttonColor == Colors.red[300]
                ? BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        Colors.yellow[800],
                        Colors.red,
                        Colors.indigo,
                        Colors.teal,
                      ],
                    ),
                  )
                : null,

            // margin: EdgeInsets.all(5),
            // color: Colors.lightBlueAccent,
            // height: screen.height - displayHeight - height,
            // width: buttonSize * 4,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          'C',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        // borderRadius: BorderRadius.circular(50),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: IconButton(
                        icon: Icon(Icons.backspace),
                        iconSize: 22,
                        onPressed: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '%',
                          style: TextStyle(
                            color: const Color(0xff028E83),
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '%';
                            print(userInput);
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '\u00f7',
                          style: TextStyle(
                            color: const Color(0xff028E83),
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '\u00f7';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '7',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '7';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '8',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '8';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '9',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '9';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          'X',
                          style: TextStyle(
                            color: const Color(0xff028E83),
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += 'X';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '4',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '4';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '5',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '5';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '6',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '6';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '-',
                          style: TextStyle(
                            color: const Color(0xff028E83),
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '-';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '1',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '1';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '2',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '2';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '3',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '3';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: const Color(0xff028E83),
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '+';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '±',
                          style: style,
                        ),
                        onPressed: () {},
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '0',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '0';
                            print('0');
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '.',
                          style: style,
                        ),
                        onPressed: () {
                          setState(() {
                            userInput += '.';
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      width:
                          buttonSize - MediaQuery.of(context).padding.left - 15,
                      child: FlatButton(
                        child: Text(
                          '=',
                          style: TextStyle(
                            color: const Color(0xff028E83),
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
