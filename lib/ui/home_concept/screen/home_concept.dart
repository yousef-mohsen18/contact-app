import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeConcept extends StatelessWidget {
  HomeConcept({super.key});

  @override
  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
    final userName=args['userName'];
    final email=args['email'];
    final phone=args['phone'];
    return Scaffold(
      body: Column(
        children: [
          Text("$userName",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: .w600),),
          Text("$email",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: .w600),),
          Text("$phone",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: .w600),)
        ],
      ),
    );
  }
}
