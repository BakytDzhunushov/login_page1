import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String log = '';
  String pas = '';
  bool isIconVisible = false;
  bool hidePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150,
            width: 150,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
            ),
            child: Center(
              child: FlutterLogo(
                size: 100,
              ), //Image.asset('asset/images/flutter-logo.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              onChanged: (logn) {
                //  print(value);
                log = logn;
                //  print(logn);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.account_circle),
                labelText: 'login',
                hintText: 'Enter valid email id as abc@gmail.com',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              onChanged: (pass) {
                //try this
                pass.isNotEmpty
                    ? setState(() => isIconVisible = true)
                    : setState(() => isIconVisible = false);
                //or
                setState(() => pass.isNotEmpty
                    ? isIconVisible = true
                    : isIconVisible = false);
                pas = pass;
                //the result is the same it's just a shortcode
              },
              obscureText: hidePass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter password',
                suffixIcon: isIconVisible
                    ? IconButton(
                        onPressed: () {
                          setState(() => hidePass = !hidePass);
                        },
                        icon: Icon(
                          hidePass ? Icons.visibility_off : Icons.visibility,
                        ),
                      )
                    : null,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (log == 'kurs1@gmail.com' && pas == 'kurs1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                print('tuura');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.blue,
                    content: Center(
                      child: Text(
                        'Error messege',
                        style: TextStyle(color: Colors.red, fontSize: 30),
                      ),
                    ),
                  ),
                );
                print('jalgan');
              }
            },
            child: Text('Kiryy'),
          ),
        ],
      ),
    );
  }
}