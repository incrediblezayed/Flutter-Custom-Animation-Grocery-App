import 'package:animation_2/constants.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends CircleAvatar {
  final ImageProvider image;
  final double? radius;
  ProfileAvatar({this.image = const AssetImage(profileImage), this.radius})
      : super(
            backgroundImage: image,
            backgroundColor: Colors.transparent,
            radius: radius, );
}
