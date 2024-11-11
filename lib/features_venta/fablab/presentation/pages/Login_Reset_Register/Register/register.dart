import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/reset_password.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/TutorialLoginWidgets/form_builder_login.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sizer/sizer.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 20.sp, // usando sizer
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          height: 5.sp,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          height: 5.sp,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          height: 5.sp,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          height: 5.sp,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          height: 5.sp,
        ),
        //Calendario
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          height: 5.sp,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: FormBuilderCustom(
            name: 'Código',
            obscureText: false,
            hintText: 'Código (estudiantes)',
            keyType: TextInputType.text,
          ),
        ),
        SizedBox(
          height: size.height * 0.04, // usando mediaquery
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
            'Registrarse',
          ),
        ),
      ],
    );
  }
}
