import  'package:flutter/material.dart';
import 'child.dart';

void main() => runApp(NavigatorTest());
 
class NavigatorTest extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         title: 'NavigatorTest',
         home: HomeScreen()
       );
   }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('HomeScreen build() method is being called..............');
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen")),
      body: Center( 
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChildScreen()),
            );  
          },
          child: Text("Open Child"),
        ), 
      ),
    );
  }
}
