import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PackagedProductDefinition]
/// A medically related item or items, in a container or package.
class PackagedProductDefinition extends DomainResource {
  /// Primary constructor for
  /// [PackagedProductDefinition]

  const PackagedProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.containedItemQuantity,
    this.description,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.characteristic,
    this.copackagedIndicator,
    this.manufacturer,
    this.package,
  }) : super(
          objectPath: 'PackagedProductDefinition',
          resourceType: R4ResourceType.PackagedProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition';
    return PackagedProductDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contained',
                  },
                ),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.identifier',
                  },
                ),
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      packageFor: (json['packageFor'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.packageFor',
                  },
                ),
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
        '$objectPath.statusDate',
      ),
      containedItemQuantity: (json['containedItemQuantity'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.containedItemQuantity',
                  },
                ),
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      legalStatusOfSupply: (json['legalStatusOfSupply'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionLegalStatusOfSupply>(
            (v) => PackagedProductDefinitionLegalStatusOfSupply.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.legalStatusOfSupply',
                  },
                ),
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatus>(
            (v) => MarketingStatus.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.marketingStatus',
                  },
                ),
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.characteristic',
                  },
                ),
            ),
          )
          .toList(),
      copackagedIndicator: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'copackagedIndicator',
        FhirBoolean.fromJson,
        '$objectPath.copackagedIndicator',
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.manufacturer',
                  },
                ),
            ),
          )
          .toList(),
      package: JsonParser.parseObject<PackagedProductDefinitionPackage>(
        json,
        'package',
        PackagedProductDefinitionPackage.fromJson,
        '$objectPath.package',
      ),
    );
  }

  /// Deserialize [PackagedProductDefinition]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinition';

  /// [identifier]
  /// A unique identifier for this package as whole. Unique instance
  /// identifiers assigned to a package by manufacturers, regulators, drug
  /// catalogue custodians or other organizations.
  final List<Identifier>? identifier;

  /// [name]
  /// A name for this package. Typically what it would be listed as in a drug
  /// formulary or catalogue, inventory etc.
  final FhirString? name;

  /// [type]
  /// A high level category e.g. medicinal product, raw material,
  /// shipping/transport container, etc.
  final CodeableConcept? type;

  /// [packageFor]
  /// The product that this is a pack for.
  final List<Reference>? packageFor;

  /// [status]
  /// The status within the lifecycle of this item. A high level status, this
  /// is not intended to duplicate details carried elsewhere such as legal
  /// status, or authorization or marketing status.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;

  /// [containedItemQuantity]
  /// A total of the complete count of contained items of a particular
  /// type/form, independent of sub-packaging or organization. This can be
  /// considered as the pack size. This attribute differs from
  /// containedItem.amount in that it can give a single aggregated count of
  /// all tablet types in a pack, even when these are different manufactured
  /// items. For example a pill pack of 21 tablets plus 7 sugar tablets, can
  /// be denoted here as '28 tablets'. This attribute is repeatable so that
  /// the different item types in one pack type can be counted (e.g. a count
  /// of vials and count of syringes). Each repeat must have different units,
  /// so that it is clear what the different sets of counted items are, and
  /// it is not intended to allow different counts of similar items (e.g. not
  /// '2 tubes and 3 tubes'). Repeats are not to be used to represent
  /// different pack sizes (e.g. 20 pack vs. 50 pack) - which would be
  /// different instances of this resource.
  final List<Quantity>? containedItemQuantity;

  /// [description]
  /// Textual description. Note that this is not the name of the package or
  /// product.
  final FhirMarkdown? description;

  /// [legalStatusOfSupply]
  /// The legal status of supply of the packaged item as classified by the
  /// regulator.
  final List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply;

  /// [marketingStatus]
  /// Allows specifying that an item is on the market for sale, or that it is
  /// not available, and the dates and locations associated.
  final List<MarketingStatus>? marketingStatus;

  /// [characteristic]
  /// Allows the key features to be recorded, such as "hospital pack", "nurse
  /// prescribable", "calendar pack".
  final List<CodeableConcept>? characteristic;

  /// [copackagedIndicator]
  /// States whether a drug product is supplied with another item such as a
  /// diluent or adjuvant.
  final FhirBoolean? copackagedIndicator;

  /// [manufacturer]
  /// Manufacturer of this package type. When there are multiple it means
  /// these are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [package]
  /// A packaging item, as a container for medically related items, possibly
  /// with other packaging items within, or a packaging component, such as
  /// bottle cap (which is not a device or a medication manufactured item).
  final PackagedProductDefinitionPackage? package;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
    addField('name', name);
    addField('type', type);
    addField('packageFor', packageFor);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('containedItemQuantity', containedItemQuantity);
    addField('description', description);
    addField('legalStatusOfSupply', legalStatusOfSupply);
    addField('marketingStatus', marketingStatus);
    addField('characteristic', characteristic);
    addField('copackagedIndicator', copackagedIndicator);
    addField('manufacturer', manufacturer);
    addField('package', package);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'name',
      'type',
      'packageFor',
      'status',
      'statusDate',
      'containedItemQuantity',
      'description',
      'legalStatusOfSupply',
      'marketingStatus',
      'characteristic',
      'copackagedIndicator',
      'manufacturer',
      'package',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'packageFor':
        if (packageFor != null) {
          fields.addAll(packageFor!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'containedItemQuantity':
        if (containedItemQuantity != null) {
          fields.addAll(containedItemQuantity!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'legalStatusOfSupply':
        if (legalStatusOfSupply != null) {
          fields.addAll(legalStatusOfSupply!);
        }
      case 'marketingStatus':
        if (marketingStatus != null) {
          fields.addAll(marketingStatus!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'copackagedIndicator':
        if (copackagedIndicator != null) {
          fields.add(copackagedIndicator!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'package':
        if (package != null) {
          fields.add(package!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PackagedProductDefinition clone() => throw UnimplementedError();
  @override
  PackagedProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? name,
    CodeableConcept? type,
    List<Reference>? packageFor,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    List<Quantity>? containedItemQuantity,
    FhirMarkdown? description,
    List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,
    List<MarketingStatus>? marketingStatus,
    List<CodeableConcept>? characteristic,
    FhirBoolean? copackagedIndicator,
    List<Reference>? manufacturer,
    PackagedProductDefinitionPackage? package,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return PackagedProductDefinition(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      packageFor: packageFor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.packageFor',
                ),
              )
              .toList() ??
          this.packageFor,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusDate: statusDate?.copyWith(
            objectPath: '$newObjectPath.statusDate',
          ) ??
          this.statusDate,
      containedItemQuantity: containedItemQuantity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.containedItemQuantity',
                ),
              )
              .toList() ??
          this.containedItemQuantity,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      legalStatusOfSupply: legalStatusOfSupply
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.legalStatusOfSupply',
                ),
              )
              .toList() ??
          this.legalStatusOfSupply,
      marketingStatus: marketingStatus
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.marketingStatus',
                ),
              )
              .toList() ??
          this.marketingStatus,
      characteristic: characteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.characteristic',
                ),
              )
              .toList() ??
          this.characteristic,
      copackagedIndicator: copackagedIndicator?.copyWith(
            objectPath: '$newObjectPath.copackagedIndicator',
          ) ??
          this.copackagedIndicator,
      manufacturer: manufacturer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.manufacturer',
                ),
              )
              .toList() ??
          this.manufacturer,
      package: package?.copyWith(
            objectPath: '$newObjectPath.package',
          ) ??
          this.package,
    );
  }
}

