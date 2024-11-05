import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/TutorialLoginWidgets/form_builder.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routname = 'login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: coloresPersonalizados[1],
      body: SafeArea(
        child: SingleChildScrollView(
          child: FormBuilder(
              key: _formkey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.h,
                      child: Image.asset('assets/images/logoblanco.png'),
                    ),
                    SizedBox(
                      height: 50.sp, // usando sizer
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FormBuilderCustom(
                        name: 'email',
                        obscureText: false,
                        hintText: 'Username',
                        icon: Icons.person,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: 'Campo requerido',
                          ),
                          FormBuilderValidators.email(
                            errorText: 'Correo no valido',
                          )
                        ]),
                        keyType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FormBuilderCustom(
                        name: 'password',
                        obscureText: true,
                        hintText: 'Password',
                        icon: Icons.remove_red_eye_sharp,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: 'Password requerido',
                          ),
                          FormBuilderValidators.minLength(4,
                              errorText: 'Minimo 4 caracteres'),
                          FormBuilderValidators.maxLength(7,
                              errorText: 'Maximo 7 caracteres'),
                        ]),
                        keyType: TextInputType.text,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.2, // usando mediaquery
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("Botón presionado");
                        _formkey.currentState?.save();
                        if (_formkey.currentState?.validate() == true) {
                          final y = _formkey.currentState?.value;
                          print("Email: ${y?['email']}");
                          print("Password: ${y?['password']}");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 50),
                        backgroundColor: Color(Colors.white.value),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Iniciar Sesión',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
