// ignore_for_file: public_member_api_docs, constant_identifier_names,
// ignore_for_file: lines_longer_than_80_chars

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

enum CollectionStatus {
  singleton,
  ordered,
  unordered;

  bool isList() =>
      this == CollectionStatus.ordered || this == CollectionStatus.unordered;
}
