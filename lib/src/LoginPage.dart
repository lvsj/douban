import 'package:douban/src/MainPage.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginWidget(),
    );
  }
}


class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool enableLogin = false;


  @override
  void initState() {
    super.initState();
    usernameController.addListener(_onCheckEmpty);
    passwordController.addListener(_onCheckEmpty);
  }

  void _onCheckEmpty() {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      setState(() {
        enableLogin = true;
      });
    } else {
      setState(() {
        enableLogin = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/icon_douban.jpg'),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Colors.white,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'username',
                  icon: Icon(Icons.person),
                ),
                controller: usernameController,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'password',
                  icon: Icon(Icons.lock),
                ),
                controller: passwordController,
                obscureText: true,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FlatButton(
            padding: const EdgeInsets.symmetric(
                vertical: 15, horizontal: 80),
            child: Text('Login',
              style: TextStyle(color: Colors.white, fontSize: 20),),
            color: enableLogin ? Colors.blue : Colors.grey.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            onPressed:_onLoginPress,
          ),
        ],
      ),
    );
  }
  void _onLoginPress(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()),);
  }

}


