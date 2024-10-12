// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceMetric {
  ObjectBoxDeviceMetric({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
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
    this.operationalStatusElement,
    this.color,
    this.colorElement,
    required this.category,
    this.categoryElement,
    this.measurementPeriod,
    this.calibration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? unit = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? source = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? parent = ToOne<ObjectBoxReference>();
  String? operationalStatus;
  ToOne<ObjectBoxElement>? operationalStatusElement = ToOne<ObjectBoxElement>();
  String? color;
  ToOne<ObjectBoxElement>? colorElement = ToOne<ObjectBoxElement>();
  String category;
  ToOne<ObjectBoxElement>? categoryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming>? measurementPeriod = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxDeviceMetricCalibration>? calibration =
      ToMany<ObjectBoxDeviceMetricCalibration>();
}

@Entity()
class ObjectBoxDeviceMetricCalibration {
  ObjectBoxDeviceMetricCalibration({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.state,
    this.stateElement,
    this.time,
    this.timeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? state;
  ToOne<ObjectBoxElement>? stateElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement>? timeElement = ToOne<ObjectBoxElement>();
}
