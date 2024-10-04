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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier requestIdentifier;
  final List<Identifier> identifier;
  final String moduleUri;
  final PrimitiveElement ModuleUri;
  final String moduleCanonical;
  final PrimitiveElement ModuleCanonical;
  final CodeableConcept moduleCodeableConcept;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<Reference> evaluationMessage;
  final Reference outputParameters;
  final Reference result;
  final List<DataRequirement> dataRequirement;
}


