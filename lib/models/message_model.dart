import 'package:sample_chat_demo/models/user_model.dart';

class Message {
  final User sender;
  final String text;
  final String time;
  final bool liked;
  final bool unread;

  Message({this.sender, this.text, this.time, this.liked, this.unread});

}

final User currentUser = User(
    id: 0,
    name: 'Current User',
    avatar: 'assets/images/stock-photo-63437883.jpg',
);

final User greg =  User(
  id: 1,
  name: 'Greg',
  avatar: 'assets/images/stock-photo-102302559.jpg'
);

final User james =  User(
    id: 2,
    name: 'James',
    avatar: 'assets/images/stock-photo-121593027.jpg'
);

final User john = User(
  id: 2,
  name: 'John',
  avatar: 'assets/images/stock-photo-1023523813.jpg'
);

final User olivia = User(
  id: 3,
  name: 'Olivia',
  avatar: 'assets/images/stock-photo-1023524212.jpg'
);

final User sam = User(
  id: 4,
  name: 'Sam',
  avatar: 'assets/images/stock-photo-1023548996.jpg'
);

List<User> favorites = [sam, olivia, john, greg, james];

List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? what did you do today?',
    liked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '6:23 PM',
    text: 'Hello, welcome to Flutter',
    liked: true,
    unread: true,
  ),
  Message(
    sender: john,
    time: '4:23 PM',
    text: 'What a mess, I just love programming!',
    liked: true,
    unread: false,
  ),
];