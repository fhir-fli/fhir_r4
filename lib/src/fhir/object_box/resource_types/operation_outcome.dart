// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOperationOutcome {
  ObjectBoxOperationOutcome({
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
    required this.issue,
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
  ToMany<ObjectBoxOperationOutcomeIssue> issue =
      ToMany<ObjectBoxOperationOutcomeIssue>();
}

@Entity()
class ObjectBoxOperationOutcomeIssue {
  ObjectBoxOperationOutcomeIssue({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.severity,
    this.severityElement,
    required this.code,
    this.codeElement,
    this.details,
    this.diagnostics,
    this.diagnosticsElement,
    this.location,
    this.locationElement,
    this.expression,
    this.expressionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String severity;
  ToOne<ObjectBoxElement>? severityElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? details = ToOne<ObjectBoxCodeableConcept>();
  String? diagnostics;
  ToOne<ObjectBoxElement>? diagnosticsElement = ToOne<ObjectBoxElement>();
  List<String>? location;
  ToMany<ObjectBoxElement>? locationElement = ToMany<ObjectBoxElement>();
  List<String>? expression;
  ToMany<ObjectBoxElement>? expressionElement = ToMany<ObjectBoxElement>();
}
