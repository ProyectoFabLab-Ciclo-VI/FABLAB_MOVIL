import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pago_remote_Data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/repositories/pago_repository.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pago_repository.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/get_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/post_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/post_pago.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/pago_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/buy_detalles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/modelo_remote_data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/repositories/modelo_repository.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/list_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login/login_register_controller.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart'; // Importando Sizer

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configurar las dependencias
  final modeloRemoteDataSource = ModeloRemoteDataSources();
  final modeloRepository =
      ModeloRepositoryImpl(remoteDataSources: modeloRemoteDataSource);

  final listModeloPredefinidoUsecase =
      ListModeloPredefinidoUsecase(modeloRepository);
  final modeloByIdUsecase = ModeloPredefinidoUsecase(modeloRepository);
  final postModeloPredefinidoUsecase =
      CreateModeloPredefinidoUsecase(modeloRepository);

  final pagoremoteDataSource = PagoDataSources();
  final pagoRepository =
      PagoRepositoryImpl(remoteDataSources: pagoremoteDataSource);
  final pagoModeloUsecase = PagoUsecase(pagoRepository);

  runApp(
    MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => ModeloBloc(listModeloPredefinidoUsecase,
              modeloByIdUsecase, postModeloPredefinidoUsecase),
        ),
        BlocProvider(
          create: (_) => PagoBloc(
              pagoModeloUsecase), // Asegúrate de que el PagoBloc esté en el árbol de widgets
        ),
        ChangeNotifierProvider(
          create: (_) => LoginRegisterController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MenuPrincipal(),
        );
      },
    );
  }
}
