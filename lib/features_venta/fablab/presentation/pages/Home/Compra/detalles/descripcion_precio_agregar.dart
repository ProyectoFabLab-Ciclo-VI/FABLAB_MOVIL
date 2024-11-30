import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/carrito/carrito.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/Utils/media_query.dart';
import 'package:fab_lab_upeu/shared/Utils/textos.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetallesPrecioAgregar extends StatefulWidget {
  final String imagen_1;
  final double precio;
  final String nombre;
  final String descripcion;

  const DetallesPrecioAgregar(
      {super.key,
      required this.precio,
      required this.nombre,
      required this.descripcion,
      required this.imagen_1});

  @override
  State<DetallesPrecioAgregar> createState() => _DetallesPrecioAgregarState();
}

class _DetallesPrecioAgregarState extends State<DetallesPrecioAgregar> {
  // Variable para mantener la cantidad
  int cantidad = 1;

  // Función para incrementar la cantidad
  void incrementarCantidad() {
    setState(() {
      cantidad++;
    });
  }

  // Función para decrementar la cantidad
  void decrementarCantidad() {
    if (cantidad > 0) {
      setState(() {
        cantidad--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Calculamos el precio total (precio unitario * cantidad)
    double precioTotal = widget.precio * cantidad;

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: coloresPersonalizados[3],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth(context) * 0.09,
            right: screenWidth(context) * 0.09,
            bottom: screenHeight(context) * 0.03,
            top: screenHeight(context) * 0.03,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nombre del producto
              Text(widget.nombre,
                  style: TextStyle(
                    color: coloresPersonalizados[4],
                    fontSize: 22.5.sp,
                    fontFamily: 'JockeyOne',
                  ),
                  textAlign: TextAlign.left),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Botón para decrementar la cantidad
                  CircleAvatar(
                    radius: 0.3.dp,
                    backgroundColor: coloresPersonalizados[0],
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: coloresPersonalizados[5],
                      ),
                      onPressed: decrementarCantidad,
                    ),
                  ),
                  // Muestra la cantidad
                  Text(
                    '  $cantidad  ',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  // Botón para incrementar la cantidad
                  CircleAvatar(
                    radius: 0.3.dp,
                    backgroundColor: coloresPersonalizados[0],
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: coloresPersonalizados[5],
                      ),
                      onPressed: incrementarCantidad,
                    ),
                  ),
                ],
              ),
              // Descripción del producto
              SizedBox(
                height: screenHeight(context) * 0.1,
                child: Text(
                  widget.descripcion,
                  style: TextStyle(
                      fontSize: 17.sp, color: coloresPersonalizados[10]),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: screenWidth(context) * 0.02,
                  top: screenHeight(context) * 0.02,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "s/. ${precioTotal.toStringAsFixed(2)}", // Muestra el precio total
                    style: TextStyle(
                      color: coloresPersonalizados[4],
                      fontSize: 20.5.sp,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(screenWidth(context) * 0.4,
                      screenHeight(context) * 0.068),
                  backgroundColor: coloresPersonalizados[0],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Pasar los datos al carrito de compra
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CarroCompra(
                                imagen1: widget.imagen_1,
                                precio: widget.precio,
                                nombre: widget.nombre,
                                descripcion: widget.descripcion,
                                cantidads: cantidad,
                              )));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    textoRegularBlanco(
                      'Agregar al carrito',
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: screenWidth(context) * 0.16),
                      child: Icon(
                        Icons.shopping_cart,
                        color: coloresPersonalizados[3],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
