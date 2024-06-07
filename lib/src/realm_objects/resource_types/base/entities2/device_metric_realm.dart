import 'package:realm/realm.dart';
@RealmModel()
class _DeviceMetricRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm unit;
  late _ReferenceRealm source;
  late _ReferenceRealm parent;
  late _DeviceMetricOperationalStatusRealm operationalStatus;
  late _PrimitiveElementRealm operationalStatusElement;
  late _DeviceMetricColorRealm color;
  late _PrimitiveElementRealm colorElement;
  late _DeviceMetricCategoryRealm category;
  late _PrimitiveElementRealm categoryElement;
  late _TimingRealm measurementPeriod;
  late List<_DeviceMetricCalibrationRealm> calibration;
}
@RealmModel()
class _DeviceMetricCalibrationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _DeviceMetricCalibrationTypeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _DeviceMetricCalibrationStateRealm state;
  late _PrimitiveElementRealm stateElement;
  late _FhirInstantRealm time;
  late _PrimitiveElementRealm timeElement;
}
