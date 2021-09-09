import 'package:flutter/material.dart';

//post suppose

class Comment extends StatelessWidget {
  final Map data;
  Comment({required this.data});
  @override
  Widget build(BuildContext context) {
    print(data);
    return Container(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.indigo.shade100,
                width: 5.0,
              ),
            ),
            child: SingleChildScrollView(
              child: Text(
                data["title"],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
