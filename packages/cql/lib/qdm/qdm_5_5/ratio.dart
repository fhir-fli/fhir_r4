import 'package:cql/engine/types/cql_literal.dart';

/// The Ratio type is used to represent a ratio of two quantities.

class Ratio {
  final LiteralQuantity denominator;
  final LiteralQuantity numerator;

  Ratio({
    required this.numerator,
    required this.denominator,
  });
}
