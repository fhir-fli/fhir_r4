// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceMetric {
  ObjectBoxDeviceMetric({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? unit,
    ObjectBoxReference? source,
    ObjectBoxReference? parent,
    this.operationalStatus,
    ObjectBoxElement? operationalStatusElement,
    this.color,
    ObjectBoxElement? colorElement,
    required this.category,
    ObjectBoxElement? categoryElement,
    ObjectBoxTiming? measurementPeriod,
    List<ObjectBoxDeviceMetricCalibration>? calibration,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.type.target = type;
    this.unit.target = unit;
    this.source.target = source;
    this.parent.target = parent;
    this.operationalStatusElement.target = operationalStatusElement;
    this.colorElement.target = colorElement;
    this.categoryElement.target = categoryElement;
    this.measurementPeriod.target = measurementPeriod;
    this.calibration.addAll(calibration ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> unit = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> source = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> parent = ToOne<ObjectBoxReference>();
  String? operationalStatus;
  ToOne<ObjectBoxElement> operationalStatusElement = ToOne<ObjectBoxElement>();
  String? color;
  ToOne<ObjectBoxElement> colorElement = ToOne<ObjectBoxElement>();
  String category;
  ToOne<ObjectBoxElement> categoryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming> measurementPeriod = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxDeviceMetricCalibration> calibration =
      ToMany<ObjectBoxDeviceMetricCalibration>();
}

@Entity()
class ObjectBoxDeviceMetricCalibration {
  ObjectBoxDeviceMetricCalibration({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.type,
    ObjectBoxElement? typeElement,
    this.state,
    ObjectBoxElement? stateElement,
    this.time,
    ObjectBoxElement? timeElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.stateElement.target = stateElement;
    this.timeElement.target = timeElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? state;
  ToOne<ObjectBoxElement> stateElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement> timeElement = ToOne<ObjectBoxElement>();
}
