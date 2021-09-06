import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final Map data;

  // Post(Object? data, {required this.data});
  Post({required this.data});
  @override
  Widget build(BuildContext context) {
    print(data);
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(
            // " https://i.pinimg.com/474x/b3/fd/06/b3fd06bab4e0ae61659c4ef59e573229.jpg",
            // width: 100,
            // height: 100,
            data["url"],
            width: 100,
            height: 100,
          ),
          // Text("title"),
          // Text("Description"),
          Text(data["title"]),
          Text(
            data["description"],
          )
        ],
      ),
    );
  }
}
