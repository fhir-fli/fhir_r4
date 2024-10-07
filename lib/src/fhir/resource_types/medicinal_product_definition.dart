import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinition] /// A medicinal product, being a substance or combination of substances that is
/// intended to treat, prevent or diagnose a disease, or to restore, correct or
/// modify physiological functions by exerting a pharmacological, immunological
/// or metabolic action. This resource is intended to define and detail such
/// products and their properties, for uses other than direct patient care
/// (e.g. regulatory use, or drug catalogs).
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
  }) : super(resourceType: R4ResourceType.MedicinalProductDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for this product. Could be an MPID. When in development
  /// or being regulated, products are typically referenced by official
  /// identifiers, assigned by a manufacturer or regulator, and unique to a
  /// product (which, when compared to a product instance being prescribed, is
  /// actually a product type). See also MedicinalProductDefinition.code.
  final List<Identifier>? identifier;

  /// [type] /// Regulatory type, e.g. Investigational or Authorized.
  final CodeableConcept? type;

  /// [domain] /// If this medicine applies to human or veterinary uses.
  final CodeableConcept? domain;

  /// [version] /// A business identifier relating to a specific version of the product, this
  /// is commonly used to support revisions to an existing product.
  final FhirString? version;
  final Element? versionElement;

  /// [status] /// The status within the lifecycle of this product record. A high-level
  /// status, this is not intended to duplicate details carried elsewhere such as
  /// legal status, or authorization status.
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;
  final Element? statusDateElement;

  /// [description] /// General description of this product.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [combinedPharmaceuticalDoseForm] /// The dose form for a single part product, or combined form of a multiple
  /// part product. This is one concept that describes all the components. It
  /// does not represent the form with components physically mixed, if that might
  /// be necessary, for which see
  /// (AdministrableProductDefinition.administrableDoseForm).
  final CodeableConcept? combinedPharmaceuticalDoseForm;

  /// [route] /// The path by which the product is taken into or makes contact with the body.
  /// In some regions this is referred to as the licenced or approved route. See
  /// also AdministrableProductDefinition resource.
  /// MedicinalProductDefinition.route is the same concept as
  /// AdministrableProductDefinition.routeOfAdministration.code, and they cannot
  /// be used together.
  final List<CodeableConcept>? route;

  /// [indication] /// Description of indication(s) for this product, used when structured
  /// indications are not required. In cases where structured indications are
  /// required, they are captured using the ClinicalUseDefinition resource. An
  /// indication is a medical situation for which using the product is
  /// appropriate.
  final FhirMarkdown? indication;
  final Element? indicationElement;

  /// [legalStatusOfSupply] /// The legal status of supply of the medicinal product as classified by the
  /// regulator.
  final CodeableConcept? legalStatusOfSupply;

  /// [additionalMonitoringIndicator] /// Whether the Medicinal Product is subject to additional monitoring for
  /// regulatory reasons, such as heightened reporting requirements.
  final CodeableConcept? additionalMonitoringIndicator;

  /// [specialMeasures] /// Whether the Medicinal Product is subject to special measures for regulatory
  /// reasons, such as a requirement to conduct post-authorisation studies.
  final List<CodeableConcept>? specialMeasures;

  /// [pediatricUseIndicator] /// If authorised for use in children, or infants, neonates etc.
  final CodeableConcept? pediatricUseIndicator;

  /// [classification] /// Allows the product to be classified by various systems, commonly WHO ATC.
  final List<CodeableConcept>? classification;

  /// [marketingStatus] /// Marketing status of the medicinal product, in contrast to marketing
  /// authorization. This refers to the product being actually 'on the market' as
  /// opposed to being allowed to be on the market (which is an authorization).
  final List<MarketingStatus>? marketingStatus;

  /// [packagedMedicinalProduct] /// Package type for the product. See also the PackagedProductDefinition
  /// resource.
  final List<CodeableConcept>? packagedMedicinalProduct;

  /// [ingredient] /// The ingredients of this medicinal product - when not detailed in other
  /// resources. This is only needed if the ingredients are not specified by
  /// incoming references from the Ingredient resource, or indirectly via
  /// incoming AdministrableProductDefinition, PackagedProductDefinition or
  /// ManufacturedItemDefinition references. In cases where those levels of
  /// detail are not used, the ingredients may be specified directly here as
  /// codes.
  final List<CodeableConcept>? ingredient;

  /// [impurity] /// Any component of the drug product which is not the chemical entity defined
  /// as the drug substance, or an excipient in the drug product. This includes
  /// process-related impurities and contaminants, product-related impurities
  /// including degradation products.
  final List<CodeableReference>? impurity;

  /// [attachedDocument] /// Additional information or supporting documentation about the medicinal
  /// product.
  final List<Reference>? attachedDocument;

  /// [masterFile] /// A master file for the medicinal product (e.g. Pharmacovigilance System
  /// Master File). Drug master files (DMFs) are documents submitted to
  /// regulatory agencies to provide confidential detailed information about
  /// facilities, processes or articles used in the manufacturing, processing,
  /// packaging and storing of drug products.
  final List<Reference>? masterFile;

  /// [contact] /// A product specific contact, person (in a role), or an organization.
  final List<MedicinalProductDefinitionContact>? contact;

  /// [clinicalTrial] /// Clinical trials or studies that this product is involved in.
  final List<Reference>? clinicalTrial;

  /// [code] /// A code that this product is known by, usually within some formal
  /// terminology, perhaps assigned by a third party (i.e. not the manufacturer
  /// or regulator). Products (types of medications) tend to be known by
  /// identifiers during development and within regulatory process. However when
  /// they are prescribed they tend to be identified by codes. The same product
  /// may be have multiple codes, applied to it by multiple organizations.
  final List<Coding>? code;

  /// [name] /// The product's name, including full name and possibly coded parts.
  final List<MedicinalProductDefinitionName> name;

  /// [crossReference] /// Reference to another product, e.g. for linking authorised to
  /// investigational product, or a virtual product.
  final List<MedicinalProductDefinitionCrossReference>? crossReference;

  /// [operation] /// A manufacturing or administrative process or step associated with (or
  /// performed on) the medicinal product.
  final List<MedicinalProductDefinitionOperation>? operation;

  /// [characteristic] /// Allows the key product features to be recorded, such as "sugar free",
  /// "modified release", "parallel import".
  final List<MedicinalProductDefinitionCharacteristic>? characteristic;
  @override
  MedicinalProductDefinition clone() => throw UnimplementedError();
  MedicinalProductDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    CodeableConcept? domain,
    FhirString? version,
    Element? versionElement,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    CodeableConcept? combinedPharmaceuticalDoseForm,
    List<CodeableConcept>? route,
    FhirMarkdown? indication,
    Element? indicationElement,
    CodeableConcept? legalStatusOfSupply,
    CodeableConcept? additionalMonitoringIndicator,
    List<CodeableConcept>? specialMeasures,
    CodeableConcept? pediatricUseIndicator,
    List<CodeableConcept>? classification,
    List<MarketingStatus>? marketingStatus,
    List<CodeableConcept>? packagedMedicinalProduct,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionContact] /// A product specific contact, person (in a role), or an organization.
