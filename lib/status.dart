import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/post.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'dart:html';

//  home
class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('post').snapshots();

  @override
  Widget build(BuildContext context) {
    void pickerImage() async {
      final ImagePicker _picker = ImagePicker();
      final image = await _picker.pickImage(source: ImageSource.gallery);
    }

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
                hintText: "Enter ur title",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(00),
                  child: Icon(Icons.email),
                ),
              ),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: "Enter ur description",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(00),
                  child: Icon(Icons.email),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: pickerImage,
              child: Text("Upload an Image"),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: StreamBuilder<QuerySnapshot>(
                  stream: _usersStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
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
                            children: [Post(data: data)],
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
        // child: SafeArea(
        //   child: StreamBuilder<QuerySnapshot>(
        //     stream: _usersStream,
        //     builder:
        //         (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        //       if (snapshot.hasError) {
        //         return Text('Something went wrong');
        //       }

        //       if (snapshot.connectionState == ConnectionState.waiting) {
        //         return Center(
        //             // child: LoadingFadingLine.circle(),
        //             );
        //       }
        //       // ignore: unused_local_variable
        //       var vwidth = MediaQuery.of(context).size.width;
        //       var vhight = MediaQuery.of(context).size.height;
        //       return ListView(
        //         children: snapshot.data!.docs.map((DocumentSnapshot document) {
        //           Map<String, dynamic> data =
        //               document.data()! as Map<String, dynamic>;
        //           print("print(data);print(data);");
        //           print(data);
        //           return Container(
        //             child: Column(
        //               children: [Post(data: data)],
        //             ),
        //           );
        //         }).toList(),
        //       );
        //     },
        //   ),
        // ),
      ),
    );
  }
}
