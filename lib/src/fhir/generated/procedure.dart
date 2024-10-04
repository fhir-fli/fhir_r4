import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Procedure {
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
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final CodeableConcept category;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final String performedDateTime;
  final PrimitiveElement performedDateTimeElement;
  final Period performedPeriod;
  final String performedString;
  final PrimitiveElement performedStringElement;
  final Age performedAge;
  final Range performedRange;
  final Reference recorder;
  final Reference asserter;
  final List<ProcedurePerformer> performer;
  final Reference location;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<CodeableConcept> bodySite;
  final CodeableConcept outcome;
  final List<Reference> report;
  final List<CodeableConcept> complication;
  final List<Reference> complicationDetail;
  final List<CodeableConcept> followUp;
  final List<Annotation> note;
  final List<ProcedureFocalDevice> focalDevice;
  final List<Reference> usedReference;
  final List<CodeableConcept> usedCode;
}

@Data()
@JsonCodable()
class ProcedurePerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
  final Reference onBehalfOf;
}

@Data()
@JsonCodable()
class ProcedureFocalDevice {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept action;
  final Reference manipulated;
}


