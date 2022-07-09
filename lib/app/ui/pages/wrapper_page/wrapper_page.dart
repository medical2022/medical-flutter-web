
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/wrapper_controller.dart';


class WrapperPage extends GetView<WrapperController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapperPage'),
      ),
      body: SafeArea(
        child: Text('WrapperController'),
      ),
    );
  }
}
  