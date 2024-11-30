import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login/login_register_controller.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Login/login.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/reset_password.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Login_Reset_Register/Login/form_builder_login.dart';
import 'package:fab_lab_upeu/shared/Utils/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
    return Column(
      children: [
        SizedBox(
          height: 3.h, // usando sizer
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: FormBuilderCustom(
            name: 'Nombre',
            obscureText: false,
            hintText: 'Nombre',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(
                errorText: 'Campo requerido',
              ),
            ]),
            keyType: TextInputType.text,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: FormBuilderCustom(
            name: 'Apellidos',
            obscureText: false,
            hintText: 'Apellidos',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(
                errorText: 'Campo requerido',
              ),
            ]),
            keyType: TextInputType.text,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: FormBuilderCustom(
            name: 'Username',
            obscureText: false,
            hintText: 'Username',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(
                errorText: 'Campo requerido',
              ),
            ]),
            keyType: TextInputType.text,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: FormBuilderCustom(
            name: 'password',
            obscureText: true,
            hintText: 'Password',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(
                errorText: 'Password requerido',
              ),
              FormBuilderValidators.minLength(4,
                  errorText: 'Minimo 6 caracteres'),
            ]),
            keyType: TextInputType.text,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: FormBuilderCustom(
            name: 'Email',
            obscureText: false,
            hintText: 'Email',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(
                errorText: 'Campo requerido',
              ),
            ]),
            keyType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        //Calendario
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: FormBuilderDateTimePicker(
            name: 'Fecha de nacimiento',
            inputType: InputType.date,
            style: const TextStyle(
                color: Colors.deepPurple), // Solo muestra la selección de fecha
            decoration: InputDecoration(
              hintText: 'Fecha de nacimiento',
              hintStyle: const TextStyle(color: Colors.deepPurple),
              suffixIcon: const Icon(Icons.calendar_month_sharp,
                  color: Colors.deepPurple),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.deepPurple, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 32, 20, 53), width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.deepPurple, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(
                errorText: 'Campo requerido',
              ),
            ]),
          ),
        ),
        //calendario
        SizedBox(
          height: 0.1.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: const FormBuilderCustom(
            name: 'Código',
            obscureText: false,
            hintText: 'Código (estudiantes)',
            keyType: TextInputType.text,
          ),
        ),
        SizedBox(
          height: 3.h, // usando mediaquery
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
            // Obtén el controlador y cambia el índice a 0
            final controller =
                Provider.of<LoginRegisterController>(context, listen: false);
            controller.onItemTapped(0);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
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
            'Registrarse',
          ),
        ),
      ],
    );
  }
}
