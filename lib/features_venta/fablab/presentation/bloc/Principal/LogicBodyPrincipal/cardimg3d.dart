// esau_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

// Definir el estado del Cubit
@immutable
abstract class Cardimg3d {}

class EsauInitial extends Cardimg3d {} // Estado inicial

class EsauLoading extends Cardimg3d {} // Estado de carga

class EsauLoaded extends Cardimg3d {
  final List<String> imageUrls;
  final List<String> titles;

  EsauLoaded(this.imageUrls, this.titles); // Estado con datos cargados
}

class EsauError extends Cardimg3d {
  final String message;

  EsauError(this.message); // Estado de error
}

// Definir el Cubit
class EsauCubit extends Cubit<Cardimg3d> {
  EsauCubit() : super(EsauInitial());

  // Simulación de obtener las imágenes (puedes cambiarlo para usar una API o imágenes locales)
  void fetchEsauCards() async {
    try {
      emit(EsauLoading());

      // Simulación de una API o carga de imágenes locales
      final List<String> imageUrls = [
        'assets/images/esau1.png',
        'assets/images/esau2.png',
        'assets/images/esau3.png',
        'assets/images/esau4.png',
        'assets/images/esau5.png',
        'assets/images/esau6.png',
        'assets/images/esau7.png',
        'assets/images/esau8.png',
        'assets/images/esau9.png',
        'assets/images/esau10.png',
      ];

      final List<String> titles = [
        'Esau de Mewing',
        'Esau Europeo',
        'Esau sin peinarse',
        'Esau challenger',
        'Esau Terrorista',
        'Esau Bad Boy',
        'Esau Exponente',
        'Esau Boxeador',
        'Esau Bugeado',
        'Esau Practicante de wilsom',
      ];

      await Future.delayed(
          const Duration(seconds: 1)); // Simular tiempo de carga

      emit(EsauLoaded(
          imageUrls, titles)); // Emitimos el estado con los datos cargados
    } catch (e) {
      emit(EsauError(
          "Error al cargar las imágenes")); // Emitimos el error en caso de fallo
    }
  }
}
