import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/reset_password.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/TutorialLoginWidgets/form_builder.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sizer/sizer.dart';

class Ingreso extends StatefulWidget {
  Ingreso({super.key});

  @override
  State<Ingreso> createState() => _IngresoState();
}

class _IngresoState extends State<Ingreso> {
  final GlobalKey<FormBuilderState> _formKey2 = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return FormBuilder(
      key: _formKey2, // Agregar la clave aquí
      child: Column(
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
                ),
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
              _formKey2.currentState?.save();
              if (_formKey2.currentState?.validate() == true) {
                final y = _formKey2.currentState?.value;
                print("Email: ${y?['email']}");
                print("Password: ${y?['password']}");

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuPrincipal(),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(screenHeight * 0.3, screenWidth * 0.12),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: textoRegularNegro('Ingresar'),
          ),
        ],
      ),
    );
  }
}
