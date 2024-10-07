import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'medication_dispense.g.dart';

/// [MedicationDispense] /// Indicates that a medication product is to be or has been dispensed for a
/// named person/patient. This includes a description of the medication product
/// (supply) provided and the instructions for administering the medication.
/// The medication dispense is the result of a pharmacy system responding to a
/// medication order.
@JsonSerializable()
class MedicationDispense extends DomainResource {
  MedicationDispense({
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
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.whenPreparedElement,
    this.whenHandedOver,
    this.whenHandedOverElement,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.MedicationDispense,
            fhirType: 'MedicationDispense');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this Medication Dispense that are defined by
  /// business processes and/or used to refer to it when a direct URL reference
  /// to the resource itself is not appropriate. They are business identifiers
  /// assigned to this resource by the performer or other systems and remain
  /// constant as the resource is updated and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [partOf] /// The procedure that trigger the dispense.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// A code specifying the state of the set of dispense events.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReasonCodeableConcept] /// Indicates the reason why a dispense was not performed.
  @JsonKey(name: 'statusReasonCodeableConcept')
  final CodeableConcept? statusReasonCodeableConcept;

  /// [statusReasonReference] /// Indicates the reason why a dispense was not performed.
  @JsonKey(name: 'statusReasonReference')
  final Reference? statusReasonReference;

  /// [category] /// Indicates the type of medication dispense (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient or
  /// outpatient)).
  @JsonKey(name: 'category')
  final CodeableConcept? category;

  /// [medicationCodeableConcept] /// Identifies the medication being administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  @JsonKey(name: 'medicationCodeableConcept')
  final CodeableConcept medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication being administered. This is either a link to a
  /// resource representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  @JsonKey(name: 'medicationReference')
  final Reference medicationReference;

  /// [subject] /// A link to a resource representing the person or the group to whom the
  /// medication will be given.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [context] /// The encounter or episode of care that establishes the context for this
  /// event.
  @JsonKey(name: 'context')
  final Reference? context;

  /// [supportingInformation] /// Additional information that supports the medication being dispensed.
  @JsonKey(name: 'supportingInformation')
  final List<Reference>? supportingInformation;

  /// [performer] /// Indicates who or what performed the event.
  @JsonKey(name: 'performer')
  final List<MedicationDispensePerformer>? performer;

  /// [location] /// The principal physical location where the dispense was performed.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [authorizingPrescription] /// Indicates the medication order that is being dispensed against.
  @JsonKey(name: 'authorizingPrescription')
  final List<Reference>? authorizingPrescription;

  /// [type] /// Indicates the type of dispensing event that is performed. For example,
  /// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  /// etc.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [quantity] /// The amount of medication that has been dispensed. Includes unit of measure.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [daysSupply] /// The amount of medication expressed as a timing amount.
  @JsonKey(name: 'daysSupply')
  final Quantity? daysSupply;

  /// [whenPrepared] /// The time when the dispensed product was packaged and reviewed.
  @JsonKey(name: 'whenPrepared')
  final FhirDateTime? whenPrepared;
  @JsonKey(name: '_whenPrepared')
  final Element? whenPreparedElement;

  /// [whenHandedOver] /// The time the dispensed product was provided to the patient or their
  /// representative.
  @JsonKey(name: 'whenHandedOver')
  final FhirDateTime? whenHandedOver;
  @JsonKey(name: '_whenHandedOver')
  final Element? whenHandedOverElement;

  /// [destination] /// Identification of the facility/location where the medication was shipped
  /// to, as part of the dispense event.
  @JsonKey(name: 'destination')
  final Reference? destination;

  /// [receiver] /// Identifies the person who picked up the medication. This will usually be a
  /// patient or their caregiver, but some cases exist where it can be a
  /// healthcare professional.
  @JsonKey(name: 'receiver')
  final List<Reference>? receiver;

  /// [note] /// Extra information about the dispense that could not be conveyed in the
  /// other attributes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [dosageInstruction] /// Indicates how the medication is to be used by the patient.
  @JsonKey(name: 'dosageInstruction')
  final List<Dosage>? dosageInstruction;

  /// [substitution] /// Indicates whether or not substitution was made as part of the dispense. In
  /// some cases, substitution will be expected but does not happen, in other
  /// cases substitution is not expected but does happen. This block explains
  /// what substitution did or did not happen and why. If nothing is specified,
  /// substitution was not done.
  @JsonKey(name: 'substitution')
  final MedicationDispenseSubstitution? substitution;

  /// [detectedIssue] /// Indicates an actual or potential clinical issue with or between one or more
  /// active or proposed clinical actions for a patient; e.g. drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  @JsonKey(name: 'detectedIssue')
  final List<Reference>? detectedIssue;

  /// [eventHistory] /// A summary of the events of interest that have occurred, such as when the
  /// dispense was verified.
  @JsonKey(name: 'eventHistory')
  final List<Reference>? eventHistory;
  factory MedicationDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispenseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationDispenseToJson(this);

  @override
  MedicationDispense clone() => throw UnimplementedError();
  @override
  MedicationDispense copyWith({
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
    List<Reference>? partOf,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReasonCodeableConcept,
    Reference? statusReasonReference,
    CodeableConcept? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    List<MedicationDispensePerformer>? performer,
    Reference? location,
    List<Reference>? authorizingPrescription,
    CodeableConcept? type,
    Quantity? quantity,
    Quantity? daysSupply,
    FhirDateTime? whenPrepared,
    Element? whenPreparedElement,
    FhirDateTime? whenHandedOver,
    Element? whenHandedOverElement,
    Reference? destination,
    List<Reference>? receiver,
    List<Annotation>? note,
    List<Dosage>? dosageInstruction,
    MedicationDispenseSubstitution? substitution,
    List<Reference>? detectedIssue,
    List<Reference>? eventHistory,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationDispense(
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
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReasonCodeableConcept:
          statusReasonCodeableConcept ?? this.statusReasonCodeableConcept,
      statusReasonReference:
          statusReasonReference ?? this.statusReasonReference,
      category: category ?? this.category,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      authorizingPrescription:
          authorizingPrescription ?? this.authorizingPrescription,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      daysSupply: daysSupply ?? this.daysSupply,
      whenPrepared: whenPrepared ?? this.whenPrepared,
      whenPreparedElement: whenPreparedElement ?? this.whenPreparedElement,
      whenHandedOver: whenHandedOver ?? this.whenHandedOver,
      whenHandedOverElement:
          whenHandedOverElement ?? this.whenHandedOverElement,
      destination: destination ?? this.destination,
      receiver: receiver ?? this.receiver,
      note: note ?? this.note,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      substitution: substitution ?? this.substitution,
      detectedIssue: detectedIssue ?? this.detectedIssue,
      eventHistory: eventHistory ?? this.eventHistory,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationDispense.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationDispense.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationDispense cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationDispensePerformer] /// Indicates who or what performed the event.
@JsonSerializable()
class MedicationDispensePerformer extends BackboneElement {
  MedicationDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicationDispensePerformer');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Distinguishes the type of performer in the dispense. For example, date
  /// enterer, packager, final checker.
  @JsonKey(name: 'function')
  final CodeableConcept? function_;

  /// [actor] /// The device, practitioner, etc. who performed the action. It should be
  /// assumed that the actor is the dispenser of the medication.
  @JsonKey(name: 'actor')
  final Reference actor;
  factory MedicationDispensePerformer.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispensePerformerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationDispensePerformerToJson(this);

  @override
  MedicationDispensePerformer clone() => throw UnimplementedError();
  @override
  MedicationDispensePerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationDispensePerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationDispensePerformer.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispensePerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationDispensePerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationDispensePerformer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationDispensePerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationDispensePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationDispenseSubstitution] /// Indicates whether or not substitution was made as part of the dispense. In
/// some cases, substitution will be expected but does not happen, in other
/// cases substitution is not expected but does happen. This block explains
/// what substitution did or did not happen and why. If nothing is specified,
/// substitution was not done.
@JsonSerializable()
class MedicationDispenseSubstitution extends BackboneElement {
  MedicationDispenseSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.wasSubstituted,
    this.wasSubstitutedElement,
    this.type,
    this.reason,
    this.responsibleParty,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicationDispenseSubstitution');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [wasSubstituted] /// True if the dispenser dispensed a different drug or product from what was
  /// prescribed.
  @JsonKey(name: 'wasSubstituted')
  final FhirBoolean wasSubstituted;
  @JsonKey(name: '_wasSubstituted')
  final Element? wasSubstitutedElement;

  /// [type] /// A code signifying whether a different drug was dispensed from what was
  /// prescribed.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [reason] /// Indicates the reason for the substitution (or lack of substitution) from
  /// what was prescribed.
  @JsonKey(name: 'reason')
  final List<CodeableConcept>? reason;

  /// [responsibleParty] /// The person or organization that has primary responsibility for the
  /// substitution.
  @JsonKey(name: 'responsibleParty')
  final List<Reference>? responsibleParty;
  factory MedicationDispenseSubstitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispenseSubstitutionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationDispenseSubstitutionToJson(this);

  @override
  MedicationDispenseSubstitution clone() => throw UnimplementedError();
  @override
  MedicationDispenseSubstitution copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? wasSubstituted,
    Element? wasSubstitutedElement,
    CodeableConcept? type,
    List<CodeableConcept>? reason,
    List<Reference>? responsibleParty,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationDispenseSubstitution(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      wasSubstituted: wasSubstituted ?? this.wasSubstituted,
      wasSubstitutedElement:
          wasSubstitutedElement ?? this.wasSubstitutedElement,
      type: type ?? this.type,
      reason: reason ?? this.reason,
      responsibleParty: responsibleParty ?? this.responsibleParty,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationDispenseSubstitution.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationDispenseSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationDispenseSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationDispenseSubstitution cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationDispenseSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationDispenseSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
