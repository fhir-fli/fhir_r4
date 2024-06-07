import 'package:realm/realm.dart';

@RealmModel()
class _SignatureRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_CodingRealm> type;
  late _FhirInstantRealm when;
  late _PrimitiveElementRealm whenElement;
  late _ReferenceRealm who;
  late _ReferenceRealm onBehalfOf;
  late _FhirCodeRealm targetFormat;
  late _PrimitiveElementRealm targetFormatElement;
  late _FhirCodeRealm sigFormat;
  late _PrimitiveElementRealm sigFormatElement;
  late _FhirBase64BinaryRealm data;
  late _PrimitiveElementRealm dataElement;
}
