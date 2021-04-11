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
  id: 3,
  name: 'John',
  avatar: 'assets/images/stock-photo-1023523813.jpg'
);

final User olivia = User(
  id: 4,
  name: 'Olivia',
  avatar: 'assets/images/stock-photo-1023524212.jpg'
);

final User sam = User(
  id: 5,
  name: 'Sam',
  avatar: 'assets/images/stock-photo-1023548996.jpg'
);

List<User> favorites = [sam, olivia, john, greg, james];

List<Message> chats = [
  Message(
    sender: john,
    time: '4:23 PM',
    text: 'What a mess, I just love programming!',
    liked: true,
    unread: false,
  ),
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
    liked: false,
    unread: true,
  ),
  Message(
    sender: sam,
    time: '6:24 PM',
    text: 'Ah~, I love Flutter',
    liked: true,
    unread: true,
  ),
];

List<Message> messages = [
  Message(
    sender: john,
    time: '4:23 PM',
    text: 'What a mess, I just love programming!',
    liked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '4:24 PM',
    text: 'That\'s great!, Are you wanna be a programmer?',
    liked: false,
    unread: false,
  ),
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? what did you do today?',
    liked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:24 PM',
    text: 'Learning swimming, Can you swimming?',
    liked: false,
    unread: false,
  ),
  Message(
    sender: olivia,
    time: '6:23 PM',
    text: 'Hello, welcome to Flutter',
    liked: false,
    unread: true,
  ),
  Message(
    sender: sam,
    time: '6:24 PM',
    text: 'Ah~, I love Flutter',
    liked: true,
    unread: true,
  ),
];