/// [PackagedProductDefinitionLegalStatusOfSupply]
/// The legal status of supply of the packaged item as classified by the
/// regulator.
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupply]

  const PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.legalStatusOfSupply',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.legalStatusOfSupply';
    return PackagedProductDefinitionLegalStatusOfSupply(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      jurisdiction: JsonParser.parseObject<CodeableConcept>(
        json,
        'jurisdiction',
        CodeableConcept.fromJson,
        '$objectPath.jurisdiction',
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionLegalStatusOfSupply]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionLegalStatusOfSupply.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionLegalStatusOfSupply '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupply]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionLegalStatusOfSupply';

  /// [code]
  /// The actual status of supply. Conveys in what situation this package
  /// type may be supplied for use.
  final CodeableConcept? code;

  /// [jurisdiction]
  /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  final CodeableConcept? jurisdiction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('jurisdiction', jurisdiction);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'jurisdiction',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PackagedProductDefinitionLegalStatusOfSupply clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionLegalStatusOfSupply copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? jurisdiction,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PackagedProductDefinitionLegalStatusOfSupply(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      jurisdiction: jurisdiction?.copyWith(
            objectPath: '$newObjectPath.jurisdiction',
          ) ??
          this.jurisdiction,
    );
  }
}

/// [PackagedProductDefinitionPackage]
/// A packaging item, as a container for medically related items, possibly
/// with other packaging items within, or a packaging component, such as
/// bottle cap (which is not a device or a medication manufactured item).
class PackagedProductDefinitionPackage extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionPackage]

  const PackagedProductDefinitionPackage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
    this.material,
    this.alternateMaterial,
    this.shelfLifeStorage,
    this.manufacturer,
    this.property,
    this.containedItem,
    this.package,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.package',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPackage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.package';
    return PackagedProductDefinitionPackage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.identifier',
                  },
                ),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      quantity: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'quantity',
        FhirInteger.fromJson,
        '$objectPath.quantity',
      ),
      material: (json['material'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.material',
                  },
                ),
            ),
          )
          .toList(),
      alternateMaterial: (json['alternateMaterial'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.alternateMaterial',
                  },
                ),
            ),
          )
          .toList(),
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionShelfLifeStorage>(
            (v) => PackagedProductDefinitionShelfLifeStorage.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.shelfLifeStorage',
                  },
                ),
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.manufacturer',
                  },
                ),
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionProperty>(
            (v) => PackagedProductDefinitionProperty.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.property',
                  },
                ),
            ),
          )
          .toList(),
      containedItem: (json['containedItem'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionContainedItem>(
            (v) => PackagedProductDefinitionContainedItem.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.containedItem',
                  },
                ),
            ),
          )
          .toList(),
      package: (json['package'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionPackage>(
            (v) => PackagedProductDefinitionPackage.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.package',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PackagedProductDefinitionPackage]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionPackage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionPackage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionPackage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionPackage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionPackage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionPackage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionPackage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionPackage';

  /// [identifier]
  /// An identifier that is specific to this particular part of the
  /// packaging. Including possibly Data Carrier Identifier (a GS1 barcode).
  final List<Identifier>? identifier;

  /// [type]
  /// The physical type of the container of the items.
  final CodeableConcept? type;

  /// [quantity]
  /// The quantity of this level of packaging in the package that contains
  /// it. If specified, the outermost level is always 1.
  final FhirInteger? quantity;

  /// [material]
  /// Material type of the package item.
  final List<CodeableConcept>? material;

  /// [alternateMaterial]
  /// A possible alternate material for this part of the packaging, that is
  /// allowed to be used instead of the usual material (e.g. different types
  /// of plastic for a blister sleeve).
  final List<CodeableConcept>? alternateMaterial;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage;

  /// [manufacturer]
  /// Manufacturer of this package Item. When there are multiple it means
  /// these are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [property]
  /// General characteristics of this item.
  final List<PackagedProductDefinitionProperty>? property;

  /// [containedItem]
  /// The item(s) within the packaging.
  final List<PackagedProductDefinitionContainedItem>? containedItem;

  /// [package]
  /// Allows containers (and parts of containers) parwithin containers, still
  /// a single packaged product. See also
  /// PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).
  final List<PackagedProductDefinitionPackage>? package;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('type', type);
    addField('quantity', quantity);
    addField('material', material);
    addField('alternateMaterial', alternateMaterial);
    addField('shelfLifeStorage', shelfLifeStorage);
    addField('manufacturer', manufacturer);
    addField('property', property);
    addField('containedItem', containedItem);
    addField('package', package);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'quantity',
      'material',
      'alternateMaterial',
      'shelfLifeStorage',
      'manufacturer',
      'property',
      'containedItem',
      'package',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'material':
        if (material != null) {
          fields.addAll(material!);
        }
      case 'alternateMaterial':
        if (alternateMaterial != null) {
          fields.addAll(alternateMaterial!);
        }
      case 'shelfLifeStorage':
        if (shelfLifeStorage != null) {
          fields.addAll(shelfLifeStorage!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'containedItem':
        if (containedItem != null) {
          fields.addAll(containedItem!);
        }
      case 'package':
        if (package != null) {
          fields.addAll(package!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PackagedProductDefinitionPackage clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionPackage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    FhirInteger? quantity,
    List<CodeableConcept>? material,
    List<CodeableConcept>? alternateMaterial,
    List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
    List<Reference>? manufacturer,
    List<PackagedProductDefinitionProperty>? property,
    List<PackagedProductDefinitionContainedItem>? containedItem,
    List<PackagedProductDefinitionPackage>? package,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PackagedProductDefinitionPackage(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      material: material
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.material',
                ),
              )
              .toList() ??
          this.material,
      alternateMaterial: alternateMaterial
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.alternateMaterial',
                ),
              )
              .toList() ??
          this.alternateMaterial,
      shelfLifeStorage: shelfLifeStorage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.shelfLifeStorage',
                ),
              )
              .toList() ??
          this.shelfLifeStorage,
      manufacturer: manufacturer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.manufacturer',
                ),
              )
              .toList() ??
          this.manufacturer,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
      containedItem: containedItem
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.containedItem',
                ),
              )
              .toList() ??
          this.containedItem,
      package: package
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.package',
                ),
              )
              .toList() ??
          this.package,
    );
  }
}

