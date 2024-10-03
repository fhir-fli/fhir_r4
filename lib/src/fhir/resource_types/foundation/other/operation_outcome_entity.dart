import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class OperationOutcomeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'OperationOutcome';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<OperationOutcomeIssueEntity>? issue;
}

class OperationOutcomeIssueEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? severity;

  @ToOne()
  PrimitiveElementEntity? severityElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  @ToOne()
  CodeableConceptEntity? details;

  String? diagnostics;

  @ToOne()
  PrimitiveElementEntity? diagnosticsElement;

  List<String>? location;

  @ToMany()
  List<PrimitiveElementEntity>? locationElement;

  List<String>? expression;

  @ToMany()
  List<PrimitiveElementEntity>? expressionElement;
}
