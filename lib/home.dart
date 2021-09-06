import 'package:flutter/material.dart';
import 'package:project/status.dart';
import 'chat.dart';
import 'call.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RiaChat',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: new AppBar(
            title: Text(
              'RiaChat',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  right: 22,
                ),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 22,
                ),
                child: Icon(Icons.more_vert),
              ),
            ],

            // backgroundColor: Colors.green[800],
            bottom: TabBar(
                unselectedLabelColor: Colors.white30,
                labelColor: Colors.white,
                indicatorColor: Colors.teal,
                tabs: [
                  Tab(
                      child: Text(
                    'CHATS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Tab(
                    child: Text(
                      'STATUS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'USER',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
          ),
          body: TabBarView(children: [
            Chat(),
            Status(),
            Call(),
          ]),
        ),
      ),
    );
  }
}