/// [PackagedProductDefinitionShelfLifeStorage]
/// Shelf Life and storage information.
class PackagedProductDefinitionShelfLifeStorage extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionShelfLifeStorage]

  const PackagedProductDefinitionShelfLifeStorage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.periodX,
    this.specialPrecautionsForStorage,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.package.shelfLifeStorage',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionShelfLifeStorage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.package.shelfLifeStorage';
    return PackagedProductDefinitionShelfLifeStorage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      periodX: JsonParser.parsePolymorphic<
          PeriodXPackagedProductDefinitionShelfLifeStorage>(
        json,
        {
          'periodDuration': FhirDuration.fromJson,
          'periodString': FhirString.fromJson,
        },
        objectPath,
      ),
      specialPrecautionsForStorage:
          (json['specialPrecautionsForStorage'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  (v as Map<String, dynamic>)
                    ..addAll(
                      {
                        'objectPath':
                            '$objectPath.specialPrecautionsForStorage',
                      },
                    ),
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [PackagedProductDefinitionShelfLifeStorage]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionShelfLifeStorage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionShelfLifeStorage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionShelfLifeStorage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionShelfLifeStorage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionShelfLifeStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionShelfLifeStorage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionShelfLifeStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionShelfLifeStorage';

  /// [type]
  /// This describes the shelf life, taking into account various scenarios
  /// such as shelf life of the packaged Medicinal Product itself, shelf life
  /// after transformation where necessary and shelf life after the first
  /// opening of a bottle, etc. The shelf life type shall be specified using
  /// an appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  final CodeableConcept? type;

  /// [periodX]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  final PeriodXPackagedProductDefinitionShelfLifeStorage? periodX;

  /// [specialPrecautionsForStorage]
  /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary. The controlled term and the
  /// controlled term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (periodX != null) {
      final fhirType = periodX!.fhirType;
      addField('period${fhirType.capitalize()}', periodX);
    }

    addField('specialPrecautionsForStorage', specialPrecautionsForStorage);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'periodX',
      'specialPrecautionsForStorage',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'periodDuration':
        if (periodX is FhirDuration) {
          fields.add(periodX!);
        }
      case 'periodString':
        if (periodX is FhirString) {
          fields.add(periodX!);
        }
      case 'specialPrecautionsForStorage':
        if (specialPrecautionsForStorage != null) {
          fields.addAll(specialPrecautionsForStorage!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PackagedProductDefinitionShelfLifeStorage clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionShelfLifeStorage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    PeriodXPackagedProductDefinitionShelfLifeStorage? periodX,
    List<CodeableConcept>? specialPrecautionsForStorage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PackagedProductDefinitionShelfLifeStorage(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      periodX: periodX?.copyWith(
            objectPath: '$newObjectPath.periodX',
          ) as PeriodXPackagedProductDefinitionShelfLifeStorage? ??
          this.periodX,
      specialPrecautionsForStorage: specialPrecautionsForStorage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialPrecautionsForStorage',
                ),
              )
              .toList() ??
          this.specialPrecautionsForStorage,
    );
  }
}

