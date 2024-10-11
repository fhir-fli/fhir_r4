import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class DeviceMetric extends Resource {
  DeviceMetric({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.type,
    this.unit,
    this.source,
    this.parent,
    this.operationalStatus,
    this.color,
    required this.category,
    this.measurementPeriod,
    this.calibration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? unit = ToOne<CodeableConcept>();
  ToOne<Reference>? source = ToOne<Reference>();
  ToOne<Reference>? parent = ToOne<Reference>();
  String? operationalStatus;
  String? color;
  String category;
  ToOne<Timing>? measurementPeriod = ToOne<Timing>();
  ToMany<DeviceMetricCalibration>? calibration =
      ToMany<DeviceMetricCalibration>();
}

@Entity()
class DeviceMetricCalibration {
  DeviceMetricCalibration({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.state,
    this.time,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? type;
  String? state;
  String? time;
}
