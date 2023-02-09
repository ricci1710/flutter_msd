import 'package:flutter/material.dart';

import '../models/usu_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UsuColors.primaryPalettesPrimaryUsuBlueBase100,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/logos/logo_usu_weiss.png'),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: const Text(
                'Anmeldung',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 6,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'SERVER',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 6,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'BENUTZER-ID',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'PASSWORT',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(4),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('ANMELDEN'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
