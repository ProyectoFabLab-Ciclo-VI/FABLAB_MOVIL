import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadFileWidget extends StatefulWidget {
  @override
  _UploadFileWidgetState createState() => _UploadFileWidgetState();
}

class _UploadFileWidgetState extends State<UploadFileWidget> {
  File? _file; // Variable para almacenar el archivo seleccionado
  String? _fileName; // Variable para almacenar el nombre del archivo

  // Método para seleccionar un archivo
  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _file =
            File(result.files.single.path!); // Guarda el archivo en la variable
        _fileName = result.files.single.name; // Guarda el nombre del archivo
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _file == null
            ? Text("No has seleccionado ningún archivo.")
            : Text("Archivo seleccionado: $_fileName"),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _pickFile,
          child: Text("Seleccionar archivo"),
        ),
      ],
    );
  }
}