class MedicinalProductDefinitionContact extends BackboneElement {
  MedicinalProductDefinitionContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.contact,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Allows the contact to be classified, for example QPPV, Pharmacovigilance
  /// Enquiry Information.
  final CodeableConcept? type;

  /// [contact] /// A product specific contact, person (in a role), or an organization.
  final Reference contact;
  @override
  MedicinalProductDefinitionContact clone() => throw UnimplementedError();
  MedicinalProductDefinitionContact copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? contact,
  }) {
    return MedicinalProductDefinitionContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      contact: contact ?? this.contact,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionName] /// The product's name, including full name and possibly coded parts.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productName] /// The full product name.
  final FhirString productName;
  final Element? productNameElement;

  /// [type] /// Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.
  final CodeableConcept? type;

  /// [namePart] /// Coding words or phrases of the name.
  final List<MedicinalProductDefinitionNamePart>? namePart;

  /// [countryLanguage] /// Country and jurisdiction where the name applies, and associated language.
  final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage;
  @override
  MedicinalProductDefinitionName clone() => throw UnimplementedError();
  MedicinalProductDefinitionName copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? productName,
    Element? productNameElement,
    CodeableConcept? type,
    List<MedicinalProductDefinitionNamePart>? namePart,
    List<MedicinalProductDefinitionCountryLanguage>? countryLanguage,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionNamePart] /// Coding words or phrases of the name.
