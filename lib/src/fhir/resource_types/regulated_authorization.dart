import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RegulatedAuthorization]
/// Regulatory approval, clearance or licencing related to a regulated
/// product, treatment, facility or activity that is cited in a guidance,
/// regulation, rule or legislative act. An example is Market Authorization
/// relating to a Medicinal Product.
class RegulatedAuthorization extends DomainResource {
  /// Primary constructor for
  /// [RegulatedAuthorization]

  RegulatedAuthorization({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.subject,
    this.type,
    this.description,
    this.region,
    this.status,
    this.statusDate,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.RegulatedAuthorization,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorization.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return RegulatedAuthorization(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      subject: parseList<Reference>(
        json['subject'] as List<dynamic>?,
        json['_subject'] as List<dynamic>?,
        Reference.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      description: parseField<FhirMarkdown>(
        json['description'],
        json['_description'],
        FhirMarkdown.fromJson,
      ),
      region: parseList<CodeableConcept>(
        json['region'] as List<dynamic>?,
        json['_region'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      statusDate: parseField<FhirDateTime>(
        json['statusDate'],
        json['_statusDate'],
        FhirDateTime.fromJson,
      ),
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(
              json['validityPeriod'] as Map<String, dynamic>,
            )
          : null,
      indication: json['indication'] != null
          ? CodeableReference.fromJson(
              json['indication'] as Map<String, dynamic>,
            )
          : null,
      intendedUse: json['intendedUse'] != null
          ? CodeableConcept.fromJson(
              json['intendedUse'] as Map<String, dynamic>,
            )
          : null,
      basis: parseList<CodeableConcept>(
        json['basis'] as List<dynamic>?,
        json['_basis'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      holder: json['holder'] != null
          ? Reference.fromJson(
              json['holder'] as Map<String, dynamic>,
            )
          : null,
      regulator: json['regulator'] != null
          ? Reference.fromJson(
              json['regulator'] as Map<String, dynamic>,
            )
          : null,
      case_: json['case'] != null
          ? RegulatedAuthorizationCase.fromJson(
              json['case'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [RegulatedAuthorization]
  /// from a [String] or [YamlMap] object
  factory RegulatedAuthorization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RegulatedAuthorization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RegulatedAuthorization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RegulatedAuthorization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RegulatedAuthorization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RegulatedAuthorization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RegulatedAuthorization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RegulatedAuthorization';

  /// [identifier]
  /// Business identifier for the authorization, typically assigned by the
  /// authorizing body.
  final List<Identifier>? identifier;

  /// [subject]
  /// The product type, treatment, facility or activity that is being
  /// authorized.
  final List<Reference>? subject;

  /// [type]
  /// Overall type of this authorization, for example drug marketing
  /// approval, orphan drug designation.
  final CodeableConcept? type;

  /// [description]
  /// General textual supporting information.
  final FhirMarkdown? description;

  /// [region]
  /// The territory (e.g., country, jurisdiction etc.) in which the
  /// authorization has been granted.
  final List<CodeableConcept>? region;

  /// [status]
  /// The status that is authorised e.g. approved. Intermediate states and
  /// actions can be tracked with cases and applications.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the current status was assigned.
  final FhirDateTime? statusDate;

  /// [validityPeriod]
  /// The time period in which the regulatory approval, clearance or
  /// licencing is in effect. As an example, a Marketing Authorization
  /// includes the date of authorization and/or an expiration date.
  final Period? validityPeriod;

  /// [indication]
  /// Condition for which the use of the regulated product applies.
  final CodeableReference? indication;

  /// [intendedUse]
  /// The intended use of the product, e.g. prevention, treatment, diagnosis.
  final CodeableConcept? intendedUse;

  /// [basis]
  /// The legal or regulatory framework against which this authorization is
  /// granted, or other reasons for it.
  final List<CodeableConcept>? basis;

  /// [holder]
  /// The organization that has been granted this authorization, by some
  /// authoritative body (the 'regulator').
  final Reference? holder;

  /// [regulator]
  /// The regulatory authority or authorizing body granting the
  /// authorization. For example, European Medicines Agency (EMA), Food and
  /// Drug Administration (FDA), Health Canada (HC), etc.
  final Reference? regulator;

  /// [case_]
  /// The case or regulatory procedure for granting or amending a regulated
  /// authorization. An authorization is granted in response to
  /// submissions/applications by those seeking authorization. A case is the
  /// administrative process that deals with the application(s) that relate
  /// to this and assesses them. Note: This area is subject to ongoing review
  /// and the workgroup is seeking implementer feedback on its use (see link
  /// at bottom of page).
  final RegulatedAuthorizationCase? case_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    if (subject != null && subject!.isNotEmpty) {
      json['subject'] = subject!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('description', description);
    if (region != null && region!.isNotEmpty) {
      json['region'] = region!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    addField('statusDate', statusDate);
    if (validityPeriod != null) {
      json['validityPeriod'] = validityPeriod!.toJson();
    }

    if (indication != null) {
      json['indication'] = indication!.toJson();
    }

    if (intendedUse != null) {
      json['intendedUse'] = intendedUse!.toJson();
    }

    if (basis != null && basis!.isNotEmpty) {
      json['basis'] = basis!.map((e) => e.toJson()).toList();
    }

    if (holder != null) {
      json['holder'] = holder!.toJson();
    }

    if (regulator != null) {
      json['regulator'] = regulator!.toJson();
    }

    if (case_ != null) {
      json['case'] = case_!.toJson();
    }

    return json;
  }

  @override
  RegulatedAuthorization clone() => throw UnimplementedError();
  @override
  RegulatedAuthorization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? subject,
    CodeableConcept? type,
    FhirMarkdown? description,
    List<CodeableConcept>? region,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Period? validityPeriod,
    CodeableReference? indication,
    CodeableConcept? intendedUse,
    List<CodeableConcept>? basis,
    Reference? holder,
    Reference? regulator,
    RegulatedAuthorizationCase? case_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RegulatedAuthorization(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      subject: subject ?? this.subject,
      type: type ?? this.type,
      description: description ?? this.description,
      region: region ?? this.region,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      indication: indication ?? this.indication,
      intendedUse: intendedUse ?? this.intendedUse,
      basis: basis ?? this.basis,
      holder: holder ?? this.holder,
      regulator: regulator ?? this.regulator,
      case_: case_ ?? this.case_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [RegulatedAuthorizationCase]
/// The case or regulatory procedure for granting or amending a regulated
/// authorization. An authorization is granted in response to
/// submissions/applications by those seeking authorization. A case is the
/// administrative process that deals with the application(s) that relate
/// to this and assesses them. Note: This area is subject to ongoing review
/// and the workgroup is seeking implementer feedback on its use (see link
/// at bottom of page).
class RegulatedAuthorizationCase extends BackboneElement {
  /// Primary constructor for
  /// [RegulatedAuthorizationCase]

  RegulatedAuthorizationCase({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateDateTime,
    this.application,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorizationCase.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return RegulatedAuthorizationCase(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      datePeriod: json['datePeriod'] != null
          ? Period.fromJson(
              json['datePeriod'] as Map<String, dynamic>,
            )
          : null,
      dateDateTime: parseField<FhirDateTime>(
        json['dateDateTime'],
        json['_dateDateTime'],
        FhirDateTime.fromJson,
      ),
      application: parseList<RegulatedAuthorizationCase>(
        json['application'] as List<dynamic>?,
        json['_application'] as List<dynamic>?,
        RegulatedAuthorizationCase.fromJson,
      ),
    );
  }

  /// Deserialize [RegulatedAuthorizationCase]
  /// from a [String] or [YamlMap] object
  factory RegulatedAuthorizationCase.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RegulatedAuthorizationCase.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RegulatedAuthorizationCase.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RegulatedAuthorizationCase '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RegulatedAuthorizationCase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RegulatedAuthorizationCase.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RegulatedAuthorizationCase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RegulatedAuthorizationCase';

  /// [identifier]
  /// Identifier by which this case can be referenced.
  final Identifier? identifier;

  /// [type]
  /// The defining type of case.
  final CodeableConcept? type;

  /// [status]
  /// The status associated with the case.
  final CodeableConcept? status;

  /// [datePeriod]
  /// Relevant date for this case.
  final Period? datePeriod;

  /// [dateDateTime]
  /// Relevant date for this case.
  final FhirDateTime? dateDateTime;

  /// [application]
  /// A regulatory submission from an organization to a regulator, as part of
  /// an assessing case. Multiple applications may occur over time, with more
  /// or different information to support or modify the submission or the
  /// authorization. The applications can be considered as steps within the
  /// longer running case or procedure for this authorization process.
  final List<RegulatedAuthorizationCase>? application;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (datePeriod != null) {
      json['datePeriod'] = datePeriod!.toJson();
    }

    addField('dateDateTime', dateDateTime);
    if (application != null && application!.isNotEmpty) {
      json['application'] = application!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  RegulatedAuthorizationCase clone() => throw UnimplementedError();
  @override
  RegulatedAuthorizationCase copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    CodeableConcept? status,
    Period? datePeriod,
    FhirDateTime? dateDateTime,
    List<RegulatedAuthorizationCase>? application,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RegulatedAuthorizationCase(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      status: status ?? this.status,
      datePeriod: datePeriod ?? this.datePeriod,
      dateDateTime: dateDateTime ?? this.dateDateTime,
      application: application ?? this.application,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
