import 'package:ephamarcy/pages/home.dart';
import 'package:ephamarcy/pages/register.dart';
import 'package:ephamarcy/services/authservice.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 32,),
                Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/icon/pills.png",
                          width: 80,
                          height: 80,
                        ))),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    enableSuggestions: true,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      setState(() {
                        _email=value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "email ",
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        alignLabelWithHint: true),
                    validator: ((value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return "Invalid Email Addresss";
                      }
                      return null;
                    }),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    enableSuggestions: true,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      setState(() {
                        _password=value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "password ",
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        alignLabelWithHint: true),
                    validator: ((value) {
                      if (value!.isEmpty || value.length < 8) {
                        return "Password is too short at least 8 characters";
                      }
                      return null;
                    }),
                  ),
                ),
                Divider(
                  thickness:2,
                ),
                Center(
                    child: GestureDetector(
                      onTap: (() {
                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(BuildContext context)=>Register()  ), (route) => false);
                      }),
                      child: Text(
                                      "No account ? Register ",
                                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                                    ),
                    )),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (() async{
                        authService.signInWithEmailAndPassword(
                            _email.trim(), _password.trim(), context);
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(BuildContext context)=>Home()  ), (route) => false);
                      }),
                      child: Text("SignIn"),
                    ))
              ],
            )),
      )),
    );
  }
}
