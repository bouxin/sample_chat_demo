import 'package:flutter/material.dart';
import 'package:sample_chat_demo/models/message_model.dart';
import 'package:sample_chat_demo/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message, bool isMe) {
    return Row(
      children: [
        Container(
          margin: isMe
              ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
              : EdgeInsets.only(top: 8.0, bottom: 8.0),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe
                ? BorderRadius.only(topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
                : BorderRadius.only(topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.time,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
                )
              ),
              Text(
                message.text,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ],
            ),
        ),
        IconButton(
          icon: message.liked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: Colors.red,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
