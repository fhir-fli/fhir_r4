// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'medication_dispense.freezed.dart';
part 'medication_dispense.g.dart';

/// [MedicationDispense] Indicates that a medication product is to be or has
@freezed
class MedicationDispense with _$MedicationDispense implements DomainResource {
  /// [MedicationDispense] Indicates that a medication product is to be or has
  const MedicationDispense._();

  /// [MedicationDispense] Indicates that a medication product is to be or has
  /// been dispensed for a named person/patient.  This includes a description of
  /// the medication product (supply) provided and the instructions for
  /// administering the medication.  The medication dispense is the result of a
  ///  pharmacy system responding to a medication order.
  ///
  /// [resourceType] This is a MedicationDispense resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Identifiers associated with this Medication Dispense that
  /// are defined by business processes and/or used to refer to it when a direct
  /// URL reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from server
  ///  to server.
  ///
  /// [partOf] The procedure that trigger the dispense.
  ///
  /// [status] A code specifying the state of the set of dispense events.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReasonCodeableConcept] Indicates the reason why a dispense was not
  ///  performed.
  ///
  /// [statusReasonReference] Indicates the reason why a dispense was not
  ///  performed.
  ///
  /// [category] Indicates the type of medication dispense (for example, where
  /// the medication is expected to be consumed or administered (i.e. inpatient
  ///  or outpatient)).
  ///
  /// [medicationCodeableConcept] Identifies the medication being administered.
  /// This is either a link to a resource representing the details of the
  /// medication or a simple attribute carrying a code that identifies the
  ///  medication from a known list of medications.
  ///
  /// [medicationReference] Identifies the medication being administered. This
  /// is either a link to a resource representing the details of the medication
  /// or a simple attribute carrying a code that identifies the medication from
  ///  a known list of medications.
  ///
  /// [subject] A link to a resource representing the person or the group to
  ///  whom the medication will be given.
  ///
  /// [context] The encounter or episode of care that establishes the context
  ///  for this event.
  ///
  /// [supportingInformation] Additional information that supports the
  ///  medication being dispensed.
  ///
  /// [performer] Indicates who or what performed the event.
  ///
  /// [location] The principal physical location where the dispense was
  ///  performed.
  ///
  /// [authorizingPrescription] Indicates the medication order that is being
  ///  dispensed against.
  ///
  /// [type] Indicates the type of dispensing event that is performed. For
  /// example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill,
  ///  Samples, etc.
  ///
  /// [quantity] The amount of medication that has been dispensed. Includes
  ///  unit of measure.
  ///
  /// [daysSupply] The amount of medication expressed as a timing amount.
  ///
  /// [whenPrepared] The time when the dispensed product was packaged and
  ///  reviewed.
  ///
  /// [whenPreparedElement] Extensions for whenPrepared
  ///
  /// [whenHandedOver] The time the dispensed product was provided to the
  ///  patient or their representative.
  ///
  /// [whenHandedOverElement] Extensions for whenHandedOver
  ///
  /// [destination] Identification of the facility/location where the
  ///  medication was shipped to, as part of the dispense event.
  ///
  /// [receiver] Identifies the person who picked up the medication.  This will
  /// usually be a patient or their caregiver, but some cases exist where it can
  ///  be a healthcare professional.
  ///
  /// [note] Extra information about the dispense that could not be conveyed in
  ///  the other attributes.
  ///
  /// [dosageInstruction] Indicates how the medication is to be used by the
  ///  patient.
  ///
  /// [substitution] Indicates whether or not substitution was made as part of
  /// the dispense.  In some cases, substitution will be expected but does not
  /// happen, in other cases substitution is not expected but does happen.  This
  /// block explains what substitution did or did not happen and why.  If
  ///  nothing is specified, substitution was not done.
  ///
  /// [detectedIssue] Indicates an actual or potential clinical issue with or
  /// between one or more active or proposed clinical actions for a patient;
  ///  e.g. drug-drug interaction, duplicate therapy, dosage alert etc.
  ///
  /// [eventHistory] A summary of the events of interest that have occurred,
  ///  such as when the dispense was verified.
  const factory MedicationDispense({
    @Default(R4ResourceType.MedicationDispense)
    @JsonKey(unknownEnumValue: R4ResourceType.MedicationDispense)

    /// [resourceType] This is a MedicationDispense resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifiers associated with this Medication Dispense that
    /// are defined by business processes and/or used to refer to it when a direct
    /// URL reference to the resource itself is not appropriate. They are business
    /// identifiers assigned to this resource by the performer or other systems
    /// and remain constant as the resource is updated and propagates from server
    ///  to server.
    List<Identifier>? identifier,

    /// [partOf] The procedure that trigger the dispense.
    List<Reference>? partOf,

    /// [status] A code specifying the state of the set of dispense events.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReasonCodeableConcept] Indicates the reason why a dispense was not
    ///  performed.
    CodeableConcept? statusReasonCodeableConcept,

    /// [statusReasonReference] Indicates the reason why a dispense was not
    ///  performed.
    Reference? statusReasonReference,

    /// [category] Indicates the type of medication dispense (for example, where
    /// the medication is expected to be consumed or administered (i.e. inpatient
    ///  or outpatient)).
    CodeableConcept? category,

    /// [medicationCodeableConcept] Identifies the medication being administered.
    /// This is either a link to a resource representing the details of the
    /// medication or a simple attribute carrying a code that identifies the
    ///  medication from a known list of medications.
    CodeableConcept? medicationCodeableConcept,

    /// [medicationReference] Identifies the medication being administered. This
    /// is either a link to a resource representing the details of the medication
    /// or a simple attribute carrying a code that identifies the medication from
    ///  a known list of medications.
    Reference? medicationReference,

    /// [subject] A link to a resource representing the person or the group to
    ///  whom the medication will be given.
    Reference? subject,

    /// [context] The encounter or episode of care that establishes the context
    ///  for this event.
    Reference? context,

    /// [supportingInformation] Additional information that supports the
    ///  medication being dispensed.
    List<Reference>? supportingInformation,

    /// [performer] Indicates who or what performed the event.
    List<MedicationDispensePerformer>? performer,

    /// [location] The principal physical location where the dispense was
    ///  performed.
    Reference? location,

    /// [authorizingPrescription] Indicates the medication order that is being
    ///  dispensed against.
    List<Reference>? authorizingPrescription,

    /// [type] Indicates the type of dispensing event that is performed. For
    /// example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill,
    ///  Samples, etc.
    CodeableConcept? type,

    /// [quantity] The amount of medication that has been dispensed. Includes
    ///  unit of measure.
    Quantity? quantity,

    /// [daysSupply] The amount of medication expressed as a timing amount.
    Quantity? daysSupply,

    /// [whenPrepared] The time when the dispensed product was packaged and
    ///  reviewed.
    FhirDateTime? whenPrepared,

    /// [whenPreparedElement] Extensions for whenPrepared
    @JsonKey(name: '_whenPrepared') PrimitiveElement? whenPreparedElement,

    /// [whenHandedOver] The time the dispensed product was provided to the
    ///  patient or their representative.
    FhirDateTime? whenHandedOver,

    /// [whenHandedOverElement] Extensions for whenHandedOver
    @JsonKey(name: '_whenHandedOver') PrimitiveElement? whenHandedOverElement,

    /// [destination] Identification of the facility/location where the
    ///  medication was shipped to, as part of the dispense event.
    Reference? destination,

    /// [receiver] Identifies the person who picked up the medication.  This will
    /// usually be a patient or their caregiver, but some cases exist where it can
    ///  be a healthcare professional.
    List<Reference>? receiver,

    /// [note] Extra information about the dispense that could not be conveyed in
    ///  the other attributes.
    List<Annotation>? note,

    /// [dosageInstruction] Indicates how the medication is to be used by the
    ///  patient.
    List<Dosage>? dosageInstruction,

    /// [substitution] Indicates whether or not substitution was made as part of
    /// the dispense.  In some cases, substitution will be expected but does not
    /// happen, in other cases substitution is not expected but does happen.  This
    /// block explains what substitution did or did not happen and why.  If
    ///  nothing is specified, substitution was not done.
    MedicationDispenseSubstitution? substitution,

    /// [detectedIssue] Indicates an actual or potential clinical issue with or
    /// between one or more active or proposed clinical actions for a patient;
    ///  e.g. drug-drug interaction, duplicate therapy, dosage alert etc.
    List<Reference>? detectedIssue,

    /// [eventHistory] A summary of the events of interest that have occurred,
    ///  such as when the dispense was verified.
    List<Reference>? eventHistory,
  }) = _MedicationDispense;

