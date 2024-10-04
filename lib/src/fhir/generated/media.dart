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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final CodeableConcept modality;
  final CodeableConcept view;
  final Reference subject;
  final Reference encounter;
  final String createdDateTime;
  final PrimitiveElement CreatedDateTime;
  final Period createdPeriod;
  final FhirInstant issued;
  final PrimitiveElement Issued;
  final Reference operator;
  final List<CodeableConcept> reasonCode;
  final CodeableConcept bodySite;
  final String deviceName;
  final PrimitiveElement DeviceName;
  final Reference device;
  final FhirPositiveInt height;
  final PrimitiveElement Height;
  final FhirPositiveInt width;
  final PrimitiveElement Width;
  final FhirPositiveInt frames;
  final PrimitiveElement Frames;
  final FhirDecimal duration;
  final PrimitiveElement Duration;
  final Attachment content;
  final List<Annotation> note;
}


