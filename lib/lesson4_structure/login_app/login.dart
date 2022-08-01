import 'package:coding_chef_mildhot_exercise/lesson4_structure/login_app/my_button/my_button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sign in',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: const Text(
              'Login with Google',
              style: TextStyle(fontSize: 18.0, color: Colors.black87),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF334D92),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/flogo.png'),
                  const Text(
                    'Login with Facebook',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/flogo.png'),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
