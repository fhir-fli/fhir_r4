import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Media extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? type;
  final CodeableConcept? modality;
  final CodeableConcept? view;
  final Reference? subject;
  final Reference? encounter;
  final FhirString? createdDateTime;
  final Element? createdDateTimeElement;
  final Period? createdPeriod;
  final FhirInstant? issued;
  final Element? issuedElement;
  final Reference? operator_;
  final List<CodeableConcept>? reasonCode;
  final CodeableConcept? bodySite;
  final FhirString? deviceName;
  final Element? deviceNameElement;
  final Reference? device;
  final FhirPositiveInt? height;
  final Element? heightElement;
  final FhirPositiveInt? width;
  final Element? widthElement;
  final FhirPositiveInt? frames;
  final Element? framesElement;
  final FhirDecimal? duration;
  final Element? durationElement;
  final Attachment content;
  final List<Annotation>? note;

  Media({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.statusElement,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.createdDateTimeElement,
    this.createdPeriod,
    this.issued,
    this.issuedElement,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.deviceNameElement,
    this.device,
    this.height,
    this.heightElement,
    this.width,
    this.widthElement,
    this.frames,
    this.framesElement,
    this.duration,
    this.durationElement,
    required this.content,
    this.note,
  }): super(resourceType: R4ResourceType.Media);

@override
Media clone() => this;

}


