import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

//here convert StatelessWidget to StatefullWidget for getting Currnet time
// of Screen
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //Create variable for getting/using DateTime()Function
    var time = DateTime.now();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Get User Input'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Color.fromARGB(255, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Currnet Time: ${time.hour} : ${time.minute} : ${time.second}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('Enter here'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
