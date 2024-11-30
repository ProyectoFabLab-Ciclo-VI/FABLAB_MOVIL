import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CentroCarrito extends StatefulWidget {
  final String imagen1;
  final double precio;
  final String nombre;
  final String descripcion;
  final int cantidads;
  final ValueChanged<int>
      onCantidadChanged; // Callback para actualizar la cantidad

  const CentroCarrito({
    super.key,
    required this.precio,
    required this.nombre,
    required this.descripcion,
    required this.imagen1,
    required this.cantidads,
    required this.onCantidadChanged,
  });

  @override
  State<CentroCarrito> createState() => _CentroCarritoState();
}

class _CentroCarritoState extends State<CentroCarrito> {
  int cantidad = 1;

  @override
  void initState() {
    super.initState();
    cantidad = widget.cantidads;
  }

  void incrementarCantidad() {
    setState(() {
      cantidad++;
      widget.onCantidadChanged(
          cantidad); // Llamar al callback con la nueva cantidad
    });
  }

  void decrementarCantidad() {
    if (cantidad > 1) {
      setState(() {
        cantidad--;
        widget.onCantidadChanged(
            cantidad); // Llamar al callback con la nueva cantidad
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double precioTotal = widget.precio * cantidad;

    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.01,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 18.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 14.h,
              width: Adaptive.w(28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                widget.imagen1,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                width: screenWidth * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 3.5.h,
                      child: Text(
                        widget.nombre,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20.5.sp,
                          fontFamily: 'JockeyOne',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 3.h,
                      child: Text(
                        widget.descripcion,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: coloresPersonalizados[10],
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 4.h,
                      child: Text(
                        "s/. ${precioTotal.toStringAsFixed(2)}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 5.h,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.delete,
                          size: 7.w,
                          color: coloresPersonalizados[0],
                        ),
                      )),
                  SizedBox(
                    width: double.infinity,
                    height: 5.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 0.25.dp,
                          backgroundColor: coloresPersonalizados[0],
                          child: IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: coloresPersonalizados[5],
                              size: 0.23.dp,
                            ),
                            onPressed: decrementarCantidad,
                          ),
                        ),
                        Text(
                          ' $cantidad ',
                          style: TextStyle(
                            fontSize: 17.sp,
                          ),
                        ),
                        CircleAvatar(
                          radius: 0.25.dp,
                          backgroundColor: coloresPersonalizados[0],
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: coloresPersonalizados[5],
                              size: 0.23.dp,
                            ),
                            onPressed: incrementarCantidad,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
