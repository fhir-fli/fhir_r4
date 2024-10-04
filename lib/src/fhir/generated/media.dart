import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Media {
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
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final CodeableConcept modality;
  final CodeableConcept view;
  final Reference subject;
  final Reference encounter;
  final String createdDateTime;
  final PrimitiveElement createdDateTimeElement;
  final Period createdPeriod;
  final FhirInstant issued;
  final PrimitiveElement issuedElement;
  final Reference operator_;
  final List<CodeableConcept> reasonCode;
  final CodeableConcept bodySite;
  final String deviceName;
  final PrimitiveElement deviceNameElement;
  final Reference device;
  final FhirPositiveInt height;
  final PrimitiveElement heightElement;
  final FhirPositiveInt width;
  final PrimitiveElement widthElement;
  final FhirPositiveInt frames;
  final PrimitiveElement framesElement;
  final FhirDecimal duration;
  final PrimitiveElement durationElement;
  final Attachment content;
  final List<Annotation> note;
}


