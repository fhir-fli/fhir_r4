import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a characteristic of the provider.
///

class ProviderCharacteristic {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ProviderCharacteristic({
    this.startDatetime,
    this.stopDatetime,
  });
}
