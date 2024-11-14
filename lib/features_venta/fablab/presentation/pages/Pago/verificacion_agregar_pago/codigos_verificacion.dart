import 'package:fab_lab_upeu/shared/Utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CodigoVerificacion extends StatefulWidget {
  final Function(String) onCodigoIngresado; // Callback para capturar el código

  const CodigoVerificacion({super.key, required this.onCodigoIngresado});

  @override
  State<CodigoVerificacion> createState() => CodigoVerificacionState();
}

class CodigoVerificacionState extends State<CodigoVerificacion> {
  final _focusNodes = List<FocusNode>.generate(6, (index) => FocusNode());
  final _controllers = List<TextEditingController>.generate(
      6, (index) => TextEditingController());

  // Método para obtener el código completo
  void actualizarCodigoIngresado() {
    final codigo = _controllers.map((controller) => controller.text).join();
    widget.onCodigoIngresado(codigo); // Llama al callback con el código
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(6, (index) {
          return Container(
            width: 10.w,
            margin: EdgeInsets.only(right: screenWidth(context) * 0.02),
            child: TextFormField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              maxLength: 1,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                counterText: "",
                border: UnderlineInputBorder(),
              ),
              onChanged: (value) {
                actualizarCodigoIngresado(); // Actualiza el código
                if (value.isNotEmpty) {
                  if (index + 1 < _focusNodes.length) {
                    FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                  } else {
                    FocusScope.of(context).unfocus();
                  }
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
