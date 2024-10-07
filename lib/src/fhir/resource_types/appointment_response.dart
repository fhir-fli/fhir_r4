import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class AppointmentResponse extends DomainResource {
  AppointmentResponse({
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
    required this.appointment,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.participantStatusElement,
    this.comment,
    this.commentElement,
  }) : super(resourceType: R4ResourceType.AppointmentResponse);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final Reference appointment;
  final FhirInstant? start;
  final Element? startElement;
  final FhirInstant? end;
  final Element? endElement;
  final List<CodeableConcept>? participantType;
  final Reference? actor;
  final FhirCode participantStatus;
  final Element? participantStatusElement;
  final FhirString? comment;
  final Element? commentElement;
  @override
  AppointmentResponse clone() => throw UnimplementedError();
}
