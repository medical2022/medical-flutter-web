import 'package:flutter/material.dart';

class AnalisisplanView extends StatelessWidget {
  const AnalisisplanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 10,),
        Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Análisis y plan",
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
          SizedBox(
                height: 20,
              ),
        TextFormField(
          maxLines: 20,
          decoration:InputDecoration(
            
            
            border: OutlineInputBorder()
          )
        )
      ],
    );
  }
}