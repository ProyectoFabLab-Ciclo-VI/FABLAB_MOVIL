class PagoEntity {
  final int? pagoid;
  final DateTime fechapago;
  final double monto;
  final String? estadopago;
  final String voucher;
  final int pedidoid;

  PagoEntity({
    this.pagoid,
    required this.fechapago,
    required this.monto,
    this.estadopago,
    required this.voucher,
    required this.pedidoid,
  });

  Map<String, dynamic> toJson() {
    return {
      'pago_id': pagoid,
      'fecha_pago': fechapago.toIso8601String(), // Convertir DateTime a String
      'monto': monto,
      'estado_pago': estadopago,
      'voucher': voucher,
      'pedido_id': pedidoid,
    };
  }
}
