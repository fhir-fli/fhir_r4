// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

/// [Schedule] A container for slots of time that may be available for
@freezed
class Schedule with _$Schedule implements DomainResource {
  /// [Schedule] A container for slots of time that may be available for
  const Schedule._();

  /// [Schedule] A container for slots of time that may be available for
  ///  booking appointments.
  ///
  /// [resourceType] This is a Schedule resource
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
  /// [identifier] External Ids for this item.
  ///
  /// [active] Whether this schedule record is in active use or should not be
  ///  used (such as was entered in error).
  ///
  /// [activeElement] Extensions for active
  ///
  /// [serviceCategory] A broad categorization of the service that is to be
  ///  performed during this appointment.
  ///
  /// [serviceType] The specific service that is to be performed during this
  ///  appointment.
  ///
  /// [specialty] The specialty of a practitioner that would be required to
  ///  perform the service requested in this appointment.
  ///
  /// [actor] Slots that reference this schedule resource provide the
  ///  availability details to these referenced resource(s).
  ///
  /// [planningHorizon] The period of time that the slots that reference this
  /// Schedule resource cover (even if none exist). These  cover the amount of
  /// time that an organization's planning horizon; the interval for which they
  /// are currently accepting appointments. This does not define a "template"
  ///  for planning outside these dates.
  ///
  /// [comment] Comments on the availability to describe any extended
  /// information. Such as custom constraints on the slots that may be
  ///  associated.
  ///
  /// [commentElement] Extensions for comment
  const factory Schedule({
    @Default(R4ResourceType.Schedule)
    @JsonKey(unknownEnumValue: R4ResourceType.Schedule)

    /// [resourceType] This is a Schedule resource
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

    /// [identifier] External Ids for this item.
    List<Identifier>? identifier,

    /// [active] Whether this schedule record is in active use or should not be
    ///  used (such as was entered in error).
    FhirBoolean? active,

    /// [activeElement] Extensions for active
    @JsonKey(name: '_active') PrimitiveElement? activeElement,

    /// [serviceCategory] A broad categorization of the service that is to be
    ///  performed during this appointment.
    List<CodeableConcept>? serviceCategory,

    /// [serviceType] The specific service that is to be performed during this
    ///  appointment.
    List<CodeableConcept>? serviceType,

    /// [specialty] The specialty of a practitioner that would be required to
    ///  perform the service requested in this appointment.
    List<CodeableConcept>? specialty,

    /// [actor] Slots that reference this schedule resource provide the
    ///  availability details to these referenced resource(s).
    required List<Reference> actor,

    /// [planningHorizon] The period of time that the slots that reference this
    /// Schedule resource cover (even if none exist). These  cover the amount of
    /// time that an organization's planning horizon; the interval for which they
    /// are currently accepting appointments. This does not define a "template"
    ///  for planning outside these dates.
    Period? planningHorizon,

    /// [comment] Comments on the availability to describe any extended
    /// information. Such as custom constraints on the slots that may be
    ///  associated.
    String? comment,

    /// [commentElement] Extensions for comment
    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _Schedule;

  @override
  String get fhirType => 'Schedule';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Schedule.fromYaml(dynamic yaml) => yaml is String
      ? Schedule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Schedule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Schedule cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  /// Acts like a constructor, returns a [Schedule], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Schedule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ScheduleFromJson(json);
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
