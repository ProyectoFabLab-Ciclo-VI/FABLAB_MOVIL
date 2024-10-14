import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/loginRegister.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF234886),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logoblanco.png'),
            const SizedBox(height: 30),
            const LoginRegisterToggle(),
            const SizedBox(height: 100),
            // Campo de texto para Email
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF0F203B),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(color: Colors.white), // Color del borde
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color:
                          Colors.white), // Color del borde cuando está enfocado
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Campo de texto para Password
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Color(0xFF0F203B),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(color: Colors.white), // Color del borde
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color:
                          Colors.white), // Color del borde cuando está enfocado
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            // Botón de ingresar
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrincipalMenu()),
                  );                 
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Ingresar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // Toggle para Log in / Register
          ],
        ),
      ),
    );
  }
}
