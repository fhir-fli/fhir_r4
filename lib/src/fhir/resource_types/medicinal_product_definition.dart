import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'medicinal_product_definition.g.dart';

/// [MedicinalProductDefinition] /// A medicinal product, being a substance or combination of substances that is
/// intended to treat, prevent or diagnose a disease, or to restore, correct or
/// modify physiological functions by exerting a pharmacological, immunological
/// or metabolic action. This resource is intended to define and detail such
/// products and their properties, for uses other than direct patient care
/// (e.g. regulatory use, or drug catalogs).
@JsonSerializable()
class MedicinalProductDefinition extends DomainResource {
  MedicinalProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.domain,
    this.version,
    this.versionElement,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.description,
    this.descriptionElement,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,
    this.indicationElement,
    this.legalStatusOfSupply,
    this.additionalMonitoringIndicator,
    this.specialMeasures,
    this.pediatricUseIndicator,
    this.classification,
    this.marketingStatus,
    this.packagedMedicinalProduct,
    this.ingredient,
    this.impurity,
    this.attachedDocument,
    this.masterFile,
    this.contact,
    this.clinicalTrial,
    this.code,
    required this.name,
    this.crossReference,
    this.operation,
    this.characteristic,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.MedicinalProductDefinition,
            fhirType: 'MedicinalProductDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for this product. Could be an MPID. When in development
  /// or being regulated, products are typically referenced by official
  /// identifiers, assigned by a manufacturer or regulator, and unique to a
  /// product (which, when compared to a product instance being prescribed, is
  /// actually a product type). See also MedicinalProductDefinition.code.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// Regulatory type, e.g. Investigational or Authorized.
  @JsonKey(name: 'type')
  final MedicinalProductType? type;

  /// [domain] /// If this medicine applies to human or veterinary uses.
  @JsonKey(name: 'domain')
  final MedicinalProductDomain? domain;

  /// [version] /// A business identifier relating to a specific version of the product, this
  /// is commonly used to support revisions to an existing product.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [status] /// The status within the lifecycle of this product record. A high-level
  /// status, this is not intended to duplicate details carried elsewhere such as
  /// legal status, or authorization status.
  @JsonKey(name: 'status')
  final PublicationStatus? status;

  /// [statusDate] /// The date at which the given status became applicable.
  @JsonKey(name: 'statusDate')
  final FhirDateTime? statusDate;
  @JsonKey(name: '_statusDate')
  final Element? statusDateElement;

  /// [description] /// General description of this product.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [combinedPharmaceuticalDoseForm] /// The dose form for a single part product, or combined form of a multiple
  /// part product. This is one concept that describes all the components. It
  /// does not represent the form with components physically mixed, if that might
  /// be necessary, for which see
  /// (AdministrableProductDefinition.administrableDoseForm).
  @JsonKey(name: 'combinedPharmaceuticalDoseForm')
  final CombinedDoseForm? combinedPharmaceuticalDoseForm;

  /// [route] /// The path by which the product is taken into or makes contact with the body.
  /// In some regions this is referred to as the licenced or approved route. See
  /// also AdministrableProductDefinition resource.
  /// MedicinalProductDefinition.route is the same concept as
  /// AdministrableProductDefinition.routeOfAdministration.code, and they cannot
  /// be used together.
  @JsonKey(name: 'route')
  final List<CodeableConcept>? route;

  /// [indication] /// Description of indication(s) for this product, used when structured
  /// indications are not required. In cases where structured indications are
  /// required, they are captured using the ClinicalUseDefinition resource. An
  /// indication is a medical situation for which using the product is
  /// appropriate.
  @JsonKey(name: 'indication')
  final FhirMarkdown? indication;
  @JsonKey(name: '_indication')
  final Element? indicationElement;

  /// [legalStatusOfSupply] /// The legal status of supply of the medicinal product as classified by the
  /// regulator.
  @JsonKey(name: 'legalStatusOfSupply')
  final LegalStatusOfSupply? legalStatusOfSupply;

  /// [additionalMonitoringIndicator] /// Whether the Medicinal Product is subject to additional monitoring for
  /// regulatory reasons, such as heightened reporting requirements.
  @JsonKey(name: 'additionalMonitoringIndicator')
  final AdditionalMonitoring? additionalMonitoringIndicator;

  /// [specialMeasures] /// Whether the Medicinal Product is subject to special measures for regulatory
  /// reasons, such as a requirement to conduct post-authorisation studies.
  @JsonKey(name: 'specialMeasures')
  final List<SpecialMeasures>? specialMeasures;

  /// [pediatricUseIndicator] /// If authorised for use in children, or infants, neonates etc.
  @JsonKey(name: 'pediatricUseIndicator')
  final PediatricUse? pediatricUseIndicator;

