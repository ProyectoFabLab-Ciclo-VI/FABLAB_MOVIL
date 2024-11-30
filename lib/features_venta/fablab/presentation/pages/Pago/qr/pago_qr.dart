import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/pago_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Pago_exitoso_expera/pago_exitoso.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pago.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/pago_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:another_dashed_container/another_dashed_container.dart';

class PagoQR extends StatefulWidget {
  final double precioTotal;
  const PagoQR({super.key, required this.precioTotal});

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

  // Función para subir la imagen al servidor
  Future<String?> uploadImageToServer(File imageFile) async {
    var uri =
        Uri.parse('http://192.168.1.105/Imagenes/upload_image.php'); // Cambia por tu URL

    var request = http.MultipartRequest('POST', uri);
    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile.path);
    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      var responseData = await response.stream.bytesToString();
      var jsonResponse = jsonDecode(responseData);

      if (jsonResponse['status'] == 'success') {
        String fileName = jsonResponse['fileName']; // Nombre del archivo subido
        String imageUrl = 'http://192.168.1.105/Imagenes/$fileName';
        return imageUrl; // Devuelve la URL completa de la imagen
      } else {
        print('Error: ${jsonResponse['message']}');
      }
    } else {
      print('Error al subir la imagen: ${response.statusCode}');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCompra(intColor: 3),
      backgroundColor: coloresPersonalizados[3],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              // Aquí van las imágenes y texto del QR...
              // Código omitido para brevedad

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
              if (_selectedFile != null)
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Text(
                    'Archivo seleccionado: ${_selectedFile!.path.split('/').last}',
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
                ),
              SizedBox(height: 12.h),
              SizedBox(
                width: 60.w,
                height: 7.h,
                child: LargeButton(
                  texto: 'Enviar',
                  onPressed: () async {
                    if (_selectedFile != null) {
                      String? imageUrl =
                          await uploadImageToServer(_selectedFile!);

                      if (imageUrl != null) {
                        // Una vez que tengas la URL de la imagen, envías el POST con los datos
                        final request = PagoEntity(
                          fechapago: DateTime.now(),
                          monto: widget.precioTotal,
                          voucher: imageUrl, // Usa la URL de la imagen
                          pedidoid: 8,
                        );

                        context
                            .read<PagoBloc>()
                            .add(CreatePagoModeloEvent(pago: request));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PagoExitoso()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error al subir la imagen.')),
                        );
                      }
                    }
                  },
                  indiceColorFondo: 1,
                  indiceColorTexto: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