  @override
  String get fhirType => 'MedicationDispense';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationDispense.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationDispense.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationDispense cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispenseFromJson(json);

  /// Acts like a constructor, returns a [MedicationDispense], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationDispenseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [MedicationDispensePerformer] Indicates that a medication product is to
@freezed

/// [MedicationDispensePerformer] Indicates that a medication product is to
@freezed
class MedicationDispensePerformer
    with _$MedicationDispensePerformer
    implements BackboneElement {
  /// [MedicationDispensePerformer] Indicates that a medication product is to
  const MedicationDispensePerformer._();

  /// [MedicationDispensePerformer] Indicates that a medication product is to
  /// be or has been dispensed for a named person/patient.  This includes a
  /// description of the medication product (supply) provided and the
  /// instructions for administering the medication.  The medication dispense is
  ///  the result of a pharmacy system responding to a medication order.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [function] Distinguishes the type of performer in the dispense.  For
  ///  example, date enterer, packager, final checker.
  ///
  /// [actor] The device, practitioner, etc. who performed the action.  It
  ///  should be assumed that the actor is the dispenser of the medication.
  const factory MedicationDispensePerformer({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [function] Distinguishes the type of performer in the dispense.  For
    ///  example, date enterer, packager, final checker.
    CodeableConcept? function,

    /// [actor] The device, practitioner, etc. who performed the action.  It
    ///  should be assumed that the actor is the dispenser of the medication.
    required Reference actor,
  }) = _MedicationDispensePerformer;

  @override
  String get fhirType => 'MedicationDispensePerformer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationDispensePerformer.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispensePerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationDispensePerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationDispensePerformer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationDispensePerformer.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispensePerformerFromJson(json);

  /// Acts like a constructor, returns a [MedicationDispensePerformer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationDispensePerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationDispensePerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationDispenseSubstitution] Indicates that a medication product is
@freezed

/// [MedicationDispenseSubstitution] Indicates that a medication product is
@freezed
class MedicationDispenseSubstitution
    with _$MedicationDispenseSubstitution
    implements BackboneElement {
  /// [MedicationDispenseSubstitution] Indicates that a medication product is
  const MedicationDispenseSubstitution._();

  /// [MedicationDispenseSubstitution] Indicates that a medication product is
  /// to be or has been dispensed for a named person/patient.  This includes a
  /// description of the medication product (supply) provided and the
  /// instructions for administering the medication.  The medication dispense is
  ///  the result of a pharmacy system responding to a medication order.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [wasSubstituted] True if the dispenser dispensed a different drug or
  ///  product from what was prescribed.
  ///
  /// [wasSubstitutedElement] Extensions for wasSubstituted
  ///
  /// [type] A code signifying whether a different drug was dispensed from what
  ///  was prescribed.
  ///
  /// [reason] Indicates the reason for the substitution (or lack of
  ///  substitution) from what was prescribed.
  ///
  /// [responsibleParty] The person or organization that has primary
  ///  responsibility for the substitution.
  const factory MedicationDispenseSubstitution({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [wasSubstituted] True if the dispenser dispensed a different drug or
    ///  product from what was prescribed.
    FhirBoolean? wasSubstituted,

    /// [wasSubstitutedElement] Extensions for wasSubstituted
    @JsonKey(name: '_wasSubstituted') PrimitiveElement? wasSubstitutedElement,

    /// [type] A code signifying whether a different drug was dispensed from what
    ///  was prescribed.
    CodeableConcept? type,

    /// [reason] Indicates the reason for the substitution (or lack of
    ///  substitution) from what was prescribed.
    List<CodeableConcept>? reason,

    /// [responsibleParty] The person or organization that has primary
    ///  responsibility for the substitution.
    List<Reference>? responsibleParty,
  }) = _MedicationDispenseSubstitution;

  @override
  String get fhirType => 'MedicationDispenseSubstitution';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationDispenseSubstitution.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationDispenseSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationDispenseSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationDispenseSubstitution cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationDispenseSubstitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispenseSubstitutionFromJson(json);

  /// Acts like a constructor, returns a [MedicationDispenseSubstitution], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationDispenseSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationDispenseSubstitutionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
