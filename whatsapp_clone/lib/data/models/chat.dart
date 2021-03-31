import 'package:flutter/cupertino.dart';

class Chat {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  Chat ({
    @required this.name,
    @required this.message,
    @required this.time,
    @required this.imageUrl,
  });
}