/// [PackagedProductDefinitionProperty]
/// General characteristics of this item.
class PackagedProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionProperty]

  const PackagedProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.package.property',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.package.property';
    return PackagedProductDefinitionProperty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      valueX:
          JsonParser.parsePolymorphic<ValueXPackagedProductDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXPackagedProductDefinitionProperty? valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PackagedProductDefinitionProperty clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXPackagedProductDefinitionProperty? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PackagedProductDefinitionProperty(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXPackagedProductDefinitionProperty? ??
          this.valueX,
    );
  }
}

/// [PackagedProductDefinitionContainedItem]
/// The item(s) within the packaging.
class PackagedProductDefinitionContainedItem extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionContainedItem]

  const PackagedProductDefinitionContainedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.package.containedItem',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionContainedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.package.containedItem';
    return PackagedProductDefinitionContainedItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
        '$objectPath.item',
      )!,
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionContainedItem]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionContainedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionContainedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionContainedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionContainedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionContainedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionContainedItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionContainedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionContainedItem';

  /// [item]
  /// The actual item(s) of medication, as manufactured, or a device
  /// (typically, but not necessarily, a co-packaged one), or other medically
  /// related item (such as food, biologicals, raw materials, medical fluids,
  /// gases etc.), as contained in the package. This also allows another
  /// whole packaged product to be included, which is solely for the case
  /// where a package of other entire packages is wanted - such as a
  /// wholesale or distribution pack (for layers within one package, use
  /// PackagedProductDefinition.package.package).
  final CodeableReference item;

  /// [amount]
  /// The number of this type of item within this packaging.
  final Quantity? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('item', item);
    addField('amount', amount);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'item',
      'amount',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'item':
        fields.add(item);
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PackagedProductDefinitionContainedItem clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionContainedItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    Quantity? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PackagedProductDefinitionContainedItem(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      item: item?.copyWith(
            objectPath: '$newObjectPath.item',
          ) ??
          this.item,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
    );
  }
}
