import 'package:ephamarcy/services/authservice.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 0,),
      body: SafeArea(child: SingleChildScrollView(
        child: Form(child: Column(
          children: [
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
                      _password=value;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Password ",
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
                SizedBox(height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                   
                    enableSuggestions: true,
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (value) {},
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        alignLabelWithHint: true),
                    validator: ((value) {
                      if (value !=_password) {
                        return "Passwords do not match";
                      }
                      return null;
                    }),
                  ),
                ),
                Divider(
                  thickness:2,
                ),
                
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (() async{
                        authService.signupWithEmailAndPassword(
                            _email.trim(), _password.trim(), context);
                            Navigator.pop(context);
                      }),
                      child: Text("SignIn"),
                    )),
                    const Divider(thickness: 2,),
                    const Center(child: Text("Already have an account ?",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
          ],
        )),
      )),
    );
  }
}