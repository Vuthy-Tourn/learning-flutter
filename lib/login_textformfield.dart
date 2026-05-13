import 'package:flutter/material.dart';
import 'package:learning_application/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  // Form Key
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _showpassword = true;

  bool _isLoading = false;

  Future<void> _login() async {

    // Validate form
    if (_formKey.currentState!.validate()) {

      setState(() {
        _isLoading = true;
      });

      await Future.delayed(Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      // Redirect
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    }
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

              // FORM
              child: Form(
                key: _formKey,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    // EMAIL
                    TextFormField(
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      // VALIDATION
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }

                        if (!value.contains("@")) {
                          return "Enter valid email";
                        }

                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    // PASSWORD
                    TextFormField(
                      controller: _password,
                      obscureText: _showpassword,
                      keyboardType: TextInputType.text,

                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),

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

                        hintText: "Password",
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }

                        return null;
                      },
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
      ),
    );
  }
}