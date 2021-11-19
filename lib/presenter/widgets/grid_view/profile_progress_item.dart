import 'package:flutter/material.dart';

class ProfileProgressItem extends StatelessWidget {
  final String name;
  final double value;

  const ProfileProgressItem({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.lightBlueAccent,width: 1.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('${value * 100}%',style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),),),
          const SizedBox(height: 8.0),
          CircularProgressIndicator(value: value),
          const SizedBox(height: 8.0),
          Text(name,style: Theme.of(context).textTheme.bodyText1,)
        ],
      ),
    );
  }
}
