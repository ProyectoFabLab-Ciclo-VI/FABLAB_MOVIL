import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/reset_password.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/TutorialLoginWidgets/form_builder.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sizer/sizer.dart';

class Ingreso extends StatelessWidget {
  const Ingreso({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 40.sp, // usando sizer
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
        SizedBox(
          height: 15.sp,
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Resetpassword(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Align(
              alignment: Alignment.centerRight,
              child: textoRegularBlanco(
                '¿Olvidaste tu contraseña?',
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.1, // usando mediaquery
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
            minimumSize: const Size(250, 50),
            backgroundColor: Color(Colors.white.value),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          // child: const Text('Iniciar Sesión',
          //     style: TextStyle(color: Colors.black)),
          child: textoRegularNegro(
            'Ingresar',
          ),
        ),
      ],
    );
  }
}
