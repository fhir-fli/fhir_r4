import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class GuidanceResponse {
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
  final Identifier requestIdentifier;
  final List<Identifier> identifier;
  final String moduleUri;
  final PrimitiveElement moduleUriElement;
  final String moduleCanonical;
  final PrimitiveElement moduleCanonicalElement;
  final CodeableConcept moduleCodeableConcept;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<Reference> evaluationMessage;
  final Reference outputParameters;
  final Reference result;
  final List<DataRequirement> dataRequirement;
}


