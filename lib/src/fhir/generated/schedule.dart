import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Schedule {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final List<Reference> actor;
  final Period planningHorizon;
  final String comment;
  final PrimitiveElement commentElement;
  const Schedule({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.active,
    required this.activeElement,
    required this.serviceCategory,
    required this.serviceType,
    required this.specialty,
    required this.actor,
    required this.planningHorizon,
    required this.comment,
    required this.commentElement,
  });
}


