import 'package:flutter/material.dart';
import 'package:learning_application/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _showpassword = true;
  bool _isLoading = false;

  // Error Messages
  String? _emailError;
  String? _passwordError;

  void _login() {

    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: 2)).then((value) {

      setState(() {
        _isLoading = false;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,

          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // EMAIL
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,

                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),

                      hintText: "Email",

                      errorText: _emailError,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // PASSWORD
                  TextField(
                    controller: _password,
                    obscureText: _showpassword,

                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),

                      hintText: "Password",

                      errorText: _passwordError,

                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _showpassword = !_showpassword;
                          });
                        },

                        child: _showpassword
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,

                    child: ElevatedButton(

                      onPressed: _isLoading ? null : _login,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      child: _isLoading
                          ? CircularProgressIndicator(
                        color: Colors.white,
                      )
                          : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}