import 'package:realm/realm.dart';

@RealmModel()
class _PopulationRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _RangeRealm ageRange;
  late _CodeableConceptRealm ageCodeableConcept;
  late _CodeableConceptRealm gender;
  late _CodeableConceptRealm race;
  late _CodeableConceptRealm physiologicalCondition;
}
