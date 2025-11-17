import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'medicinal_product_definition.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatus>(
            (v) => MarketingStatus.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packagedMedicinalProduct:
          (json['packagedMedicinalProduct'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      impurity: (json['impurity'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      masterFile: (json['masterFile'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionContact>(
            (v) => MedicinalProductDefinitionContact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      clinicalTrial: (json['clinicalTrial'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>)
          .map<MedicinalProductDefinitionName>(
            (v) => MedicinalProductDefinitionName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      crossReference: (json['crossReference'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCrossReference>(
            (v) => MedicinalProductDefinitionCrossReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionOperation>(
            (v) => MedicinalProductDefinitionOperation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCharacteristic>(
            (v) => MedicinalProductDefinitionCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinition.fromJson(json);
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'type',
      type,
    );
    addField(
      'domain',
      domain,
    );
    addField(
      'version',
      version,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'description',
      description,
    );
    addField(
      'combinedPharmaceuticalDoseForm',
      combinedPharmaceuticalDoseForm,
    );
    addField(
      'route',
      route,
    );
    addField(
      'indication',
      indication,
    );
    addField(
      'legalStatusOfSupply',
      legalStatusOfSupply,
    );
    addField(
      'additionalMonitoringIndicator',
      additionalMonitoringIndicator,
    );
    addField(
      'specialMeasures',
      specialMeasures,
    );
    addField(
      'pediatricUseIndicator',
      pediatricUseIndicator,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'marketingStatus',
      marketingStatus,
    );
    addField(
      'packagedMedicinalProduct',
      packagedMedicinalProduct,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'impurity',
      impurity,
    );
    addField(
      'attachedDocument',
      attachedDocument,
    );
    addField(
      'masterFile',
      masterFile,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'clinicalTrial',
      clinicalTrial,
    );
    addField(
      'code',
      code,
    );
    addField(
      'name',
      name,
    );
    addField(
      'crossReference',
      crossReference,
    );
    addField(
      'operation',
      operation,
    );
    addField(
      'characteristic',
      characteristic,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.addAll(name);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinition clone() => copyWith();

  /// Copy function for [MedicinalProductDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionCopyWith<MedicinalProductDefinition>
      get copyWith =>
          _$MedicinalProductDefinitionCopyWithImpl<MedicinalProductDefinition>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      combinedPharmaceuticalDoseForm,
      o.combinedPharmaceuticalDoseForm,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      route,
      o.route,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      legalStatusOfSupply,
      o.legalStatusOfSupply,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      additionalMonitoringIndicator,
      o.additionalMonitoringIndicator,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      specialMeasures,
      o.specialMeasures,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      pediatricUseIndicator,
      o.pediatricUseIndicator,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MarketingStatus>(
      marketingStatus,
      o.marketingStatus,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      packagedMedicinalProduct,
      o.packagedMedicinalProduct,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableReference>(
      impurity,
      o.impurity,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      attachedDocument,
      o.attachedDocument,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      masterFile,
      o.masterFile,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionContact>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      clinicalTrial,
      o.clinicalTrial,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionName>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionCrossReference>(
      crossReference,
      o.crossReference,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionOperation>(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionContact.fromJson(json);
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
  final CodeableConcept? type;

  /// [contact]
  /// A product specific contact, person (in a role), or an organization.
  final Reference contact;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'contact',
      contact,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(contact);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionContact clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionContact]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionContactCopyWith<MedicinalProductDefinitionContact>
      get copyWith => _$MedicinalProductDefinitionContactCopyWithImpl<
              MedicinalProductDefinitionContact>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionContact) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      contact,
      o.contact,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      countryLanguage: (json['countryLanguage'] as List<dynamic>?)
          ?.map<MedicinalProductDefinitionCountryLanguage>(
            (v) => MedicinalProductDefinitionCountryLanguage.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'productName',
      productName,
    );
    addField(
      'type',
      type,
    );
    addField(
      'namePart',
      namePart,
    );
    addField(
      'countryLanguage',
      countryLanguage,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(productName);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionName clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionName]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionNameCopyWith<MedicinalProductDefinitionName>
      get copyWith => _$MedicinalProductDefinitionNameCopyWithImpl<
              MedicinalProductDefinitionName>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionName) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      productName,
      o.productName,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionNamePart>(
      namePart,
      o.namePart,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MedicinalProductDefinitionCountryLanguage>(
      countryLanguage,
      o.countryLanguage,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionNamePart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'part',
      part_,
    );
    addField(
      'type',
      type,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(part_);
      case 'type':
        fields.add(type);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionNamePart clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionNamePart]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionNamePartCopyWith<
          MedicinalProductDefinitionNamePart>
      get copyWith => _$MedicinalProductDefinitionNamePartCopyWithImpl<
              MedicinalProductDefinitionNamePart>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionNamePart) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      part_,
      o.part_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionCountryLanguage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'country',
      country,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'language',
      language,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(country);
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
        }
      case 'language':
        fields.add(language);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionCountryLanguage clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionCountryLanguage]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionCountryLanguageCopyWith<
          MedicinalProductDefinitionCountryLanguage>
      get copyWith => _$MedicinalProductDefinitionCountryLanguageCopyWithImpl<
              MedicinalProductDefinitionCountryLanguage>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionCountryLanguage) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      country,
      o.country,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionCrossReference.fromJson(json);
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
  final CodeableReference product;

  /// [type]
  /// The type of relationship, for instance branded to generic, virtual to
  /// actual product, product to development product (investigational),
  /// parallel import version.
  final CodeableConcept? type;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'product',
      product,
    );
    addField(
      'type',
      type,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(product);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionCrossReference clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionCrossReference]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionCrossReferenceCopyWith<
          MedicinalProductDefinitionCrossReference>
      get copyWith => _$MedicinalProductDefinitionCrossReferenceCopyWithImpl<
              MedicinalProductDefinitionCrossReference>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionCrossReference) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      product,
      o.product,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionOperation.fromJson(json);
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'effectiveDate',
      effectiveDate,
    );
    addField(
      'organization',
      organization,
    );
    addField(
      'confidentialityIndicator',
      confidentialityIndicator,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionOperation clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionOperation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionOperationCopyWith<
          MedicinalProductDefinitionOperation>
      get copyWith => _$MedicinalProductDefinitionOperationCopyWithImpl<
              MedicinalProductDefinitionOperation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionOperation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      effectiveDate,
      o.effectiveDate,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      confidentialityIndicator,
      o.confidentialityIndicator,
    )) {
      return false;
    }
    return true;
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
    ValueXMedicinalProductDefinitionCharacteristic? valueX,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    FhirBoolean? valueBoolean,
    Attachment? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueAttachment,
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicinalProductDefinitionCharacteristic>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      ),
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
    if (json is Map<String, dynamic>) {
      return MedicinalProductDefinitionCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(type);
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicinalProductDefinitionCharacteristic clone() => copyWith();

  /// Copy function for [MedicinalProductDefinitionCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicinalProductDefinitionCharacteristicCopyWith<
          MedicinalProductDefinitionCharacteristic>
      get copyWith => _$MedicinalProductDefinitionCharacteristicCopyWithImpl<
              MedicinalProductDefinitionCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicinalProductDefinitionCharacteristic) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
