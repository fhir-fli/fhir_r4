import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class OperationOutcome extends Resource {
  OperationOutcome({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.issue,
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
  ToMany<OperationOutcomeIssue> issue = ToMany<OperationOutcomeIssue>();
}

@Entity()
class OperationOutcomeIssue {
  OperationOutcomeIssue({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.severity,
    required this.code,
    this.details,
    this.diagnostics,
    this.location,
    this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String severity;
  String code;
  ToOne<CodeableConcept>? details = ToOne<CodeableConcept>();
  String? diagnostics;
  List<String>? location;
  List<String>? expression;
}
