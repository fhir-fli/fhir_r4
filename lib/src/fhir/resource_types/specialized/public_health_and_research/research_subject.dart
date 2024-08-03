// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'research_subject.freezed.dart';
part 'research_subject.g.dart';

/// [ResearchSubject] A physical entity which is the primary unit of
@freezed
class ResearchSubject extends DomainResource with _$ResearchSubject {
  /// [ResearchSubject] A physical entity which is the primary unit of
  ResearchSubject._();

  /// [ResearchSubject] A physical entity which is the primary unit of
  ///  operational and/or administrative interest in a study.
  ///
  /// [resourceType] This is a ResearchSubject resource
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
  /// [identifier] Identifiers assigned to this research subject for a study.
  ///
  /// [status] The current state of the subject.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [period] The dates the subject began and ended their participation in the
  ///  study.
  ///
  /// [study] Reference to the study the subject is participating in.
  ///
  /// [individual] The record of the person or animal who is involved in the
  ///  study.
  ///
  /// [assignedArm] The name of the arm in the study the subject is expected to
  ///  follow as part of this study.
  ///
  /// [assignedArmElement] Extensions for assignedArm
  ///
  /// [actualArm] The name of the arm in the study the subject actually
  ///  followed as part of this study.
  ///
  /// [actualArmElement] Extensions for actualArm
  ///
  /// [consent] A record of the patient's informed agreement to participate in
  ///  the study.
  const factory ResearchSubject({
    @Default(R4ResourceType.ResearchSubject)
    @JsonKey(unknownEnumValue: R4ResourceType.ResearchSubject)

    /// [resourceType] This is a ResearchSubject resource
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

    /// [identifier] Identifiers assigned to this research subject for a study.
    List<Identifier>? identifier,

    /// [status] The current state of the subject.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [period] The dates the subject began and ended their participation in the
    ///  study.
    Period? period,

    /// [study] Reference to the study the subject is participating in.
    required Reference study,

    /// [individual] The record of the person or animal who is involved in the
    ///  study.
    required Reference individual,

    /// [assignedArm] The name of the arm in the study the subject is expected to
    ///  follow as part of this study.
    String? assignedArm,

    /// [assignedArmElement] Extensions for assignedArm
    @JsonKey(name: '_assignedArm') PrimitiveElement? assignedArmElement,

    /// [actualArm] The name of the arm in the study the subject actually
    ///  followed as part of this study.
    String? actualArm,

    /// [actualArmElement] Extensions for actualArm
    @JsonKey(name: '_actualArm') PrimitiveElement? actualArmElement,

    /// [consent] A record of the patient's informed agreement to participate in
    ///  the study.
    Reference? consent,
  }) = _ResearchSubject;

  @override
  String get fhirType => 'ResearchSubject';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ResearchSubject.fromYaml(dynamic yaml) => yaml is String
      ? ResearchSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchSubject cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ResearchSubject.fromJson(Map<String, dynamic> json) =>
      _$ResearchSubjectFromJson(json);

  /// Acts like a constructor, returns a [ResearchSubject], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ResearchSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchSubjectFromJson(json);
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
