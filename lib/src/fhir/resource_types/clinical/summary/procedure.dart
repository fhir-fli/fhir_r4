// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'procedure.freezed.dart';
part 'procedure.g.dart';

/// [Procedure] An action that is or was performed on or for a patient. This
@freezed
class Procedure with _$Procedure implements DomainResource {
  /// [Procedure] An action that is or was performed on or for a patient. This
  const Procedure._();

  /// [Procedure] An action that is or was performed on or for a patient. This
  /// can be a physical intervention like an operation, or less invasive like
  ///  long term services, counseling, or hypnotherapy.
  ///
  /// [resourceType] This is a Procedure resource
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
  /// [identifier] Business identifiers assigned to this procedure by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and is propagated from server to server.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, order set or other definition that is adhered to in whole or in
  ///  part by this Procedure.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, order set or other definition that is adhered to in whole or in
  ///  part by this Procedure.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [basedOn] A reference to a resource that contains details of the request
  ///  for this procedure.
  ///
  /// [partOf] A larger event of which this particular procedure is a component
  ///  or step.
  ///
  /// [status] A code specifying the state of the procedure. Generally, this
  ///  will be the in-progress or completed state.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] Captures the reason for the current state of the
  ///  procedure.
  ///
  /// [category] A code that classifies the procedure for searching, sorting
  ///  and display purposes (e.g. "Surgical Procedure").
  ///
  /// [code] The specific procedure that is performed. Use text if the exact
  /// nature of the procedure cannot be coded (e.g. "Laparoscopic
  ///  Appendectomy").
  ///
  /// [subject] The person, animal or group on which the procedure was
  ///  performed.
  ///
  /// [encounter] The Encounter during which this Procedure was created or
  ///  performed or to which the creation of this record is tightly associated.
  ///
  /// [performedDateTime] Estimated or actual date, date-time, period, or age
  /// when the procedure was performed.  Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length of
  ///  the procedure to be captured.
  ///
  /// [performedDateTimeElement] Extensions for performedDateTime
  ///
  /// [performedPeriod] Estimated or actual date, date-time, period, or age
  /// when the procedure was performed.  Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length of
  ///  the procedure to be captured.
  ///
  /// [performedString] Estimated or actual date, date-time, period, or age
  /// when the procedure was performed.  Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length of
  ///  the procedure to be captured.
  ///
  /// [performedStringElement] Extensions for performedString
  ///
  /// [performedAge] Estimated or actual date, date-time, period, or age when
  /// the procedure was performed.  Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length of
  ///  the procedure to be captured.
  ///
  /// [performedRange] Estimated or actual date, date-time, period, or age when
  /// the procedure was performed.  Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length of
  ///  the procedure to be captured.
  ///
  /// [recorder] Individual who recorded the record and takes responsibility
  ///  for its content.
  ///
  /// [asserter] Individual who is making the procedure statement.
  ///
  /// [performer] Limited to "real" people rather than equipment.
  ///
  /// [location] The location where the procedure actually happened.  E.g. a
  ///  newborn at home, a tracheostomy at a restaurant.
  ///
  /// [reasonCode] The coded reason why the procedure was performed. This may
  ///  be a coded entity of some type, or may simply be present as text.
  ///
  /// [reasonReference] The justification of why the procedure was performed.
  ///
  /// [bodySite] Detailed and structured anatomical location information.
  /// Multiple locations are allowed - e.g. multiple punch biopsies of a
  ///  lesion.
  ///
  /// [outcome] The outcome of the procedure - did it resolve the reasons for
  ///  the procedure being performed?
  ///
  /// [report] This could be a histology result, pathology report, surgical
  ///  report, etc.
  ///
  /// [complication] Any complications that occurred during the procedure, or
  /// in the immediate post-performance period. These are generally tracked
  /// separately from the notes, which will typically describe the procedure
  ///  itself rather than any 'post procedure' issues.
  ///
  /// [complicationDetail] Any complications that occurred during the
  ///  procedure, or in the immediate post-performance period.
  ///
  /// [followUp] If the procedure required specific follow up - e.g. removal of
  /// sutures. The follow up may be represented as a simple note or could
  /// potentially be more complex, in which case the CarePlan resource can be
  ///  used.
  ///
  /// [note] Any other notes and comments about the procedure.
  ///
  /// [focalDevice] A device that is implanted, removed or otherwise
  /// manipulated (calibration, battery replacement, fitting a prosthesis,
  ///  attaching a wound-vac, etc.) as a focal portion of the Procedure.
  ///
  /// [usedReference] Identifies medications, devices and any other substance
  ///  used as part of the procedure.
  ///
  /// [usedCode] Identifies coded items that were used as part of the
  ///  procedure.
  const factory Procedure({
    @Default(R4ResourceType.Procedure)
    @JsonKey(unknownEnumValue: R4ResourceType.Procedure)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    @JsonKey(name: '_instantiatesUri')
    List<PrimitiveElement>? instantiatesUriElement,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? category,
    CodeableConcept? code,
    required Reference subject,
    Reference? encounter,
    FhirDateTime? performedDateTime,
    @JsonKey(name: '_performedDateTime')
    PrimitiveElement? performedDateTimeElement,
    Period? performedPeriod,
    String? performedString,
    @JsonKey(name: '_performedString') PrimitiveElement? performedStringElement,
    Age? performedAge,
    Range? performedRange,
    Reference? recorder,
    Reference? asserter,
    List<ProcedurePerformer>? performer,
    Reference? location,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<CodeableConcept>? bodySite,
    CodeableConcept? outcome,
    List<Reference>? report,
    List<CodeableConcept>? complication,
    List<Reference>? complicationDetail,
    List<CodeableConcept>? followUp,
    List<Annotation>? note,
    List<ProcedureFocalDevice>? focalDevice,
    List<Reference>? usedReference,
    List<CodeableConcept>? usedCode,
  }) = _Procedure;