  /// [classification] /// Allows the product to be classified by various systems, commonly WHO ATC.
  @JsonKey(name: 'classification')
  final List<CodeableConcept>? classification;

  /// [marketingStatus] /// Marketing status of the medicinal product, in contrast to marketing
  /// authorization. This refers to the product being actually 'on the market' as
  /// opposed to being allowed to be on the market (which is an authorization).
  @JsonKey(name: 'marketingStatus')
  final List<MarketingStatus>? marketingStatus;

  /// [packagedMedicinalProduct] /// Package type for the product. See also the PackagedProductDefinition
  /// resource.
  @JsonKey(name: 'packagedMedicinalProduct')
  final List<MedicinalProductPackageType>? packagedMedicinalProduct;

  /// [ingredient] /// The ingredients of this medicinal product - when not detailed in other
  /// resources. This is only needed if the ingredients are not specified by
  /// incoming references from the Ingredient resource, or indirectly via
  /// incoming AdministrableProductDefinition, PackagedProductDefinition or
  /// ManufacturedItemDefinition references. In cases where those levels of
  /// detail are not used, the ingredients may be specified directly here as
  /// codes.
  @JsonKey(name: 'ingredient')
  final List<CodeableConcept>? ingredient;

  /// [impurity] /// Any component of the drug product which is not the chemical entity defined
  /// as the drug substance, or an excipient in the drug product. This includes
  /// process-related impurities and contaminants, product-related impurities
  /// including degradation products.
  @JsonKey(name: 'impurity')
  final List<CodeableReference>? impurity;

  /// [attachedDocument] /// Additional information or supporting documentation about the medicinal
  /// product.
  @JsonKey(name: 'attachedDocument')
  final List<Reference>? attachedDocument;

  /// [masterFile] /// A master file for the medicinal product (e.g. Pharmacovigilance System
  /// Master File). Drug master files (DMFs) are documents submitted to
  /// regulatory agencies to provide confidential detailed information about
  /// facilities, processes or articles used in the manufacturing, processing,
  /// packaging and storing of drug products.
  @JsonKey(name: 'masterFile')
  final List<Reference>? masterFile;

  /// [contact] /// A product specific contact, person (in a role), or an organization.
  @JsonKey(name: 'contact')
  final List<MedicinalProductDefinitionContact>? contact;

  /// [clinicalTrial] /// Clinical trials or studies that this product is involved in.
  @JsonKey(name: 'clinicalTrial')
  final List<Reference>? clinicalTrial;

  /// [code] /// A code that this product is known by, usually within some formal
  /// terminology, perhaps assigned by a third party (i.e. not the manufacturer
  /// or regulator). Products (types of medications) tend to be known by
  /// identifiers during development and within regulatory process. However when
  /// they are prescribed they tend to be identified by codes. The same product
  /// may be have multiple codes, applied to it by multiple organizations.
  @JsonKey(name: 'code')
  final List<Coding>? code;

  /// [name] /// The product's name, including full name and possibly coded parts.
  @JsonKey(name: 'name')
  final List<MedicinalProductDefinitionName> name;

  /// [crossReference] /// Reference to another product, e.g. for linking authorised to
  /// investigational product, or a virtual product.
  @JsonKey(name: 'crossReference')
  final List<MedicinalProductDefinitionCrossReference>? crossReference;

  /// [operation] /// A manufacturing or administrative process or step associated with (or
  /// performed on) the medicinal product.
  @JsonKey(name: 'operation')
  final List<MedicinalProductDefinitionOperation>? operation;

  /// [characteristic] /// Allows the key product features to be recorded, such as "sugar free",
  /// "modified release", "parallel import".
  @JsonKey(name: 'characteristic')
  final List<MedicinalProductDefinitionCharacteristic>? characteristic;
  factory MedicinalProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicinalProductDefinitionToJson(this);

