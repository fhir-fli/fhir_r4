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
  /// Primary constructor for
  /// [MedicinalProductDefinition]

  const MedicinalProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.domain,
    this.version,
    this.status,
    this.statusDate,
    this.description,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,
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
  }) : super(
          resourceType: R4ResourceType.MedicinalProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      domain: JsonParser.parseObject<CodeableConcept>(
        json,
        'domain',
        CodeableConcept.fromJson,
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      combinedPharmaceuticalDoseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'combinedPharmaceuticalDoseForm',
        CodeableConcept.fromJson,
      ),
      route: (json['route'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      indication: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'indication',
        FhirMarkdown.fromJson,
      ),
      legalStatusOfSupply: JsonParser.parseObject<CodeableConcept>(
        json,
        'legalStatusOfSupply',
        CodeableConcept.fromJson,
      ),
      additionalMonitoringIndicator: JsonParser.parseObject<CodeableConcept>(
        json,
        'additionalMonitoringIndicator',
        CodeableConcept.fromJson,
      ),
      specialMeasures: (json['specialMeasures'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      pediatricUseIndicator: JsonParser.parseObject<CodeableConcept>(
        json,
        'pediatricUseIndicator',
        CodeableConcept.fromJson,
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatus>(
            (v) => MarketingStatus.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      packagedMedicinalProduct:
          (json['packagedMedicinalProduct'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      impurity: (json['impurity'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      masterFile: (json['masterFile'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionContact>(
            (v) => MedicinalProductDefinitionContact.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      clinicalTrial: (json['clinicalTrial'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>)
          .map<MedicinalProductDefinitionName>(
            (v) => MedicinalProductDefinitionName.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      crossReference: (json['crossReference'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCrossReference>(
            (v) => MedicinalProductDefinitionCrossReference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionOperation>(
            (v) => MedicinalProductDefinitionOperation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCharacteristic>(
            (v) => MedicinalProductDefinitionCharacteristic.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicinalProductDefinition]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinition.fromJsonString(
    String source,
  ) {
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

  /// [status]
  /// The status within the lifecycle of this product record. A high-level
  /// status, this is not intended to duplicate details carried elsewhere
  /// such as legal status, or authorization status.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;

  /// [description]
  /// General description of this product.
  final FhirMarkdown? description;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (domain != null) {
      json['domain'] = domain!.toJson();
    }

    if (version != null) {
      addField('version', version);
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (statusDate != null) {
      addField('statusDate', statusDate);
    }

    if (description != null) {
      addField('description', description);
    }

    if (combinedPharmaceuticalDoseForm != null) {
      json['combinedPharmaceuticalDoseForm'] =
          combinedPharmaceuticalDoseForm!.toJson();
    }

    if (route != null && route!.isNotEmpty) {
      json['route'] = route!.map((e) => e.toJson()).toList();
    }

    if (indication != null) {
      addField('indication', indication);
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
          specialMeasures!.map((e) => e.toJson()).toList();
    }

    if (pediatricUseIndicator != null) {
      json['pediatricUseIndicator'] = pediatricUseIndicator!.toJson();
    }

    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!.map((e) => e.toJson()).toList();
    }

    if (marketingStatus != null && marketingStatus!.isNotEmpty) {
      json['marketingStatus'] =
          marketingStatus!.map((e) => e.toJson()).toList();
    }

    if (packagedMedicinalProduct != null &&
        packagedMedicinalProduct!.isNotEmpty) {
      json['packagedMedicinalProduct'] =
          packagedMedicinalProduct!.map((e) => e.toJson()).toList();
    }

    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!.map((e) => e.toJson()).toList();
    }

    if (impurity != null && impurity!.isNotEmpty) {
      json['impurity'] = impurity!.map((e) => e.toJson()).toList();
    }

    if (attachedDocument != null && attachedDocument!.isNotEmpty) {
      json['attachedDocument'] =
          attachedDocument!.map((e) => e.toJson()).toList();
    }

    if (masterFile != null && masterFile!.isNotEmpty) {
      json['masterFile'] = masterFile!.map((e) => e.toJson()).toList();
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (clinicalTrial != null && clinicalTrial!.isNotEmpty) {
      json['clinicalTrial'] = clinicalTrial!.map((e) => e.toJson()).toList();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (name.isNotEmpty) {
      json['name'] = name.map((e) => e.toJson()).toList();
    }

    if (crossReference != null && crossReference!.isNotEmpty) {
      json['crossReference'] = crossReference!.map((e) => e.toJson()).toList();
    }

    if (operation != null && operation!.isNotEmpty) {
      json['operation'] = operation!.map((e) => e.toJson()).toList();
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    CodeableConcept? domain,
    FhirString? version,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    FhirMarkdown? description,
    CodeableConcept? combinedPharmaceuticalDoseForm,
    List<CodeableConcept>? route,
    FhirMarkdown? indication,
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
  }) {
    return MedicinalProductDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      domain: domain ?? this.domain,
      version: version ?? this.version,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      description: description ?? this.description,
      combinedPharmaceuticalDoseForm:
          combinedPharmaceuticalDoseForm ?? this.combinedPharmaceuticalDoseForm,
      route: route ?? this.route,
      indication: indication ?? this.indication,
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

/// [MedicinalProductDefinitionContact]
/// A product specific contact, person (in a role), or an organization.
class MedicinalProductDefinitionContact extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionContact]

  const MedicinalProductDefinitionContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.contact,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionContact.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionContact(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      contact: JsonParser.parseObject<Reference>(
        json,
        'contact',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [MedicinalProductDefinitionContact]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionContact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionContact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionContact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionContact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionContact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionContact.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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

/// [MedicinalProductDefinitionName]
/// The product's name, including full name and possibly coded parts.
class MedicinalProductDefinitionName extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionName]

  const MedicinalProductDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productName,
    this.type,
    this.namePart,
    this.countryLanguage,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionName.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionName(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productName: JsonParser.parsePrimitive<FhirString>(
        json,
        'productName',
        FhirString.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      namePart: (json['namePart'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionNamePart>(
            (v) => MedicinalProductDefinitionNamePart.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      countryLanguage: (json['countryLanguage'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCountryLanguage>(
            (v) => MedicinalProductDefinitionCountryLanguage.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicinalProductDefinitionName]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionName.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('productName', productName);
    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (namePart != null && namePart!.isNotEmpty) {
      json['namePart'] = namePart!.map((e) => e.toJson()).toList();
    }

    if (countryLanguage != null && countryLanguage!.isNotEmpty) {
      json['countryLanguage'] =
          countryLanguage!.map((e) => e.toJson()).toList();
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
    CodeableConcept? type,
    List<MedicinalProductDefinitionNamePart>? namePart,
    List<MedicinalProductDefinitionCountryLanguage>? countryLanguage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicinalProductDefinitionName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productName: productName ?? this.productName,
      type: type ?? this.type,
      namePart: namePart ?? this.namePart,
      countryLanguage: countryLanguage ?? this.countryLanguage,
    );
  }
}

/// [MedicinalProductDefinitionNamePart]
/// Coding words or phrases of the name.
class MedicinalProductDefinitionNamePart extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionNamePart]

  const MedicinalProductDefinitionNamePart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.part_,
    required this.type,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionNamePart.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionNamePart(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      part_: JsonParser.parsePrimitive<FhirString>(
        json,
        'part',
        FhirString.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [MedicinalProductDefinitionNamePart]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionNamePart.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionNamePart.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionNamePart.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionNamePart '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionNamePart]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionNamePart.fromJsonString(
    String source,
  ) {
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

  /// [type]
  /// Identifying type for this part of the name (e.g. strength part).
  final CodeableConcept type;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('part', part_);
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
    CodeableConcept? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicinalProductDefinitionNamePart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      part_: part_ ?? this.part_,
      type: type ?? this.type,
    );
  }
}

/// [MedicinalProductDefinitionCountryLanguage]
/// Country and jurisdiction where the name applies, and associated
/// language.
class MedicinalProductDefinitionCountryLanguage extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionCountryLanguage]

  const MedicinalProductDefinitionCountryLanguage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCountryLanguage.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionCountryLanguage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      country: JsonParser.parseObject<CodeableConcept>(
        json,
        'country',
        CodeableConcept.fromJson,
      )!,
      jurisdiction: JsonParser.parseObject<CodeableConcept>(
        json,
        'jurisdiction',
        CodeableConcept.fromJson,
      ),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [MedicinalProductDefinitionCountryLanguage]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCountryLanguage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionCountryLanguage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionCountryLanguage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionCountryLanguage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionCountryLanguage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionCountryLanguage.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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

/// [MedicinalProductDefinitionCrossReference]
/// Reference to another product, e.g. for linking authorised to
/// investigational product, or a virtual product.
class MedicinalProductDefinitionCrossReference extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionCrossReference]

  const MedicinalProductDefinitionCrossReference({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.product,
    this.type,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCrossReference.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionCrossReference(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      product: JsonParser.parseObject<CodeableReference>(
        json,
        'product',
        CodeableReference.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionCrossReference]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCrossReference.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionCrossReference.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionCrossReference.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionCrossReference '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionCrossReference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionCrossReference.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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

/// [MedicinalProductDefinitionOperation]
/// A manufacturing or administrative process or step associated with (or
/// performed on) the medicinal product.
class MedicinalProductDefinitionOperation extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionOperation]

  const MedicinalProductDefinitionOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionOperation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableReference>(
        json,
        'type',
        CodeableReference.fromJson,
      ),
      effectiveDate: JsonParser.parseObject<Period>(
        json,
        'effectiveDate',
        Period.fromJson,
      ),
      organization: (json['organization'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      confidentialityIndicator: JsonParser.parseObject<CodeableConcept>(
        json,
        'confidentialityIndicator',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionOperation]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionOperation.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (effectiveDate != null) {
      json['effectiveDate'] = effectiveDate!.toJson();
    }

    if (organization != null && organization!.isNotEmpty) {
      json['organization'] = organization!.map((e) => e.toJson()).toList();
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

/// [MedicinalProductDefinitionCharacteristic]
/// Allows the key product features to be recorded, such as "sugar free",
/// "modified release", "parallel import".
class MedicinalProductDefinitionCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [MedicinalProductDefinitionCharacteristic]

  const MedicinalProductDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicinalProductDefinitionCharacteristic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicinalProductDefinitionCharacteristic>(json, {
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueDate': FhirDate.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
        'valueAttachment': Attachment.fromJson,
      }),
    );
  }

  /// Deserialize [MedicinalProductDefinitionCharacteristic]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionCharacteristic.fromJsonString(
    String source,
  ) {
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

  /// [valueX]
  /// A value for the characteristic.
  final ValueXMedicinalProductDefinitionCharacteristic? valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (valueX != null) {
      json['value${valueX!.fhirType.capitalize()}'] = valueX!.toJson();
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
    ValueXMedicinalProductDefinitionCharacteristic? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicinalProductDefinitionCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
    );
  }
}
