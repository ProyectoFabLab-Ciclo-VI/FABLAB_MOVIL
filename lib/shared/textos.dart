import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Text textosNormales(String cuerpo) {
  return Text(
    cuerpo,
    style: TextStyle(fontSize: 16, color: coloresPersonalizados[4]),
  );
}

Text headers1(String cuerpo) {
  return Text(
    cuerpo,
    style: TextStyle(fontSize: 40, color: coloresPersonalizados[4]),
  );
}

Text textoRegularBlanco(String cuerpo) {
  return Text(
    cuerpo,
    style: TextStyle(fontSize: 14, color: coloresPersonalizados[3]),
  );
}

Text textoRegularNegro(String cuerpo) {
  return Text(
    cuerpo,
    style: TextStyle(fontSize: 0.26.dp, color: coloresPersonalizados[4]),
  );
}

Text headers2(String cuerpo) {
  return Text(
    cuerpo,
    style: TextStyle(fontSize: 20, color: coloresPersonalizados[4]),
  );
}
