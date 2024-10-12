// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMeasureReport {
  ObjectBoxMeasureReport({
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
    required this.status,
    this.statusElement,
    required this.type,
    this.typeElement,
    required this.measure,
    this.measureElement,
    this.subject,
    this.date,
    this.dateElement,
    this.reporter,
    required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String measure;
  ToOne<ObjectBoxElement>? measureElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? reporter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? improvementNotation =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportGroup>? group =
      ToMany<ObjectBoxMeasureReportGroup>();
  ToMany<ObjectBoxReference>? evaluatedResource = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMeasureReportGroup {
  ObjectBoxMeasureReportGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportPopulation>? population =
      ToMany<ObjectBoxMeasureReportPopulation>();
  ToOne<ObjectBoxQuantity>? measureScore = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxMeasureReportStratifier>? stratifier =
      ToMany<ObjectBoxMeasureReportStratifier>();
}

@Entity()
class ObjectBoxMeasureReportPopulation {
  ObjectBoxMeasureReportPopulation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.count,
    this.countElement,
    this.subjectResults,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  int? count;
  ToOne<ObjectBoxElement>? countElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? subjectResults = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMeasureReportStratifier {
  ObjectBoxMeasureReportStratifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.stratum,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportStratum>? stratum =
      ToMany<ObjectBoxMeasureReportStratum>();
}

@Entity()
class ObjectBoxMeasureReportStratum {
  ObjectBoxMeasureReportStratum({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? value = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportComponent>? component =
      ToMany<ObjectBoxMeasureReportComponent>();
  ToMany<ObjectBoxMeasureReportPopulation>? population =
      ToMany<ObjectBoxMeasureReportPopulation>();
  ToOne<ObjectBoxQuantity>? measureScore = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxMeasureReportComponent {
  ObjectBoxMeasureReportComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> value = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMeasureReportPopulation1 {
  ObjectBoxMeasureReportPopulation1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.count,
    this.countElement,
    this.subjectResults,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  int? count;
  ToOne<ObjectBoxElement>? countElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? subjectResults = ToOne<ObjectBoxReference>();
}
