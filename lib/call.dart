import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            //2
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            //3
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            //4
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            //5
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),

            //7
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),

            //8
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),

            //9
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),

            //10
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/img1.jpg'),
                radius: 20,
              ),
              title: Text(
                'rimasha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('(6) Yesterday, 1 ...')
                ],
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
