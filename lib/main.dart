import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("わかめ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ))),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
          
              ],
            ),
          )),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text("投稿者:こじまさん"),
                SizedBox(width: 8),
                Text("2023/10/21"),
              ]),
              SizedBox(height: 8),
              Text("過酷"),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.airport_shuttle),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.sailing)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_transportation_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.biotech)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.private_connectivity)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
