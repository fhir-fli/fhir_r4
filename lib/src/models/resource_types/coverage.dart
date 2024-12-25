import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Coverage]
/// Financial instrument which may be used to reimburse or pay for health
/// care products and services. Includes both insurance and self-payment.
class Coverage extends DomainResource {
  /// Primary constructor for
  /// [Coverage]

  const Coverage({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    required this.beneficiary,
    this.dependent,
    this.relationship,
    this.period,
    required this.payor,
    this.class_,
    this.order,
    this.network,
    this.costToBeneficiary,
    this.subrogation,
    this.contract,
  }) : super(
          objectPath: 'Coverage',
          resourceType: R4ResourceType.Coverage,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Coverage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Coverage';
    return Coverage(
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
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      policyHolder: JsonParser.parseObject<Reference>(
        json,
        'policyHolder',
        Reference.fromJson,
        '$objectPath.policyHolder',
      ),
      subscriber: JsonParser.parseObject<Reference>(
        json,
        'subscriber',
        Reference.fromJson,
        '$objectPath.subscriber',
      ),
      subscriberId: JsonParser.parsePrimitive<FhirString>(
        json,
        'subscriberId',
        FhirString.fromJson,
        '$objectPath.subscriberId',
      ),
      beneficiary: JsonParser.parseObject<Reference>(
        json,
        'beneficiary',
        Reference.fromJson,
        '$objectPath.beneficiary',
      )!,
      dependent: JsonParser.parsePrimitive<FhirString>(
        json,
        'dependent',
        FhirString.fromJson,
        '$objectPath.dependent',
      ),
      relationship: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationship',
        CodeableConcept.fromJson,
        '$objectPath.relationship',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      payor: (json['payor'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.payor',
                  },
                ),
            ),
          )
          .toList(),
      class_: (json['class'] as List<dynamic>?)
          ?.map<CoverageClass>(
            (v) => CoverageClass.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.class',
                  },
                ),
            ),
          )
          .toList(),
      order: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'order',
        FhirPositiveInt.fromJson,
        '$objectPath.order',
      ),
      network: JsonParser.parsePrimitive<FhirString>(
        json,
        'network',
        FhirString.fromJson,
        '$objectPath.network',
      ),
      costToBeneficiary: (json['costToBeneficiary'] as List<dynamic>?)
          ?.map<CoverageCostToBeneficiary>(
            (v) => CoverageCostToBeneficiary.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.costToBeneficiary',
                  },
                ),
            ),
          )
          .toList(),
      subrogation: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'subrogation',
        FhirBoolean.fromJson,
        '$objectPath.subrogation',
      ),
      contract: (json['contract'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contract',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Coverage]
  /// from a [String] or [YamlMap] object
  factory Coverage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Coverage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Coverage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Coverage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Coverage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Coverage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Coverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Coverage';

  /// [identifier]
  /// A unique identifier assigned to this coverage.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [type]
  /// The type of coverage: social program, medical plan, accident coverage
  /// (workers compensation, auto), group health or payment by an individual
  /// or organization.
  final CodeableConcept? type;

  /// [policyHolder]
  /// The party who 'owns' the insurance policy.
  final Reference? policyHolder;

  /// [subscriber]
  /// The party who has signed-up for or 'owns' the contractual relationship
  /// to the policy or to whom the benefit of the policy for services
  /// rendered to them or their family is due.
  final Reference? subscriber;

  /// [subscriberId]
  /// The insurer assigned ID for the Subscriber.
  final FhirString? subscriberId;

  /// [beneficiary]
  /// The party who benefits from the insurance coverage; the patient when
  /// products and/or services are provided.
  final Reference beneficiary;

  /// [dependent]
  /// A unique identifier for a dependent under the coverage.
  final FhirString? dependent;

  /// [relationship]
  /// The relationship of beneficiary (patient) to the subscriber.
  final CodeableConcept? relationship;

  /// [period]
  /// Time period during which the coverage is in force. A missing start date
  /// indicates the start date isn't known, a missing end date means the
  /// coverage is continuing to be in force.
  final Period? period;

  /// [payor]
  /// The program or plan underwriter or payor including both insurance and
  /// non-insurance agreements, such as patient-pay agreements.
  final List<Reference> payor;

  /// [class_]
  /// A suite of underwriter specific classifiers.
  final List<CoverageClass>? class_;

  /// [order]
  /// The order of applicability of this coverage relative to other coverages
  /// which are currently in force. Note, there may be gaps in the numbering
  /// and this does not imply primary, secondary etc. as the specific
  /// positioning of coverages depends upon the episode of care.
  final FhirPositiveInt? order;

  /// [network]
  /// The insurer-specific identifier for the insurer-defined network of
  /// providers to which the beneficiary may seek treatment which will be
  /// covered at the 'in-network' rate, otherwise 'out of network' terms and
  /// conditions apply.
  final FhirString? network;

  /// [costToBeneficiary]
  /// A suite of codes indicating the cost category and associated amount
  /// which have been detailed in the policy and may have been included on
  /// the health card.
  final List<CoverageCostToBeneficiary>? costToBeneficiary;

  /// [subrogation]
  /// When 'subrogation=true' this insurance instance has been included not
  /// for adjudication but to provide insurers with the details to recover
  /// costs.
  final FhirBoolean? subrogation;

  /// [contract]
  /// The policy(s) which constitute this insurance coverage.
  final List<Reference>? contract;
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
    addField('status', status);
    addField('type', type);
    addField('policyHolder', policyHolder);
    addField('subscriber', subscriber);
    addField('subscriberId', subscriberId);
    addField('beneficiary', beneficiary);
    addField('dependent', dependent);
    addField('relationship', relationship);
    addField('period', period);
    addField('payor', payor);
    addField('class', class_);
    addField('order', order);
    addField('network', network);
    addField('costToBeneficiary', costToBeneficiary);
    addField('subrogation', subrogation);
    addField('contract', contract);
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
      'status',
      'type',
      'policyHolder',
      'subscriber',
      'subscriberId',
      'beneficiary',
      'dependent',
      'relationship',
      'period',
      'payor',
      'class',
      'order',
      'network',
      'costToBeneficiary',
      'subrogation',
      'contract',
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
      case 'status':
        fields.add(status);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'policyHolder':
        if (policyHolder != null) {
          fields.add(policyHolder!);
        }
      case 'subscriber':
        if (subscriber != null) {
          fields.add(subscriber!);
        }
      case 'subscriberId':
        if (subscriberId != null) {
          fields.add(subscriberId!);
        }
      case 'beneficiary':
        fields.add(beneficiary);
      case 'dependent':
        if (dependent != null) {
          fields.add(dependent!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'payor':
        fields.addAll(payor);
      case 'class':
        if (class_ != null) {
          fields.addAll(class_!);
        }
      case 'order':
        if (order != null) {
          fields.add(order!);
        }
      case 'network':
        if (network != null) {
          fields.add(network!);
        }
      case 'costToBeneficiary':
        if (costToBeneficiary != null) {
          fields.addAll(costToBeneficiary!);
        }
      case 'subrogation':
        if (subrogation != null) {
          fields.add(subrogation!);
        }
      case 'contract':
        if (contract != null) {
          fields.addAll(contract!);
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
  Coverage clone() => throw UnimplementedError();
  @override
  Coverage copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    CodeableConcept? type,
    Reference? policyHolder,
    Reference? subscriber,
    FhirString? subscriberId,
    Reference? beneficiary,
    FhirString? dependent,
    CodeableConcept? relationship,
    Period? period,
    List<Reference>? payor,
    List<CoverageClass>? class_,
    FhirPositiveInt? order,
    FhirString? network,
    List<CoverageCostToBeneficiary>? costToBeneficiary,
    FhirBoolean? subrogation,
    List<Reference>? contract,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Coverage(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      policyHolder: policyHolder?.copyWith(
            objectPath: '$newObjectPath.policyHolder',
          ) ??
          this.policyHolder,
      subscriber: subscriber?.copyWith(
            objectPath: '$newObjectPath.subscriber',
          ) ??
          this.subscriber,
      subscriberId: subscriberId?.copyWith(
            objectPath: '$newObjectPath.subscriberId',
          ) ??
          this.subscriberId,
      beneficiary: beneficiary?.copyWith(
            objectPath: '$newObjectPath.beneficiary',
          ) ??
          this.beneficiary,
      dependent: dependent?.copyWith(
            objectPath: '$newObjectPath.dependent',
          ) ??
          this.dependent,
      relationship: relationship?.copyWith(
            objectPath: '$newObjectPath.relationship',
          ) ??
          this.relationship,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      payor: payor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.payor',
                ),
              )
              .toList() ??
          this.payor,
      class_: class_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.class',
                ),
              )
              .toList() ??
          this.class_,
      order: order?.copyWith(
            objectPath: '$newObjectPath.order',
          ) ??
          this.order,
      network: network?.copyWith(
            objectPath: '$newObjectPath.network',
          ) ??
          this.network,
      costToBeneficiary: costToBeneficiary
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.costToBeneficiary',
                ),
              )
              .toList() ??
          this.costToBeneficiary,
      subrogation: subrogation?.copyWith(
            objectPath: '$newObjectPath.subrogation',
          ) ??
          this.subrogation,
      contract: contract
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contract',
                ),
              )
              .toList() ??
          this.contract,
    );
  }
}

