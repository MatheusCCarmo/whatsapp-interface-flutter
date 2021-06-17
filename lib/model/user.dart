import 'package:flutter/material.dart';

class User {
  String name;
  String description;
  String platform;
  String imageSrc;

  User({
    @required this.name,
    @required this.description,
    this.platform,
    this.imageSrc,
  });
}
