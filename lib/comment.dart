import 'package:flutter/material.dart';

//post suppose

class Comment extends StatelessWidget {
  final Map data;
  Comment({required this.data});
  @override
  Widget build(BuildContext context) {
    print(data);
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(data["title"]),
        ],
      ),
    );
  }
}
