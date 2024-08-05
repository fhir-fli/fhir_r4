// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'medication_administration.freezed.dart';
part 'medication_administration.g.dart';

/// [MedicationAdministration] Describes the event of a patient consuming or
@freezed
class MedicationAdministration extends DomainResource
    with _$MedicationAdministration {
  /// [MedicationAdministration] Describes the event of a patient consuming or
  MedicationAdministration._();

  /// [MedicationAdministration] Describes the event of a patient consuming or
  /// otherwise being administered a medication.  This may be as simple as
  /// swallowing a tablet or it may be a long running infusion.  Related
  /// resources tie this event to the authorizing prescription, and the specific
  ///  encounter between patient and health care practitioner.
  ///
  /// [resourceType] This is a MedicationAdministration resource
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
  /// [identifier] Identifiers associated with this Medication Administration
  /// that are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or other
  /// systems and remain constant as the resource is updated and propagates from
  ///  server to server.
  ///
  /// [instantiates] A protocol, guideline, orderset, or other definition that
  ///  was adhered to in whole or in part by this event.
  ///
  /// [instantiatesElement] Extensions for instantiates
  ///
  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  ///
  /// [status] Will generally be set to show that the administration has been
  /// completed.  For some long running administrations such as infusions, it is
  /// possible for an administration to be started but not completed or it may
  ///  be paused while some other process is under way.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] A code indicating why the administration was not
  ///  performed.
  ///
  /// [category] Indicates where the medication is expected to be consumed or
  ///  administered.
  ///
  /// [medicationCodeableConcept] Identifies the medication that was
  /// administered. This is either a link to a resource representing the details
  /// of the medication or a simple attribute carrying a code that identifies
  ///  the medication from a known list of medications.
  ///
  /// [medicationReference] Identifies the medication that was administered.
  /// This is either a link to a resource representing the details of the
  /// medication or a simple attribute carrying a code that identifies the
  ///  medication from a known list of medications.
  ///
  /// [subject] The person or animal or group receiving the medication.
  ///
  /// [context] The visit, admission, or other contact between patient and
  /// health care provider during which the medication administration was
  ///  performed.
  ///
  /// [supportingInformation] Additional information (for example, patient
  ///  height and weight) that supports the administration of the medication.
  ///
  /// [effectiveDateTime] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  ///
  /// [effectiveDateTimeElement] Extensions for effectiveDateTime
  ///
  /// [effectivePeriod] A specific date/time or interval of time during which
  /// the administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a tablet
  ///  the use of dateTime is more appropriate.
  ///
  /// [performer] Indicates who or what performed the medication administration
  ///  and how they were involved.
  ///
  /// [reasonCode] A code indicating why the medication was given.
  ///
  /// [reasonReference] Condition or observation that supports why the
  ///  medication was administered.
  ///
  /// [request] The original request, instruction or authority to perform the
  ///  administration.
  ///
  /// [device] The device used in administering the medication to the patient.
  ///  For example, a particular infusion pump.
  ///
  /// [note] Extra information about the medication administration that is not
  ///  conveyed by the other attributes.
  ///
  /// [dosage] Describes the medication dosage information details e.g. dose,
  ///  rate, site, route, etc.
  ///
  /// [eventHistory] A summary of the events of interest that have occurred,
  ///  such as when the administration was verified.
  factory MedicationAdministration({
    @Default(R4ResourceType.MedicationAdministration)
    @JsonKey(unknownEnumValue: R4ResourceType.MedicationAdministration)

    /// [resourceType] This is a MedicationAdministration resource
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

    /// [identifier] Identifiers associated with this Medication Administration
    /// that are defined by business processes and/or used to refer to it when a
    /// direct URL reference to the resource itself is not appropriate. They are
    /// business identifiers assigned to this resource by the performer or other
    /// systems and remain constant as the resource is updated and propagates from
    ///  server to server.
    List<Identifier>? identifier,

    /// [instantiates] A protocol, guideline, orderset, or other definition that
    ///  was adhered to in whole or in part by this event.
    List<FhirUri>? instantiates,

    /// [instantiatesElement] Extensions for instantiates
    @JsonKey(name: '_instantiates') List<PrimitiveElement>? instantiatesElement,

    /// [partOf] A larger event of which this particular event is a component or
    ///  step.
    List<Reference>? partOf,

    /// [status] Will generally be set to show that the administration has been
    /// completed.  For some long running administrations such as infusions, it is
    /// possible for an administration to be started but not completed or it may
    ///  be paused while some other process is under way.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReason] A code indicating why the administration was not
    ///  performed.
    List<CodeableConcept>? statusReason,

    /// [category] Indicates where the medication is expected to be consumed or
    ///  administered.
    CodeableConcept? category,

    /// [medicationCodeableConcept] Identifies the medication that was
    /// administered. This is either a link to a resource representing the details
    /// of the medication or a simple attribute carrying a code that identifies
    ///  the medication from a known list of medications.
    CodeableConcept? medicationCodeableConcept,

    /// [medicationReference] Identifies the medication that was administered.
    /// This is either a link to a resource representing the details of the
    /// medication or a simple attribute carrying a code that identifies the
    ///  medication from a known list of medications.
    Reference? medicationReference,

    /// [subject] The person or animal or group receiving the medication.
    required Reference subject,

    /// [context] The visit, admission, or other contact between patient and
    /// health care provider during which the medication administration was
    ///  performed.
    Reference? context,

    /// [supportingInformation] Additional information (for example, patient
    ///  height and weight) that supports the administration of the medication.
    List<Reference>? supportingInformation,

    /// [effectiveDateTime] A specific date/time or interval of time during which
    /// the administration took place (or did not take place, when the 'notGiven'
    /// attribute is true). For many administrations, such as swallowing a tablet
    ///  the use of dateTime is more appropriate.
    FhirDateTime? effectiveDateTime,

    /// [effectiveDateTimeElement] Extensions for effectiveDateTime
    @JsonKey(name: '_effectiveDateTime')
    PrimitiveElement? effectiveDateTimeElement,

    /// [effectivePeriod] A specific date/time or interval of time during which
    /// the administration took place (or did not take place, when the 'notGiven'
    /// attribute is true). For many administrations, such as swallowing a tablet
    ///  the use of dateTime is more appropriate.
    Period? effectivePeriod,

    /// [performer] Indicates who or what performed the medication administration
    ///  and how they were involved.
    List<MedicationAdministrationPerformer>? performer,

    /// [reasonCode] A code indicating why the medication was given.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Condition or observation that supports why the
    ///  medication was administered.
    List<Reference>? reasonReference,

    /// [request] The original request, instruction or authority to perform the
    ///  administration.
    Reference? request,

    /// [device] The device used in administering the medication to the patient.
    ///  For example, a particular infusion pump.
    List<Reference>? device,

    /// [note] Extra information about the medication administration that is not
    ///  conveyed by the other attributes.
    List<Annotation>? note,

    /// [dosage] Describes the medication dosage information details e.g. dose,
    ///  rate, site, route, etc.
    MedicationAdministrationDosage? dosage,

    /// [eventHistory] A summary of the events of interest that have occurred,
    ///  such as when the administration was verified.
    List<Reference>? eventHistory,
  }) = _MedicationAdministration;

  @override
  String get fhirType => 'MedicationAdministration';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationAdministration.fromYaml(dynamic yaml) => yaml is String
      ? MedicationAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationAdministration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationAdministration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministration.fromJson(Map<String, dynamic> json) =>
      _$MedicationAdministrationFromJson(json);

  /// Acts like a constructor, returns a [MedicationAdministration], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationAdministrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

@freezed
@freezed
class MedicationAdministrationPerformer extends BackboneElement
    with _$MedicationAdministrationPerformer {
  MedicationAdministrationPerformer._();

  /// [MedicationAdministrationPerformer] Describes the event of a patient
  /// consuming or otherwise being administered a medication.  This may be as
  /// simple as swallowing a tablet or it may be a long running infusion.
  /// Related resources tie this event to the authorizing prescription, and the
  ///  specific encounter between patient and health care practitioner.
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
  /// [function] Distinguishes the type of involvement of the performer in the
  ///  medication administration.
  ///
  /// [actor] Indicates who or what performed the medication administration.
  factory MedicationAdministrationPerformer({
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

    /// [function] Distinguishes the type of involvement of the performer in the
    ///  medication administration.
    CodeableConcept? function,

    /// [actor] Indicates who or what performed the medication administration.
    required Reference actor,
  }) = _MedicationAdministrationPerformer;

  @override
  String get fhirType => 'MedicationAdministrationPerformer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationAdministrationPerformer.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationAdministrationPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationAdministrationPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationAdministrationPerformer cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MedicationAdministrationPerformer.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationAdministrationPerformerFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationAdministrationDosage] Describes the event of a patient
@freezed

/// [MedicationAdministrationDosage] Describes the event of a patient
@freezed
class MedicationAdministrationDosage extends BackboneElement
    with _$MedicationAdministrationDosage {
  /// [MedicationAdministrationDosage] Describes the event of a patient
  MedicationAdministrationDosage._();

  /// [MedicationAdministrationDosage] Describes the event of a patient
  /// consuming or otherwise being administered a medication.  This may be as
  /// simple as swallowing a tablet or it may be a long running infusion.
  /// Related resources tie this event to the authorizing prescription, and the
  ///  specific encounter between patient and health care practitioner.
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
  /// [text] Free text dosage can be used for cases where the dosage
  /// administered is too complex to code. When coded dosage is present, the
  ///  free text dosage may still be present for display to humans.
  /// The dosage instructions should reflect the dosage of the medication that
  ///  was administered.
  ///
  /// [textElement] Extensions for text
  ///
  /// [site] A coded specification of the anatomic site where the medication
  ///  first entered the body.  For example, "left arm".
  ///
  /// [route] A code specifying the route or physiological path of
  /// administration of a therapeutic agent into or onto the patient.  For
  ///  example, topical, intravenous, etc.
  ///
  /// [method] A coded value indicating the method by which the medication is
  /// intended to be or was introduced into or on the body.  This attribute will
  /// most often NOT be populated.  It is most commonly used for injections.
  ///  For example, Slow Push, Deep IV.
  ///
  /// [dose] The amount of the medication given at one administration event.
  /// Use this value when the administration is essentially an instantaneous
  ///  event such as a swallowing a tablet or giving an injection.
  ///
  /// [rateRatio] Identifies the speed with which the medication was or will be
  /// introduced into the patient.  Typically, the rate for an infusion e.g. 100
  /// ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of
  /// time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1
  ///  minute; 1 liter/8 hours.
  ///
  /// [rateQuantity] Identifies the speed with which the medication was or will
  /// be introduced into the patient.  Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit
  /// of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
  ///  mcg/1 minute; 1 liter/8 hours.
  factory MedicationAdministrationDosage({
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

    /// [text] Free text dosage can be used for cases where the dosage
    /// administered is too complex to code. When coded dosage is present, the
    ///  free text dosage may still be present for display to humans.
    /// The dosage instructions should reflect the dosage of the medication that
    ///  was administered.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,

    /// [site] A coded specification of the anatomic site where the medication
    ///  first entered the body.  For example, "left arm".
    CodeableConcept? site,

    /// [route] A code specifying the route or physiological path of
    /// administration of a therapeutic agent into or onto the patient.  For
    ///  example, topical, intravenous, etc.
    CodeableConcept? route,

    /// [method] A coded value indicating the method by which the medication is
    /// intended to be or was introduced into or on the body.  This attribute will
    /// most often NOT be populated.  It is most commonly used for injections.
    ///  For example, Slow Push, Deep IV.
    CodeableConcept? method,

    /// [dose] The amount of the medication given at one administration event.
    /// Use this value when the administration is essentially an instantaneous
    ///  event such as a swallowing a tablet or giving an injection.
    Quantity? dose,

    /// [rateRatio] Identifies the speed with which the medication was or will be
    /// introduced into the patient.  Typically, the rate for an infusion e.g. 100
    /// ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of
    /// time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1
    ///  minute; 1 liter/8 hours.
    Ratio? rateRatio,

    /// [rateQuantity] Identifies the speed with which the medication was or will
    /// be introduced into the patient.  Typically, the rate for an infusion e.g.
    /// 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit
    /// of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200
    ///  mcg/1 minute; 1 liter/8 hours.
    Quantity? rateQuantity,
  }) = _MedicationAdministrationDosage;

  @override
  String get fhirType => 'MedicationAdministrationDosage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationAdministrationDosage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationAdministrationDosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationAdministrationDosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationAdministrationDosage cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationDosage.fromJson(Map<String, dynamic> json) =>
      _$MedicationAdministrationDosageFromJson(json);

  /// Acts like a constructor, returns a [MedicationAdministrationDosage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationAdministrationDosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationAdministrationDosageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
