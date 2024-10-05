import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class AppointmentResponse extends DomainResource {
  final List<Identifier>? identifier;
  final Reference appointment;
  final FhirInstant? start;
  final Element? startElement;
  final FhirInstant? end;
  final Element? endElement;
  final List<CodeableConcept>? participantType;
  final Reference? actor;
  final FhirCode? participantStatus;
  final Element? participantStatusElement;
  final FhirString? comment;
  final Element? commentElement;

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
    this.participantStatus,
    this.participantStatusElement,
    this.comment,
    this.commentElement,
  }): super(resourceType: R4ResourceType.AppointmentResponse);

@override
AppointmentResponse clone() => this;

}



