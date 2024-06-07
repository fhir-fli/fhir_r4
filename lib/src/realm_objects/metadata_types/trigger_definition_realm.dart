import 'package:realm/realm.dart';

@RealmModel()
class _TriggerDefinitionRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _TriggerDefinitionTypeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _TimingRealm timingTiming;
  late _ReferenceRealm timingReference;
  late _FhirDateRealm timingDate;
  late _PrimitiveElementRealm timingDateElement;
  late String timingDateTime;
  late _PrimitiveElementRealm timingDateTimeElement;
  late List<_DataRequirementRealm> data;
  late _FhirExpressionRealm condition;
}
