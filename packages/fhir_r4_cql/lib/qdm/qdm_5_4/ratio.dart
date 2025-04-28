import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Ratio type is used to represent a ratio of two quantities.

class Ratio {
  final LiteralQuantity denominator;
  final LiteralQuantity numerator;

  Ratio({
    required this.numerator,
    required this.denominator,
  });
}