  @override
  String get fhirType => 'Procedure';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Procedure.fromYaml(dynamic yaml) => yaml is String
      ? Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Procedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Procedure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Procedure.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFromJson(json);

  /// Acts like a constructor, returns a [Procedure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Procedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProcedureFromJson(json);
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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [ProcedurePerformer] An action that is or was performed on or for a
@freezed

/// [ProcedurePerformer] An action that is or was performed on or for a
@freezed
class ProcedurePerformer with _$ProcedurePerformer implements BackboneElement {
  /// [ProcedurePerformer] An action that is or was performed on or for a
  const ProcedurePerformer._();

  /// [ProcedurePerformer] An action that is or was performed on or for a
  /// patient. This can be a physical intervention like an operation, or less
  ///  invasive like long term services, counseling, or hypnotherapy.
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
  ///  procedure. For example, surgeon, anaesthetist, endoscopist.
  ///
  /// [actor] The practitioner who was involved in the procedure.
  ///
  /// [onBehalfOf] The organization the device or practitioner was acting on
  ///  behalf of.
  const factory ProcedurePerformer({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function,
    required Reference actor,
    Reference? onBehalfOf,
  }) = _ProcedurePerformer;

  @override
  String get fhirType => 'ProcedurePerformer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ProcedurePerformer.fromYaml(dynamic yaml) => yaml is String
      ? ProcedurePerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProcedurePerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProcedurePerformer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ProcedurePerformer.fromJson(Map<String, dynamic> json) =>
      _$ProcedurePerformerFromJson(json);

  /// Acts like a constructor, returns a [ProcedurePerformer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ProcedurePerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProcedurePerformerFromJson(json);
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

/// [ProcedureFocalDevice] An action that is or was performed on or for a
@freezed

/// [ProcedureFocalDevice] An action that is or was performed on or for a
@freezed
class ProcedureFocalDevice
    with _$ProcedureFocalDevice
    implements BackboneElement {
  /// [ProcedureFocalDevice] An action that is or was performed on or for a
  const ProcedureFocalDevice._();

  /// [ProcedureFocalDevice] An action that is or was performed on or for a
  /// patient. This can be a physical intervention like an operation, or less
  ///  invasive like long term services, counseling, or hypnotherapy.
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
  /// [action] The kind of change that happened to the device during the
  ///  procedure.
  ///
  /// [manipulated] The device that was manipulated (changed) during the
  ///  procedure.
  const factory ProcedureFocalDevice({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    required Reference manipulated,
  }) = _ProcedureFocalDevice;

  @override
  String get fhirType => 'ProcedureFocalDevice';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ProcedureFocalDevice.fromYaml(dynamic yaml) => yaml is String
      ? ProcedureFocalDevice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProcedureFocalDevice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProcedureFocalDevice cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ProcedureFocalDevice.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFocalDeviceFromJson(json);

  /// Acts like a constructor, returns a [ProcedureFocalDevice], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ProcedureFocalDevice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProcedureFocalDeviceFromJson(json);
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
