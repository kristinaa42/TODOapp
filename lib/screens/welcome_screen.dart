import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      
     Scaffold(
        appBar: AppBar(
          title: const Text('My Planner App', style: TextStyle(fontFamily: 'Raleway'),),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          decoration:const  BoxDecoration(image: DecorationImage(image: AssetImage('images/1.jpg',), 
          opacity: 0.5, 
          fit: BoxFit.cover, 
          colorFilter:ColorFilter.mode(Color.fromARGB(255, 77, 60, 7),
          BlendMode.color), 
          ), 
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              
              Container(
                padding: const EdgeInsets.all(20),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: const BorderRadius.all(Radius.circular(20)),
                //   border: Border.all(width: 1, color: const Color.fromRGBO(13, 31, 45, 1),),
                // ),
                child:const  Text('Welcome!', style: TextStyle(fontFamily: 'Raleway', fontSize: 50, color: Colors.white, fontWeight: FontWeight.w700),),),
                const SizedBox(height: 100,),
                Container(
                  width: 330,
                  
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(width: 1, color: Theme.of(context).primaryColor),
                    borderRadius:const BorderRadius.all(Radius.circular(20),),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, foregroundColor: Colors.transparent, shadowColor: Colors.transparent, elevation: 5),
                    onPressed: (){}, child: const Text('See my TODOs', style: TextStyle(fontFamily: 'Raleway', fontSize: 25, color: Colors.white)))),
                const SizedBox(height: 50,)
,                Container(
  width: 330,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(width: 1, color: Theme.of(context).primaryColor),
                    borderRadius:const BorderRadius.all(Radius.circular(20),),
                  ),
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, foregroundColor: Colors.transparent, shadowColor: Colors.transparent, elevation: 5),
                    onPressed: (){}, 
                    child: const Text('Add new TODO', style: TextStyle(fontFamily: 'Raleway', fontSize: 25, color: Colors.white),),),
                ),
            ],
          ),
        ),
      );
    
  }
}