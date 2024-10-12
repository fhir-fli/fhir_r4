import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicinalProductDefinition]
/// A medicinal product, being a substance or combination of substances
/// that is intended to treat, prevent or diagnose a disease, or to
/// restore, correct or modify physiological functions by exerting a
/// pharmacological, immunological or metabolic action. This resource is
/// intended to define and detail such products and their properties, for
/// uses other than direct patient care (e.g. regulatory use, or drug
/// catalogs).
class MedicinalProductDefinition extends DomainResource {
  /// Primary constructor for [MedicinalProductDefinition]

  MedicinalProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.domain,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    this.status,
    this.statusDate,

    /// Extensions for [statusDate]
    this.statusDateElement,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,

    /// Extensions for [indication]
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
  }) : super(
          resourceType: R4ResourceType.MedicinalProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinition.fromJson(Map<String, dynamic> json) {
    return MedicinalProductDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      domain: json['domain'] != null
          ? CodeableConcept.fromJson(
              json['domain'] as Map<String, dynamic>,
            )
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      statusDate: json['statusDate'] != null
          ? FhirDateTime.fromJson(json['statusDate'])
          : null,
      statusDateElement: json['_statusDate'] != null
          ? Element.fromJson(
              json['_statusDate'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      combinedPharmaceuticalDoseForm: json['combinedPharmaceuticalDoseForm'] !=
              null
          ? CodeableConcept.fromJson(
              json['combinedPharmaceuticalDoseForm'] as Map<String, dynamic>,
            )
          : null,
      route: json['route'] != null
          ? (json['route'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      indication: json['indication'] != null
          ? FhirMarkdown.fromJson(json['indication'])
          : null,
      indicationElement: json['_indication'] != null
          ? Element.fromJson(
              json['_indication'] as Map<String, dynamic>,
            )
          : null,
      legalStatusOfSupply: json['legalStatusOfSupply'] != null
          ? CodeableConcept.fromJson(
              json['legalStatusOfSupply'] as Map<String, dynamic>,
            )
          : null,
      additionalMonitoringIndicator:
          json['additionalMonitoringIndicator'] != null
              ? CodeableConcept.fromJson(
                  json['additionalMonitoringIndicator'] as Map<String, dynamic>,
                )
              : null,
      specialMeasures: json['specialMeasures'] != null
          ? (json['specialMeasures'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      pediatricUseIndicator: json['pediatricUseIndicator'] != null
          ? CodeableConcept.fromJson(
              json['pediatricUseIndicator'] as Map<String, dynamic>,
            )
          : null,
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      marketingStatus: json['marketingStatus'] != null
          ? (json['marketingStatus'] as List<dynamic>)
              .map<MarketingStatus>(
                (dynamic v) => MarketingStatus.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      packagedMedicinalProduct: json['packagedMedicinalProduct'] != null
          ? (json['packagedMedicinalProduct'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      impurity: json['impurity'] != null
          ? (json['impurity'] as List<dynamic>)
              .map<CodeableReference>(
                (dynamic v) => CodeableReference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      attachedDocument: json['attachedDocument'] != null
          ? (json['attachedDocument'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      masterFile: json['masterFile'] != null
          ? (json['masterFile'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<MedicinalProductDefinitionContact>(
                (dynamic v) => MedicinalProductDefinitionContact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      clinicalTrial: json['clinicalTrial'] != null
          ? (json['clinicalTrial'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: (json['name'] as List<dynamic>)
          .map<MedicinalProductDefinitionName>((dynamic v) =>
              MedicinalProductDefinitionName.fromJson(
                  v as Map<String, dynamic>))
          .toList(),
      crossReference: json['crossReference'] != null
          ? (json['crossReference'] as List<dynamic>)
              .map<MedicinalProductDefinitionCrossReference>(
                (dynamic v) =>
                    MedicinalProductDefinitionCrossReference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      operation: json['operation'] != null
          ? (json['operation'] as List<dynamic>)
              .map<MedicinalProductDefinitionOperation>(
                (dynamic v) => MedicinalProductDefinitionOperation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<MedicinalProductDefinitionCharacteristic>(
                (dynamic v) =>
                    MedicinalProductDefinitionCharacteristic.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicinalProductDefinition] from a [String] or [YamlMap] object
  factory MedicinalProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinition cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinition] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinition';

  /// [identifier]
  /// Business identifier for this product. Could be an MPID. When in
  /// development or being regulated, products are typically referenced by
  /// official identifiers, assigned by a manufacturer or regulator, and
  /// unique to a product (which, when compared to a product instance being
  /// prescribed, is actually a product type). See also
  /// MedicinalProductDefinition.code.
  final List<Identifier>? identifier;

  /// [type]
  /// Regulatory type, e.g. Investigational or Authorized.
  final CodeableConcept? type;

  /// [domain]
  /// If this medicine applies to human or veterinary uses.
  final CodeableConcept? domain;

  /// [version]
  /// A business identifier relating to a specific version of the product,
  /// this is commonly used to support revisions to an existing product.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;

  /// [status]
  /// The status within the lifecycle of this product record. A high-level
  /// status, this is not intended to duplicate details carried elsewhere
  /// such as legal status, or authorization status.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;

  /// Extensions for [statusDate]
  final Element? statusDateElement;

  /// [description]
  /// General description of this product.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [combinedPharmaceuticalDoseForm]
  /// The dose form for a single part product, or combined form of a multiple
  /// part product. This is one concept that describes all the components. It
  /// does not represent the form with components physically mixed, if that
  /// might be necessary, for which see
  /// (AdministrableProductDefinition.administrableDoseForm).
  final CodeableConcept? combinedPharmaceuticalDoseForm;

  /// [route]
  /// The path by which the product is taken into or makes contact with the
  /// body. In some regions this is referred to as the licenced or approved
  /// route. See also AdministrableProductDefinition resource.
  /// MedicinalProductDefinition.route is the same concept as
  /// AdministrableProductDefinition.routeOfAdministration.code, and they
  /// cannot be used together.
  final List<CodeableConcept>? route;

  /// [indication]
  /// Description of indication(s) for this product, used when structured
  /// indications are not required. In cases where structured indications are
  /// required, they are captured using the ClinicalUseDefinition resource.
  /// An indication is a medical situation for which using the product is
  /// appropriate.
  final FhirMarkdown? indication;

  /// Extensions for [indication]
  final Element? indicationElement;

  /// [legalStatusOfSupply]
  /// The legal status of supply of the medicinal product as classified by
  /// the regulator.
  final CodeableConcept? legalStatusOfSupply;

  /// [additionalMonitoringIndicator]
  /// Whether the Medicinal Product is subject to additional monitoring for
  /// regulatory reasons, such as heightened reporting requirements.
  final CodeableConcept? additionalMonitoringIndicator;

  /// [specialMeasures]
  /// Whether the Medicinal Product is subject to special measures for
  /// regulatory reasons, such as a requirement to conduct post-authorisation
  /// studies.
  final List<CodeableConcept>? specialMeasures;

  /// [pediatricUseIndicator]
  /// If authorised for use in children, or infants, neonates etc.
  final CodeableConcept? pediatricUseIndicator;

  /// [classification]
  /// Allows the product to be classified by various systems, commonly WHO
  /// ATC.
  final List<CodeableConcept>? classification;

  /// [marketingStatus]
  /// Marketing status of the medicinal product, in contrast to marketing
  /// authorization. This refers to the product being actually 'on the
  /// market' as opposed to being allowed to be on the market (which is an
  /// authorization).
  final List<MarketingStatus>? marketingStatus;

  /// [packagedMedicinalProduct]
  /// Package type for the product. See also the PackagedProductDefinition
  /// resource.
  final List<CodeableConcept>? packagedMedicinalProduct;

  /// [ingredient]
  /// The ingredients of this medicinal product - when not detailed in other
  /// resources. This is only needed if the ingredients are not specified by
  /// incoming references from the Ingredient resource, or indirectly via
  /// incoming AdministrableProductDefinition, PackagedProductDefinition or
  /// ManufacturedItemDefinition references. In cases where those levels of
  /// detail are not used, the ingredients may be specified directly here as
  /// codes.
  final List<CodeableConcept>? ingredient;

  /// [impurity]
  /// Any component of the drug product which is not the chemical entity
  /// defined as the drug substance, or an excipient in the drug product.
  /// This includes process-related impurities and contaminants,
  /// product-related impurities including degradation products.
  final List<CodeableReference>? impurity;

  /// [attachedDocument]
  /// Additional information or supporting documentation about the medicinal
  /// product.
  final List<Reference>? attachedDocument;

  /// [masterFile]
  /// A master file for the medicinal product (e.g. Pharmacovigilance System
  /// Master File). Drug master files (DMFs) are documents submitted to
  /// regulatory agencies to provide confidential detailed information about
  /// facilities, processes or articles used in the manufacturing,
  /// processing, packaging and storing of drug products.
  final List<Reference>? masterFile;

  /// [contact]
  /// A product specific contact, person (in a role), or an organization.
  final List<MedicinalProductDefinitionContact>? contact;

  /// [clinicalTrial]
  /// Clinical trials or studies that this product is involved in.
  final List<Reference>? clinicalTrial;

  /// [code]
  /// A code that this product is known by, usually within some formal
  /// terminology, perhaps assigned by a third party (i.e. not the
  /// manufacturer or regulator). Products (types of medications) tend to be
  /// known by identifiers during development and within regulatory process.
  /// However when they are prescribed they tend to be identified by codes.
  /// The same product may be have multiple codes, applied to it by multiple
  /// organizations.
  final List<Coding>? code;

  /// [name]
  /// The product's name, including full name and possibly coded parts.
  final List<MedicinalProductDefinitionName> name;

  /// [crossReference]
  /// Reference to another product, e.g. for linking authorised to
  /// investigational product, or a virtual product.
  final List<MedicinalProductDefinitionCrossReference>? crossReference;

  /// [operation]
  /// A manufacturing or administrative process or step associated with (or
  /// performed on) the medicinal product.
  final List<MedicinalProductDefinitionOperation>? operation;

  /// [characteristic]
  /// Allows the key product features to be recorded, such as "sugar free",
  /// "modified release", "parallel import".
  final List<MedicinalProductDefinitionCharacteristic>? characteristic;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (domain != null) {
      json['domain'] = domain!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (statusDate?.value != null) {
      json['statusDate'] = statusDate!.toJson();
    }
    if (statusDateElement != null) {
      json['_statusDate'] = statusDateElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (combinedPharmaceuticalDoseForm != null) {
      json['combinedPharmaceuticalDoseForm'] =
          combinedPharmaceuticalDoseForm!.toJson();
    }
    if (route != null && route!.isNotEmpty) {
      json['route'] = route!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (indication?.value != null) {
      json['indication'] = indication!.toJson();
    }
    if (indicationElement != null) {
      json['_indication'] = indicationElement!.toJson();
    }
    if (legalStatusOfSupply != null) {
      json['legalStatusOfSupply'] = legalStatusOfSupply!.toJson();
    }
    if (additionalMonitoringIndicator != null) {
      json['additionalMonitoringIndicator'] =
          additionalMonitoringIndicator!.toJson();
    }
    if (specialMeasures != null && specialMeasures!.isNotEmpty) {
      json['specialMeasures'] =
          specialMeasures!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (pediatricUseIndicator != null) {
      json['pediatricUseIndicator'] = pediatricUseIndicator!.toJson();
    }
    if (classification != null && classification!.isNotEmpty) {
      json['classification'] =
          classification!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (marketingStatus != null && marketingStatus!.isNotEmpty) {
      json['marketingStatus'] =
          marketingStatus!.map((MarketingStatus v) => v.toJson()).toList();
    }
    if (packagedMedicinalProduct != null &&
        packagedMedicinalProduct!.isNotEmpty) {
      json['packagedMedicinalProduct'] = packagedMedicinalProduct!
          .map((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] =
          ingredient!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (impurity != null && impurity!.isNotEmpty) {
      json['impurity'] =
          impurity!.map((CodeableReference v) => v.toJson()).toList();
    }
    if (attachedDocument != null && attachedDocument!.isNotEmpty) {
      json['attachedDocument'] =
          attachedDocument!.map((Reference v) => v.toJson()).toList();
    }
    if (masterFile != null && masterFile!.isNotEmpty) {
      json['masterFile'] =
          masterFile!.map((Reference v) => v.toJson()).toList();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!
          .map((MedicinalProductDefinitionContact v) => v.toJson())
          .toList();
    }
    if (clinicalTrial != null && clinicalTrial!.isNotEmpty) {
      json['clinicalTrial'] =
          clinicalTrial!.map((Reference v) => v.toJson()).toList();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((Coding v) => v.toJson()).toList();
    }
    json['name'] = name
        .map<dynamic>((MedicinalProductDefinitionName v) => v.toJson())
        .toList();
    if (crossReference != null && crossReference!.isNotEmpty) {
      json['crossReference'] = crossReference!
          .map((MedicinalProductDefinitionCrossReference v) => v.toJson())
          .toList();
    }
    if (operation != null && operation!.isNotEmpty) {
      json['operation'] = operation!
          .map((MedicinalProductDefinitionOperation v) => v.toJson())
          .toList();
    }
    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!
          .map((MedicinalProductDefinitionCharacteristic v) => v.toJson())
          .toList();
    }
    return json;
  }

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
}

/// [MedicinalProductDefinitionContact]
/// A product specific contact, person (in a role), or an organization.
class MedicinalProductDefinitionContact extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionContact]

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionContact.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductDefinitionContact(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      contact: Reference.fromJson(
        json['contact'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionContact] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionContact.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionContact cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionContact] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionContact';

  /// [type]
  /// Allows the contact to be classified, for example QPPV,
  /// Pharmacovigilance Enquiry Information.
  final CodeableConcept? type;

  /// [contact]
  /// A product specific contact, person (in a role), or an organization.
  final Reference contact;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    json['contact'] = contact.toJson();
    return json;
  }

  @override
  MedicinalProductDefinitionContact clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
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
}

/// [MedicinalProductDefinitionName]
/// The product's name, including full name and possibly coded parts.
class MedicinalProductDefinitionName extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionName]

  MedicinalProductDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productName,

    /// Extensions for [productName]
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionName.fromJson(Map<String, dynamic> json) {
    return MedicinalProductDefinitionName(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productName: FhirString.fromJson(json['productName']),
      productNameElement: json['_productName'] != null
          ? Element.fromJson(
              json['_productName'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      namePart: json['namePart'] != null
          ? (json['namePart'] as List<dynamic>)
              .map<MedicinalProductDefinitionNamePart>(
                (dynamic v) => MedicinalProductDefinitionNamePart.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      countryLanguage: json['countryLanguage'] != null
          ? (json['countryLanguage'] as List<dynamic>)
              .map<MedicinalProductDefinitionCountryLanguage>(
                (dynamic v) =>
                    MedicinalProductDefinitionCountryLanguage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicinalProductDefinitionName] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionName.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionName cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionName] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionName';

  /// [productName]
  /// The full product name.
  final FhirString productName;

  /// Extensions for [productName]
  final Element? productNameElement;

  /// [type]
  /// Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.
  final CodeableConcept? type;

  /// [namePart]
  /// Coding words or phrases of the name.
  final List<MedicinalProductDefinitionNamePart>? namePart;

  /// [countryLanguage]
  /// Country and jurisdiction where the name applies, and associated
  /// language.
  final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['productName'] = productName.toJson();
    if (productNameElement != null) {
      json['_productName'] = productNameElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (namePart != null && namePart!.isNotEmpty) {
      json['namePart'] = namePart!
          .map((MedicinalProductDefinitionNamePart v) => v.toJson())
          .toList();
    }
    if (countryLanguage != null && countryLanguage!.isNotEmpty) {
      json['countryLanguage'] = countryLanguage!
          .map((MedicinalProductDefinitionCountryLanguage v) => v.toJson())
          .toList();
    }
    return json;
  }

  @override
  MedicinalProductDefinitionName clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? productName,
    Element? productNameElement,
    CodeableConcept? type,
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
}

/// [MedicinalProductDefinitionNamePart]
/// Coding words or phrases of the name.
class MedicinalProductDefinitionNamePart extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionNamePart]

  MedicinalProductDefinitionNamePart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.part_,

    /// Extensions for [part]
    this.partElement,
    required this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionNamePart.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductDefinitionNamePart(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      part_: FhirString.fromJson(json['part']),
      partElement: json['_part'] != null
          ? Element.fromJson(
              json['_part'] as Map<String, dynamic>,
            )
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionNamePart] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionNamePart.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionNamePart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionNamePart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionNamePart cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionNamePart] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionNamePart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionNamePart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionNamePart';

  /// [part_]
  /// A fragment of a product name.
  final FhirString part_;

  /// Extensions for [part]
  final Element? partElement;

  /// [type]
  /// Identifying type for this part of the name (e.g. strength part).
  final CodeableConcept type;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['part'] = part_.toJson();
    if (partElement != null) {
      json['_part'] = partElement!.toJson();
    }
    json['type'] = type.toJson();
    return json;
  }

  @override
  MedicinalProductDefinitionNamePart clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionNamePart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? part_,
    Element? partElement,
    CodeableConcept? type,
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
}

/// [MedicinalProductDefinitionCountryLanguage]
/// Country and jurisdiction where the name applies, and associated
/// language.
class MedicinalProductDefinitionCountryLanguage extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionCountryLanguage]

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCountryLanguage.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductDefinitionCountryLanguage(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      country: CodeableConcept.fromJson(
        json['country'] as Map<String, dynamic>,
      ),
      jurisdiction: json['jurisdiction'] != null
          ? CodeableConcept.fromJson(
              json['jurisdiction'] as Map<String, dynamic>,
            )
          : null,
      language: CodeableConcept.fromJson(
        json['language'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionCountryLanguage] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCountryLanguage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCountryLanguage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionCountryLanguage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionCountryLanguage cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionCountryLanguage] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
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

  @override
  String get fhirType => 'MedicinalProductDefinitionCountryLanguage';

  /// [country]
  /// Country code for where this name applies.
  final CodeableConcept country;

  /// [jurisdiction]
  /// Jurisdiction code for where this name applies. A jurisdiction may be a
  /// sub- or supra-national entity (e.g. a state or a geographic region).
  final CodeableConcept? jurisdiction;

  /// [language]
  /// Language code for this name.
  final CodeableConcept language;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['country'] = country.toJson();
    if (jurisdiction != null) {
      json['jurisdiction'] = jurisdiction!.toJson();
    }
    json['language'] = language.toJson();
    return json;
  }

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
    CodeableConcept? language,
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
}

/// [MedicinalProductDefinitionCrossReference]
/// Reference to another product, e.g. for linking authorised to
/// investigational product, or a virtual product.
class MedicinalProductDefinitionCrossReference extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionCrossReference]

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCrossReference.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductDefinitionCrossReference(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      product: CodeableReference.fromJson(
        json['product'] as Map<String, dynamic>,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicinalProductDefinitionCrossReference] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCrossReference.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCrossReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionCrossReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionCrossReference cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionCrossReference] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
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

  @override
  String get fhirType => 'MedicinalProductDefinitionCrossReference';

  /// [product]
  /// Reference to another product, e.g. for linking authorised to
  /// investigational product.
  final CodeableReference product;

  /// [type]
  /// The type of relationship, for instance branded to generic, virtual to
  /// actual product, product to development product (investigational),
  /// parallel import version.
  final CodeableConcept? type;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['product'] = product.toJson();
    if (type != null) {
      json['type'] = type!.toJson();
    }
    return json;
  }

  @override
  MedicinalProductDefinitionCrossReference clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCrossReference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? product,
    CodeableConcept? type,
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
}

/// [MedicinalProductDefinitionOperation]
/// A manufacturing or administrative process or step associated with (or
/// performed on) the medicinal product.
class MedicinalProductDefinitionOperation extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionOperation]

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionOperation.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductDefinitionOperation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableReference.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      effectiveDate: json['effectiveDate'] != null
          ? Period.fromJson(
              json['effectiveDate'] as Map<String, dynamic>,
            )
          : null,
      organization: json['organization'] != null
          ? (json['organization'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      confidentialityIndicator: json['confidentialityIndicator'] != null
          ? CodeableConcept.fromJson(
              json['confidentialityIndicator'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicinalProductDefinitionOperation] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionOperation.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionOperation cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionOperation] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicinalProductDefinitionOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionOperation';

  /// [type]
  /// The type of manufacturing operation e.g. manufacturing itself,
  /// re-packaging. For the authorization of this, a RegulatedAuthorization
  /// would point to the same plan or activity referenced here.
  final CodeableReference? type;

  /// [effectiveDate]
  /// Date range of applicability.
  final Period? effectiveDate;

  /// [organization]
  /// The organization or establishment responsible for (or associated with)
  /// the particular process or step, examples include the manufacturer,
  /// importer, agent.
  final List<Reference>? organization;

  /// [confidentialityIndicator]
  /// Specifies whether this particular business or manufacturing process is
  /// considered proprietary or confidential.
  final CodeableConcept? confidentialityIndicator;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (effectiveDate != null) {
      json['effectiveDate'] = effectiveDate!.toJson();
    }
    if (organization != null && organization!.isNotEmpty) {
      json['organization'] =
          organization!.map((Reference v) => v.toJson()).toList();
    }
    if (confidentialityIndicator != null) {
      json['confidentialityIndicator'] = confidentialityIndicator!.toJson();
    }
    return json;
  }

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
    CodeableConcept? confidentialityIndicator,
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
}

/// [MedicinalProductDefinitionCharacteristic]
/// Allows the key product features to be recorded, such as "sugar free",
/// "modified release", "parallel import".
class MedicinalProductDefinitionCharacteristic extends BackboneElement {
  /// Primary constructor for [MedicinalProductDefinitionCharacteristic]

  MedicinalProductDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,

    /// Extensions for [valueDate]
    this.valueDateElement,
    this.valueBoolean,

    /// Extensions for [valueBoolean]
    this.valueBooleanElement,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCharacteristic.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductDefinitionCharacteristic(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(
              json['_valueDate'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicinalProductDefinitionCharacteristic] from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicinalProductDefinitionCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicinalProductDefinitionCharacteristic cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicinalProductDefinitionCharacteristic] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
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

  @override
  String get fhirType => 'MedicinalProductDefinitionCharacteristic';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept]
  /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate]
  /// A value for the characteristic.
  final FhirDate? valueDate;

  /// Extensions for [valueDate]
  final Element? valueDateElement;

  /// [valueBoolean]
  /// A value for the characteristic.
  final FhirBoolean? valueBoolean;

  /// Extensions for [valueBoolean]
  final Element? valueBooleanElement;

  /// [valueAttachment]
  /// A value for the characteristic.
  final Attachment? valueAttachment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    return json;
  }

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
}
