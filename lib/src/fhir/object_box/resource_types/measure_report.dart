// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMeasureReport {
  ObjectBoxMeasureReport({
    this.id,
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
    required this.status,
    ObjectBoxElement? statusElement,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.measure,
    ObjectBoxElement? measureElement,
    ObjectBoxReference? subject,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? reporter,
    ObjectBoxPeriod? period,
    ObjectBoxCodeableConcept? improvementNotation,
    List<ObjectBoxMeasureReportGroup>? group,
    List<ObjectBoxReference>? evaluatedResource,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.typeElement.target = typeElement;
    this.measureElement.target = measureElement;
    this.subject.target = subject;
    this.dateElement.target = dateElement;
    this.reporter.target = reporter;
    this.period.target = period;
    this.improvementNotation.target = improvementNotation;
    this.group.addAll(group ?? []);
    this.evaluatedResource.addAll(evaluatedResource ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String measure;
  ToOne<ObjectBoxElement> measureElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> reporter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> improvementNotation =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportGroup> group =
      ToMany<ObjectBoxMeasureReportGroup>();
  ToMany<ObjectBoxReference> evaluatedResource = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMeasureReportGroup {
  ObjectBoxMeasureReportGroup({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxMeasureReportPopulation>? population,
    ObjectBoxQuantity? measureScore,
    List<ObjectBoxMeasureReportStratifier>? stratifier,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.population.addAll(population ?? []);
    this.measureScore.target = measureScore;
    this.stratifier.addAll(stratifier ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportPopulation> population =
      ToMany<ObjectBoxMeasureReportPopulation>();
  ToOne<ObjectBoxQuantity> measureScore = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxMeasureReportStratifier> stratifier =
      ToMany<ObjectBoxMeasureReportStratifier>();
}

@Entity()
class ObjectBoxMeasureReportPopulation {
  ObjectBoxMeasureReportPopulation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.count,
    ObjectBoxElement? countElement,
    ObjectBoxReference? subjectResults,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.countElement.target = countElement;
    this.subjectResults.target = subjectResults;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  int? count;
  ToOne<ObjectBoxElement> countElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subjectResults = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMeasureReportStratifier {
  ObjectBoxMeasureReportStratifier({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? code,
    List<ObjectBoxMeasureReportStratum>? stratum,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.addAll(code ?? []);
    this.stratum.addAll(stratum ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportStratum> stratum =
      ToMany<ObjectBoxMeasureReportStratum>();
}

@Entity()
class ObjectBoxMeasureReportStratum {
  ObjectBoxMeasureReportStratum({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? value,
    List<ObjectBoxMeasureReportComponent>? component,
    List<ObjectBoxMeasureReportPopulation>? population,
    ObjectBoxQuantity? measureScore,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.value.target = value;
    this.component.addAll(component ?? []);
    this.population.addAll(population ?? []);
    this.measureScore.target = measureScore;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> value = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMeasureReportComponent> component =
      ToMany<ObjectBoxMeasureReportComponent>();
  ToMany<ObjectBoxMeasureReportPopulation> population =
      ToMany<ObjectBoxMeasureReportPopulation>();
  ToOne<ObjectBoxQuantity> measureScore = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxMeasureReportComponent {
  ObjectBoxMeasureReportComponent({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? value,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.value.target = value;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> value = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMeasureReportPopulation1 {
  ObjectBoxMeasureReportPopulation1({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.count,
    ObjectBoxElement? countElement,
    ObjectBoxReference? subjectResults,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.countElement.target = countElement;
    this.subjectResults.target = subjectResults;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  int? count;
  ToOne<ObjectBoxElement> countElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subjectResults = ToOne<ObjectBoxReference>();
}
