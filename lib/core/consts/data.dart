import 'package:cars/features/chats/data/models/chat_model.dart';
import 'package:cars/features/chats/presentation/view/messages_view.dart';
import 'package:cars/features/orders/presentation/view/orders_view.dart';
import 'package:cars/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

import '../../features/chats/data/models/message_model.dart';
import '../../features/home/presentation/view/home_view.dart';
import 'assets.dart';

//screens
List<Widget> screens = const [
  HomeView(),
  OrdersView(),
  MessagesView(),
  ProfileView(),
];
List<String> cars = [Assets.car1, Assets.car2, Assets.car3];
List<Message> messages_lists = [
  Message(
      id: 1,
      message:
      """Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.""",
      time: '10:21'),
  Message(
      id: 2,
      message:
      """Hi Melan, thank you for considering me, this is good news for me.""",
      time: '10:21'),
  Message(
      id: 1,
      message: 'Can we have an interview via google meet call today at 3pm?',
      time: '10:21'),
  Message(id: 2, message: 'Of course, I can!', time: '10:21'),
  Message(
      id: 1,
      message:
      """Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.""",
      time: '10:21'),
  Message(
      id: 2,
      message:
      """Hi Melan, thank you for considering me, this is good news for me.""",
      time: '10:21'),
  Message(
      id: 1,
      message: 'Can we have an interview via google meet call today at 3pm?',
      time: '10:21'),
  Message(id: 2, message: 'Of course, I can!', time: '10:01'),
  Message(
      id: 1,
      message:
      """Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.""",
      time: '10:21'),
  Message(
      id: 2,
      message:
      """Hi Melan, thank you for considering me, this is good news for me.""",
      time: '10:21'),
  Message(
      id: 1,
      message: 'Can we have an interview via google meet call today at 3pm?',
      time: '10:21'),
  Message(id: 2, message: 'Of course, I can!', time: '10:21'),
  Message(
      id: 1,
      message:
      """Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.""",
      time: '10:21'),
  Message(
      id: 2,
      message:
      """Hi Melan, thank you for considering me, this is good news for me.""",
      time: '10:21'),
  Message(
      id: 1,
      message: 'Can we have an interview via google meet call today at 3pm?',
      time: '10:21'),
  Message(id: 2, message: 'Of course, I can!', time: '10:21'),
];

List<Chat> chats_list = [
  Chat(
    logo:
    'https://w7.pngwing.com/pngs/421/879/png-transparent-twitter-logo-social-media-iphone-organization-logo-twitter-computer-network-leaf-media.png',
    name: 'Twitter',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '10:32',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
    name: 'Facebook',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '09:02',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
    name: 'Instagram',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '07:02',
  ),
  Chat(
    logo:
    'https://w7.pngwing.com/pngs/421/879/png-transparent-twitter-logo-social-media-iphone-organization-logo-twitter-computer-network-leaf-media.png',
    name: 'Twitter',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '10:32',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
    name: 'Facebook',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '09:02',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
    name: 'Instagram',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '07:02',
  ),
  Chat(
    logo:
    'https://w7.pngwing.com/pngs/421/879/png-transparent-twitter-logo-social-media-iphone-organization-logo-twitter-computer-network-leaf-media.png',
    name: 'Twitter',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '10:32',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
    name: 'Facebook',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '09:02',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
    name: 'Instagram',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '07:02',
  ),
  Chat(
    logo:
    'https://w7.pngwing.com/pngs/421/879/png-transparent-twitter-logo-social-media-iphone-organization-logo-twitter-computer-network-leaf-media.png',
    name: 'Twitter',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '10:32',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
    name: 'Facebook',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '09:02',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
    name: 'Instagram',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '07:02',
  ),
  Chat(
    logo:
    'https://w7.pngwing.com/pngs/421/879/png-transparent-twitter-logo-social-media-iphone-organization-logo-twitter-computer-network-leaf-media.png',
    name: 'Twitter',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '10:32',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
    name: 'Facebook',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '09:02',
  ),
  Chat(
    logo:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
    name: 'Instagram',
    lastMessage: 'Here is the link: http://zoom.com/abcdeefg',
    time: '07:02',
  ),
];
