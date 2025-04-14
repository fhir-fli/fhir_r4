import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the device indicated by the QDM category and its corresponding value set is not
/// in use.

class DeviceNotApplied {
  final LiteralCode? negationRationale;

  DeviceNotApplied({
    this.negationRationale,
  });
}
