import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:project/comment.dart';

//home suppose
class Chat extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Chat> {
  TextEditingController titleController = TextEditingController();

  // ignore: unused_field
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('post').snapshots();

  @override
  Widget build(BuildContext context) {
    print("data is runing/////");
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
            child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Enter ur comment",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(00),
                  child: Icon(Icons.email),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: StreamBuilder<QuerySnapshot>(
                  stream: _usersStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                          // child: LoadingFadingLine.circle(),
                          );
                    }
                    // ignore: unused_local_variable
                    var vwidth = MediaQuery.of(context).size.width;
                    var vhight = MediaQuery.of(context).size.height;
                    return ListView(
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data()! as Map<String, dynamic>;
                        print("print(data);print(data);");
                        print(data);
                        return Container(
                          child: Column(
                            children: [Comment(data: data)],
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
