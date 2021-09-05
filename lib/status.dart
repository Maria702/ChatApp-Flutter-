// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/post.dart';

class Status extends StatefulWidget {
  // final String username;
  // Status({required this.username});

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('post')
      // .orderBy('index', descending: true)
      // .where('index', isGreaterThan: '3')
      // .limitToLast(2)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    print("data is runing/////");
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                // child: LoadingFadingLine.circle(),
                );
          }
          var vwidth = MediaQuery.of(context).size.width;
          var vhight = MediaQuery.of(context).size.height;
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              print("print(data);print(data);");
              print(data);
              return Container(
                child: Column(
                  children: [Post(data: data)],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
