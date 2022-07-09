
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/detailspaciente_controller.dart';


class DetailspacientePage extends GetView<DetailspacienteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailspacientePage'),
      ),
      body: SafeArea(
        child: Text('DetailspacienteController'),
      ),
    );
  }
}
  