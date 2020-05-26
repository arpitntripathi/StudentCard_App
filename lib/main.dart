import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: StudentCard(),
));

class StudentCard extends StatefulWidget {
  @override
  _StudentCardState createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  int yearlevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Student Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/student.png'),
                radius: 40,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Arpit',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Roll No.',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1752510010',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Year',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$yearlevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'tempmail.arpit@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
         onPressed: () {
           setState(() {
             yearlevel+=1;
           });
         },
         child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        tooltip: 'Increment'
     ),
    );
  }
}