/// [CoverageClass]
/// A suite of underwriter specific classifiers.
class CoverageClass extends BackboneElement {
  /// Primary constructor for
  /// [CoverageClass]

  const CoverageClass({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.value,
    this.name,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Coverage.class',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageClass.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Coverage.class';
    return CoverageClass(
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
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
    );
  }

  /// Deserialize [CoverageClass]
  /// from a [String] or [YamlMap] object
  factory CoverageClass.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageClass.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageClass.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageClass '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageClass]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageClass.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageClass.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageClass';

  /// [type]
  /// The type of classification for which an insurer-specific class label or
  /// number and optional name is provided, for example may be used to
  /// identify a class of coverage or employer group, Policy, Plan.
  final CodeableConcept type;

  /// [value]
  /// The alphanumeric string value associated with the insurer issued label.
  final FhirString value;

  /// [name]
  /// A short description for the class.
  final FhirString? name;
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
    addField('value', value);
    addField('name', name);
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
      'value',
      'name',
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
      case 'value':
        fields.add(value);
      case 'name':
        if (name != null) {
          fields.add(name!);
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
  CoverageClass clone() => throw UnimplementedError();
  @override
  CoverageClass copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    FhirString? name,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageClass(
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
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
    );
  }
}

/// [CoverageCostToBeneficiary]
/// A suite of codes indicating the cost category and associated amount
/// which have been detailed in the policy and may have been included on
/// the health card.
class CoverageCostToBeneficiary extends BackboneElement {
  /// Primary constructor for
  /// [CoverageCostToBeneficiary]

