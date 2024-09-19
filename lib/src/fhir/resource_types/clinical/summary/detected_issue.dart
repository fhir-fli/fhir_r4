// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'detected_issue.freezed.dart';
part 'detected_issue.g.dart';

/// [DetectedIssue] Indicates an actual or potential clinical issue with or
@freezed
class DetectedIssue extends DomainResource with _$DetectedIssue {
  /// [DetectedIssue] Indicates an actual or potential clinical issue with or
  DetectedIssue._();

  /// [DetectedIssue] Indicates an actual or potential clinical issue with or
  /// between one or more active or proposed clinical actions for a patient;
  /// e.g. Drug-drug interaction, Ineffective treatment frequency,
  ///  Procedure-condition conflict, etc.
  ///
  /// [resourceType] This is a DetectedIssue resource
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
  /// [identifier] Business identifier associated with the detected issue
  ///  record.
  ///
  /// [status] Indicates the status of the detected issue.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [code] Identifies the general type of issue identified.
  ///
  /// [severity] Indicates the degree of importance associated with the
  ///  identified issue based on the potential impact on the patient.
  ///
  /// [severityElement] Extensions for severity
  ///
  /// [patient] Indicates the patient whose record the detected issue is
  ///  associated with.
  ///
  /// [identifiedDateTime] The date or period when the detected issue was
  ///  initially identified.
  ///
  /// [identifiedDateTimeElement] Extensions for identifiedDateTime
  ///
  /// [identifiedPeriod] The date or period when the detected issue was
  ///  initially identified.
  ///
  /// [author] Individual or device responsible for the issue being raised.
  /// For example, a decision support application or a pharmacist conducting a
  ///  medication review.
  ///
  /// [implicated] Indicates the resource representing the current activity or
  ///  proposed activity that is potentially problematic.
  ///
  /// [evidence] Supporting evidence or manifestations that provide the basis
  /// for identifying the detected issue such as a GuidanceResponse or
  ///  MeasureReport.
  ///
  /// [detail] A textual explanation of the detected issue.
  ///
  /// [detailElement] Extensions for detail
  ///
  /// [reference] The literature, knowledge-base or similar reference that
  ///  describes the propensity for the detected issue identified.
  ///
  /// [referenceElement] Extensions for reference
  ///
  /// [mitigation] Indicates an action that has been taken or is committed to
  /// reduce or eliminate the likelihood of the risk identified by the detected
  /// issue from manifesting.  Can also reflect an observation of known
  ///  mitigating factors that may reduce/eliminate the need for any action.
  factory DetectedIssue({
    @Default(R4ResourceType.DetectedIssue)
    @JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    CodeableConcept? code,
    FhirCode? severity,
    @JsonKey(name: '_severity') PrimitiveElement? severityElement,
    Reference? patient,
    FhirDateTime? identifiedDateTime,
    @JsonKey(name: '_identifiedDateTime')
    PrimitiveElement? identifiedDateTimeElement,
    Period? identifiedPeriod,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    String? detail,
    @JsonKey(name: '_detail') PrimitiveElement? detailElement,
    FhirUri? reference,
    @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
    List<DetectedIssueMitigation>? mitigation,
  }) = _DetectedIssue;

  @override
  String get fhirType => 'DetectedIssue';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DetectedIssue.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DetectedIssue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DetectedIssue cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DetectedIssue.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueFromJson(json);

  /// Acts like a constructor, returns a [DetectedIssue], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DetectedIssue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DetectedIssueFromJson(json);
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

/// [DetectedIssueEvidence] Indicates an actual or potential clinical issue
@freezed

/// [DetectedIssueEvidence] Indicates an actual or potential clinical issue
@freezed
class DetectedIssueEvidence extends BackboneElement
    with _$DetectedIssueEvidence {
  /// [DetectedIssueEvidence] Indicates an actual or potential clinical issue
  DetectedIssueEvidence._();

  /// [DetectedIssueEvidence] Indicates an actual or potential clinical issue
  /// with or between one or more active or proposed clinical actions for a
  /// patient; e.g. Drug-drug interaction, Ineffective treatment frequency,
  ///  Procedure-condition conflict, etc.
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
  /// [code] A manifestation that led to the recording of this detected issue.
  ///
  /// [detail] Links to resources that constitute evidence for the detected
  ///  issue such as a GuidanceResponse or MeasureReport.
  factory DetectedIssueEvidence({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
  }) = _DetectedIssueEvidence;

  @override
  String get fhirType => 'DetectedIssueEvidence';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DetectedIssueEvidence.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssueEvidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DetectedIssueEvidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DetectedIssueEvidence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueEvidence.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueEvidenceFromJson(json);

  /// Acts like a constructor, returns a [DetectedIssueEvidence], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DetectedIssueEvidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DetectedIssueEvidenceFromJson(json);
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

/// [DetectedIssueMitigation] Indicates an actual or potential clinical
@freezed

/// [DetectedIssueMitigation] Indicates an actual or potential clinical
@freezed
class DetectedIssueMitigation extends BackboneElement
    with _$DetectedIssueMitigation {
  /// [DetectedIssueMitigation] Indicates an actual or potential clinical
  DetectedIssueMitigation._();

  /// [DetectedIssueMitigation] Indicates an actual or potential clinical
  /// issue with or between one or more active or proposed clinical actions for
  /// a patient; e.g. Drug-drug interaction, Ineffective treatment frequency,
  ///  Procedure-condition conflict, etc.
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
  /// [action] Describes the action that was taken or the observation that was
  /// made that reduces/eliminates the risk associated with the identified
  ///  issue.
  ///
  /// [date] Indicates when the mitigating action was documented.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [author] Identifies the practitioner who determined the mitigation and
  ///  takes responsibility for the mitigation step occurring.
  factory DetectedIssueMitigation({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept action,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    Reference? author,
  }) = _DetectedIssueMitigation;

  @override
  String get fhirType => 'DetectedIssueMitigation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DetectedIssueMitigation.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssueMitigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DetectedIssueMitigation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DetectedIssueMitigation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueMitigation.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueMitigationFromJson(json);

  /// Acts like a constructor, returns a [DetectedIssueMitigation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DetectedIssueMitigation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DetectedIssueMitigationFromJson(json);
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
