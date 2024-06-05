// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'medicinal_product_definition.freezed.dart';
part 'medicinal_product_definition.g.dart';

/// [MedicinalProductDefinition] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
@freezed
class MedicinalProductDefinition
    with _$MedicinalProductDefinition
    implements DomainResource {
  /// [MedicinalProductDefinition] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  const MedicinalProductDefinition._();

  /// [MedicinalProductDefinition] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  ///
  /// [resourceType] This is a MedicinalProductDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
  ///
  /// [type] Regulatory type, e.g. Investigational or Authorized.;
  ///
  /// [domain] If this medicine applies to human or veterinary uses.;
  ///
  /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
  ///
  /// [versionElement] (_version): Extensions for version;
  ///
  /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
  ///
  /// [statusDate] The date at which the given status became applicable.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [description] General description of this product.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
  ///
  /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
  ///
  /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
  ///
  /// [indicationElement] (_indication): Extensions for indication;
  ///
  /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
  ///
  /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
  ///
  /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
  ///
  /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
  ///
  /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
  ///
  /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
  ///
  /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
  ///
  /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
  ///
  /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
  ///
  /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
  ///
  /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
  ///
  /// [contact] A product specific contact, person (in a role), or an organization.;
  ///
  /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
  ///
  /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
  ///
  /// [name] The product's name, including full name and possibly coded parts.;
  ///
  /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
  ///
  /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
  ///
  /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
  const factory MedicinalProductDefinition({
    @Default(R4ResourceType.MedicinalProductDefinition)

    /// [resourceType] This is a MedicinalProductDefinition resource;
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
    List<Identifier>? identifier,

    /// [type] Regulatory type, e.g. Investigational or Authorized.;
    CodeableConcept? type,

    /// [domain] If this medicine applies to human or veterinary uses.;
    CodeableConcept? domain,

    /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
    String? version,

    /// [versionElement] (_version): Extensions for version;
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
    CodeableConcept? status,

    /// [statusDate] The date at which the given status became applicable.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,

    /// [description] General description of this product.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
    CodeableConcept? combinedPharmaceuticalDoseForm,

    /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
    List<CodeableConcept>? route,

    /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
    FhirMarkdown? indication,

    /// [indicationElement] (_indication): Extensions for indication;
    @JsonKey(name: '_indication') PrimitiveElement? indicationElement,

    /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
    CodeableConcept? legalStatusOfSupply,

    /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
    CodeableConcept? additionalMonitoringIndicator,

    /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
    List<CodeableConcept>? specialMeasures,

    /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
    CodeableConcept? pediatricUseIndicator,

    /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
    List<CodeableConcept>? classification,

    /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
    List<MarketingStatus>? marketingStatus,

    /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
    List<CodeableConcept>? packagedMedicinalProduct,

    /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
    List<CodeableConcept>? ingredient,

    /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
    List<CodeableReference>? impurity,

    /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
    List<Reference>? attachedDocument,

    /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
    List<Reference>? masterFile,

    /// [contact] A product specific contact, person (in a role), or an organization.;
    List<MedicinalProductDefinitionContact>? contact,

    /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
    List<Reference>? clinicalTrial,

    /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
    List<Coding>? code,

    /// [name] The product's name, including full name and possibly coded parts.;
    required List<MedicinalProductDefinitionName> name,

    /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
    List<MedicinalProductDefinitionCrossReference>? crossReference,

    /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
    List<MedicinalProductDefinitionOperation>? operation,

    /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
    List<MedicinalProductDefinitionCharacteristic>? characteristic,
  }) = _MedicinalProductDefinition;

  @override
  String get fhirType => 'MedicinalProductDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

@freezed
@freezed
class MedicinalProductDefinitionContact
    with _$MedicinalProductDefinitionContact
    implements BackboneElement {
  const MedicinalProductDefinitionContact._();

  /// [MedicinalProductDefinitionContact] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
  ///
  /// [contact] A product specific contact, person (in a role), or an organization.;
  const factory MedicinalProductDefinitionContact({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
    CodeableConcept? type,

    /// [contact] A product specific contact, person (in a role), or an organization.;
    required Reference contact,
  }) = _MedicinalProductDefinitionContact;

  @override
  String get fhirType => 'MedicinalProductDefinitionContact';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionContact.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionContact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionContact.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionContactFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionContact], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionContactFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
@freezed

/// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
@freezed
class MedicinalProductDefinitionName
    with _$MedicinalProductDefinitionName
    implements BackboneElement {
  /// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  const MedicinalProductDefinitionName._();

  /// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [productName] The full product name.;
  ///
  /// [productNameElement] (_productName): Extensions for productName;
  ///
  /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
  ///
  /// [namePart] Coding words or phrases of the name.;
  ///
  /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
  const factory MedicinalProductDefinitionName({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [productName] The full product name.;
    String? productName,

    /// [productNameElement] (_productName): Extensions for productName;
    @JsonKey(name: '_productName') PrimitiveElement? productNameElement,

    /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
    CodeableConcept? type,

    /// [namePart] Coding words or phrases of the name.;
    List<MedicinalProductDefinitionNamePart>? namePart,

    /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
    List<MedicinalProductDefinitionCountryLanguage>? countryLanguage,
  }) = _MedicinalProductDefinitionName;

  @override
  String get fhirType => 'MedicinalProductDefinitionName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionName.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionName.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionNameFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionNameFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicinalProductDefinitionNamePart
    with _$MedicinalProductDefinitionNamePart
    implements BackboneElement {
  const MedicinalProductDefinitionNamePart._();

  /// [MedicinalProductDefinitionNamePart] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [part] A fragment of a product name.;
  ///
  /// [partElement] (_part): Extensions for part;
  ///
  /// [type] Identifying type for this part of the name (e.g. strength part).;
  const factory MedicinalProductDefinitionNamePart({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [part] A fragment of a product name.;
    @JsonKey(name: 'part') String? part_,

    /// [partElement] (_part): Extensions for part;
    @JsonKey(name: '_part') PrimitiveElement? partElement,

    /// [type] Identifying type for this part of the name (e.g. strength part).;
    required CodeableConcept type,
  }) = _MedicinalProductDefinitionNamePart;

  @override
  String get fhirType => 'MedicinalProductDefinitionNamePart';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionNamePart.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionNamePart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionNamePart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionNamePart cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionNamePart.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionNamePartFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionNamePart], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionNamePart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionNamePartFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicinalProductDefinitionCountryLanguage
    with _$MedicinalProductDefinitionCountryLanguage
    implements BackboneElement {
  const MedicinalProductDefinitionCountryLanguage._();

  /// [MedicinalProductDefinitionCountryLanguage] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [country] Country code for where this name applies.;
  ///
  /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
  ///
  /// [language] Language code for this name.;
  const factory MedicinalProductDefinitionCountryLanguage({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [country] Country code for where this name applies.;
    required CodeableConcept country,

    /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
    CodeableConcept? jurisdiction,

    /// [language] Language code for this name.;
    required CodeableConcept language,
  }) = _MedicinalProductDefinitionCountryLanguage;

  @override
  String get fhirType => 'MedicinalProductDefinitionCountryLanguage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionCountryLanguage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCountryLanguage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCountryLanguage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCountryLanguage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCountryLanguage.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCountryLanguageFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionCountryLanguage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionCountryLanguage.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionCountryLanguageFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicinalProductDefinitionCrossReference
    with _$MedicinalProductDefinitionCrossReference
    implements BackboneElement {
  const MedicinalProductDefinitionCrossReference._();

  /// [MedicinalProductDefinitionCrossReference] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
  ///
  /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
  const factory MedicinalProductDefinitionCrossReference({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
    required CodeableReference product,

    /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
    CodeableConcept? type,
  }) = _MedicinalProductDefinitionCrossReference;

  @override
  String get fhirType => 'MedicinalProductDefinitionCrossReference';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionCrossReference.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCrossReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCrossReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCrossReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCrossReference.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCrossReferenceFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionCrossReference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionCrossReference.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionCrossReferenceFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicinalProductDefinitionOperation
    with _$MedicinalProductDefinitionOperation
    implements BackboneElement {
  const MedicinalProductDefinitionOperation._();

  /// [MedicinalProductDefinitionOperation] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
  ///
  /// [effectiveDate] Date range of applicability.;
  ///
  /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
  ///
  /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
  const factory MedicinalProductDefinitionOperation({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
    CodeableReference? type,

    /// [effectiveDate] Date range of applicability.;
    Period? effectiveDate,

    /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
    List<Reference>? organization,

    /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
    CodeableConcept? confidentialityIndicator,
  }) = _MedicinalProductDefinitionOperation;

  @override
  String get fhirType => 'MedicinalProductDefinitionOperation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionOperation.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionOperation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionOperation.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionOperationFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionOperation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionOperationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicinalProductDefinitionCharacteristic
    with _$MedicinalProductDefinitionCharacteristic
    implements BackboneElement {
  const MedicinalProductDefinitionCharacteristic._();

  /// [MedicinalProductDefinitionCharacteristic] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of characteristic.;
  ///
  /// [valueCodeableConcept] A value for the characteristic.text.;
  ///
  /// [valueQuantity] A value for the characteristic.text.;
  ///
  /// [valueDate] A value for the characteristic.text.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the characteristic.text.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the characteristic.text.;
  const factory MedicinalProductDefinitionCharacteristic({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of characteristic.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the characteristic.text.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the characteristic.text.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the characteristic.text.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueBoolean] A value for the characteristic.text.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueAttachment] A value for the characteristic.text.;
    Attachment? valueAttachment,
  }) = _MedicinalProductDefinitionCharacteristic;

  @override
  String get fhirType => 'MedicinalProductDefinitionCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCharacteristicFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionCharacteristic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionCharacteristic.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionCharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
