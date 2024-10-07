import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Slot extends DomainResource {
  Slot({
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
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    required this.schedule,
    required this.status,
    this.statusElement,
    required this.start,
    this.startElement,
    required this.end,
    this.endElement,
    this.overbooked,
    this.overbookedElement,
    this.comment,
    this.commentElement,
  }) : super(resourceType: R4ResourceType.Slot);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final List<CodeableConcept>? serviceCategory;
  final List<CodeableConcept>? serviceType;
  final List<CodeableConcept>? specialty;
  final CodeableConcept? appointmentType;
  final Reference schedule;
  final FhirCode status;
  final Element? statusElement;
  final FhirInstant start;
  final Element? startElement;
  final FhirInstant end;
  final Element? endElement;
  final FhirBoolean? overbooked;
  final Element? overbookedElement;
  final FhirString? comment;
  final Element? commentElement;
  @override
  Slot clone() => throw UnimplementedError();
}
