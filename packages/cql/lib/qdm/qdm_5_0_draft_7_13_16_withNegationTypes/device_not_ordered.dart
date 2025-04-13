import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the device indicated by the QDM category and its corresponding value set was
/// not ordered.

class DeviceNotOrdered {
  final LiteralCode? negationRationale;

  DeviceNotOrdered({
    this.negationRationale,
  });
}
