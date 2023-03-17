import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(
        children: [
          Form(child: Column(children: [
            TextFormField(),
            TextFormField(),
            ElevatedButton(onPressed: (){}, child: const Text(''),), TextButton(onPressed: (){}, child: const Text('')),
          ],),),
        ],
      ),),
    );
  }
}