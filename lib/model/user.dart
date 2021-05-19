import 'package:flutter/material.dart';

class User {
  String name;
  String description;
  String platform;
  String imageUrl;

  User({
    @required this.name,
    @required this.description,
    this.platform,
    this.imageUrl,
  });
}
