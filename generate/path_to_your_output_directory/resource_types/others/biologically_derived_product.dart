import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [BiologicallyDerivedProduct] This resource reflects an instance of a
/// biologically derived product. A material substance originating from a
/// biological entity intended to be transplanted or infused
/// into another (possibly the same) biological entity.

@freezed
class BiologicallyDerivedProduct with _$BiologicallyDerivedProduct {
  const BiologicallyDerivedProduct._();

  const factory BiologicallyDerivedProduct({
/// [resourceType] This is a BiologicallyDerivedProduct resource

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
/// [productCategory] A category or classification of the product.
/// Products may be assigned multiple categories, for example a human heart
/// valve can be categorized as an 'MPHO' and 'tissue'.

    @JsonKey(name: 'productCategory') List<List<CodeableConcept>>? productCategory,
/// [productCode] A codified value that systematically supports
/// characterization and classification of medical products of human origin
/// inclusive of processing conditions such as additives, volumes and handling
/// conditions.

    @JsonKey(name: 'productCode') CodeableConcept? productCode,
/// [parent] Parent product (if any) for this biologically-derived product.

    @JsonKey(name: 'parent') List<List<Reference>>? parent,
/// [request] Request to obtain and/or infuse this biologically derived
/// product.

    @JsonKey(name: 'request') List<List<Reference>>? request,
/// [identifier] Unique instance identifiers assigned to a biologically
/// derived product. Note: This is a business identifier, not a resource
/// identifier.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [biologicalSourceEvent] An identifier that supports traceability to the
/// event during which material in this product from one or more biological
/// entities was obtained or pooled.

    @JsonKey(name: 'biologicalSourceEvent') Identifier? biologicalSourceEvent,
/// [processingFacility] Processing facilities responsible for the labeling
/// and distribution of this biologically derived product.

    @JsonKey(name: 'processingFacility') List<List<Reference>>? processingFacility,
/// [division] A unique identifier for an aliquot of a product.  Used to
/// distinguish individual aliquots of a product carrying the same
/// biologicalSource and productCode identifiers.

    @JsonKey(name: 'division') String? division,
/// [_division] Extensions for division

    @JsonKey(name: '_division') PrimitiveElement? divisionElement,
/// [productStatus] The current status of the product.

    @JsonKey(name: 'productStatus') Coding? productStatus,
/// [expirationDate] Date, and where relevant time, of expiration.

    @JsonKey(name: 'expirationDate') FhirDateTime? expirationDate,
/// [_expirationDate] Extensions for expirationDate

    @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
/// [collection] How this product was collected.

    @JsonKey(name: 'collection') BiologicallyDerivedProduct_Collection? collection,
/// [storageTempRequirements] The temperature requirements for storage of
/// the biologically-derived product.

    @JsonKey(name: 'storageTempRequirements') Range? storageTempRequirements,
/// [property] A property that is specific to this
/// BiologicallyDerviedProduct instance.

    @JsonKey(name: 'property') List<List<BiologicallyDerivedProduct_Property>>? property,
  }) = _$BiologicallyDerivedProduct;

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductFromJson(json);

  factory BiologicallyDerivedProduct.fromYaml(dynamic yaml) => yaml is String
      ? BiologicallyDerivedProduct.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProduct.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProduct cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProduct.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BiologicallyDerivedProductFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