  const CoverageCostToBeneficiary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.valueX,
    this.exception,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Coverage.costToBeneficiary',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageCostToBeneficiary.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Coverage.costToBeneficiary';
    return CoverageCostToBeneficiary(
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
      valueX: JsonParser.parsePolymorphic<ValueXCoverageCostToBeneficiary>(
        json,
        {
          'valueQuantity': Quantity.fromJson,
          'valueMoney': Money.fromJson,
        },
        objectPath,
      )!,
      exception: (json['exception'] as List<dynamic>?)
          ?.map<CoverageException>(
            (v) => CoverageException.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.exception',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageCostToBeneficiary]
  /// from a [String] or [YamlMap] object
  factory CoverageCostToBeneficiary.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageCostToBeneficiary.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageCostToBeneficiary.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageCostToBeneficiary '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageCostToBeneficiary]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageCostToBeneficiary.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageCostToBeneficiary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageCostToBeneficiary';

  /// [type]
  /// The category of patient centric costs associated with treatment.
  final CodeableConcept? type;

  /// [valueX]
  /// The amount due from the patient for the cost category.
  final ValueXCoverageCostToBeneficiary valueX;

  /// [exception]
  /// A suite of codes indicating exceptions or reductions to patient costs
  /// and their effective periods.
  final List<CoverageException>? exception;
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
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    addField('exception', exception);
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
      'exception',
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
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueMoney':
        if (valueX is Money) {
          fields.add(valueX);
        }
      case 'exception':
        if (exception != null) {
          fields.addAll(exception!);
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
  CoverageCostToBeneficiary clone() => throw UnimplementedError();
  @override
  CoverageCostToBeneficiary copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXCoverageCostToBeneficiary? valueX,
    List<CoverageException>? exception,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageCostToBeneficiary(
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
          ) as ValueXCoverageCostToBeneficiary? ??
          this.valueX,
      exception: exception
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.exception',
                ),
              )
              .toList() ??
          this.exception,
    );
  }
}

/// [CoverageException]
/// A suite of codes indicating exceptions or reductions to patient costs
/// and their effective periods.
class CoverageException extends BackboneElement {
  /// Primary constructor for
  /// [CoverageException]

  const CoverageException({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Coverage.costToBeneficiary.exception',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageException.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Coverage.costToBeneficiary.exception';
    return CoverageException(
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
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [CoverageException]
  /// from a [String] or [YamlMap] object
  factory CoverageException.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageException.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageException.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageException '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageException]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageException.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageException.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageException';

  /// [type]
  /// The code for the specific exception.
  final CodeableConcept type;

  /// [period]
  /// The timeframe during when the exception is in force.
  final Period? period;
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
    addField('period', period);
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
      'period',
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
      case 'period':
        if (period != null) {
          fields.add(period!);
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
  CoverageException clone() => throw UnimplementedError();
  @override
  CoverageException copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageException(
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
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }
}
