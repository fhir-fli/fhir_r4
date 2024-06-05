// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'immunization.freezed.dart';
part 'immunization.g.dart';

/// [Immunization] Describes the event of a patient being administered a
@freezed
class Immunization with _$Immunization implements DomainResource {
  /// [Immunization] Describes the event of a patient being administered a
  const Immunization._();

  /// [Immunization] Describes the event of a patient being administered a
  /// vaccine or a record of an immunization as reported by a patient, a
  ///  clinician or another party.
  ///
  /// [resourceType] This is a Immunization resource
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
  /// [identifier] A unique identifier assigned to this immunization record.
  ///
  /// [status] Indicates the current status of the immunization event.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] Indicates the reason the immunization event was not
  ///  performed.
  ///
  /// [vaccineCode] Vaccine that was administered or was to be administered.
  ///
  /// [patient] The patient who either received or did not receive the
  ///  immunization.
  ///
  /// [encounter] The visit or admission or other contact between patient and
  ///  health care provider the immunization was performed as part of.
  ///
  /// [occurrenceDateTime] Date vaccine administered or was to be administered.
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [occurrenceString] Date vaccine administered or was to be administered.
  ///
  /// [occurrenceStringElement] Extensions for occurrenceString
  ///
  /// [recorded] The date the occurrence of the immunization was first captured
  /// in the record - potentially significantly after the occurrence of the
  ///  event.
  ///
  /// [recordedElement] Extensions for recorded
  ///
  /// [primarySource] An indication that the content of the record is based on
  /// information from the person who administered the vaccine. This reflects
  ///  the context under which the data was originally recorded.
  ///
  /// [primarySourceElement] Extensions for primarySource
  ///
  /// [reportOrigin] The source of the data when the report of the immunization
  /// event is not based on information from the person who administered the
  ///  vaccine.
  ///
  /// [location] The service delivery location where the vaccine administration
  ///  occurred.
  ///
  /// [manufacturer] Name of vaccine manufacturer.
  ///
  /// [lotNumber] Lot number of the  vaccine product.
  ///
  /// [lotNumberElement] Extensions for lotNumber
  ///
  /// [expirationDate] Date vaccine batch expires.
  ///
  /// [expirationDateElement] Extensions for expirationDate
  ///
  /// [site] Body site where vaccine was administered.
  ///
  /// [route] The path by which the vaccine product is taken into the body.
  ///
  /// [doseQuantity] The quantity of vaccine product that was administered.
  ///
  /// [performer] Indicates who performed the immunization event.
  ///
  /// [note] Extra information about the immunization that is not conveyed by
  ///  the other attributes.
  ///
  /// [reasonCode] Reasons why the vaccine was administered.
  ///
  /// [reasonReference] Condition, Observation or DiagnosticReport that
  ///  supports why the immunization was administered.
  ///
  /// [isSubpotent] Indication if a dose is considered to be subpotent. By
  ///  default, a dose should be considered to be potent.
  ///
  /// [isSubpotentElement] Extensions for isSubpotent
  ///
  /// [subpotentReason] Reason why a dose is considered to be subpotent.
  ///
  /// [education] Educational material presented to the patient (or guardian)
  ///  at the time of vaccine administration.
  ///
  /// [programEligibility] Indicates a patient's eligibility for a funding
  ///  program.
  ///
  /// [fundingSource] Indicates the source of the vaccine actually
  /// administered. This may be different than the patient eligibility (e.g. the
  /// patient may be eligible for a publically purchased vaccine but due to
  /// inventory issues, vaccine purchased with private funds was actually
  ///  administered).
  ///
  /// [reaction] Categorical data indicating that an adverse event is
  ///  associated in time to an immunization.
  ///
  /// [protocolApplied] The protocol (set of recommendations) being followed by
  ///  the provider who administered the dose.
  const factory Immunization({
    @Default(R4ResourceType.Immunization)
    @JsonKey(unknownEnumValue: R4ResourceType.Immunization)

    /// [resourceType] This is a Immunization resource
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

    /// [identifier] A unique identifier assigned to this immunization record.
    List<Identifier>? identifier,

    /// [status] Indicates the current status of the immunization event.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReason] Indicates the reason the immunization event was not
    ///  performed.
    CodeableConcept? statusReason,

    /// [vaccineCode] Vaccine that was administered or was to be administered.
    required CodeableConcept vaccineCode,

    /// [patient] The patient who either received or did not receive the
    ///  immunization.
    required Reference patient,

    /// [encounter] The visit or admission or other contact between patient and
    ///  health care provider the immunization was performed as part of.
    Reference? encounter,

    /// [occurrenceDateTime] Date vaccine administered or was to be administered.
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [occurrenceString] Date vaccine administered or was to be administered.
    String? occurrenceString,

    /// [occurrenceStringElement] Extensions for occurrenceString
    @JsonKey(name: '_occurrenceString')
    PrimitiveElement? occurrenceStringElement,

    /// [recorded] The date the occurrence of the immunization was first captured
    /// in the record - potentially significantly after the occurrence of the
    ///  event.
    FhirDateTime? recorded,

    /// [recordedElement] Extensions for recorded
    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,

    /// [primarySource] An indication that the content of the record is based on
    /// information from the person who administered the vaccine. This reflects
    ///  the context under which the data was originally recorded.
    FhirBoolean? primarySource,

    /// [primarySourceElement] Extensions for primarySource
    @JsonKey(name: '_primarySource') PrimitiveElement? primarySourceElement,

    /// [reportOrigin] The source of the data when the report of the immunization
    /// event is not based on information from the person who administered the
    ///  vaccine.
    CodeableConcept? reportOrigin,

    /// [location] The service delivery location where the vaccine administration
    ///  occurred.
    Reference? location,

    /// [manufacturer] Name of vaccine manufacturer.
    Reference? manufacturer,

    /// [lotNumber] Lot number of the  vaccine product.
    String? lotNumber,

    /// [lotNumberElement] Extensions for lotNumber
    @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,

    /// [expirationDate] Date vaccine batch expires.
    FhirDate? expirationDate,

    /// [expirationDateElement] Extensions for expirationDate
    @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,

    /// [site] Body site where vaccine was administered.
    CodeableConcept? site,

    /// [route] The path by which the vaccine product is taken into the body.
    CodeableConcept? route,

    /// [doseQuantity] The quantity of vaccine product that was administered.
    Quantity? doseQuantity,

    /// [performer] Indicates who performed the immunization event.
    List<ImmunizationPerformer>? performer,

    /// [note] Extra information about the immunization that is not conveyed by
    ///  the other attributes.
    List<Annotation>? note,

    /// [reasonCode] Reasons why the vaccine was administered.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Condition, Observation or DiagnosticReport that
    ///  supports why the immunization was administered.
    List<Reference>? reasonReference,

    /// [isSubpotent] Indication if a dose is considered to be subpotent. By
    ///  default, a dose should be considered to be potent.
    FhirBoolean? isSubpotent,

    /// [isSubpotentElement] Extensions for isSubpotent
    @JsonKey(name: '_isSubpotent') PrimitiveElement? isSubpotentElement,

    /// [subpotentReason] Reason why a dose is considered to be subpotent.
    List<CodeableConcept>? subpotentReason,

    /// [education] Educational material presented to the patient (or guardian)
    ///  at the time of vaccine administration.
    List<ImmunizationEducation>? education,

    /// [programEligibility] Indicates a patient's eligibility for a funding
    ///  program.
    List<CodeableConcept>? programEligibility,

    /// [fundingSource] Indicates the source of the vaccine actually
    /// administered. This may be different than the patient eligibility (e.g. the
    /// patient may be eligible for a publically purchased vaccine but due to
    /// inventory issues, vaccine purchased with private funds was actually
    ///  administered).
    CodeableConcept? fundingSource,

    /// [reaction] Categorical data indicating that an adverse event is
    ///  associated in time to an immunization.
    List<ImmunizationReaction>? reaction,

    /// [protocolApplied] The protocol (set of recommendations) being followed by
    ///  the provider who administered the dose.
    List<ImmunizationProtocolApplied>? protocolApplied,
  }) = _Immunization;

