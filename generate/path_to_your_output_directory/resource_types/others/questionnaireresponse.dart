import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [QuestionnaireResponse] A structured set of questions and their
/// answers. The questions are ordered and grouped into coherent subsets,
/// corresponding to the structure of the grouping of the questionnaire being
/// responded to.

@freezed
class QuestionnaireResponse with _$QuestionnaireResponse {
  const QuestionnaireResponse._();

  const factory QuestionnaireResponse({
/// [resourceType] This is a QuestionnaireResponse resource

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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Business identifiers assigned to this questionnaire
/// response by the performer and/or other systems.  These identifiers remain
/// constant as the resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan, proposal or order that is fulfilled in whole or in
/// part by this questionnaire response.  For example, a ServiceRequest seeking
/// an intake assessment or a decision support recommendation to assess for
/// post-partum depression.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] A procedure or observation that this questionnaire was
/// performed as part of the execution of.  For example, the surgery a
/// checklist was executed as part of.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [questionnaire] The Questionnaire that defines and organizes the
/// questions for which answers are being provided.

    @JsonKey(name: 'questionnaire') FhirCanonical? questionnaire,
/// [status] The current state of the questionnaire response.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [subject] The subject of the questionnaire response.  This could be a
/// patient, organization, practitioner, device, etc.  This is who/what the
/// answers apply to, but is not necessarily the source of information.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The Encounter during which this questionnaire response was
/// created or to which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [authored] The date and/or time that this questionnaire response was
/// last modified by the user - e.g. changing answers or revising status.

    @JsonKey(name: 'authored') FhirDateTime? authored,
/// [_authored] Extensions for authored

    @JsonKey(name: '_authored') PrimitiveElement? authoredElement,
/// [author] The individual or device that received the answers to the
/// questions in the QuestionnaireResponse and recorded them in the system.

    @JsonKey(name: 'author') Reference? author,
/// [source] The individual or device that answered the questions about the
/// subject.

    @JsonKey(name: 'source') Reference? source,
/// [item] A group or question item from the original questionnaire for
/// which answers are provided.

    @JsonKey(name: 'item') List<List<QuestionnaireResponse_Item>>? item,
  }) = _$QuestionnaireResponse;

  @override
  String get fhirType => 'QuestionnaireResponse';

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseFromJson(json);

  factory QuestionnaireResponse.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireResponse.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory QuestionnaireResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
