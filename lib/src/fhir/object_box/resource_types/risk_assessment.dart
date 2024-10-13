// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRiskAssessment {
  ObjectBoxRiskAssessment({
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
    ObjectBoxReference? basedOn,
    ObjectBoxReference? parent,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? method,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxReference? condition,
    ObjectBoxReference? performer,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxReference>? basis,
    List<ObjectBoxRiskAssessmentPrediction>? prediction,
    this.mitigation,
    ObjectBoxElement? mitigationElement,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.basedOn.target = basedOn;
    this.parent.target = parent;
    this.statusElement.target = statusElement;
    this.method.target = method;
    this.code.target = code;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.condition.target = condition;
    this.performer.target = performer;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.basis.addAll(basis ?? []);
    this.prediction.addAll(prediction ?? []);
    this.mitigationElement.target = mitigationElement;
    this.note.addAll(note ?? []);
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
  ToOne<ObjectBoxReference> basedOn = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> parent = ToOne<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> condition = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> basis = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxRiskAssessmentPrediction> prediction =
      ToMany<ObjectBoxRiskAssessmentPrediction>();
  String? mitigation;
  ToOne<ObjectBoxElement> mitigationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxRiskAssessmentPrediction {
  ObjectBoxRiskAssessmentPrediction({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? outcome,
    this.probabilityDecimal,
    ObjectBoxElement? probabilityDecimalElement,
    ObjectBoxRange? probabilityRange,
    ObjectBoxCodeableConcept? qualitativeRisk,
    this.relativeRisk,
    ObjectBoxElement? relativeRiskElement,
    ObjectBoxPeriod? whenPeriod,
    ObjectBoxRange? whenRange,
    this.rationale,
    ObjectBoxElement? rationaleElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.outcome.target = outcome;
    this.probabilityDecimalElement.target = probabilityDecimalElement;
    this.probabilityRange.target = probabilityRange;
    this.qualitativeRisk.target = qualitativeRisk;
    this.relativeRiskElement.target = relativeRiskElement;
    this.whenPeriod.target = whenPeriod;
    this.whenRange.target = whenRange;
    this.rationaleElement.target = rationaleElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> outcome = ToOne<ObjectBoxCodeableConcept>();
  double? probabilityDecimal;
  ToOne<ObjectBoxElement> probabilityDecimalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange> probabilityRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept> qualitativeRisk =
      ToOne<ObjectBoxCodeableConcept>();
  double? relativeRisk;
  ToOne<ObjectBoxElement> relativeRiskElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> whenPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange> whenRange = ToOne<ObjectBoxRange>();
  String? rationale;
  ToOne<ObjectBoxElement> rationaleElement = ToOne<ObjectBoxElement>();
}
