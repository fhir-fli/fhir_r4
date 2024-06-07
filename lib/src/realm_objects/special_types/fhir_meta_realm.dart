import 'package:realm/realm.dart';

@RealmModel()
class _FhirMetaRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirIdRealm versionId;
  late _PrimitiveElementRealm versionIdElement;
  late _FhirInstantRealm lastUpdated;
  late _PrimitiveElementRealm lastUpdatedElement;
  late _FhirUriRealm source;
  late _PrimitiveElementRealm sourceElement;
  late List<_FhirCanonicalRealm> profile;
  late List<_CodingRealm> security;
  late List<_CodingRealm> tag;
}
