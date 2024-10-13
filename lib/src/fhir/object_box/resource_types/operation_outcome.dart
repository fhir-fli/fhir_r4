// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOperationOutcome {
  ObjectBoxOperationOutcome({
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
    List<ObjectBoxOperationOutcomeIssue>? issue,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.issue.addAll(issue ?? []);
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
  ToMany<ObjectBoxOperationOutcomeIssue> issue =
      ToMany<ObjectBoxOperationOutcomeIssue>();
}

@Entity()
class ObjectBoxOperationOutcomeIssue {
  ObjectBoxOperationOutcomeIssue({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.severity,
    ObjectBoxElement? severityElement,
    required this.code,
    ObjectBoxElement? codeElement,
    ObjectBoxCodeableConcept? details,
    this.diagnostics,
    ObjectBoxElement? diagnosticsElement,
    this.location,
    List<ObjectBoxElement>? locationElement,
    this.expression,
    List<ObjectBoxElement>? expressionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.severityElement.target = severityElement;
    this.codeElement.target = codeElement;
    this.details.target = details;
    this.diagnosticsElement.target = diagnosticsElement;
    this.locationElement.addAll(locationElement ?? []);
    this.expressionElement.addAll(expressionElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String severity;
  ToOne<ObjectBoxElement> severityElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> details = ToOne<ObjectBoxCodeableConcept>();
  String? diagnostics;
  ToOne<ObjectBoxElement> diagnosticsElement = ToOne<ObjectBoxElement>();
  List<String>? location;
  ToMany<ObjectBoxElement> locationElement = ToMany<ObjectBoxElement>();
  List<String>? expression;
  ToMany<ObjectBoxElement> expressionElement = ToMany<ObjectBoxElement>();
}
