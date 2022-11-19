import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_screen.dart';

class MessageListWidget extends StatelessWidget {
  const MessageListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return ChatScreen();
          }));
        },
        leading: CircleAvatar(),
        trailing: Text('3分前'),
        title: Text('Apples'),
        subtitle: Text('DDD楽しい'),
      ),
      ListTile(
        leading: CircleAvatar(),
        trailing: Text('3分前'),
        title: Text('Apples'),
        subtitle: Text('DDD楽しい'),
      ),
      ListTile(
        leading: CircleAvatar(),
        trailing: Text('3分前'),
        title: Text('Apples'),
        subtitle: Text('DDD楽しい'),
      ),
    ]);
  }
}
