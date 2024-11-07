import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/cuadrolargo.dart';
import 'package:flutter/material.dart';

class Menudrawer extends StatelessWidget {
  const Menudrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SizedBox(
            height: 270,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF0F203B)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/menu/foto1.png"),
                          ),
                          SizedBox(width: 20),
                          SizedBox(
                            width: 180,
                            child: Padding(
                              padding: EdgeInsets.only(),
                              child: Text(
                                'Esau Carlos',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 30, left: 45),
                          child: Text(
                            'Uzumaki Akachupi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ),
                      Card(
                        color: Color(0xFF173059),
                        elevation: 5,
                        child: SizedBox(
                          width: 250,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Ver Perfil',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Card(
                color: Color(0xFF234886),
                elevation: 5,
                child: SizedBox(
                  width: 270,
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0), // Espaciado a la izquierda
                        child: Icon(
                          Icons
                              .description, // Cambia este ícono según lo necesites
                          color: Colors.white, // Color del ícono
                        ),
                      ),
                      SizedBox(width: 8), // Espacio entre el ícono y el texto
                      Text(
                        'Subir Diseño',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Color(0xFF234886),
                elevation: 5,
                child: SizedBox(
                  width: 270,
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0), // Espaciado a la izquierda
                        child: Icon(
                          Icons
                              .notifications, // Cambia este ícono según lo necesites
                          color: Colors.white, // Color del ícono
                        ),
                      ),
                      SizedBox(width: 8), // Espacio entre el ícono y el texto
                      Text(
                        'Notificaciones',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Color(0xFF234886),
                elevation: 5,
                child: SizedBox(
                  width: 270,
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0), // Espaciado a la izquierda
                        child: Icon(
                          Icons
                              .attach_money, // Cambia este ícono según lo necesites
                          color: Colors.white, // Color del ícono
                        ),
                      ),
                      SizedBox(width: 8), // Espacio entre el ícono y el texto
                      Text(
                        'Préstamos',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 200),
          CuadroLargo(
            texto: 'Cerrar Sesión',
          ),
        ],
      ),
    );
  }
}
