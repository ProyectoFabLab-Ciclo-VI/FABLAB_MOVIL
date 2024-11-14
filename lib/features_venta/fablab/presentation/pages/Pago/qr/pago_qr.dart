import 'dart:io';
import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Pago_exitoso_expera/pago_exitoso.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:file_picker/file_picker.dart';

class PagoQR extends StatefulWidget {
  const PagoQR({super.key});

  @override
  State<PagoQR> createState() => _PagoQRState();
}

class _PagoQRState extends State<PagoQR> {
  File? _selectedFile;

  // Método para seleccionar un archivo
  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _selectedFile =
            File(result.files.single.path!); // Guarda el archivo seleccionado
      });

      // Puedes mostrar un mensaje o manejar el archivo como prefieras
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Archivo seleccionado: ${result.files.single.name}'),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'Cerrar',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCompra(
        intColor: 3,
      ),
      backgroundColor: coloresPersonalizados[3],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                width: 50.w,
                height: 31.h,
                decoration: BoxDecoration(
                  color: coloresPersonalizados[18],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: 40.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Text('Scanea tu QR',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(
                        width: 30.w,
                        height: 15.h,
                        child: Image.asset(
                          'assets/images/qrcodee2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Text(
                  's/. 95.00',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: coloresPersonalizados[4],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.h),
                child: GestureDetector(
                  onTap: _pickFile, // Llama al método para seleccionar archivo
                  child: DashedContainer(
                    dashColor: coloresPersonalizados[1],
                    boxShape: BoxShape.rectangle,
                    dashedLength: 14,
                    blankLength: 4,
                    borderRadius: 16.0,
                    strokeWidth: 1,
                    child: Container(
                      height: 10.h,
                      width: 80.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10.w,
                            height: 5.h,
                            child: const Icon(Icons.upload_file),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.h),
                            child: Container(
                              width: 50.w,
                              height: 5.h,
                              child: Text('Sube tu comprobante',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Muestra el nombre del archivo si se seleccionó uno
              if (_selectedFile != null)
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Text(
                    'Archivo seleccionado: ${_selectedFile!.path.split('/').last}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                  width: 60.w,
                  height: 7.h,
                  child: LargeButton(
                      texto: 'Enviar',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PagoExitoso()));
                      },
                      indiceColorFondo: 1,
                      indiceColorTexto: 3))
            ],
          ),
        ),
      ),
    );
  }
}
