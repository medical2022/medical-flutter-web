import 'package:flutter/material.dart';

class EvolucionView extends StatelessWidget {
  const EvolucionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 10,),
        Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Evolución",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
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