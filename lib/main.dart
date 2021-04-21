import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> scorekeeper = [];
//   ScrollController _controller = ScrollController();
//   void scroll(double position) {
//  ScrollController.jumpTo();
// }
//   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: Text('Neon Quiz App'),
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Container(
                  child: Center(
                      child: Text(
                    'Every questions go on here.. ',
                    style: kButtonTextStyle,
                  )),
                ),
              ),
            ),
            BottomButton(
              txt: 'True',
              colour: Colors.green,
              onPressed: () {
                setState(() {
                  scorekeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
            // SizedBox(
            //   height: 20,
            // ),
            BottomButton(
                txt: 'False',
                colour: Colors.red,
                onPressed: () {
                  setState(() {
                    scorekeeper.add(Icon(
                      Icons.close,
                      color: Colors.red,
                      
                    ));
                  });
                }),

            // SizedBox(
            //   height: 20,
            // ),
            SingleChildScrollView(
              // controller: _controller,              
              scrollDirection: Axis.horizontal,
              child: Row(
                children: scorekeeper,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
