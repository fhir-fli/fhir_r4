/// /// [MedicinalProductDefinition] A medicinal product, being a substance or
/// combination of substances that is intended to treat, prevent or diagnose a
/// disease, or to restore, correct or modify physiological functions by
/// exerting a pharmacological, immunological or metabolic action. This
/// resource is intended to define and detail such products and their
/// properties, for uses other than direct patient care (e.g. regulatory use,
/// or drug catalogs).

@freezed
class MedicinalProductDefinition with _$MedicinalProductDefinition {
  const MedicinalProductDefinition._();

  const factory MedicinalProductDefinition({
/// /// [resourceType] This is a MedicinalProductDefinition resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [identifier] Business identifier for this product. Could be an MPID.
/// When in development or being regulated, products are typically referenced
/// by official identifiers, assigned by a manufacturer or regulator, and
/// unique to a product (which, when compared to a product instance being
/// prescribed, is actually a product type). See also
/// MedicinalProductDefinition.code.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [type] Regulatory type, e.g. Investigational or Authorized.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [domain] If this medicine applies to human or veterinary uses.

    @JsonKey(name: 'domain') CodeableConcept? domain,
/// /// [version] A business identifier relating to a specific version of the
/// product, this is commonly used to support revisions to an existing product.

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [status] The status within the lifecycle of this product record. A
/// high-level status, this is not intended to duplicate details carried
/// elsewhere such as legal status, or authorization status.

    @JsonKey(name: 'status') CodeableConcept? status,
/// /// [statusDate] The date at which the given status became applicable.

    @JsonKey(name: 'statusDate') FhirDateTime? statusDate,
/// /// [_statusDate] Extensions for statusDate

    @JsonKey(name: '_statusDate') FhirElement? statusDateElement,
/// /// [description] General description of this product.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [combinedPharmaceuticalDoseForm] The dose form for a single part
/// product, or combined form of a multiple part product. This is one concept
/// that describes all the components. It does not represent the form with
/// components physically mixed, if that might be necessary, for which see
/// (AdministrableProductDefinition.administrableDoseForm).

    @JsonKey(name: 'combinedPharmaceuticalDoseForm') CodeableConcept? combinedPharmaceuticalDoseForm,
/// /// [route] The path by which the product is taken into or makes contact
/// with the body. In some regions this is referred to as the licenced or
/// approved route. See also AdministrableProductDefinition resource.
/// MedicinalProductDefinition.route is the same concept as
/// AdministrableProductDefinition.routeOfAdministration.code, and they cannot
/// be used together.

    @JsonKey(name: 'route') List<List<CodeableConcept>>? route,
/// /// [indication] Description of indication(s) for this product, used when
/// structured indications are not required. In cases where structured
/// indications are required, they are captured using the ClinicalUseDefinition
/// resource. An indication is a medical situation for which using the product
/// is appropriate.

    @JsonKey(name: 'indication') FhirMarkdown? indication,
/// /// [_indication] Extensions for indication

    @JsonKey(name: '_indication') FhirElement? indicationElement,
/// /// [legalStatusOfSupply] The legal status of supply of the medicinal
/// product as classified by the regulator.

    @JsonKey(name: 'legalStatusOfSupply') CodeableConcept? legalStatusOfSupply,
/// /// [additionalMonitoringIndicator] Whether the Medicinal Product is
/// subject to additional monitoring for regulatory reasons, such as heightened
/// reporting requirements.

    @JsonKey(name: 'additionalMonitoringIndicator') CodeableConcept? additionalMonitoringIndicator,
/// /// [specialMeasures] Whether the Medicinal Product is subject to special
/// measures for regulatory reasons, such as a requirement to conduct
/// post-authorization studies.

    @JsonKey(name: 'specialMeasures') List<List<CodeableConcept>>? specialMeasures,
/// /// [pediatricUseIndicator] If authorised for use in children, or infants,
/// neonates etc.

    @JsonKey(name: 'pediatricUseIndicator') CodeableConcept? pediatricUseIndicator,
/// /// [classification] Allows the product to be classified by various
/// systems, commonly WHO ATC.

    @JsonKey(name: 'classification') List<List<CodeableConcept>>? classification,
/// /// [marketingStatus] Marketing status of the medicinal product, in
/// contrast to marketing authorization. This refers to the product being
/// actually 'on the market' as opposed to being allowed to be on the market
/// (which is an authorization).

    @JsonKey(name: 'marketingStatus') List<List<MarketingStatus>>? marketingStatus,
/// /// [packagedMedicinalProduct] Package type for the product. See also the
/// PackagedProductDefinition resource.

    @JsonKey(name: 'packagedMedicinalProduct') List<List<CodeableConcept>>? packagedMedicinalProduct,
/// /// [comprisedOf] Types of medicinal manufactured items and/or devices that
/// this product consists of, such as tablets, capsule, or syringes. Used as a
/// direct link when the item's packaging is not being recorded (see also
/// PackagedProductDefinition.package.containedItem.item).

    @JsonKey(name: 'comprisedOf') List<List<Reference>>? comprisedOf,
/// /// [ingredient] The ingredients of this medicinal product - when not
/// detailed in other resources. This is only needed if the ingredients are not
/// specified by incoming references from the Ingredient resource, or
/// indirectly via incoming AdministrableProductDefinition,
/// PackagedProductDefinition or ManufacturedItemDefinition references. In
/// cases where those levels of detail are not used, the ingredients may be
/// specified directly here as codes.

    @JsonKey(name: 'ingredient') List<List<CodeableConcept>>? ingredient,
/// /// [impurity] Any component of the drug product which is not the chemical
/// entity defined as the drug substance, or an excipient in the drug product.
/// This includes process-related impurities and contaminants, product-related
/// impurities including degradation products.

    @JsonKey(name: 'impurity') List<List<CodeableReference>>? impurity,
/// /// [attachedDocument] Additional information or supporting documentation
/// about the medicinal product.

    @JsonKey(name: 'attachedDocument') List<List<Reference>>? attachedDocument,
/// /// [masterFile] A master file for the medicinal product (e.g.
/// Pharmacovigilance System Master File). Drug master files (DMFs) are
/// documents submitted to regulatory agencies to provide confidential detailed
/// information about facilities, processes or articles used in the
/// manufacturing, processing, packaging and storing of drug products.

    @JsonKey(name: 'masterFile') List<List<Reference>>? masterFile,
/// /// [contact] A product specific contact, person (in a role), or an
/// organization.

    @JsonKey(name: 'contact') List<List<MedicinalProductDefinition_Contact>>? contact,
/// /// [clinicalTrial] Clinical trials or studies that this product is
/// involved in.

    @JsonKey(name: 'clinicalTrial') List<List<Reference>>? clinicalTrial,
/// /// [code] A code that this product is known by, usually within some formal
/// terminology, perhaps assigned by a third party (i.e. not the manufacturer
/// or regulator). Products (types of medications) tend to be known by
/// identifiers during development and within regulatory process. However when
/// they are prescribed they tend to be identified by codes. The same product
/// may be have multiple codes, applied to it by multiple organizations.

    @JsonKey(name: 'code') List<List<Coding>>? code,
/// /// [name] The product's name, including full name and possibly coded
/// parts.

    @JsonKey(name: 'name') List<List<MedicinalProductDefinition_Name>>? name,
/// /// [crossReference] Reference to another product, e.g. for linking
/// authorised to investigational product, or a virtual product.

    @JsonKey(name: 'crossReference') List<List<MedicinalProductDefinition_CrossReference>>? crossReference,
/// /// [operation] A manufacturing or administrative process or step
/// associated with (or performed on) the medicinal product.

    @JsonKey(name: 'operation') List<List<MedicinalProductDefinition_Operation>>? operation,
/// /// [characteristic] Allows the key product features to be recorded, such
/// as "sugar free", "modified release", "parallel import".

    @JsonKey(name: 'characteristic') List<List<MedicinalProductDefinition_Characteristic>>? characteristic,
  }) = _$MedicinalProductDefinition;

  @override
  String get fhirType => 'MedicinalProductDefinition';

  factory MedicinalProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionFromJson(json);

  factory MedicinalProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
