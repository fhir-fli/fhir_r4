import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

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
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const Media({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.Status,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.CreatedDateTime,
    this.createdPeriod,
    this.issued,
    this.Issued,
    this.operator,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.DeviceName,
    this.device,
    this.height,
    this.Height,
    this.width,
    this.Width,
    this.frames,
    this.Frames,
    this.duration,
    this.Duration,
    required this.content,
    this.note,
  });
}
