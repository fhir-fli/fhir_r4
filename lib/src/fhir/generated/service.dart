import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ServiceRequest {
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
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier requisition;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final CodeableConcept code;
  final List<CodeableConcept> orderDetail;
  final Quantity quantityQuantity;
  final Ratio quantityRatio;
  final Range quantityRange;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final bool asNeededBoolean;
  final PrimitiveElement AsNeededBoolean;
  final CodeableConcept asNeededCodeableConcept;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final CodeableConcept performerType;
  final List<Reference> performer;
  final List<CodeableConcept> locationCode;
  final List<Reference> locationReference;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> insurance;
  final List<Reference> supportingInfo;
  final List<Reference> specimen;
  final List<CodeableConcept> bodySite;
  final List<Annotation> note;
  final String patientInstruction;
  final PrimitiveElement PatientInstruction;
  final List<Reference> relevantHistory;
}


