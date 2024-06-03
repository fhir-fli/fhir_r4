import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClinicalUseDefinition] A single issue - either an indication,
/// contraindication, interaction or an undesirable effect for a medicinal
/// product, medication, device or procedure.

@freezed
class ClinicalUseDefinition with _$ClinicalUseDefinition {
  const ClinicalUseDefinition._();

  const factory ClinicalUseDefinition({
/// [resourceType] This is a ClinicalUseDefinition resource

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
/// [identifier] Business identifier for this issue.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [type] indication | contraindication | interaction | undesirable-effect
/// | warning.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [category] A categorisation of the issue, primarily for dividing
/// warnings into subject heading areas such as "Pregnancy and Lactation",
/// "Overdose", "Effects on Ability to Drive and Use Machines".

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [subject] The medication, product, substance, device, procedure etc.
/// for which this is an indication, contraindication, interaction, undesirable
/// effect, or warning.

    @JsonKey(name: 'subject') List<List<Reference>>? subject,
/// [status] Whether this is a current issue or one that has been retired
/// etc.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [contraindication] Specifics for when this is a contraindication.

    @JsonKey(name: 'contraindication') ClinicalUseDefinition_Contraindication? contraindication,
/// [indication] Specifics for when this is an indication.

    @JsonKey(name: 'indication') ClinicalUseDefinition_Indication? indication,
/// [interaction] Specifics for when this is an interaction.

    @JsonKey(name: 'interaction') ClinicalUseDefinition_Interaction? interaction,
/// [population] The population group to which this applies.

    @JsonKey(name: 'population') List<List<Reference>>? population,
/// [library] Logic used by the clinical use definition.

    @JsonKey(name: 'library') List<List<FhirCanonical>>? library,
/// [undesirableEffect] Describe the possible undesirable effects (negative
/// outcomes) from the use of the medicinal product as treatment.

    @JsonKey(name: 'undesirableEffect') ClinicalUseDefinition_UndesirableEffect? undesirableEffect,
/// [warning] A critical piece of information about environmental, health
/// or physical risks or hazards that serve as caution to the user. For example
/// 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical
/// advice/attention if you feel unwell'.

    @JsonKey(name: 'warning') ClinicalUseDefinition_Warning? warning,
  }) = _$ClinicalUseDefinition;

  @override
  String get fhirType => 'ClinicalUseDefinition';

  factory ClinicalUseDefinition.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionFromJson(json);

  factory ClinicalUseDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
