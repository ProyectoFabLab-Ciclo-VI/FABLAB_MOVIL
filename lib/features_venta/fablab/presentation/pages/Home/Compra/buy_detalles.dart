import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/pago_producto.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';

class Descripcioncompra extends StatelessWidget {
  const Descripcioncompra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: coloresPersonalizados[3],
        title: const Text('Descripción de la compra'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.keyboard_arrow_left, size: 50),
        ),
        toolbarHeight: 70,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: coloresPersonalizados[3],
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    'assets/images/menu/foto6.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headers1('Gato'),
                      const SizedBox(height: 10),
                      textoRegularNegro('1452DER45S'),
                      const SizedBox(height: 70),
                      textosNormales(
                          'Es un modelo 3D detallado que representa un gato místico con un aspecto adorable y un toque de misterio.'),
                      const SizedBox(height: 50),
                      Align(
                        alignment: Alignment.centerRight,
                        child: textoRegularNegro('Total: S/. 50.00'),
                      ),
                      Center(
                        child: LargeButton(
                            texto: 'Comprar',
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (contex) => const Pago()))
                                },
                            indiceColorFondo: 0,
                            indiceColorTexto: 3),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
