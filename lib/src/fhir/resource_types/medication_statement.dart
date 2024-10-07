import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [MedicationStatement] /// A record of a medication that is being consumed by a patient. A
/// MedicationStatement may indicate that the patient may be taking the
/// medication now or has taken the medication in the past or will be taking
/// the medication in the future. The source of this information can be the
/// patient, significant other (such as a family member or spouse), or a
/// clinician. A common scenario where this information is captured is during
/// the history taking process during a patient visit or stay. The medication
/// information may come from sources such as the patient's memory, from a
/// prescription bottle, or from a list of medications the patient, clinician
/// or other party maintains.
///
/// The primary difference between a medication statement and a medication
/// administration is that the medication administration has complete
/// administration information and is based on actual administration
/// information from the person who administered the medication. A medication
/// statement is often, if not always, less specific. There is no required
/// date/time when the medication was administered, in fact we only know that a
/// source has reported the patient is taking this medication, where details
/// such as time, quantity, or rate or even medication product may be
/// incomplete or missing or less precise. As stated earlier, the medication
/// statement information may come from the patient's memory, from a
/// prescription bottle or from a list of medications the patient, clinician or
/// other party maintains. Medication administration is more formal and is not
/// missing detailed information.
class MedicationStatement extends DomainResource {
  MedicationStatement({
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
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    this.context,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.dateAsserted,
    this.dateAssertedElement,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
  }) : super(resourceType: R4ResourceType.MedicationStatement);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this Medication Statement that are defined by
  /// business processes and/or used to refer to it when a direct URL reference
  /// to the resource itself is not appropriate. They are business identifiers
  /// assigned to this resource by the performer or other systems and remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status] /// A code representing the patient or other source's judgment about the state
  /// of the medication used that this statement is about. Generally, this will
  /// be active or completed.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the MedicationStatement.
  final List<CodeableConcept>? statusReason;

  /// [category] /// Indicates where the medication is expected to be consumed or administered.
  final CodeableConcept? category;

  /// [medicationCodeableConcept] /// Identifies the medication being administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  final CodeableConcept medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication being administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  final Reference medicationReference;

  /// [subject] /// The person, animal or group who is/was taking the medication.
  final Reference subject;

  /// [context] /// The encounter or episode of care that establishes the context for this
  /// MedicationStatement.
  final Reference? context;

  /// [effectiveDateTime] /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.taken element is No).
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.taken element is No).
  final Period? effectivePeriod;

  /// [dateAsserted] /// The date when the medication statement was asserted by the information
  /// source.
  final FhirDateTime? dateAsserted;
  final Element? dateAssertedElement;

  /// [informationSource] /// The person or organization that provided the information about the taking
  /// of this medication. Note: Use derivedFrom when a MedicationStatement is
  /// derived from other resources, e.g. Claim or MedicationRequest.
  final Reference? informationSource;

  /// [derivedFrom] /// Allows linking the MedicationStatement to the underlying MedicationRequest,
  /// or to other information that supports or is used to derive the
  /// MedicationStatement.
  final List<Reference>? derivedFrom;

  /// [reasonCode] /// A reason for why the medication is being/was taken.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition or observation that supports why the medication is being/was
  /// taken.
  final List<Reference>? reasonReference;

  /// [note] /// Provides extra information about the medication statement that is not
  /// conveyed by the other attributes.
  final List<Annotation>? note;

  /// [dosage] /// Indicates how the medication is/was or should be taken by the patient.
  final List<Dosage>? dosage;
  @override
  MedicationStatement clone() => throw UnimplementedError();
  MedicationStatement copy({
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
    List<Reference>? partOf,
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? statusReason,
    CodeableConcept? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? context,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    FhirDateTime? dateAsserted,
    Element? dateAssertedElement,
    Reference? informationSource,
    List<Reference>? derivedFrom,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<Dosage>? dosage,
  }) {
    return MedicationStatement(
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
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveDateTimeElement:
          effectiveDateTimeElement ?? this.effectiveDateTimeElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      dateAsserted: dateAsserted ?? this.dateAsserted,
      dateAssertedElement: dateAssertedElement ?? this.dateAssertedElement,
      informationSource: informationSource ?? this.informationSource,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
    );
  }
}
