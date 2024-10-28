
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_verificacion.dart';
import 'package:flutter/material.dart';

class Pageprueba extends StatelessWidget {
  const Pageprueba({super.key});

//Forma para llamar a un inputpara login
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: EmailInput(
//           controller: TextEditingController(),
//           hintText: 'EsauSeLaCome',
//            width: 350, // Ancho personalizado
//            height: 50,
//         ),
//       ),
//     );
//   }
// }

//Forma para llamar al boton
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: LargeButton(
//           texto: 'Ingresar',
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => Login()));
//           },
//           indiceColorFondo: 1,
//           indiceColorTexto: 5,
//         ),
//       ),
//     );
//   }
// }

//Forma para llamar a un inputpara logi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: EmailVerificacion(
          controller: TextEditingController(),
        ),
      ),
    );
  }
}
