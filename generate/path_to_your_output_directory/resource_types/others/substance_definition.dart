import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition] The detailed description of a substance,
/// typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition with _$SubstanceDefinition {
  const SubstanceDefinition._();

  const factory SubstanceDefinition({
/// [resourceType] This is a SubstanceDefinition resource

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
/// [identifier] Identifier by which this substance is known.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] A business level version identifier of the substance.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [status] Status of substance within the catalogue e.g. active, retired.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [classification] A high level categorization, e.g. polymer or nucleic
/// acid, or food, chemical, biological, or a lower level such as the general
/// types of polymer (linear or branch chain) or type of impurity (process
/// related or contaminant).

    @JsonKey(name: 'classification') List<List<CodeableConcept>>? classification,
/// [domain] If the substance applies to human or veterinary use.

    @JsonKey(name: 'domain') CodeableConcept? domain,
/// [grade] The quality standard, established benchmark, to which substance
/// complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).

    @JsonKey(name: 'grade') List<List<CodeableConcept>>? grade,
/// [description] Textual description of the substance.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [informationSource] Supporting literature.

    @JsonKey(name: 'informationSource') List<List<Reference>>? informationSource,
/// [note] Textual comment about the substance's catalogue or registry
/// record.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [manufacturer] The entity that creates, makes, produces or fabricates
/// the substance. This is a set of potential manufacturers but is not
/// necessarily comprehensive.

    @JsonKey(name: 'manufacturer') List<List<Reference>>? manufacturer,
/// [supplier] An entity that is the source for the substance. It may be
/// different from the manufacturer. Supplier is synonymous to a distributor.

    @JsonKey(name: 'supplier') List<List<Reference>>? supplier,
/// [moiety] Moiety, for structural modifications.

    @JsonKey(name: 'moiety') List<List<SubstanceDefinition_Moiety>>? moiety,
/// [characterization] General specifications for this substance.

    @JsonKey(name: 'characterization') List<List<SubstanceDefinition_Characterization>>? characterization,
/// [property] General specifications for this substance.

    @JsonKey(name: 'property') List<List<SubstanceDefinition_Property>>? property,
/// [referenceInformation] General information detailing this substance.

    @JsonKey(name: 'referenceInformation') Reference? referenceInformation,
/// [molecularWeight] The average mass of a molecule of a compound compared
/// to 1/12 the mass of carbon 12 and calculated as the sum of the atomic
/// weights of the constituent atoms.

    @JsonKey(name: 'molecularWeight') List<List<SubstanceDefinition_MolecularWeight>>? molecularWeight,
/// [structure] Structural information.

    @JsonKey(name: 'structure') SubstanceDefinition_Structure? structure,
/// [code] Codes associated with the substance.

    @JsonKey(name: 'code') List<List<SubstanceDefinition_Code>>? code,
/// [name] Names applicable to this substance.

    @JsonKey(name: 'name') List<List<SubstanceDefinition_Name>>? name,
/// [relationship] A link between this substance and another, with details
/// of the relationship.

    @JsonKey(name: 'relationship') List<List<SubstanceDefinition_Relationship>>? relationship,
/// [nucleicAcid] Data items specific to nucleic acids.

    @JsonKey(name: 'nucleicAcid') Reference? nucleicAcid,
/// [polymer] Data items specific to polymers.

    @JsonKey(name: 'polymer') Reference? polymer,
/// [protein] Data items specific to proteins.

    @JsonKey(name: 'protein') Reference? protein,
/// [sourceMaterial] Material or taxonomic/anatomical source for the
/// substance.

    @JsonKey(name: 'sourceMaterial') SubstanceDefinition_SourceMaterial? sourceMaterial,
  }) = _$SubstanceDefinition;

  @override
  String get fhirType => 'SubstanceDefinition';

  factory SubstanceDefinition.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionFromJson(json);

  factory SubstanceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
