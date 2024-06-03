import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ManufacturedItemDefinition] The definition and characteristics of a
/// medicinal manufactured item, such as a tablet or capsule, as contained in a
/// packaged medicinal product.

@freezed
class ManufacturedItemDefinition with _$ManufacturedItemDefinition {
  const ManufacturedItemDefinition._();

  const factory ManufacturedItemDefinition({
/// [resourceType] This is a ManufacturedItemDefinition resource

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
/// [identifier] Unique identifier.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status of this item. Enables tracking the life-cycle of
/// the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [name] A descriptive name applied to this item.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [manufacturedDoseForm] Dose form as manufactured and before any
/// transformation into the pharmaceutical product.

    @JsonKey(name: 'manufacturedDoseForm') CodeableConcept? manufacturedDoseForm,
/// [unitOfPresentation] The “real-world” units in which the quantity of
/// the manufactured item is described.

    @JsonKey(name: 'unitOfPresentation') CodeableConcept? unitOfPresentation,
/// [manufacturer] Manufacturer of the item, one of several possible.

    @JsonKey(name: 'manufacturer') List<List<Reference>>? manufacturer,
/// [marketingStatus] Allows specifying that an item is on the market for
/// sale, or that it is not available, and the dates and locations associated.

    @JsonKey(name: 'marketingStatus') List<List<MarketingStatus>>? marketingStatus,
/// [ingredient] The ingredients of this manufactured item. This is only
/// needed if the ingredients are not specified by incoming references from the
/// Ingredient resource.

    @JsonKey(name: 'ingredient') List<List<CodeableConcept>>? ingredient,
/// [property] General characteristics of this item.

    @JsonKey(name: 'property') List<List<ManufacturedItemDefinition_Property>>? property,
/// [component] Physical parts of the manufactured item, that it is
/// intrisically made from. This is distinct from the ingredients that are part
/// of its chemical makeup.

    @JsonKey(name: 'component') List<List<ManufacturedItemDefinition_Component>>? component,
  }) = _$ManufacturedItemDefinition;

  @override
  String get fhirType => 'ManufacturedItemDefinition';

  factory ManufacturedItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ManufacturedItemDefinitionFromJson(json);

  factory ManufacturedItemDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ManufacturedItemDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ManufacturedItemDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ManufacturedItemDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ManufacturedItemDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ManufacturedItemDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