  @override
  String get fhirType => 'Immunization';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Immunization.fromYaml(dynamic yaml) => yaml is String
      ? Immunization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Immunization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Immunization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Immunization.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationFromJson(json);

  /// Acts like a constructor, returns a [Immunization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Immunization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationFromJson(json);
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

/// [ImmunizationPerformer] Describes the event of a patient being
@freezed

/// [ImmunizationPerformer] Describes the event of a patient being
@freezed
class ImmunizationPerformer
    with _$ImmunizationPerformer
    implements BackboneElement {
  /// [ImmunizationPerformer] Describes the event of a patient being
  const ImmunizationPerformer._();

  /// [ImmunizationPerformer] Describes the event of a patient being
  /// administered a vaccine or a record of an immunization as reported by a
  ///  patient, a clinician or another party.
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
  /// [function] Describes the type of performance (e.g. ordering provider,
  ///  administering provider, etc.).
  ///
  /// [actor] The practitioner or organization who performed the action.
  const factory ImmunizationPerformer({
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

    /// [function] Describes the type of performance (e.g. ordering provider,
    ///  administering provider, etc.).
    CodeableConcept? function,

    /// [actor] The practitioner or organization who performed the action.
    required Reference actor,
  }) = _ImmunizationPerformer;

  @override
  String get fhirType => 'ImmunizationPerformer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImmunizationPerformer.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationPerformer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformer.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationPerformerFromJson(json);

  /// Acts like a constructor, returns a [ImmunizationPerformer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImmunizationPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationPerformerFromJson(json);
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

/// [ImmunizationEducation] Describes the event of a patient being
@freezed

/// [ImmunizationEducation] Describes the event of a patient being
@freezed
class ImmunizationEducation
    with _$ImmunizationEducation
    implements BackboneElement {
  /// [ImmunizationEducation] Describes the event of a patient being
  const ImmunizationEducation._();

  /// [ImmunizationEducation] Describes the event of a patient being
  /// administered a vaccine or a record of an immunization as reported by a
  ///  patient, a clinician or another party.
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
  /// [documentType] Identifier of the material presented to the patient.
  ///
  /// [documentTypeElement] Extensions for documentType
  ///
  /// [reference] Reference pointer to the educational material given to the
  ///  patient if the information was on line.
  ///
  /// [referenceElement] Extensions for reference
  ///
  /// [publicationDate] Date the educational material was published.
  ///
  /// [publicationDateElement] Extensions for publicationDate
  ///
  /// [presentationDate] Date the educational material was given to the
  ///  patient.
  ///
  /// [presentationDateElement] Extensions for presentationDate
  const factory ImmunizationEducation({
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

    /// [documentType] Identifier of the material presented to the patient.
    String? documentType,

    /// [documentTypeElement] Extensions for documentType
    @JsonKey(name: '_documentType') PrimitiveElement? documentTypeElement,

    /// [reference] Reference pointer to the educational material given to the
    ///  patient if the information was on line.
    FhirUri? reference,

    /// [referenceElement] Extensions for reference
    @JsonKey(name: '_reference') PrimitiveElement? referenceElement,

    /// [publicationDate] Date the educational material was published.
    FhirDateTime? publicationDate,

    /// [publicationDateElement] Extensions for publicationDate
    @JsonKey(name: '_publicationDate') PrimitiveElement? publicationDateElement,

    /// [presentationDate] Date the educational material was given to the
    ///  patient.
    FhirDateTime? presentationDate,

    /// [presentationDateElement] Extensions for presentationDate
    @JsonKey(name: '_presentationDate')
    PrimitiveElement? presentationDateElement,
  }) = _ImmunizationEducation;

  @override
  String get fhirType => 'ImmunizationEducation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImmunizationEducation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEducation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationEducation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationEducation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEducation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationEducationFromJson(json);

  /// Acts like a constructor, returns a [ImmunizationEducation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImmunizationEducation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationEducationFromJson(json);
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

/// [ImmunizationReaction] Describes the event of a patient being
@freezed

/// [ImmunizationReaction] Describes the event of a patient being
@freezed
class ImmunizationReaction
    with _$ImmunizationReaction
    implements BackboneElement {
  /// [ImmunizationReaction] Describes the event of a patient being
  const ImmunizationReaction._();

  /// [ImmunizationReaction] Describes the event of a patient being
  /// administered a vaccine or a record of an immunization as reported by a
  ///  patient, a clinician or another party.
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
  /// [date] Date of reaction to the immunization.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [detail] Details of the reaction.
  ///
  /// [reported] Self-reported indicator.
  ///
  /// [reportedElement] Extensions for reported
  const factory ImmunizationReaction({
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

    /// [date] Date of reaction to the immunization.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [detail] Details of the reaction.
    Reference? detail,

    /// [reported] Self-reported indicator.
    FhirBoolean? reported,

    /// [reportedElement] Extensions for reported
    @JsonKey(name: '_reported') PrimitiveElement? reportedElement,
  }) = _ImmunizationReaction;

  @override
  String get fhirType => 'ImmunizationReaction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImmunizationReaction.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationReaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationReaction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationReaction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReaction.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationReactionFromJson(json);

  /// Acts like a constructor, returns a [ImmunizationReaction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImmunizationReaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationReactionFromJson(json);
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

/// [ImmunizationProtocolApplied] Describes the event of a patient being
@freezed

/// [ImmunizationProtocolApplied] Describes the event of a patient being
@freezed
class ImmunizationProtocolApplied
    with _$ImmunizationProtocolApplied
    implements BackboneElement {
  /// [ImmunizationProtocolApplied] Describes the event of a patient being
  const ImmunizationProtocolApplied._();

  /// [ImmunizationProtocolApplied] Describes the event of a patient being
  /// administered a vaccine or a record of an immunization as reported by a
  ///  patient, a clinician or another party.
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
  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  ///
  /// [seriesElement] Extensions for series
  ///
  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP) that is being followed.
  ///
  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  administered against.
  ///
  /// [doseNumberPositiveInt] Nominal position in a series.
  ///
  /// [doseNumberPositiveIntElement] Extensions for doseNumberPositiveInt
  ///
  /// [doseNumberString] Nominal position in a series.
  ///
  /// [doseNumberStringElement] Extensions for doseNumberString
  ///
  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  ///
  /// [seriesDosesPositiveIntElement] Extensions for seriesDosesPositiveInt
  ///
  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  ///
  /// [seriesDosesStringElement] Extensions for seriesDosesString
  const factory ImmunizationProtocolApplied({
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

    /// [series] One possible path to achieve presumed immunity against a disease
    ///  - within the context of an authority.
    String? series,

    /// [seriesElement] Extensions for series
    @JsonKey(name: '_series') PrimitiveElement? seriesElement,

    /// [authority] Indicates the authority who published the protocol (e.g.
    ///  ACIP) that is being followed.
    Reference? authority,

    /// [targetDisease] The vaccine preventable disease the dose is being
    ///  administered against.
    List<CodeableConcept>? targetDisease,

    /// [doseNumberPositiveInt] Nominal position in a series.
    FhirPositiveInt? doseNumberPositiveInt,
    @JsonKey(name: '_doseNumberPositiveInt')

    /// [doseNumberPositiveIntElement] Extensions for doseNumberPositiveInt
    PrimitiveElement? doseNumberPositiveIntElement,

    /// [doseNumberString] Nominal position in a series.
    String? doseNumberString,

    /// [doseNumberStringElement] Extensions for doseNumberString
    @JsonKey(name: '_doseNumberString')
    PrimitiveElement? doseNumberStringElement,

    /// [seriesDosesPositiveInt] The recommended number of doses to achieve
    ///  immunity.
    FhirPositiveInt? seriesDosesPositiveInt,
    @JsonKey(name: '_seriesDosesPositiveInt')

    /// [seriesDosesPositiveIntElement] Extensions for seriesDosesPositiveInt
    PrimitiveElement? seriesDosesPositiveIntElement,

    /// [seriesDosesString] The recommended number of doses to achieve immunity.
    String? seriesDosesString,

    /// [seriesDosesStringElement] Extensions for seriesDosesString
    @JsonKey(name: '_seriesDosesString')
    PrimitiveElement? seriesDosesStringElement,
  }) = _ImmunizationProtocolApplied;

  @override
  String get fhirType => 'ImmunizationProtocolApplied';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImmunizationProtocolApplied.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationProtocolApplied.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationProtocolApplied.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationProtocolApplied cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolApplied.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationProtocolAppliedFromJson(json);

  /// Acts like a constructor, returns a [ImmunizationProtocolApplied], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImmunizationProtocolApplied.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationProtocolAppliedFromJson(json);
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
