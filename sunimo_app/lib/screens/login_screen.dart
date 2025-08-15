import 'package:flutter/material.dart';
import 'package:sunimo_app/repositories/user_database_interface.dart';
import 'package:sunimo_app/screens/main_screen.dart';
import '../models/settings.dart';
import '../models/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _pinController = TextEditingController();

  bool wrongCredentials = false;
  bool loggedIn = false;

  void _login() {
    UserDatabaseInterface userRepo = Settings.userRepo;

    User? user = userRepo.getByEmail(_emailController.text);
    if (user != null) {
      if (user.password == _passwordController.text && user.pincode == int.tryParse(_pinController.text)) {
        setState(() {
          loggedIn = true;
          wrongCredentials = false;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        });
      }
    }

    if (!loggedIn) {
      setState(() {
        wrongCredentials = true;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  key: _loginKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrongCredentials
                          ? Text(
                              "Falsche Eingabe",
                              style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          : Container(),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Email"),
                          hintText: "Bitte Emailadresse eingeben",
                        ),
                        validator: (value) {
                          // Regular Expression für Email-Adresse
                          bool validEmail = RegExp(r"^[a-zA-Z0-9._,!#$%'*+-/]+@[a-zA-Z0-9_]+\.[a-zA-Z]{2,4}").hasMatch(value ?? "");
                          if (!validEmail) {
                              return "Bitte eine gültige Email-Adresse eingeben";
                          }
                          return null;
                        }
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _passwordController,
                        obscuringCharacter: "\u2665",
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Passwort"),
                          hintText: "Bitte Passwort eingeben",
                        ),
                         validator: (value) {
                          if (value == null || value.trim() == "") {
                              return "Bitte Passwort eingeben";
                          }
                          return null;
                        }
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _pinController,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Pin Code"),
                          hintText: "Bitte Pin eingeben",
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.length != 4) {
                            return "Bitte eine 4-stellige Pin eigeben";
                          }
                          // Nur Zahlen zulassen (int)
                          if (int.tryParse(value) == null) {
                              return "Bitte nur Zahlen eingeben";
                          }
                          return null;
                        }
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_loginKey.currentState!.validate()) {
                            _login();
                          }
                        }, 
                        child: Text("Login")
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
