import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(GetPlatform.isIOS){
      return const CupertinoActivityIndicator();
    }else{
      return const CircularProgressIndicator();
    }
  }
}