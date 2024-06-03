import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Ingredient] An ingredient of a manufactured item or pharmaceutical
/// product.

@freezed
class Ingredient with _$Ingredient {
  const Ingredient._();

  const factory Ingredient({
/// [resourceType] This is a Ingredient resource

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
/// [identifier] The identifier(s) of this Ingredient that are assigned by
/// business processes and/or used to refer to it when a direct URL reference
/// to the resource itself is not appropriate.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [status] The status of this ingredient. Enables tracking the life-cycle
/// of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [for] The product which this ingredient is a constituent part of.

    @JsonKey(name: 'for') List<List<Reference>>? for,
/// [role] A classification of the ingredient identifying its purpose
/// within the product, e.g. active, inactive.

    @JsonKey(name: 'role') CodeableConcept? role,
/// [function] A classification of the ingredient identifying its precise
/// purpose(s) in the drug product. This extends the Ingredient.role to add
/// more detail. Example: antioxidant, alkalizing agent.

    @JsonKey(name: 'function') List<List<CodeableConcept>>? function,
/// [group] A classification of the ingredient according to where in the
/// physical item it tends to be used, such the outer shell of a tablet, inner
/// body or ink.

    @JsonKey(name: 'group') CodeableConcept? group,
/// [allergenicIndicator] If the ingredient is a known or suspected
/// allergen. Note that this is a property of the substance, so if a reference
/// to a SubstanceDefinition is used to decribe that (rather than just a code),
/// the allergen information should go there, not here.

    @JsonKey(name: 'allergenicIndicator') FhirBoolean? allergenicIndicator,
/// [_allergenicIndicator] Extensions for allergenicIndicator

    @JsonKey(name: '_allergenicIndicator') PrimitiveElement? allergenicIndicatorElement,
/// [comment] A place for providing any notes that are relevant to the
/// component, e.g. removed during process, adjusted for loss on drying.

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [manufacturer] The organization(s) that manufacture this ingredient.
/// Can be used to indicate:         1) Organizations we are aware of that
/// manufacture this ingredient         2) Specific Manufacturer(s) currently
/// being used         3) Set of organisations allowed to manufacture this
/// ingredient for this product         Users must be clear on the application
/// of context relevant to their use case.

    @JsonKey(name: 'manufacturer') List<List<Ingredient_Manufacturer>>? manufacturer,
/// [substance] The substance that comprises this ingredient.

    @JsonKey(name: 'substance') Ingredient_Substance? substance,
  }) = _$Ingredient;

  @override
  String get fhirType => 'Ingredient';

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  factory Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ingredient.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ingredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IngredientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
