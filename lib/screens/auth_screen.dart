import 'package:first_project/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/5.jpg',
            ),
            opacity: 0.5,
            fit: BoxFit.cover,
            /*colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 77, 60, 7), BlendMode.color),*/
          ),
        ),
        alignment: Alignment.center,
        //padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 50,
                  fontFamily: 'Raleway'),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Log In or Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 234, 241, 235),
                      border: Border.all(
                          width: 1, color: Theme.of(context).primaryColor),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle:
                            TextStyle(fontSize: 18, fontFamily: 'Raleway'),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person_2_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 234, 241, 235),
                      border: Border.all(
                          width: 1, color: Theme.of(context).primaryColor),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      textCapitalization: TextCapitalization.none,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(fontSize: 18, fontFamily: 'Raleway'),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.key),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 5),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(WelcomeScreen.routeName);
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Raleway'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
