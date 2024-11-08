import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PagoTotal extends StatelessWidget {
  const PagoTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: coloresPersonalizados[3],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
      width: double.infinity,
      height: 4.h,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Total',
              style: TextStyle(
                color: coloresPersonalizados[4],
                fontSize: 20.sp,
                fontFamily: 'SpaceGrotesk',
                fontWeight: FontWeight.bold,
              )),
          Text('PEN 95.00',
              style: TextStyle(
                color: coloresPersonalizados[4],
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            width: 30.w,
            height: 4.h,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Pagar',
                  style: TextStyle(color: coloresPersonalizados[3]),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: Text('Hola Mundo'),
                        );
                      });
                }),
          ),
        ],
      ),
    );
  }
}
