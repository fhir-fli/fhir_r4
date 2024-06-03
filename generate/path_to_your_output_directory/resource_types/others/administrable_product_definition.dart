import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AdministrableProductDefinition] A medicinal product in the final form
/// which is suitable for administering to a patient (after any mixing of
/// multiple components, dissolution etc. has been performed).

@freezed
class AdministrableProductDefinition with _$AdministrableProductDefinition {
  const AdministrableProductDefinition._();

  const factory AdministrableProductDefinition({
/// [resourceType] This is a AdministrableProductDefinition resource

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
/// [identifier] An identifier for the administrable product.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status of this administrable product. Enables tracking the
/// life-cycle of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [formOf] References a product from which one or more of the constituent
/// parts of that product can be prepared and used as described by this
/// administrable product.  If this administrable product describes the
/// administration of a crushed tablet, the 'formOf' would be the product
/// representing a distribution containing tablets and possibly also a cream.
/// This is distinct from the 'producedFrom' which refers to the specific
/// components of the product that are used in this preparation, rather than
/// the product as a whole.

    @JsonKey(name: 'formOf') List<List<Reference>>? formOf,
/// [administrableDoseForm] The dose form of the final product after
/// necessary reconstitution or processing. Contrasts to the manufactured dose
/// form (see ManufacturedItemDefinition). If the manufactured form was 'powder
/// for solution for injection', the administrable dose form could be 'solution
/// for injection' (once mixed with another item having manufactured form
/// 'solvent for solution for injection').

    @JsonKey(name: 'administrableDoseForm') CodeableConcept? administrableDoseForm,
/// [unitOfPresentation] The presentation type in which this item is given
/// to a patient. e.g. for a spray - 'puff' (as in 'contains 100 mcg per
/// puff'), or for a liquid - 'vial' (as in 'contains 5 ml per vial').

    @JsonKey(name: 'unitOfPresentation') CodeableConcept? unitOfPresentation,
/// [producedFrom] Indicates the specific manufactured items that are part
/// of the 'formOf' product that are used in the preparation of this specific
/// administrable form.  In some cases, an administrable form might use all of
/// the items from the overall product (or there might only be one item), while
/// in other cases, an administrable form might use only a subset of the items
/// available in the overall product.  For example, an administrable form might
/// involve combining a liquid and a powder available as part of an overall
/// product, but not involve applying the also supplied cream.

    @JsonKey(name: 'producedFrom') List<List<Reference>>? producedFrom,
/// [ingredient] The ingredients of this administrable medicinal product.
/// This is only needed if the ingredients are not specified either using
/// ManufacturedItemDefiniton (via AdministrableProductDefinition.producedFrom)
/// to state which component items are used to make this, or using by incoming
/// references from the Ingredient resource, to state in detail which
/// substances exist within this. This element allows a basic coded ingredient
/// to be used.

    @JsonKey(name: 'ingredient') List<List<CodeableConcept>>? ingredient,
/// [device] A device that is integral to the medicinal product, in effect
/// being considered as an "ingredient" of the medicinal product. This is not
/// intended for devices that are just co-packaged.

    @JsonKey(name: 'device') Reference? device,
/// [description] A general description of the product, when in its final
/// form, suitable for administration e.g. effervescent blue liquid, to be
/// swallowed. Intended to be used when the other structured properties of this
/// resource are insufficient or cannot be supported. It is not intended to
/// duplicate information already carried elswehere.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [property] Characteristics e.g. a product's onset of action.

    @JsonKey(name: 'property') List<List<AdministrableProductDefinition_Property>>? property,
/// [routeOfAdministration] The path by which the product is taken into or
/// makes contact with the body. In some regions this is referred to as the
/// licenced or approved route. RouteOfAdministration cannot be used when the
/// 'formOf' product already uses MedicinalProductDefinition.route (and vice
/// versa).

    @JsonKey(name: 'routeOfAdministration') List<List<AdministrableProductDefinition_RouteOfAdministration>>? routeOfAdministration,
  }) = _$AdministrableProductDefinition;

  @override
  String get fhirType => 'AdministrableProductDefinition';

  factory AdministrableProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionFromJson(json);

  factory AdministrableProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? AdministrableProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
