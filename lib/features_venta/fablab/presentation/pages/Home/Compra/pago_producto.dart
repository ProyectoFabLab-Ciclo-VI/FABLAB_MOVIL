import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/Utils/textos.dart';
import 'package:flutter/material.dart';

class Pago extends StatelessWidget {
  const Pago({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: coloresPersonalizados[3],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.keyboard_arrow_left, size: 50),
        ),
        toolbarHeight: 70,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: coloresPersonalizados[3],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textoRegularNegro('N° a yapear: 982431433'),
              const SizedBox(
                height: 30,
              ),
              headers1('S/20'),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/menu/pago.png'),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Subir comprobante de pago',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.upload_file)
                    ],
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
