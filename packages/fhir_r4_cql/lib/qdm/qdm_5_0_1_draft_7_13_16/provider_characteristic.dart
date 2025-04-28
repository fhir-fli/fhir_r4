import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this datatype should document a characteristic of the provider.
///

class ProviderCharacteristic {
  final LiteralDateTime? authorDatetime;

  ProviderCharacteristic({
    this.authorDatetime,
  });
}
