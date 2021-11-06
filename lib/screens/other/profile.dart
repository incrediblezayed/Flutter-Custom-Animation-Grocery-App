import 'package:animation_2/components/profile_circle_avatar.dart';
import 'package:animation_2/constants.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'profile',
              child: ProfileAvatar(
                radius: size.width * 0.2,
              ),
            ),
            Hero(
              tag: userName,
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  userName,
                  textScaleFactor: 2,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ProfileFields(text: "Phone Number", value: "+914567896541"),
            ProfileFields(text: "E-Mail", value: "email@domain.com"),
            ProfileFields(
                text: "Address",
                value: "123, ABC Appartment, Street Xyz, Area"),
            ProfileFields(text: "City", value: "Mumbai")
          ],
        ),
      ),
    );
  }
}

class ProfileFields extends Container {
  final String text;
  final String value;
  ProfileFields({required this.text, required this.value})
      : super(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  text,
                  textScaleFactor: 1.2,
                ),
              ),
              TextField(
                controller: TextEditingController(text: value),
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ],
          ),
        );
}
