import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [InsurancePlan]
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlan extends DomainResource {
  /// Primary constructor for [InsurancePlan]

  InsurancePlan({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.type,
    this.name,
    this.alias,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.InsurancePlan,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlan(
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
      status: json['status'] != null
          ? PublicationStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      alias: parsePrimitiveList<FhirString>(
          json['alias'] as List<dynamic>?, json['_alias'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      ownedBy: json['ownedBy'] != null
          ? Reference.fromJson(
              json['ownedBy'] as Map<String, dynamic>,
            )
          : null,
      administeredBy: json['administeredBy'] != null
          ? Reference.fromJson(
              json['administeredBy'] as Map<String, dynamic>,
            )
          : null,
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<InsurancePlanContact>(
                (v) => InsurancePlanContact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      coverage: json['coverage'] != null
          ? (json['coverage'] as List<dynamic>)
              .map<InsurancePlanCoverage>(
                (v) => InsurancePlanCoverage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      plan: json['plan'] != null
          ? (json['plan'] as List<dynamic>)
              .map<InsurancePlanPlan>(
                (v) => InsurancePlanPlan.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [InsurancePlan] from a [String]
  /// or [YamlMap] object
  factory InsurancePlan.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('InsurancePlan cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlan';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this health insurance product which
  /// remain constant as the resource is updated and propagates from server
  /// to server.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the health insurance product.
  final PublicationStatus? status;

  /// [type]
  /// The kind of health insurance product.
  final List<CodeableConcept>? type;

  /// [name]
  /// Official name of the health insurance product as designated by the
  /// owner.
  final FhirString? name;

  /// [alias]
  /// A list of alternate names that the product is known as, or was known as
  /// in the past.
  final List<FhirString>? alias;

  /// [period]
  /// The period of time that the health insurance product is available.
  final Period? period;

  /// [ownedBy]
  /// The entity that is providing the health insurance product and
  /// underwriting the risk. This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  /// 'payers'.
  final Reference? ownedBy;

  /// [administeredBy]
  /// An organization which administer other services such as underwriting,
  /// customer service and/or claims processing on behalf of the health
  /// insurance product owner.
  final Reference? administeredBy;

  /// [coverageArea]
  /// The geographic region in which a health insurance product's benefits
  /// apply.
  final List<Reference>? coverageArea;

  /// [contact]
  /// The contact for the health insurance product for a certain purpose.
  final List<InsurancePlanContact>? contact;

  /// [endpoint]
  /// The technical endpoints providing access to services operated for the
  /// health insurance product.
  final List<Reference>? endpoint;

  /// [network]
  /// Reference to the network included in the health insurance product.
  final List<Reference>? network;

  /// [coverage]
  /// Details about the coverage offered by the insurance product.
  final List<InsurancePlanCoverage>? coverage;

  /// [plan]
  /// Details about an insurance plan.
  final List<InsurancePlanPlan>? plan;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final fieldJson9 = status!.toJson();
      json['status'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_status'] = fieldJson9['_value'];
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson10 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (name != null) {
      final fieldJson11 = name!.toJson();
      json['name'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_name'] = fieldJson11['_value'];
      }
    }

    if (alias != null && alias!.isNotEmpty) {
      final fieldJson12 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (period != null) {
      final fieldJson13 = period!.toJson();
      json['period'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_period'] = fieldJson13['_value'];
      }
    }

    if (ownedBy != null) {
      final fieldJson14 = ownedBy!.toJson();
      json['ownedBy'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_ownedBy'] = fieldJson14['_value'];
      }
    }

    if (administeredBy != null) {
      final fieldJson15 = administeredBy!.toJson();
      json['administeredBy'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_administeredBy'] = fieldJson15['_value'];
      }
    }

    if (coverageArea != null && coverageArea!.isNotEmpty) {
      final fieldJson16 = coverageArea!.map((e) => e.toJson()).toList();
      json['coverageArea'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_coverageArea'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson17 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (endpoint != null && endpoint!.isNotEmpty) {
      final fieldJson18 = endpoint!.map((e) => e.toJson()).toList();
      json['endpoint'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_endpoint'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (network != null && network!.isNotEmpty) {
      final fieldJson19 = network!.map((e) => e.toJson()).toList();
      json['network'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_network'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (coverage != null && coverage!.isNotEmpty) {
      final fieldJson20 = coverage!.map((e) => e.toJson()).toList();
      json['coverage'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_coverage'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (plan != null && plan!.isNotEmpty) {
      final fieldJson21 = plan!.map((e) => e.toJson()).toList();
      json['plan'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_plan'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  InsurancePlan clone() => throw UnimplementedError();
  @override
  InsurancePlan copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    PublicationStatus? status,
    List<CodeableConcept>? type,
    FhirString? name,
    List<FhirString>? alias,
    Period? period,
    Reference? ownedBy,
    Reference? administeredBy,
    List<Reference>? coverageArea,
    List<InsurancePlanContact>? contact,
    List<Reference>? endpoint,
    List<Reference>? network,
    List<InsurancePlanCoverage>? coverage,
    List<InsurancePlanPlan>? plan,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlan(
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
      name: name ?? this.name,
      alias: alias ?? this.alias,
      period: period ?? this.period,
      ownedBy: ownedBy ?? this.ownedBy,
      administeredBy: administeredBy ?? this.administeredBy,
      coverageArea: coverageArea ?? this.coverageArea,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      network: network ?? this.network,
      coverage: coverage ?? this.coverage,
      plan: plan ?? this.plan,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanContact]
/// The contact for the health insurance product for a certain purpose.
class InsurancePlanContact extends BackboneElement {
  /// Primary constructor for [InsurancePlanContact]

  InsurancePlanContact({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanContact.fromJson(Map<String, dynamic> json) {
    return InsurancePlanContact(
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
      purpose: json['purpose'] != null
          ? CodeableConcept.fromJson(
              json['purpose'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null
          ? HumanName.fromJson(
              json['name'] as Map<String, dynamic>,
            )
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      address: json['address'] != null
          ? Address.fromJson(
              json['address'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [InsurancePlanContact] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanContact.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InsurancePlanContact cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanContact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanContact';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [purpose]
  /// Indicates a purpose for which the contact can be reached.
  final CodeableConcept? purpose;

  /// [name]
  /// A name associated with the contact.
  final HumanName? name;

  /// [telecom]
  /// A contact detail (e.g. a telephone number or an email address) by which
  /// the party may be contacted.
  final List<ContactPoint>? telecom;

  /// [address]
  /// Visiting or postal addresses for the contact.
  final Address? address;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson3 = purpose!.toJson();
      json['purpose'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_purpose'] = fieldJson3['_value'];
      }
    }

    if (name != null) {
      final fieldJson4 = name!.toJson();
      json['name'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_name'] = fieldJson4['_value'];
      }
    }

    if (telecom != null && telecom!.isNotEmpty) {
      final fieldJson5 = telecom!.map((e) => e.toJson()).toList();
      json['telecom'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_telecom'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (address != null) {
      final fieldJson6 = address!.toJson();
      json['address'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_address'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  InsurancePlanContact clone() => throw UnimplementedError();
  @override
  InsurancePlanContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanCoverage]
/// Details about the coverage offered by the insurance product.
class InsurancePlanCoverage extends BackboneElement {
  /// Primary constructor for [InsurancePlanCoverage]

  InsurancePlanCoverage({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCoverage.fromJson(Map<String, dynamic> json) {
    return InsurancePlanCoverage(
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
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      benefit: ensureNonNullList((json['benefit'] as List<dynamic>)
          .map<InsurancePlanBenefit>(
            (v) => InsurancePlanBenefit.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
    );
  }

  /// Deserialize [InsurancePlanCoverage] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanCoverage.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanCoverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanCoverage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InsurancePlanCoverage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanCoverage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanCoverage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanCoverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanCoverage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Type of coverage (Medical; Dental; Mental Health; Substance Abuse;
  /// Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  final CodeableConcept type;

  /// [network]
  /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [benefit]
  /// Specific benefits under this type of coverage.
  final List<InsurancePlanBenefit> benefit;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (network != null && network!.isNotEmpty) {
      final fieldJson4 = network!.map((e) => e.toJson()).toList();
      json['network'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_network'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    final fieldJson5 = benefit.map((e) => e.toJson()).toList();
    json['benefit'] = fieldJson5.map((e) => e['value']).toList();
    if (fieldJson5.any((e) => e['_value'] != null)) {
      json['_benefit'] = fieldJson5.map((e) => e['_value']).toList();
    }

    return json;
  }

  @override
  InsurancePlanCoverage clone() => throw UnimplementedError();
  @override
  InsurancePlanCoverage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? network,
    List<InsurancePlanBenefit>? benefit,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanCoverage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      network: network ?? this.network,
      benefit: benefit ?? this.benefit,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanBenefit]
/// Specific benefits under this type of coverage.
class InsurancePlanBenefit extends BackboneElement {
  /// Primary constructor for [InsurancePlanBenefit]

  InsurancePlanBenefit({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.requirement,
    this.limit,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit.fromJson(Map<String, dynamic> json) {
    return InsurancePlanBenefit(
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
      requirement: json['requirement'] != null
          ? FhirString.fromJson({
              'value': json['requirement'],
              '_value': json['_requirement'],
            })
          : null,
      limit: json['limit'] != null
          ? (json['limit'] as List<dynamic>)
              .map<InsurancePlanLimit>(
                (v) => InsurancePlanLimit.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [InsurancePlanBenefit] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanBenefit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InsurancePlanBenefit cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanBenefit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBenefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanBenefit';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  final CodeableConcept type;

  /// [requirement]
  /// The referral requirements to have access/coverage for this benefit.
  final FhirString? requirement;

  /// [limit]
  /// The specific limits on the benefit.
  final List<InsurancePlanLimit>? limit;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (requirement != null) {
      final fieldJson4 = requirement!.toJson();
      json['requirement'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_requirement'] = fieldJson4['_value'];
      }
    }

    if (limit != null && limit!.isNotEmpty) {
      final fieldJson5 = limit!.map((e) => e.toJson()).toList();
      json['limit'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_limit'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  InsurancePlanBenefit clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? requirement,
    List<InsurancePlanLimit>? limit,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanBenefit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      requirement: requirement ?? this.requirement,
      limit: limit ?? this.limit,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanLimit]
/// The specific limits on the benefit.
class InsurancePlanLimit extends BackboneElement {
  /// Primary constructor for [InsurancePlanLimit]

  InsurancePlanLimit({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.value,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanLimit.fromJson(Map<String, dynamic> json) {
    return InsurancePlanLimit(
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
      value: json['value'] != null
          ? Quantity.fromJson(
              json['value'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [InsurancePlanLimit] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanLimit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanLimit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanLimit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('InsurancePlanLimit cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanLimit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanLimit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanLimit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanLimit';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [value]
  /// The maximum amount of a service item a plan will pay for a covered
  /// benefit. For examples. wellness visits, or eyeglasses.
  final Quantity? value;

  /// [code]
  /// The specific limit on the benefit.
  final CodeableConcept? code;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (value != null) {
      final fieldJson3 = value!.toJson();
      json['value'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_value'] = fieldJson3['_value'];
      }
    }

    if (code != null) {
      final fieldJson4 = code!.toJson();
      json['code'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_code'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  InsurancePlanLimit clone() => throw UnimplementedError();
  @override
  InsurancePlanLimit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? value,
    CodeableConcept? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanLimit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanPlan]
/// Details about an insurance plan.
class InsurancePlanPlan extends BackboneElement {
  /// Primary constructor for [InsurancePlanPlan]

  InsurancePlanPlan({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanPlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlanPlan(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
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
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      generalCost: json['generalCost'] != null
          ? (json['generalCost'] as List<dynamic>)
              .map<InsurancePlanGeneralCost>(
                (v) => InsurancePlanGeneralCost.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specificCost: json['specificCost'] != null
          ? (json['specificCost'] as List<dynamic>)
              .map<InsurancePlanSpecificCost>(
                (v) => InsurancePlanSpecificCost.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [InsurancePlanPlan] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanPlan.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanPlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanPlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('InsurancePlanPlan cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanPlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanPlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanPlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanPlan';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this health insurance plan which
  /// remain constant as the resource is updated and propagates from server
  /// to server.
  final List<Identifier>? identifier;

  /// [type]
  /// Type of plan. For example, "Platinum" or "High Deductable".
  final CodeableConcept? type;

  /// [coverageArea]
  /// The geographic region in which a health insurance plan's benefits
  /// apply.
  final List<Reference>? coverageArea;

  /// [network]
  /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [generalCost]
  /// Overall costs associated with the plan.
  final List<InsurancePlanGeneralCost>? generalCost;

  /// [specificCost]
  /// Costs associated with the coverage provided by the product.
  final List<InsurancePlanSpecificCost>? specificCost;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson3 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    if (coverageArea != null && coverageArea!.isNotEmpty) {
      final fieldJson5 = coverageArea!.map((e) => e.toJson()).toList();
      json['coverageArea'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_coverageArea'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (network != null && network!.isNotEmpty) {
      final fieldJson6 = network!.map((e) => e.toJson()).toList();
      json['network'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_network'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (generalCost != null && generalCost!.isNotEmpty) {
      final fieldJson7 = generalCost!.map((e) => e.toJson()).toList();
      json['generalCost'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_generalCost'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (specificCost != null && specificCost!.isNotEmpty) {
      final fieldJson8 = specificCost!.map((e) => e.toJson()).toList();
      json['specificCost'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_specificCost'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  InsurancePlanPlan clone() => throw UnimplementedError();
  @override
  InsurancePlanPlan copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    List<Reference>? coverageArea,
    List<Reference>? network,
    List<InsurancePlanGeneralCost>? generalCost,
    List<InsurancePlanSpecificCost>? specificCost,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanPlan(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      coverageArea: coverageArea ?? this.coverageArea,
      network: network ?? this.network,
      generalCost: generalCost ?? this.generalCost,
      specificCost: specificCost ?? this.specificCost,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanGeneralCost]
/// Overall costs associated with the plan.
class InsurancePlanGeneralCost extends BackboneElement {
  /// Primary constructor for [InsurancePlanGeneralCost]

  InsurancePlanGeneralCost({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.groupSize,
    this.cost,
    this.comment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanGeneralCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanGeneralCost(
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
      groupSize: json['groupSize'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['groupSize'],
              '_value': json['_groupSize'],
            })
          : null,
      cost: json['cost'] != null
          ? Money.fromJson(
              json['cost'] as Map<String, dynamic>,
            )
          : null,
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [InsurancePlanGeneralCost] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanGeneralCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanGeneralCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanGeneralCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InsurancePlanGeneralCost cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanGeneralCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanGeneralCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanGeneralCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanGeneralCost';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Type of cost.
  final CodeableConcept? type;

  /// [groupSize]
  /// Number of participants enrolled in the plan.
  final FhirPositiveInt? groupSize;

  /// [cost]
  /// Value of the cost.
  final Money? cost;

  /// [comment]
  /// Additional information about the general costs associated with this
  /// plan.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson3 = type!.toJson();
      json['type'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_type'] = fieldJson3['_value'];
      }
    }

    if (groupSize != null) {
      final fieldJson4 = groupSize!.toJson();
      json['groupSize'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_groupSize'] = fieldJson4['_value'];
      }
    }

    if (cost != null) {
      final fieldJson5 = cost!.toJson();
      json['cost'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_cost'] = fieldJson5['_value'];
      }
    }

    if (comment != null) {
      final fieldJson6 = comment!.toJson();
      json['comment'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_comment'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  InsurancePlanGeneralCost clone() => throw UnimplementedError();
  @override
  InsurancePlanGeneralCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirPositiveInt? groupSize,
    Money? cost,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanGeneralCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      groupSize: groupSize ?? this.groupSize,
      cost: cost ?? this.cost,
      comment: comment ?? this.comment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanSpecificCost]
/// Costs associated with the coverage provided by the product.
class InsurancePlanSpecificCost extends BackboneElement {
  /// Primary constructor for [InsurancePlanSpecificCost]

  InsurancePlanSpecificCost({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.category,
    this.benefit,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanSpecificCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanSpecificCost(
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
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      benefit: json['benefit'] != null
          ? (json['benefit'] as List<dynamic>)
              .map<InsurancePlanBenefit>(
                (v) => InsurancePlanBenefit.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [InsurancePlanSpecificCost] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanSpecificCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanSpecificCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanSpecificCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InsurancePlanSpecificCost cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanSpecificCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanSpecificCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanSpecificCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanSpecificCost';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [category]
  /// General category of benefit (Medical; Dental; Vision; Drug; Mental
  /// Health; Substance Abuse; Hospice, Home Health).
  final CodeableConcept category;

  /// [benefit]
  /// List of the specific benefits under this category of benefit.
  final List<InsurancePlanBenefit>? benefit;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = category.toJson();
    json['category'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_category'] = fieldJson3['_value'];
    }

    if (benefit != null && benefit!.isNotEmpty) {
      final fieldJson4 = benefit!.map((e) => e.toJson()).toList();
      json['benefit'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_benefit'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  InsurancePlanSpecificCost clone() => throw UnimplementedError();
  @override
  InsurancePlanSpecificCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    List<InsurancePlanBenefit>? benefit,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanSpecificCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      benefit: benefit ?? this.benefit,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanBenefit1]
/// List of the specific benefits under this category of benefit.
class InsurancePlanBenefit1 extends BackboneElement {
  /// Primary constructor for [InsurancePlanBenefit1]

  InsurancePlanBenefit1({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.cost,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit1.fromJson(Map<String, dynamic> json) {
    return InsurancePlanBenefit1(
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
      cost: json['cost'] != null
          ? (json['cost'] as List<dynamic>)
              .map<InsurancePlanCost>(
                (v) => InsurancePlanCost.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [InsurancePlanBenefit1] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanBenefit1.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanBenefit1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanBenefit1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InsurancePlanBenefit1 cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanBenefit1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBenefit1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanBenefit1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanBenefit1';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Type of specific benefit (preventative; primary care office visit;
  /// speciality office visit; hospitalization; emergency room; urgent care).
  final CodeableConcept type;

  /// [cost]
  /// List of the costs associated with a specific benefit.
  final List<InsurancePlanCost>? cost;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (cost != null && cost!.isNotEmpty) {
      final fieldJson4 = cost!.map((e) => e.toJson()).toList();
      json['cost'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_cost'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  InsurancePlanBenefit1 clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<InsurancePlanCost>? cost,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanBenefit1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      cost: cost ?? this.cost,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InsurancePlanCost]
/// List of the costs associated with a specific benefit.
class InsurancePlanCost extends BackboneElement {
  /// Primary constructor for [InsurancePlanCost]

  InsurancePlanCost({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanCost(
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
      applicability: json['applicability'] != null
          ? CodeableConcept.fromJson(
              json['applicability'] as Map<String, dynamic>,
            )
          : null,
      qualifiers: json['qualifiers'] != null
          ? (json['qualifiers'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      value: json['value'] != null
          ? Quantity.fromJson(
              json['value'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [InsurancePlanCost] from a [String]
  /// or [YamlMap] object
  factory InsurancePlanCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InsurancePlanCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('InsurancePlanCost cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InsurancePlanCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanCost';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Type of cost (copay; individual cap; family cap; coinsurance;
  /// deductible).
  final CodeableConcept type;

  /// [applicability]
  /// Whether the cost applies to in-network or out-of-network providers
  /// (in-network; out-of-network; other).
  final CodeableConcept? applicability;

  /// [qualifiers]
  /// Additional information about the cost, such as information about
  /// funding sources (e.g. HSA, HRA, FSA, RRA).
  final List<CodeableConcept>? qualifiers;

  /// [value]
  /// The actual cost value. (some of the costs may be represented as
  /// percentages rather than currency, e.g. 10% coinsurance).
  final Quantity? value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (applicability != null) {
      final fieldJson4 = applicability!.toJson();
      json['applicability'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_applicability'] = fieldJson4['_value'];
      }
    }

    if (qualifiers != null && qualifiers!.isNotEmpty) {
      final fieldJson5 = qualifiers!.map((e) => e.toJson()).toList();
      json['qualifiers'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_qualifiers'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (value != null) {
      final fieldJson6 = value!.toJson();
      json['value'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_value'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  InsurancePlanCost clone() => throw UnimplementedError();
  @override
  InsurancePlanCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? applicability,
    List<CodeableConcept>? qualifiers,
    Quantity? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      applicability: applicability ?? this.applicability,
      qualifiers: qualifiers ?? this.qualifiers,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
