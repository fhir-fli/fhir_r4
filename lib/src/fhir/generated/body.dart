import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class BodyStructure {
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
  final CodeableConcept morphology;
  final CodeableConcept location;
  final List<CodeableConcept> locationQualifier;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Attachment> image;
  final Reference patient;
}


