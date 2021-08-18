import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'rounded_icon_btn.dart';

class CartCounter extends StatelessWidget {
  final int counter;
  final Function(bool) action;
  const CartCounter({
    Key? key,
    required this.counter,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: Row(
        children: [
          RoundIconBtn(
            iconData: Icons.remove,
            color: Colors.black38,
            press: () {
              action(false);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                counter.toString(),
                key: UniqueKey(),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          RoundIconBtn(
            iconData: Icons.add,
            press: () {
              action(true);
            },
          ),
        ],
      ),
    );
  }
}
