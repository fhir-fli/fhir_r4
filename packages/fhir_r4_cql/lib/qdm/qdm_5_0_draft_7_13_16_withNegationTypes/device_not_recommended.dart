import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that use of the device indicated by the QDM category and its corresponding value set
/// is not recommended.

class DeviceNotRecommended {
  final LiteralCode? negationRationale;

  DeviceNotRecommended({
    this.negationRationale,
  });
}
