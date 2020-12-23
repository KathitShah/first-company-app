import 'package:flutter/material.dart';

class Message {
  final String title;
  final String body;
  final int id;

  const Message({
    @required this.title,
    @required this.body,
    this.id,
  });
}
