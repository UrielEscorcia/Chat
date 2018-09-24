import 'package:flutter/material.dart';
import './chat/chat.dart';

class ChatsView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Chats")
            ),
            body: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext conext, int index) {
                    return ListTile(
                        leading: CircleAvatar(child: Text("A"),),
                        title: Text("Titulo"),
                        onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (BuildContext context) => ChatView()
                            ));
                        },
                    );
                }
            ),
        );
    }
}