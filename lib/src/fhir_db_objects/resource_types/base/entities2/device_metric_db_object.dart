import 'package:objectbox/objectbox.dart';
@Entity()
class DeviceMetricDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> unit = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> source = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> parent = ToOne<ReferenceDbObject>();
  final ToOne<DeviceMetricOperationalStatusDbObject> operationalStatus = ToOne<DeviceMetricOperationalStatusDbObject>();
  final ToOne<PrimitiveElementDbObject> operationalStatusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<DeviceMetricColorDbObject> color = ToOne<DeviceMetricColorDbObject>();
  final ToOne<PrimitiveElementDbObject> colorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<DeviceMetricCategoryDbObject> category = ToOne<DeviceMetricCategoryDbObject>();
  final ToOne<PrimitiveElementDbObject> categoryElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<TimingDbObject> measurementPeriod = ToOne<TimingDbObject>();
  final ToMany<DeviceMetricCalibrationDbObject> calibration = ToMany<DeviceMetricCalibrationDbObject>();
  DeviceMetricDbObject({required this.id});
}
@Entity()
class DeviceMetricCalibrationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<DeviceMetricCalibrationTypeDbObject> type = ToOne<DeviceMetricCalibrationTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<DeviceMetricCalibrationStateDbObject> state = ToOne<DeviceMetricCalibrationStateDbObject>();
  final ToOne<PrimitiveElementDbObject> stateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> time = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> timeElement = ToOne<PrimitiveElementDbObject>();
  DeviceMetricCalibrationDbObject({required this.id});
}
