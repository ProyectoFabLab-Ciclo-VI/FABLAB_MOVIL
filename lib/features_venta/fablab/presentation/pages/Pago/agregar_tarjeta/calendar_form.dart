import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CalendarForm extends StatelessWidget {
  const CalendarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: 'fecha_caducidad',
      inputType: InputType.date,
      // Solo muestra la selección de fecha
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            top: screenHeight(context) * 0.02,
            left: screenWidth(context) * 0.04),
        hintText: 'MM/YY',
        hintStyle: TextStyle(color: coloresPersonalizados[10]),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: coloresPersonalizados[10], width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: coloresPersonalizados[10], width: 1),
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
    );
  }
}
