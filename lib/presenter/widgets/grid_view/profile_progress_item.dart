import 'package:flutter/material.dart';

class ProfileProgressItem extends StatelessWidget {
  final String name;
  final double value;

  const ProfileProgressItem({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircularProgressIndicator(value: value),
          const SizedBox(height: 8.0),
          Text(name,style: Theme.of(context).textTheme.bodyText1,)
        ],
      ),
    );
  }
}
