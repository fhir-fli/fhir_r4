import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Coverage]
/// Financial instrument which may be used to reimburse or pay for health
/// care products and services. Includes both insurance and self-payment.
class Coverage extends DomainResource {
  /// Primary constructor for [Coverage]

  Coverage({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Coverage,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Coverage.fromJson(
    Map<String, dynamic> json,
  ) {
    return Coverage(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      policyHolder: json['policyHolder'] != null
          ? Reference.fromJson(
              json['policyHolder'] as Map<String, dynamic>,
            )
          : null,
      subscriber: json['subscriber'] != null
          ? Reference.fromJson(
              json['subscriber'] as Map<String, dynamic>,
            )
          : null,
      subscriberId: json['subscriberId'] != null
          ? FhirString.fromJson({
              'value': json['subscriberId'],
              '_value': json['_subscriberId'],
            })
          : null,
      beneficiary: Reference.fromJson(
        json['beneficiary'] as Map<String, dynamic>,
      ),
      dependent: json['dependent'] != null
          ? FhirString.fromJson({
              'value': json['dependent'],
              '_value': json['_dependent'],
            })
          : null,
      relationship: json['relationship'] != null
          ? CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      payor: ensureNonNullList((json['payor'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      class_: json['class'] != null
          ? (json['class'] as List<dynamic>)
              .map<CoverageClass>(
                (v) => CoverageClass.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      order: json['order'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['order'],
              '_value': json['_order'],
            })
          : null,
      network: json['network'] != null
          ? FhirString.fromJson({
              'value': json['network'],
              '_value': json['_network'],
            })
          : null,
      costToBeneficiary: json['costToBeneficiary'] != null
          ? (json['costToBeneficiary'] as List<dynamic>)
              .map<CoverageCostToBeneficiary>(
                (v) => CoverageCostToBeneficiary.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subrogation: json['subrogation'] != null
          ? FhirBoolean.fromJson({
              'value': json['subrogation'],
              '_value': json['_subrogation'],
            })
          : null,
      contract: json['contract'] != null
          ? (json['contract'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Coverage] from a [String]
  /// or [YamlMap] object
  factory Coverage.fromYaml(dynamic yaml) => yaml is String
      ? Coverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Coverage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Coverage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Coverage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Coverage.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
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

    json['status'] = status.toJson();

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (policyHolder != null) {
      json['policyHolder'] = policyHolder!.toJson();
    }

    if (subscriber != null) {
      json['subscriber'] = subscriber!.toJson();
    }

    if (subscriberId != null) {
      final fieldJson12 = subscriberId!.toJson();
      json['subscriberId'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_subscriberId'] = fieldJson12['_value'];
      }
    }

    json['beneficiary'] = beneficiary.toJson();

    if (dependent != null) {
      final fieldJson14 = dependent!.toJson();
      json['dependent'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_dependent'] = fieldJson14['_value'];
      }
    }

    if (relationship != null) {
      json['relationship'] = relationship!.toJson();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    json['payor'] = payor.map((e) => e.toJson()).toList();

    if (class_ != null && class_!.isNotEmpty) {
      json['class'] = class_!.map((e) => e.toJson()).toList();
    }

    if (order != null) {
      final fieldJson19 = order!.toJson();
      json['order'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_order'] = fieldJson19['_value'];
      }
    }

    if (network != null) {
      final fieldJson20 = network!.toJson();
      json['network'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_network'] = fieldJson20['_value'];
      }
    }

    if (costToBeneficiary != null && costToBeneficiary!.isNotEmpty) {
      json['costToBeneficiary'] =
          costToBeneficiary!.map((e) => e.toJson()).toList();
    }

    if (subrogation != null) {
      final fieldJson22 = subrogation!.toJson();
      json['subrogation'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_subrogation'] = fieldJson22['_value'];
      }
    }

    if (contract != null && contract!.isNotEmpty) {
      json['contract'] = contract!.map((e) => e.toJson()).toList();
    }

    return json;
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Coverage(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      policyHolder: policyHolder ?? this.policyHolder,
      subscriber: subscriber ?? this.subscriber,
      subscriberId: subscriberId ?? this.subscriberId,
      beneficiary: beneficiary ?? this.beneficiary,
      dependent: dependent ?? this.dependent,
      relationship: relationship ?? this.relationship,
      period: period ?? this.period,
      payor: payor ?? this.payor,
      class_: class_ ?? this.class_,
      order: order ?? this.order,
      network: network ?? this.network,
      costToBeneficiary: costToBeneficiary ?? this.costToBeneficiary,
      subrogation: subrogation ?? this.subrogation,
      contract: contract ?? this.contract,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageClass]
/// A suite of underwriter specific classifiers.
class CoverageClass extends BackboneElement {
  /// Primary constructor for [CoverageClass]

  CoverageClass({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    required this.value,
    this.name,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageClass.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageClass(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
    );
  }

  /// Deserialize [CoverageClass] from a [String]
  /// or [YamlMap] object
  factory CoverageClass.fromYaml(dynamic yaml) => yaml is String
      ? CoverageClass.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageClass.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CoverageClass cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageClass]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageClass.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    final fieldJson3 = value.toJson();
    json['value'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_value'] = fieldJson3['_value'];
    }

    if (name != null) {
      final fieldJson4 = name!.toJson();
      json['name'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_name'] = fieldJson4['_value'];
      }
    }

    return json;
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageClass(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      name: name ?? this.name,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageCostToBeneficiary]
/// A suite of codes indicating the cost category and associated amount
/// which have been detailed in the policy and may have been included on
/// the health card.
class CoverageCostToBeneficiary extends BackboneElement {
  /// Primary constructor for [CoverageCostToBeneficiary]

  CoverageCostToBeneficiary({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageCostToBeneficiary.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageCostToBeneficiary(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(
              json['valueMoney'] as Map<String, dynamic>,
            )
          : null,
      exception: json['exception'] != null
          ? (json['exception'] as List<dynamic>)
              .map<CoverageException>(
                (v) => CoverageException.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CoverageCostToBeneficiary] from a [String]
  /// or [YamlMap] object
  factory CoverageCostToBeneficiary.fromYaml(dynamic yaml) => yaml is String
      ? CoverageCostToBeneficiary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageCostToBeneficiary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CoverageCostToBeneficiary cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageCostToBeneficiary]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageCostToBeneficiary.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The category of patient centric costs associated with treatment.
  final CodeableConcept? type;

  /// [valueQuantity]
  /// The amount due from the patient for the cost category.
  final Quantity? valueQuantity;

  /// [valueMoney]
  /// The amount due from the patient for the cost category.
  final Money? valueMoney;

  /// [exception]
  /// A suite of codes indicating exceptions or reductions to patient costs
  /// and their effective periods.
  final List<CoverageException>? exception;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
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

    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    if (valueMoney != null) {
      json['valueMoney'] = valueMoney!.toJson();
    }

    if (exception != null && exception!.isNotEmpty) {
      json['exception'] = exception!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CoverageCostToBeneficiary clone() => throw UnimplementedError();
  @override
  CoverageCostToBeneficiary copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? valueQuantity,
    Money? valueMoney,
    List<CoverageException>? exception,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageCostToBeneficiary(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueMoney: valueMoney ?? this.valueMoney,
      exception: exception ?? this.exception,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageException]
/// A suite of codes indicating exceptions or reductions to patient costs
/// and their effective periods.
class CoverageException extends BackboneElement {
  /// Primary constructor for [CoverageException]

  CoverageException({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageException.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageException(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CoverageException] from a [String]
  /// or [YamlMap] object
  factory CoverageException.fromYaml(dynamic yaml) => yaml is String
      ? CoverageException.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageException.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CoverageException cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageException]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageException.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The code for the specific exception.
  final CodeableConcept type;

  /// [period]
  /// The timeframe during when the exception is in force.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageException(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
