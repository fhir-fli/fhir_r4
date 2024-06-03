import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstancePolymer] Properties of a substance specific to it being a
/// polymer.

@freezed
class SubstancePolymer with _$SubstancePolymer {
  const SubstancePolymer._();

  const factory SubstancePolymer({
/// [resourceType] This is a SubstancePolymer resource

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
/// [identifier] A business idenfier for this polymer, but typically this
/// is handled by a SubstanceDefinition identifier.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [class] Overall type of the polymer.

    @JsonKey(name: 'class') CodeableConcept? class,
/// [geometry] Polymer geometry, e.g. linear, branched, cross-linked,
/// network or dendritic.

    @JsonKey(name: 'geometry') CodeableConcept? geometry,
/// [copolymerConnectivity] Descrtibes the copolymer sequence type (polymer
/// connectivity).

    @JsonKey(name: 'copolymerConnectivity') List<List<CodeableConcept>>? copolymerConnectivity,
/// [modification] Todo - this is intended to connect to a repeating full
/// modification structure, also used by Protein and Nucleic Acid . String is
/// just a placeholder.

    @JsonKey(name: 'modification') String? modification,
/// [_modification] Extensions for modification

    @JsonKey(name: '_modification') PrimitiveElement? modificationElement,
/// [monomerSet] Todo.

    @JsonKey(name: 'monomerSet') List<List<SubstancePolymer_MonomerSet>>? monomerSet,
/// [repeat] Specifies and quantifies the repeated units and their
/// configuration.

    @JsonKey(name: 'repeat') List<List<SubstancePolymer_Repeat>>? repeat,
  }) = _$SubstancePolymer;

  @override
  String get fhirType => 'SubstancePolymer';

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymerFromJson(json);

  factory SubstancePolymer.fromYaml(dynamic yaml) => yaml is String
      ? SubstancePolymer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstancePolymer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstancePolymer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstancePolymer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstancePolymerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
