import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        MedicinalProductDefinition,
        MedicinalProductDefinitionCharacteristic,
        MedicinalProductDefinitionContact,
        MedicinalProductDefinitionCountryLanguage,
        MedicinalProductDefinitionCrossReference,
        MedicinalProductDefinitionName,
        MedicinalProductDefinitionNamePart,
        MedicinalProductDefinitionOperation,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MedicinalProductDefinitionBuilder]
/// A medicinal product, being a substance or combination of substances
/// that is intended to treat, prevent or diagnose a disease, or to
/// restore, correct or modify physiological functions by exerting a
/// pharmacological, immunological or metabolic action. This resource is
/// intended to define and detail such products and their properties, for
/// uses other than direct patient care (e.g. regulatory use, or drug
/// catalogs).
class MedicinalProductDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionBuilder]

  MedicinalProductDefinitionBuilder({
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
    this.name,
    this.crossReference,
    this.operation,
    this.characteristic,
  }) : super(
          objectPath: 'MedicinalProductDefinition',
          resourceType: R4ResourceType.MedicinalProductDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionBuilder.empty() =>
      MedicinalProductDefinitionBuilder(
        name: <MedicinalProductDefinitionNameBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition';
    return MedicinalProductDefinitionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      domain: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'domain',
        CodeableConceptBuilder.fromJson,
        '$objectPath.domain',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'statusDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.statusDate',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      combinedPharmaceuticalDoseForm:
          JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'combinedPharmaceuticalDoseForm',
        CodeableConceptBuilder.fromJson,
        '$objectPath.combinedPharmaceuticalDoseForm',
      ),
      route: (json['route'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.route',
              },
            ),
          )
          .toList(),
      indication: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'indication',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.indication',
      ),
      legalStatusOfSupply: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'legalStatusOfSupply',
        CodeableConceptBuilder.fromJson,
        '$objectPath.legalStatusOfSupply',
      ),
      additionalMonitoringIndicator:
          JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'additionalMonitoringIndicator',
        CodeableConceptBuilder.fromJson,
        '$objectPath.additionalMonitoringIndicator',
      ),
      specialMeasures: (json['specialMeasures'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialMeasures',
              },
            ),
          )
          .toList(),
      pediatricUseIndicator: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'pediatricUseIndicator',
        CodeableConceptBuilder.fromJson,
        '$objectPath.pediatricUseIndicator',
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatusBuilder>(
            (v) => MarketingStatusBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.marketingStatus',
              },
            ),
          )
          .toList(),
      packagedMedicinalProduct:
          (json['packagedMedicinalProduct'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.packagedMedicinalProduct',
                  },
                ),
              )
              .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      impurity: (json['impurity'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.impurity',
              },
            ),
          )
          .toList(),
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attachedDocument',
              },
            ),
          )
          .toList(),
      masterFile: (json['masterFile'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.masterFile',
              },
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionContactBuilder>(
            (v) => MedicinalProductDefinitionContactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      clinicalTrial: (json['clinicalTrial'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.clinicalTrial',
              },
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionNameBuilder>(
            (v) => MedicinalProductDefinitionNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      crossReference: (json['crossReference'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCrossReferenceBuilder>(
            (v) => MedicinalProductDefinitionCrossReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.crossReference',
              },
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionOperationBuilder>(
            (v) => MedicinalProductDefinitionOperationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.operation',
              },
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCharacteristicBuilder>(
            (v) => MedicinalProductDefinitionCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicinalProductDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// Regulatory type, e.g. Investigational or Authorized.
  CodeableConceptBuilder? type;

  /// [domain]
  /// If this medicine applies to human or veterinary uses.
  CodeableConceptBuilder? domain;

  /// [version]
  /// A business identifier relating to a specific version of the product,
  /// this is commonly used to support revisions to an existing product.
  FhirStringBuilder? version;

  /// [status]
  /// The status within the lifecycle of this product record. A high-level
  /// status, this is not intended to duplicate details carried elsewhere
  /// such as legal status, or authorization status.
  CodeableConceptBuilder? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  FhirDateTimeBuilder? statusDate;

  /// [description]
  /// General description of this product.
  FhirMarkdownBuilder? description;

  /// [combinedPharmaceuticalDoseForm]
  /// The dose form for a single part product, or combined form of a multiple
  /// part product. This is one concept that describes all the components. It
  /// does not represent the form with components physically mixed, if that
  /// might be necessary, for which see
  /// (AdministrableProductDefinition.administrableDoseForm).
  CodeableConceptBuilder? combinedPharmaceuticalDoseForm;

  /// [route]
  /// The path by which the product is taken into or makes contact with the
  /// body. In some regions this is referred to as the licenced or approved
  /// route. See also AdministrableProductDefinition resource.
  /// MedicinalProductDefinition.route is the same concept as
  /// AdministrableProductDefinition.routeOfAdministration.code, and they
  /// cannot be used together.
  List<CodeableConceptBuilder>? route;

  /// [indication]
  /// Description of indication(s) for this product, used when structured
  /// indications are not required. In cases where structured indications are
  /// required, they are captured using the ClinicalUseDefinition resource.
  /// An indication is a medical situation for which using the product is
  /// appropriate.
  FhirMarkdownBuilder? indication;

  /// [legalStatusOfSupply]
  /// The legal status of supply of the medicinal product as classified by
  /// the regulator.
  CodeableConceptBuilder? legalStatusOfSupply;

  /// [additionalMonitoringIndicator]
  /// Whether the Medicinal Product is subject to additional monitoring for
  /// regulatory reasons, such as heightened reporting requirements.
  CodeableConceptBuilder? additionalMonitoringIndicator;

  /// [specialMeasures]
  /// Whether the Medicinal Product is subject to special measures for
  /// regulatory reasons, such as a requirement to conduct post-authorisation
  /// studies.
  List<CodeableConceptBuilder>? specialMeasures;

  /// [pediatricUseIndicator]
  /// If authorised for use in children, or infants, neonates etc.
  CodeableConceptBuilder? pediatricUseIndicator;

  /// [classification]
  /// Allows the product to be classified by various systems, commonly WHO
  /// ATC.
  List<CodeableConceptBuilder>? classification;

  /// [marketingStatus]
  /// Marketing status of the medicinal product, in contrast to marketing
  /// authorization. This refers to the product being actually 'on the
  /// market' as opposed to being allowed to be on the market (which is an
  /// authorization).
  List<MarketingStatusBuilder>? marketingStatus;

  /// [packagedMedicinalProduct]
  /// Package type for the product. See also the PackagedProductDefinition
  /// resource.
  List<CodeableConceptBuilder>? packagedMedicinalProduct;

  /// [ingredient]
  /// The ingredients of this medicinal product - when not detailed in other
  /// resources. This is only needed if the ingredients are not specified by
  /// incoming references from the Ingredient resource, or indirectly via
  /// incoming AdministrableProductDefinition, PackagedProductDefinition or
  /// ManufacturedItemDefinition references. In cases where those levels of
  /// detail are not used, the ingredients may be specified directly here as
  /// codes.
  List<CodeableConceptBuilder>? ingredient;

  /// [impurity]
  /// Any component of the drug product which is not the chemical entity
  /// defined as the drug substance, or an excipient in the drug product.
  /// This includes process-related impurities and contaminants,
  /// product-related impurities including degradation products.
  List<CodeableReferenceBuilder>? impurity;

  /// [attachedDocument]
  /// Additional information or supporting documentation about the medicinal
  /// product.
  List<ReferenceBuilder>? attachedDocument;

  /// [masterFile]
  /// A master file for the medicinal product (e.g. Pharmacovigilance System
  /// Master File). Drug master files (DMFs) are documents submitted to
  /// regulatory agencies to provide confidential detailed information about
  /// facilities, processes or articles used in the manufacturing,
  /// processing, packaging and storing of drug products.
  List<ReferenceBuilder>? masterFile;

  /// [contact]
  /// A product specific contact, person (in a role), or an organization.
  List<MedicinalProductDefinitionContactBuilder>? contact;

  /// [clinicalTrial]
  /// Clinical trials or studies that this product is involved in.
  List<ReferenceBuilder>? clinicalTrial;

  /// [code]
  /// A code that this product is known by, usually within some formal
  /// terminology, perhaps assigned by a third party (i.e. not the
  /// manufacturer or regulator). Products (types of medications) tend to be
  /// known by identifiers during development and within regulatory process.
  /// However when they are prescribed they tend to be identified by codes.
  /// The same product may be have multiple codes, applied to it by multiple
  /// organizations.
  List<CodingBuilder>? code;

  /// [name]
  /// The product's name, including full name and possibly coded parts.
  List<MedicinalProductDefinitionNameBuilder>? name;

  /// [crossReference]
  /// Reference to another product, e.g. for linking authorised to
  /// investigational product, or a virtual product.
  List<MedicinalProductDefinitionCrossReferenceBuilder>? crossReference;

  /// [operation]
  /// A manufacturing or administrative process or step associated with (or
  /// performed on) the medicinal product.
  List<MedicinalProductDefinitionOperationBuilder>? operation;

  /// [characteristic]
  /// Allows the key product features to be recorded, such as "sugar free",
  /// "modified release", "parallel import".
  List<MedicinalProductDefinitionCharacteristicBuilder>? characteristic;

  /// Converts a [MedicinalProductDefinitionBuilder]
  /// to [MedicinalProductDefinition]
  @override
  MedicinalProductDefinition build() =>
      MedicinalProductDefinition.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('type', type);
    addField('domain', domain);
    addField('version', version);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('description', description);
    addField('combinedPharmaceuticalDoseForm', combinedPharmaceuticalDoseForm);
    addField('route', route);
    addField('indication', indication);
    addField('legalStatusOfSupply', legalStatusOfSupply);
    addField('additionalMonitoringIndicator', additionalMonitoringIndicator);
    addField('specialMeasures', specialMeasures);
    addField('pediatricUseIndicator', pediatricUseIndicator);
    addField('classification', classification);
    addField('marketingStatus', marketingStatus);
    addField('packagedMedicinalProduct', packagedMedicinalProduct);
    addField('ingredient', ingredient);
    addField('impurity', impurity);
    addField('attachedDocument', attachedDocument);
    addField('masterFile', masterFile);
    addField('contact', contact);
    addField('clinicalTrial', clinicalTrial);
    addField('code', code);
    addField('name', name);
    addField('crossReference', crossReference);
    addField('operation', operation);
    addField('characteristic', characteristic);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'domain',
      'version',
      'status',
      'statusDate',
      'description',
      'combinedPharmaceuticalDoseForm',
      'route',
      'indication',
      'legalStatusOfSupply',
      'additionalMonitoringIndicator',
      'specialMeasures',
      'pediatricUseIndicator',
      'classification',
      'marketingStatus',
      'packagedMedicinalProduct',
      'ingredient',
      'impurity',
      'attachedDocument',
      'masterFile',
      'contact',
      'clinicalTrial',
      'code',
      'name',
      'crossReference',
      'operation',
      'characteristic',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'domain':
        if (domain != null) {
          fields.add(domain!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'combinedPharmaceuticalDoseForm':
        if (combinedPharmaceuticalDoseForm != null) {
          fields.add(combinedPharmaceuticalDoseForm!);
        }
      case 'route':
        if (route != null) {
          fields.addAll(route!);
        }
      case 'indication':
        if (indication != null) {
          fields.add(indication!);
        }
      case 'legalStatusOfSupply':
        if (legalStatusOfSupply != null) {
          fields.add(legalStatusOfSupply!);
        }
      case 'additionalMonitoringIndicator':
        if (additionalMonitoringIndicator != null) {
          fields.add(additionalMonitoringIndicator!);
        }
      case 'specialMeasures':
        if (specialMeasures != null) {
          fields.addAll(specialMeasures!);
        }
      case 'pediatricUseIndicator':
        if (pediatricUseIndicator != null) {
          fields.add(pediatricUseIndicator!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'marketingStatus':
        if (marketingStatus != null) {
          fields.addAll(marketingStatus!);
        }
      case 'packagedMedicinalProduct':
        if (packagedMedicinalProduct != null) {
          fields.addAll(packagedMedicinalProduct!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'impurity':
        if (impurity != null) {
          fields.addAll(impurity!);
        }
      case 'attachedDocument':
        if (attachedDocument != null) {
          fields.addAll(attachedDocument!);
        }
      case 'masterFile':
        if (masterFile != null) {
          fields.addAll(masterFile!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'clinicalTrial':
        if (clinicalTrial != null) {
          fields.addAll(clinicalTrial!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'crossReference':
        if (crossReference != null) {
          fields.addAll(crossReference!);
        }
      case 'operation':
        if (operation != null) {
          fields.addAll(operation!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'domain':
        {
          if (child is CodeableConceptBuilder) {
            domain = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusDate':
        {
          if (child is FhirDateTimeBuilder) {
            statusDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                statusDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'combinedPharmaceuticalDoseForm':
        {
          if (child is CodeableConceptBuilder) {
            combinedPharmaceuticalDoseForm = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'route':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            route = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            route = [
              ...(route ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indication':
        {
          if (child is FhirMarkdownBuilder) {
            indication = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                indication = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'legalStatusOfSupply':
        {
          if (child is CodeableConceptBuilder) {
            legalStatusOfSupply = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additionalMonitoringIndicator':
        {
          if (child is CodeableConceptBuilder) {
            additionalMonitoringIndicator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specialMeasures':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialMeasures = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialMeasures = [
              ...(specialMeasures ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'pediatricUseIndicator':
        {
          if (child is CodeableConceptBuilder) {
            pediatricUseIndicator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classification':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classification = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classification = [
              ...(classification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'marketingStatus':
        {
          if (child is List<MarketingStatusBuilder>) {
            // Replace or create new list
            marketingStatus = child;
            return;
          } else if (child is MarketingStatusBuilder) {
            // Add single element to existing list or create new list
            marketingStatus = [
              ...(marketingStatus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packagedMedicinalProduct':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            packagedMedicinalProduct = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            packagedMedicinalProduct = [
              ...(packagedMedicinalProduct ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ingredient':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            ingredient = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            ingredient = [
              ...(ingredient ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'impurity':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            impurity = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            impurity = [
              ...(impurity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attachedDocument':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            attachedDocument = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            attachedDocument = [
              ...(attachedDocument ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'masterFile':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            masterFile = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            masterFile = [
              ...(masterFile ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<MedicinalProductDefinitionContactBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is MedicinalProductDefinitionContactBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'clinicalTrial':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            clinicalTrial = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            clinicalTrial = [
              ...(clinicalTrial ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<MedicinalProductDefinitionNameBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is MedicinalProductDefinitionNameBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'crossReference':
        {
          if (child is List<MedicinalProductDefinitionCrossReferenceBuilder>) {
            // Replace or create new list
            crossReference = child;
            return;
          } else if (child is MedicinalProductDefinitionCrossReferenceBuilder) {
            // Add single element to existing list or create new list
            crossReference = [
              ...(crossReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is List<MedicinalProductDefinitionOperationBuilder>) {
            // Replace or create new list
            operation = child;
            return;
          } else if (child is MedicinalProductDefinitionOperationBuilder) {
            // Add single element to existing list or create new list
            operation = [
              ...(operation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristic':
        {
          if (child is List<MedicinalProductDefinitionCharacteristicBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is MedicinalProductDefinitionCharacteristicBuilder) {
            // Add single element to existing list or create new list
            characteristic = [
              ...(characteristic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'domain':
        return ['CodeableConceptBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'statusDate':
        return ['FhirDateTimeBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'combinedPharmaceuticalDoseForm':
        return ['CodeableConceptBuilder'];
      case 'route':
        return ['CodeableConceptBuilder'];
      case 'indication':
        return ['FhirMarkdownBuilder'];
      case 'legalStatusOfSupply':
        return ['CodeableConceptBuilder'];
      case 'additionalMonitoringIndicator':
        return ['CodeableConceptBuilder'];
      case 'specialMeasures':
        return ['CodeableConceptBuilder'];
      case 'pediatricUseIndicator':
        return ['CodeableConceptBuilder'];
      case 'classification':
        return ['CodeableConceptBuilder'];
      case 'marketingStatus':
        return ['MarketingStatusBuilder'];
      case 'packagedMedicinalProduct':
        return ['CodeableConceptBuilder'];
      case 'ingredient':
        return ['CodeableConceptBuilder'];
      case 'impurity':
        return ['CodeableReferenceBuilder'];
      case 'attachedDocument':
        return ['ReferenceBuilder'];
      case 'masterFile':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['MedicinalProductDefinitionContactBuilder'];
      case 'clinicalTrial':
        return ['ReferenceBuilder'];
      case 'code':
        return ['CodingBuilder'];
      case 'name':
        return ['MedicinalProductDefinitionNameBuilder'];
      case 'crossReference':
        return ['MedicinalProductDefinitionCrossReferenceBuilder'];
      case 'operation':
        return ['MedicinalProductDefinitionOperationBuilder'];
      case 'characteristic':
        return ['MedicinalProductDefinitionCharacteristicBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'domain':
        {
          domain = CodeableConceptBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'statusDate':
        {
          statusDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'combinedPharmaceuticalDoseForm':
        {
          combinedPharmaceuticalDoseForm = CodeableConceptBuilder.empty();
          return;
        }
      case 'route':
        {
          route = <CodeableConceptBuilder>[];
          return;
        }
      case 'indication':
        {
          indication = FhirMarkdownBuilder.empty();
          return;
        }
      case 'legalStatusOfSupply':
        {
          legalStatusOfSupply = CodeableConceptBuilder.empty();
          return;
        }
      case 'additionalMonitoringIndicator':
        {
          additionalMonitoringIndicator = CodeableConceptBuilder.empty();
          return;
        }
      case 'specialMeasures':
        {
          specialMeasures = <CodeableConceptBuilder>[];
          return;
        }
      case 'pediatricUseIndicator':
        {
          pediatricUseIndicator = CodeableConceptBuilder.empty();
          return;
        }
      case 'classification':
        {
          classification = <CodeableConceptBuilder>[];
          return;
        }
      case 'marketingStatus':
        {
          marketingStatus = <MarketingStatusBuilder>[];
          return;
        }
      case 'packagedMedicinalProduct':
        {
          packagedMedicinalProduct = <CodeableConceptBuilder>[];
          return;
        }
      case 'ingredient':
        {
          ingredient = <CodeableConceptBuilder>[];
          return;
        }
      case 'impurity':
        {
          impurity = <CodeableReferenceBuilder>[];
          return;
        }
      case 'attachedDocument':
        {
          attachedDocument = <ReferenceBuilder>[];
          return;
        }
      case 'masterFile':
        {
          masterFile = <ReferenceBuilder>[];
          return;
        }
      case 'contact':
        {
          contact = <MedicinalProductDefinitionContactBuilder>[];
          return;
        }
      case 'clinicalTrial':
        {
          clinicalTrial = <ReferenceBuilder>[];
          return;
        }
      case 'code':
        {
          code = <CodingBuilder>[];
          return;
        }
      case 'name':
        {
          name = <MedicinalProductDefinitionNameBuilder>[];
          return;
        }
      case 'crossReference':
        {
          crossReference = <MedicinalProductDefinitionCrossReferenceBuilder>[];
          return;
        }
      case 'operation':
        {
          operation = <MedicinalProductDefinitionOperationBuilder>[];
          return;
        }
      case 'characteristic':
        {
          characteristic = <MedicinalProductDefinitionCharacteristicBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionBuilder clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? domain,
    FhirStringBuilder? version,
    CodeableConceptBuilder? status,
    FhirDateTimeBuilder? statusDate,
    FhirMarkdownBuilder? description,
    CodeableConceptBuilder? combinedPharmaceuticalDoseForm,
    List<CodeableConceptBuilder>? route,
    FhirMarkdownBuilder? indication,
    CodeableConceptBuilder? legalStatusOfSupply,
    CodeableConceptBuilder? additionalMonitoringIndicator,
    List<CodeableConceptBuilder>? specialMeasures,
    CodeableConceptBuilder? pediatricUseIndicator,
    List<CodeableConceptBuilder>? classification,
    List<MarketingStatusBuilder>? marketingStatus,
    List<CodeableConceptBuilder>? packagedMedicinalProduct,
    List<CodeableConceptBuilder>? ingredient,
    List<CodeableReferenceBuilder>? impurity,
    List<ReferenceBuilder>? attachedDocument,
    List<ReferenceBuilder>? masterFile,
    List<MedicinalProductDefinitionContactBuilder>? contact,
    List<ReferenceBuilder>? clinicalTrial,
    List<CodingBuilder>? code,
    List<MedicinalProductDefinitionNameBuilder>? name,
    List<MedicinalProductDefinitionCrossReferenceBuilder>? crossReference,
    List<MedicinalProductDefinitionOperationBuilder>? operation,
    List<MedicinalProductDefinitionCharacteristicBuilder>? characteristic,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicinalProductDefinitionBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      combinedPharmaceuticalDoseForm,
      o.combinedPharmaceuticalDoseForm,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      route,
      o.route,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      legalStatusOfSupply,
      o.legalStatusOfSupply,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      additionalMonitoringIndicator,
      o.additionalMonitoringIndicator,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialMeasures,
      o.specialMeasures,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      pediatricUseIndicator,
      o.pediatricUseIndicator,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!listEquals<MarketingStatusBuilder>(
      marketingStatus,
      o.marketingStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      packagedMedicinalProduct,
      o.packagedMedicinalProduct,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      impurity,
      o.impurity,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      attachedDocument,
      o.attachedDocument,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      masterFile,
      o.masterFile,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionContactBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      clinicalTrial,
      o.clinicalTrial,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionNameBuilder>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionCrossReferenceBuilder>(
      crossReference,
      o.crossReference,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionOperationBuilder>(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionCharacteristicBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionContactBuilder]
/// A product specific contact, person (in a role), or an organization.
class MedicinalProductDefinitionContactBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionContactBuilder]

  MedicinalProductDefinitionContactBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.contact,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicinalProductDefinition.contact',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionContactBuilder.empty() =>
      MedicinalProductDefinitionContactBuilder(
        contact: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionContactBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.contact';
    return MedicinalProductDefinitionContactBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      contact: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'contact',
        ReferenceBuilder.fromJson,
        '$objectPath.contact',
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionContactBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionContactBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionContactBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionContactBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionContactBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionContactBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionContactBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionContactBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionContact';

  /// [type]
  /// Allows the contact to be classified, for example QPPV,
  /// Pharmacovigilance Enquiry Information.
  CodeableConceptBuilder? type;

  /// [contact]
  /// A product specific contact, person (in a role), or an organization.
  ReferenceBuilder? contact;

  /// Converts a [MedicinalProductDefinitionContactBuilder]
  /// to [MedicinalProductDefinitionContact]
  @override
  MedicinalProductDefinitionContact build() =>
      MedicinalProductDefinitionContact.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionContactBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('contact', contact);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'contact',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'contact':
        if (contact != null) {
          fields.add(contact!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is ReferenceBuilder) {
            contact = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'contact':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionContactBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionContactBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionContactBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ReferenceBuilder? contact,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionContactBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      contact: contact ?? this.contact,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionContactBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contact,
      o.contact,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionNameBuilder]
/// The product's name, including full name and possibly coded parts.
class MedicinalProductDefinitionNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionNameBuilder]

  MedicinalProductDefinitionNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.productName,
    this.type,
    this.namePart,
    this.countryLanguage,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicinalProductDefinition.name',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionNameBuilder.empty() =>
      MedicinalProductDefinitionNameBuilder(
        productName: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.name';
    return MedicinalProductDefinitionNameBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      productName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'productName',
        FhirStringBuilder.fromJson,
        '$objectPath.productName',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      namePart: (json['namePart'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionNamePartBuilder>(
            (v) => MedicinalProductDefinitionNamePartBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.namePart',
              },
            ),
          )
          .toList(),
      countryLanguage: (json['countryLanguage'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCountryLanguageBuilder>(
            (v) => MedicinalProductDefinitionCountryLanguageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.countryLanguage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicinalProductDefinitionNameBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionName';

  /// [productName]
  /// The full product name.
  FhirStringBuilder? productName;

  /// [type]
  /// Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.
  CodeableConceptBuilder? type;

  /// [namePart]
  /// Coding words or phrases of the name.
  List<MedicinalProductDefinitionNamePartBuilder>? namePart;

  /// [countryLanguage]
  /// Country and jurisdiction where the name applies, and associated
  /// language.
  List<MedicinalProductDefinitionCountryLanguageBuilder>? countryLanguage;

  /// Converts a [MedicinalProductDefinitionNameBuilder]
  /// to [MedicinalProductDefinitionName]
  @override
  MedicinalProductDefinitionName build() =>
      MedicinalProductDefinitionName.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionNameBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('productName', productName);
    addField('type', type);
    addField('namePart', namePart);
    addField('countryLanguage', countryLanguage);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'productName',
      'type',
      'namePart',
      'countryLanguage',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'productName':
        if (productName != null) {
          fields.add(productName!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'namePart':
        if (namePart != null) {
          fields.addAll(namePart!);
        }
      case 'countryLanguage':
        if (countryLanguage != null) {
          fields.addAll(countryLanguage!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productName':
        {
          if (child is FhirStringBuilder) {
            productName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                productName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'namePart':
        {
          if (child is List<MedicinalProductDefinitionNamePartBuilder>) {
            // Replace or create new list
            namePart = child;
            return;
          } else if (child is MedicinalProductDefinitionNamePartBuilder) {
            // Add single element to existing list or create new list
            namePart = [
              ...(namePart ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'countryLanguage':
        {
          if (child is List<MedicinalProductDefinitionCountryLanguageBuilder>) {
            // Replace or create new list
            countryLanguage = child;
            return;
          } else if (child
              is MedicinalProductDefinitionCountryLanguageBuilder) {
            // Add single element to existing list or create new list
            countryLanguage = [
              ...(countryLanguage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'productName':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'namePart':
        return ['MedicinalProductDefinitionNamePartBuilder'];
      case 'countryLanguage':
        return ['MedicinalProductDefinitionCountryLanguageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionNameBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'productName':
        {
          productName = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'namePart':
        {
          namePart = <MedicinalProductDefinitionNamePartBuilder>[];
          return;
        }
      case 'countryLanguage':
        {
          countryLanguage =
              <MedicinalProductDefinitionCountryLanguageBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionNameBuilder clone() => throw UnimplementedError();
  @override
  MedicinalProductDefinitionNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? productName,
    CodeableConceptBuilder? type,
    List<MedicinalProductDefinitionNamePartBuilder>? namePart,
    List<MedicinalProductDefinitionCountryLanguageBuilder>? countryLanguage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionNameBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productName: productName ?? this.productName,
      type: type ?? this.type,
      namePart: namePart ?? this.namePart,
      countryLanguage: countryLanguage ?? this.countryLanguage,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionNameBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productName,
      o.productName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionNamePartBuilder>(
      namePart,
      o.namePart,
    )) {
      return false;
    }
    if (!listEquals<MedicinalProductDefinitionCountryLanguageBuilder>(
      countryLanguage,
      o.countryLanguage,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionNamePartBuilder]
/// Coding words or phrases of the name.
class MedicinalProductDefinitionNamePartBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionNamePartBuilder]

  MedicinalProductDefinitionNamePartBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.part_,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicinalProductDefinition.name.namePart',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionNamePartBuilder.empty() =>
      MedicinalProductDefinitionNamePartBuilder(
        part_: FhirStringBuilder.empty(),
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionNamePartBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.name.namePart';
    return MedicinalProductDefinitionNamePartBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      part_: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'part',
        FhirStringBuilder.fromJson,
        '$objectPath.part',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionNamePartBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionNamePartBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionNamePartBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionNamePartBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionNamePartBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionNamePartBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionNamePartBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionNamePartBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionNamePart';

  /// [part_]
  /// A fragment of a product name.
  FhirStringBuilder? part_;

  /// [type]
  /// Identifying type for this part of the name (e.g. strength part).
  CodeableConceptBuilder? type;

  /// Converts a [MedicinalProductDefinitionNamePartBuilder]
  /// to [MedicinalProductDefinitionNamePart]
  @override
  MedicinalProductDefinitionNamePart build() =>
      MedicinalProductDefinitionNamePart.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionNamePartBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('part', part_);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'part',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'part':
        if (part_ != null) {
          fields.add(part_!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'part':
        {
          if (child is FhirStringBuilder) {
            part_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                part_ = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'part':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionNamePartBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'part':
        {
          part_ = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionNamePartBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionNamePartBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? part_,
    CodeableConceptBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionNamePartBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      part_: part_ ?? this.part_,
      type: type ?? this.type,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionNamePartBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      part_,
      o.part_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionCountryLanguageBuilder]
/// Country and jurisdiction where the name applies, and associated
/// language.
class MedicinalProductDefinitionCountryLanguageBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionCountryLanguageBuilder]

  MedicinalProductDefinitionCountryLanguageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.country,
    this.jurisdiction,
    this.language,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicinalProductDefinition.name.countryLanguage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionCountryLanguageBuilder.empty() =>
      MedicinalProductDefinitionCountryLanguageBuilder(
        country: CodeableConceptBuilder.empty(),
        language: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCountryLanguageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.name.countryLanguage';
    return MedicinalProductDefinitionCountryLanguageBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      country: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'country',
        CodeableConceptBuilder.fromJson,
        '$objectPath.country',
      ),
      jurisdiction: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'jurisdiction',
        CodeableConceptBuilder.fromJson,
        '$objectPath.jurisdiction',
      ),
      language: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'language',
        CodeableConceptBuilder.fromJson,
        '$objectPath.language',
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionCountryLanguageBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCountryLanguageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionCountryLanguageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionCountryLanguageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionCountryLanguageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionCountryLanguageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionCountryLanguageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionCountryLanguageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionCountryLanguage';

  /// [country]
  /// Country code for where this name applies.
  CodeableConceptBuilder? country;

  /// [jurisdiction]
  /// Jurisdiction code for where this name applies. A jurisdiction may be a
  /// sub- or supra-national entity (e.g. a state or a geographic region).
  CodeableConceptBuilder? jurisdiction;

  /// [language]
  /// Language code for this name.
  CodeableConceptBuilder? language;

  /// Converts a [MedicinalProductDefinitionCountryLanguageBuilder]
  /// to [MedicinalProductDefinitionCountryLanguage]
  @override
  MedicinalProductDefinitionCountryLanguage build() =>
      MedicinalProductDefinitionCountryLanguage.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionCountryLanguageBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('country', country);
    addField('jurisdiction', jurisdiction);
    addField('language', language);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'country',
      'jurisdiction',
      'language',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'country':
        if (country != null) {
          fields.add(country!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'country':
        {
          if (child is CodeableConceptBuilder) {
            country = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is CodeableConceptBuilder) {
            jurisdiction = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CodeableConceptBuilder) {
            language = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'country':
        return ['CodeableConceptBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'language':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionCountryLanguageBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'country':
        {
          country = CodeableConceptBuilder.empty();
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = CodeableConceptBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionCountryLanguageBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCountryLanguageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? country,
    CodeableConceptBuilder? jurisdiction,
    CodeableConceptBuilder? language,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionCountryLanguageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      country: country ?? this.country,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionCountryLanguageBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      country,
      o.country,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionCrossReferenceBuilder]
/// Reference to another product, e.g. for linking authorised to
/// investigational product, or a virtual product.
class MedicinalProductDefinitionCrossReferenceBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionCrossReferenceBuilder]

  MedicinalProductDefinitionCrossReferenceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.product,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicinalProductDefinition.crossReference',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionCrossReferenceBuilder.empty() =>
      MedicinalProductDefinitionCrossReferenceBuilder(
        product: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCrossReferenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.crossReference';
    return MedicinalProductDefinitionCrossReferenceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      product: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'product',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.product',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionCrossReferenceBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCrossReferenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionCrossReferenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionCrossReferenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionCrossReferenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionCrossReferenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionCrossReferenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionCrossReferenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionCrossReference';

  /// [product]
  /// Reference to another product, e.g. for linking authorised to
  /// investigational product.
  CodeableReferenceBuilder? product;

  /// [type]
  /// The type of relationship, for instance branded to generic, virtual to
  /// actual product, product to development product (investigational),
  /// parallel import version.
  CodeableConceptBuilder? type;

  /// Converts a [MedicinalProductDefinitionCrossReferenceBuilder]
  /// to [MedicinalProductDefinitionCrossReference]
  @override
  MedicinalProductDefinitionCrossReference build() =>
      MedicinalProductDefinitionCrossReference.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionCrossReferenceBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('product', product);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'product',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'product':
        if (product != null) {
          fields.add(product!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'product':
        {
          if (child is CodeableReferenceBuilder) {
            product = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'product':
        return ['CodeableReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionCrossReferenceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'product':
        {
          product = CodeableReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionCrossReferenceBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCrossReferenceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? product,
    CodeableConceptBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionCrossReferenceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      product: product ?? this.product,
      type: type ?? this.type,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionCrossReferenceBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      product,
      o.product,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionOperationBuilder]
/// A manufacturing or administrative process or step associated with (or
/// performed on) the medicinal product.
class MedicinalProductDefinitionOperationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionOperationBuilder]

  MedicinalProductDefinitionOperationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicinalProductDefinition.operation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionOperationBuilder.empty() =>
      MedicinalProductDefinitionOperationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionOperationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.operation';
    return MedicinalProductDefinitionOperationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'type',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.type',
      ),
      effectiveDate: JsonParser.parseObject<PeriodBuilder>(
        json,
        'effectiveDate',
        PeriodBuilder.fromJson,
        '$objectPath.effectiveDate',
      ),
      organization: (json['organization'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.organization',
              },
            ),
          )
          .toList(),
      confidentialityIndicator: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'confidentialityIndicator',
        CodeableConceptBuilder.fromJson,
        '$objectPath.confidentialityIndicator',
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionOperationBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionOperationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionOperationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionOperationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionOperationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionOperationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionOperationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionOperationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionOperation';

  /// [type]
  /// The type of manufacturing operation e.g. manufacturing itself,
  /// re-packaging. For the authorization of this, a RegulatedAuthorization
  /// would point to the same plan or activity referenced here.
  CodeableReferenceBuilder? type;

  /// [effectiveDate]
  /// Date range of applicability.
  PeriodBuilder? effectiveDate;

  /// [organization]
  /// The organization or establishment responsible for (or associated with)
  /// the particular process or step, examples include the manufacturer,
  /// importer, agent.
  List<ReferenceBuilder>? organization;

  /// [confidentialityIndicator]
  /// Specifies whether this particular business or manufacturing process is
  /// considered proprietary or confidential.
  CodeableConceptBuilder? confidentialityIndicator;

  /// Converts a [MedicinalProductDefinitionOperationBuilder]
  /// to [MedicinalProductDefinitionOperation]
  @override
  MedicinalProductDefinitionOperation build() =>
      MedicinalProductDefinitionOperation.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionOperationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('effectiveDate', effectiveDate);
    addField('organization', organization);
    addField('confidentialityIndicator', confidentialityIndicator);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'effectiveDate',
      'organization',
      'confidentialityIndicator',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'effectiveDate':
        if (effectiveDate != null) {
          fields.add(effectiveDate!);
        }
      case 'organization':
        if (organization != null) {
          fields.addAll(organization!);
        }
      case 'confidentialityIndicator':
        if (confidentialityIndicator != null) {
          fields.add(confidentialityIndicator!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableReferenceBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveDate':
        {
          if (child is PeriodBuilder) {
            effectiveDate = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organization':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            organization = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            organization = [
              ...(organization ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'confidentialityIndicator':
        {
          if (child is CodeableConceptBuilder) {
            confidentialityIndicator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableReferenceBuilder'];
      case 'effectiveDate':
        return ['PeriodBuilder'];
      case 'organization':
        return ['ReferenceBuilder'];
      case 'confidentialityIndicator':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionOperationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableReferenceBuilder.empty();
          return;
        }
      case 'effectiveDate':
        {
          effectiveDate = PeriodBuilder.empty();
          return;
        }
      case 'organization':
        {
          organization = <ReferenceBuilder>[];
          return;
        }
      case 'confidentialityIndicator':
        {
          confidentialityIndicator = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionOperationBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionOperationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? type,
    PeriodBuilder? effectiveDate,
    List<ReferenceBuilder>? organization,
    CodeableConceptBuilder? confidentialityIndicator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionOperationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      effectiveDate: effectiveDate ?? this.effectiveDate,
      organization: organization ?? this.organization,
      confidentialityIndicator:
          confidentialityIndicator ?? this.confidentialityIndicator,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionOperationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveDate,
      o.effectiveDate,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      confidentialityIndicator,
      o.confidentialityIndicator,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicinalProductDefinitionCharacteristicBuilder]
/// Allows the key product features to be recorded, such as "sugar free",
/// "modified release", "parallel import".
class MedicinalProductDefinitionCharacteristicBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicinalProductDefinitionCharacteristicBuilder]

  MedicinalProductDefinitionCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXMedicinalProductDefinitionCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    AttachmentBuilder? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueAttachment,
        super(
          objectPath: 'MedicinalProductDefinition.characteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicinalProductDefinitionCharacteristicBuilder.empty() =>
      MedicinalProductDefinitionCharacteristicBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicinalProductDefinition.characteristic';
    return MedicinalProductDefinitionCharacteristicBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicinalProductDefinitionCharacteristicBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicinalProductDefinitionCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicinalProductDefinitionCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicinalProductDefinitionCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicinalProductDefinitionCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicinalProductDefinitionCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicinalProductDefinitionCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicinalProductDefinitionCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionCharacteristicBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicinalProductDefinitionCharacteristic';

  /// [type]
  /// A code expressing the type of characteristic.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// A value for the characteristic.
  ValueXMedicinalProductDefinitionCharacteristicBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Converts a [MedicinalProductDefinitionCharacteristicBuilder]
  /// to [MedicinalProductDefinitionCharacteristic]
  @override
  MedicinalProductDefinitionCharacteristic build() =>
      MedicinalProductDefinitionCharacteristic.fromJson(toJson());

  /// Converts a [MedicinalProductDefinitionCharacteristicBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXMedicinalProductDefinitionCharacteristicBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'FhirDateBuilder',
          'FhirBooleanBuilder',
          'AttachmentBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicinalProductDefinitionCharacteristicBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicinalProductDefinitionCharacteristicBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicinalProductDefinitionCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXMedicinalProductDefinitionCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    AttachmentBuilder? valueAttachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicinalProductDefinitionCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueCodeableConcept ??
          valueQuantity ??
          valueDate ??
          valueBoolean ??
          valueAttachment ??
          this.valueX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MedicinalProductDefinitionCharacteristicBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
