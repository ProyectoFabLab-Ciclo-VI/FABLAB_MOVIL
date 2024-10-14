import 'package:flutter/material.dart';

class APPBARGENERAL extends StatelessWidget implements PreferredSizeWidget {
  const APPBARGENERAL({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: Text(
                    "Escuela de ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      "Arquitectura",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10, bottom: 40),
          child: Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(
                width: 2,
              ),
              Text("Upeu, Lima")
            ],
          ),
        ),
      ],
      // backgroundColor: Colors.blueAccent,
      toolbarHeight: 100,
    );
  }
}
