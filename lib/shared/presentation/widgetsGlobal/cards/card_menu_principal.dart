// import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/buy_detalles.dart';
// import 'package:flutter/material.dart';

// class CardsGlobal extends StatelessWidget {
//   final String cardUrl;
//   final String cardText;
//   const CardsGlobal({super.key, required this.cardUrl, required this.cardText});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const Descripcioncompra()))
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         elevation: 4,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Column(
//             mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del contenido
//             children: [
//               Image.asset(
//                 cardUrl,
//                 fit: BoxFit.cover,
//                 height: 120, // Ajusta la altura de la imagen
//                 width: double
//                     .infinity, // Asegura que la imagen ocupe todo el ancho del Card
//               ),
//               const SizedBox(height: 8),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Text(
//                   cardText,
//                   style: const TextStyle(
//                       fontSize: 16), // Ajusta el tamaño del texto
//                   textAlign: TextAlign.center, // Centra el texto
//                 ),
//               ),
//               const SizedBox(height: 8),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