class MedicinalProductDefinitionNamePart extends BackboneElement {
  MedicinalProductDefinitionNamePart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.part_,
    this.partElement,
    required this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [part_] /// A fragment of a product name.
  final FhirString part_;
  final Element? partElement;

  /// [type] /// Identifying type for this part of the name (e.g. strength part).
  final CodeableConcept type;
  @override
  MedicinalProductDefinitionNamePart clone() => throw UnimplementedError();
  MedicinalProductDefinitionNamePart copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? part_,
    Element? partElement,
    CodeableConcept? type,
  }) {
    return MedicinalProductDefinitionNamePart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      part_: part_ ?? this.part_,
      partElement: partElement ?? this.partElement,
      type: type ?? this.type,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionCountryLanguage] /// Country and jurisdiction where the name applies, and associated language.
class MedicinalProductDefinitionCountryLanguage extends BackboneElement {
  MedicinalProductDefinitionCountryLanguage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [country] /// Country code for where this name applies.
  final CodeableConcept country;

  /// [jurisdiction] /// Jurisdiction code for where this name applies. A jurisdiction may be a sub-
  /// or supra-national entity (e.g. a state or a geographic region).
  final CodeableConcept? jurisdiction;

  /// [language] /// Language code for this name.
  final CodeableConcept language;
  @override
  MedicinalProductDefinitionCountryLanguage clone() =>
      throw UnimplementedError();
  MedicinalProductDefinitionCountryLanguage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? country,
    CodeableConcept? jurisdiction,
    CodeableConcept? language,
  }) {
    return MedicinalProductDefinitionCountryLanguage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      country: country ?? this.country,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionCrossReference] /// Reference to another product, e.g. for linking authorised to
/// investigational product, or a virtual product.
class MedicinalProductDefinitionCrossReference extends BackboneElement {
  MedicinalProductDefinitionCrossReference({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.product,
    this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [product] /// Reference to another product, e.g. for linking authorised to
  /// investigational product.
  final CodeableReference product;

  /// [type] /// The type of relationship, for instance branded to generic, virtual to
  /// actual product, product to development product (investigational), parallel
  /// import version.
  final CodeableConcept? type;
  @override
  MedicinalProductDefinitionCrossReference clone() =>
      throw UnimplementedError();
  MedicinalProductDefinitionCrossReference copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? product,
    CodeableConcept? type,
  }) {
    return MedicinalProductDefinitionCrossReference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      product: product ?? this.product,
      type: type ?? this.type,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionOperation] /// A manufacturing or administrative process or step associated with (or
/// performed on) the medicinal product.
class MedicinalProductDefinitionOperation extends BackboneElement {
  MedicinalProductDefinitionOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of manufacturing operation e.g. manufacturing itself,
  /// re-packaging. For the authorization of this, a RegulatedAuthorization would
  /// point to the same plan or activity referenced here.
  final CodeableReference? type;

  /// [effectiveDate] /// Date range of applicability.
  final Period? effectiveDate;

  /// [organization] /// The organization or establishment responsible for (or associated with) the
  /// particular process or step, examples include the manufacturer, importer,
  /// agent.
  final List<Reference>? organization;

  /// [confidentialityIndicator] /// Specifies whether this particular business or manufacturing process is
  /// considered proprietary or confidential.
  final CodeableConcept? confidentialityIndicator;
  @override
  MedicinalProductDefinitionOperation clone() => throw UnimplementedError();
  MedicinalProductDefinitionOperation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? type,
    Period? effectiveDate,
    List<Reference>? organization,
    CodeableConcept? confidentialityIndicator,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicinalProductDefinitionCharacteristic] /// Allows the key product features to be recorded, such as "sugar free",
/// "modified release", "parallel import".
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  final Attachment? valueAttachment;
  @override
  MedicinalProductDefinitionCharacteristic clone() =>
      throw UnimplementedError();
  MedicinalProductDefinitionCharacteristic copy({
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
    );
  }
}
