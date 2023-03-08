import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: RaperLevel(),
    ));

class RaperLevel extends StatefulWidget {
  @override
  State<RaperLevel> createState() => _RaperLevelState();
}

class _RaperLevelState extends State<RaperLevel> {

  List<String> levels = [
    'MASTA',
    'Loshok',
    'NIGGA',
    'schoolboy'
  ];

  String level = 'krasava';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Raper.sID'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 5.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level =(levels..shuffle()).first;
          });
        },
        child: Icon(Icons.change_circle),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/rap-1.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[900],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'LAPORTE',
              style: TextStyle(
                color: Colors.pinkAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'CURRENT RAP LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.pinkAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: Colors.grey[850],
                ),
                SizedBox(width: 15),
                Text(
                  'laporte@rico.com',
                  style: TextStyle(
                    color: Colors.grey[950],
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Center(
              child: Image.asset('assets/1670265064_17-kartinkin-net-p-kartinki-rep-vkontakte-18.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