  @override
  MedicinalProductDefinition clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    MedicinalProductType? type,
    MedicinalProductDomain? domain,
    FhirString? version,
    Element? versionElement,
    PublicationStatus? status,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    CombinedDoseForm? combinedPharmaceuticalDoseForm,
    List<CodeableConcept>? route,
    FhirMarkdown? indication,
    Element? indicationElement,
    LegalStatusOfSupply? legalStatusOfSupply,
    AdditionalMonitoring? additionalMonitoringIndicator,
    List<SpecialMeasures>? specialMeasures,
    PediatricUse? pediatricUseIndicator,
    List<CodeableConcept>? classification,
    List<MarketingStatus>? marketingStatus,
    List<MedicinalProductPackageType>? packagedMedicinalProduct,
    List<CodeableConcept>? ingredient,
    List<CodeableReference>? impurity,
    List<Reference>? attachedDocument,
    List<Reference>? masterFile,
    List<MedicinalProductDefinitionContact>? contact,
    List<Reference>? clinicalTrial,
    List<Coding>? code,
    List<MedicinalProductDefinitionName>? name,
    List<MedicinalProductDefinitionCrossReference>? crossReference,
    List<MedicinalProductDefinitionOperation>? operation,
    List<MedicinalProductDefinitionCharacteristic>? characteristic,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      domain: domain ?? this.domain,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      combinedPharmaceuticalDoseForm:
          combinedPharmaceuticalDoseForm ?? this.combinedPharmaceuticalDoseForm,
      route: route ?? this.route,
      indication: indication ?? this.indication,
      indicationElement: indicationElement ?? this.indicationElement,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      additionalMonitoringIndicator:
          additionalMonitoringIndicator ?? this.additionalMonitoringIndicator,
      specialMeasures: specialMeasures ?? this.specialMeasures,
      pediatricUseIndicator:
          pediatricUseIndicator ?? this.pediatricUseIndicator,
      classification: classification ?? this.classification,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      packagedMedicinalProduct:
          packagedMedicinalProduct ?? this.packagedMedicinalProduct,
      ingredient: ingredient ?? this.ingredient,
      impurity: impurity ?? this.impurity,
      attachedDocument: attachedDocument ?? this.attachedDocument,
      masterFile: masterFile ?? this.masterFile,
      contact: contact ?? this.contact,
      clinicalTrial: clinicalTrial ?? this.clinicalTrial,
      code: code ?? this.code,
      name: name ?? this.name,
      crossReference: crossReference ?? this.crossReference,
      operation: operation ?? this.operation,
      characteristic: characteristic ?? this.characteristic,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionContact] /// A product specific contact, person (in a role), or an organization.
@JsonSerializable()
class MedicinalProductDefinitionContact extends BackboneElement {
  MedicinalProductDefinitionContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.contact,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionContact');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Allows the contact to be classified, for example QPPV, Pharmacovigilance
  /// Enquiry Information.
  @JsonKey(name: 'type')
  final ProductContactType? type;

  /// [contact] /// A product specific contact, person (in a role), or an organization.
  @JsonKey(name: 'contact')
  final Reference contact;
  factory MedicinalProductDefinitionContact.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionContactFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicinalProductDefinitionContactToJson(this);

  @override
  MedicinalProductDefinitionContact clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ProductContactType? type,
    Reference? contact,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      contact: contact ?? this.contact,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionContact.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionContact cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionName] /// The product's name, including full name and possibly coded parts.
@JsonSerializable()
class MedicinalProductDefinitionName extends BackboneElement {
  MedicinalProductDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productName,
    this.productNameElement,
    this.type,
    this.namePart,
    this.countryLanguage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionName');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productName] /// The full product name.
  @JsonKey(name: 'productName')
  final FhirString productName;
  @JsonKey(name: '_productName')
  final Element? productNameElement;

  /// [type] /// Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.
  @JsonKey(name: 'type')
  final ProductNameType? type;

  /// [namePart] /// Coding words or phrases of the name.
  @JsonKey(name: 'namePart')
  final List<MedicinalProductDefinitionNamePart>? namePart;

  /// [countryLanguage] /// Country and jurisdiction where the name applies, and associated language.
  @JsonKey(name: 'countryLanguage')
  final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage;
  factory MedicinalProductDefinitionName.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionNameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicinalProductDefinitionNameToJson(this);

  @override
  MedicinalProductDefinitionName clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? productName,
    Element? productNameElement,
    ProductNameType? type,
    List<MedicinalProductDefinitionNamePart>? namePart,
    List<MedicinalProductDefinitionCountryLanguage>? countryLanguage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productName: productName ?? this.productName,
      productNameElement: productNameElement ?? this.productNameElement,
      type: type ?? this.type,
      namePart: namePart ?? this.namePart,
      countryLanguage: countryLanguage ?? this.countryLanguage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionName.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionName cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionNamePart] /// Coding words or phrases of the name.
@JsonSerializable()
class MedicinalProductDefinitionNamePart extends BackboneElement {
  MedicinalProductDefinitionNamePart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.part_,
    this.partElement,
    required this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionNamePart');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [part_] /// A fragment of a product name.
  @JsonKey(name: 'part')
  final FhirString part_;
  @JsonKey(name: '_part')
  final Element? partElement;

  /// [type] /// Identifying type for this part of the name (e.g. strength part).
  @JsonKey(name: 'type')
  final ProductNamePartType type;
  factory MedicinalProductDefinitionNamePart.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionNamePartFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicinalProductDefinitionNamePartToJson(this);

