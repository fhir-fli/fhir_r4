import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [DeviceUseStatement] /// A record of a device being used by a patient where the record is the result
/// of a report from the patient or another clinician.
class DeviceUseStatement extends DomainResource {
  DeviceUseStatement({
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
    required this.status,
    this.statusElement,
    required this.subject,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.recordedOn,
    this.recordedOnElement,
    this.source,
    required this.device,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.note,
  }) : super(resourceType: R4ResourceType.DeviceUseStatement);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An external identifier for this statement such as an IRI.
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// DeviceUseStatement.
  final List<Reference>? basedOn;

  /// [status] /// A code representing the patient or other source's judgment about the state
  /// of the device used that this statement is about. Generally this will be
  /// active or completed.
  final FhirCode status;
  final Element? statusElement;

  /// [subject] /// The patient who used the device.
  final Reference subject;

  /// [derivedFrom] /// Allows linking the DeviceUseStatement to the underlying Request, or to
  /// other information that supports or is used to derive the
  /// DeviceUseStatement.
  final List<Reference>? derivedFrom;

  /// [timingTiming] /// How often the device was used.
  final Timing? timingTiming;

  /// [timingPeriod] /// How often the device was used.
  final Period? timingPeriod;

  /// [timingDateTime] /// How often the device was used.
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [recordedOn] /// The time at which the statement was made/recorded.
  final FhirDateTime? recordedOn;
  final Element? recordedOnElement;

  /// [source] /// Who reported the device was being used by the patient.
  final Reference? source;

  /// [device] /// The details of the device used.
  final Reference device;

  /// [reasonCode] /// Reason or justification for the use of the device.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this
  /// DeviceUseStatement.
  final List<Reference>? reasonReference;

  /// [bodySite] /// Indicates the anotomic location on the subject's body where the device was
  /// used ( i.e. the target).
  final CodeableConcept? bodySite;

  /// [note] /// Details about the device statement that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated with
  /// the statement.
  final List<Annotation>? note;
  @override
  DeviceUseStatement clone() => throw UnimplementedError();
  DeviceUseStatement copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    FhirCode? status,
    Element? statusElement,
    Reference? subject,
    List<Reference>? derivedFrom,
    Timing? timingTiming,
    Period? timingPeriod,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    FhirDateTime? recordedOn,
    Element? recordedOnElement,
    Reference? source,
    Reference? device,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    CodeableConcept? bodySite,
    List<Annotation>? note,
  }) {
    return DeviceUseStatement(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      subject: subject ?? this.subject,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      timingTiming: timingTiming ?? this.timingTiming,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      recordedOn: recordedOn ?? this.recordedOn,
      recordedOnElement: recordedOnElement ?? this.recordedOnElement,
      source: source ?? this.source,
      device: device ?? this.device,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      bodySite: bodySite ?? this.bodySite,
      note: note ?? this.note,
    );
  }
}
