import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Flag] Prospective warnings of potential issues when providing care to
/// the patient.

@freezed
class Flag with _$Flag {
  const Flag._();

  const factory Flag({
/// [resourceType] This is a Flag resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Business identifiers assigned to this flag by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] Supports basic workflow.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [category] Allows a flag to be divided into different categories like
/// clinical, administrative etc. Intended to be used as a means of filtering
/// which flags are displayed to particular user or in a given context.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [code] The coded value or textual component of the flag to display to
/// the user.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subject] The patient, related person, location, group, organization,
/// or practitioner etc. this is about record this flag is associated with.

    @JsonKey(name: 'subject') Reference? subject,
/// [period] The period of time from the activation of the flag to
/// inactivation of the flag. If the flag is active, the end of the period
/// should be unspecified.

    @JsonKey(name: 'period') Period? period,
/// [encounter] This alert is only relevant during the encounter.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [author] The person, organization or device that created the flag.

    @JsonKey(name: 'author') Reference? author,
/// [supportingInfo] Additional information that may be relevant to the
/// flag, such as why the flag was created or how to guide management of the
/// flag.

    @JsonKey(name: 'supportingInfo') List<List<Reference>>? supportingInfo,
  }) = _$Flag;

  @override
  String get fhirType => 'Flag';

  factory Flag.fromJson(Map<String, dynamic> json) =>
      _$FlagFromJson(json);

  factory Flag.fromYaml(dynamic yaml) => yaml is String
      ? Flag.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Flag.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Flag cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Flag.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FlagFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