  @override
  MedicinalProductDefinitionNamePart clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionNamePart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? part_,
    Element? partElement,
    ProductNamePartType? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionNamePart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      part_: part_ ?? this.part_,
      partElement: partElement ?? this.partElement,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionNamePart.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionNamePart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionNamePart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionNamePart cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionNamePart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionNamePart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionCountryLanguage] /// Country and jurisdiction where the name applies, and associated language.
@JsonSerializable()
class MedicinalProductDefinitionCountryLanguage extends BackboneElement {
  MedicinalProductDefinitionCountryLanguage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionCountryLanguage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [country] /// Country code for where this name applies.
  @JsonKey(name: 'country')
  final CodeableConcept country;

  /// [jurisdiction] /// Jurisdiction code for where this name applies. A jurisdiction may be a sub-
  /// or supra-national entity (e.g. a state or a geographic region).
  @JsonKey(name: 'jurisdiction')
  final CodeableConcept? jurisdiction;

  /// [language] /// Language code for this name.
  @JsonKey(name: 'language')
  final CommonLanguages language;
  factory MedicinalProductDefinitionCountryLanguage.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCountryLanguageFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicinalProductDefinitionCountryLanguageToJson(this);

  @override
  MedicinalProductDefinitionCountryLanguage clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCountryLanguage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? country,
    CodeableConcept? jurisdiction,
    CommonLanguages? language,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionCountryLanguage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      country: country ?? this.country,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionCountryLanguage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCountryLanguage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCountryLanguage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCountryLanguage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionCountryLanguage.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionCountryLanguage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionCrossReference] /// Reference to another product, e.g. for linking authorised to
/// investigational product, or a virtual product.
@JsonSerializable()
class MedicinalProductDefinitionCrossReference extends BackboneElement {
  MedicinalProductDefinitionCrossReference({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.product,
    this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionCrossReference');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [product] /// Reference to another product, e.g. for linking authorised to
  /// investigational product.
  @JsonKey(name: 'product')
  final CodeableReference product;

  /// [type] /// The type of relationship, for instance branded to generic, virtual to
  /// actual product, product to development product (investigational), parallel
  /// import version.
  @JsonKey(name: 'type')
  final ProductCrossReferenceType? type;
  factory MedicinalProductDefinitionCrossReference.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCrossReferenceFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicinalProductDefinitionCrossReferenceToJson(this);

  @override
  MedicinalProductDefinitionCrossReference clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCrossReference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? product,
    ProductCrossReferenceType? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionCrossReference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      product: product ?? this.product,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionCrossReference.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCrossReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCrossReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCrossReference cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionCrossReference.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionCrossReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionOperation] /// A manufacturing or administrative process or step associated with (or
/// performed on) the medicinal product.
@JsonSerializable()
class MedicinalProductDefinitionOperation extends BackboneElement {
  MedicinalProductDefinitionOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionOperation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of manufacturing operation e.g. manufacturing itself,
  /// re-packaging. For the authorization of this, a RegulatedAuthorization would
  /// point to the same plan or activity referenced here.
  @JsonKey(name: 'type')
  final CodeableReference? type;

  /// [effectiveDate] /// Date range of applicability.
  @JsonKey(name: 'effectiveDate')
  final Period? effectiveDate;

  /// [organization] /// The organization or establishment responsible for (or associated with) the
  /// particular process or step, examples include the manufacturer, importer,
  /// agent.
  @JsonKey(name: 'organization')
  final List<Reference>? organization;

  /// [confidentialityIndicator] /// Specifies whether this particular business or manufacturing process is
  /// considered proprietary or confidential.
  @JsonKey(name: 'confidentialityIndicator')
  final ProductConfidentiality? confidentialityIndicator;
  factory MedicinalProductDefinitionOperation.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicinalProductDefinitionOperationToJson(this);

  @override
  MedicinalProductDefinitionOperation clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? type,
    Period? effectiveDate,
    List<Reference>? organization,
    ProductConfidentiality? confidentialityIndicator,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      effectiveDate: effectiveDate ?? this.effectiveDate,
      organization: organization ?? this.organization,
      confidentialityIndicator:
          confidentialityIndicator ?? this.confidentialityIndicator,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionOperation.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicinalProductDefinitionCharacteristic] /// Allows the key product features to be recorded, such as "sugar free",
/// "modified release", "parallel import".
@JsonSerializable()
class MedicinalProductDefinitionCharacteristic extends BackboneElement {
  MedicinalProductDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicinalProductDefinitionCharacteristic');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;
  factory MedicinalProductDefinitionCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicinalProductDefinitionCharacteristicToJson(this);

  @override
  MedicinalProductDefinitionCharacteristic clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Attachment? valueAttachment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicinalProductDefinitionCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicinalProductDefinitionCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinitionCharacteristic.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
