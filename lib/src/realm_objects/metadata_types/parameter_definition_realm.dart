import 'package:realm/realm.dart';

@RealmModel()
class _ParameterDefinitionRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirCodeRealm name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCodeRealm use;
  late _PrimitiveElementRealm useElement;
  late _FhirIntegerRealm min;
  late _PrimitiveElementRealm minElement;
  late String max;
  late _PrimitiveElementRealm maxElement;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirCanonicalRealm profile;
}
