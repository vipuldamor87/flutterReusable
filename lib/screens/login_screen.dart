import 'package:flutter/material.dart';
import 'package:flutter_ap3/components/btn.dart';
import 'package:flutter_ap3/components/link_dart.dart';
import 'package:flutter_ap3/components/tf.dart';
import 'package:flutter_ap3/screens/home_screen.dart';
import 'package:flutter_ap3/utils/Utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController =   TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Container(
        child: Column(
          children: [
           /* TextField(
              controller: _emailController,
            ),*/
            //Utils.getTf(_emailController),
            // TextField(
            //   controller: _passwordController,
            // ),
            
            // Utils.getTf(_passwordController),
            TF(
              controller: _emailController,
              helpText: 'Email',
              hintText: 'Email',
              enabled: true,
              borderColor: Colors.green,
              isPassword: false,
              prefixIcon: (Icons.email),
              readOnly: false,
              suffixIcon: (Icons.email),
            ),

            TF(
              controller: _passwordController,
              helpText: 'Password',
              hintText: 'Password',
              enabled: true,
              borderColor: Colors.red,
              isPassword: true,
              prefixIcon: (Icons.circle),
              readOnly: false,
              suffixIcon: (Icons.email),
            ),
            // Container(
            //   child: Utils.getTf(_passwordController),
            // ),
            Row(
              children: [
                Expanded(
                  child: Btn(
                    onPress: (){
                      print("hello");
                      Navigator.pushReplacement(context, MaterialPageRoute( builder: (context){
                        return HomeScreen();
                      }));
                    },
                    color: Colors.green,
                    text: 'LOGIN',
                  ),
                ),
              ],
            ),
            LinkBtn(
                onPress: (){},
                text: "Forgot Password?",
                color: Colors.green)
          ],
        ),
      ),
    );
  }
}
