import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [RegulatedAuthorization] /// Regulatory approval, clearance or licencing related to a regulated product,
/// treatment, facility or activity that is cited in a guidance, regulation,
/// rule or legislative act. An example is Market Authorization relating to a
/// Medicinal Product.
class RegulatedAuthorization extends DomainResource {
  RegulatedAuthorization({
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
    this.subject,
    this.type,
    this.description,
    this.descriptionElement,
    this.region,
    this.status,
    this.statusDate,
    this.statusDateElement,
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
  }) : super(resourceType: R4ResourceType.RegulatedAuthorization);

  @override
  String get fhirType => 'RegulatedAuthorization';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifier for the authorization, typically assigned by the
  /// authorizing body.
  final List<Identifier>? identifier;

  /// [subject] /// The product type, treatment, facility or activity that is being authorized.
  final List<Reference>? subject;

  /// [type] /// Overall type of this authorization, for example drug marketing approval,
  /// orphan drug designation.
  final CodeableConcept? type;

  /// [description] /// General textual supporting information.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [region] /// The territory (e.g., country, jurisdiction etc.) in which the authorization
  /// has been granted.
  final List<CodeableConcept>? region;

  /// [status] /// The status that is authorised e.g. approved. Intermediate states and
  /// actions can be tracked with cases and applications.
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the current status was assigned.
  final FhirDateTime? statusDate;
  final Element? statusDateElement;

  /// [validityPeriod] /// The time period in which the regulatory approval, clearance or licencing is
  /// in effect. As an example, a Marketing Authorization includes the date of
  /// authorization and/or an expiration date.
  final Period? validityPeriod;

  /// [indication] /// Condition for which the use of the regulated product applies.
  final CodeableReference? indication;

  /// [intendedUse] /// The intended use of the product, e.g. prevention, treatment, diagnosis.
  final CodeableConcept? intendedUse;

  /// [basis] /// The legal or regulatory framework against which this authorization is
  /// granted, or other reasons for it.
  final List<CodeableConcept>? basis;

  /// [holder] /// The organization that has been granted this authorization, by some
  /// authoritative body (the 'regulator').
  final Reference? holder;

  /// [regulator] /// The regulatory authority or authorizing body granting the authorization.
  /// For example, European Medicines Agency (EMA), Food and Drug Administration
  /// (FDA), Health Canada (HC), etc.
  final Reference? regulator;

  /// [case_] /// The case or regulatory procedure for granting or amending a regulated
  /// authorization. An authorization is granted in response to
  /// submissions/applications by those seeking authorization. A case is the
  /// administrative process that deals with the application(s) that relate to
  /// this and assesses them. Note: This area is subject to ongoing review and
  /// the workgroup is seeking implementer feedback on its use (see link at
  /// bottom of page).
  final RegulatedAuthorizationCase? case_;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
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
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (subject != null && subject!.isNotEmpty) {
      json['subject'] =
          subject!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (region != null && region!.isNotEmpty) {
      json['region'] =
          region!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (statusDate?.value != null) {
      json['statusDate'] = statusDate!.value;
    }
    if (statusDateElement != null) {
      json['_statusDate'] = statusDateElement!.toJson();
    }
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
      json['basis'] =
          basis!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
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

  factory RegulatedAuthorization.fromJson(Map<String, dynamic> json) {
    return RegulatedAuthorization(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      region: json['region'] != null
          ? (json['region'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      statusDate:
          json['statusDate'] != null ? FhirDateTime(json['statusDate']) : null,
      statusDateElement: json['_statusDate'] != null
          ? Element.fromJson(json['_statusDate'] as Map<String, dynamic>)
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(json['validityPeriod'] as Map<String, dynamic>)
          : null,
      indication: json['indication'] != null
          ? CodeableReference.fromJson(
              json['indication'] as Map<String, dynamic>)
          : null,
      intendedUse: json['intendedUse'] != null
          ? CodeableConcept.fromJson(
              json['intendedUse'] as Map<String, dynamic>)
          : null,
      basis: json['basis'] != null
          ? (json['basis'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      holder: json['holder'] != null
          ? Reference.fromJson(json['holder'] as Map<String, dynamic>)
          : null,
      regulator: json['regulator'] != null
          ? Reference.fromJson(json['regulator'] as Map<String, dynamic>)
          : null,
      case_: json['case'] != null
          ? RegulatedAuthorizationCase.fromJson(
              json['case'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  RegulatedAuthorization clone() => throw UnimplementedError();
  @override
  RegulatedAuthorization copyWith({
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
    List<Reference>? subject,
    CodeableConcept? type,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<CodeableConcept>? region,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Element? statusDateElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      subject: subject ?? this.subject,
      type: type ?? this.type,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      region: region ?? this.region,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
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

  factory RegulatedAuthorization.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RegulatedAuthorization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RegulatedAuthorization cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RegulatedAuthorization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RegulatedAuthorization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [RegulatedAuthorizationCase] /// The case or regulatory procedure for granting or amending a regulated
/// authorization. An authorization is granted in response to
/// submissions/applications by those seeking authorization. A case is the
/// administrative process that deals with the application(s) that relate to
/// this and assesses them. Note: This area is subject to ongoing review and
/// the workgroup is seeking implementer feedback on its use (see link at
/// bottom of page).
class RegulatedAuthorizationCase extends BackboneElement {
  RegulatedAuthorizationCase({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateDateTime,
    this.dateDateTimeElement,
    this.application,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'RegulatedAuthorizationCase';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifier by which this case can be referenced.
  final Identifier? identifier;

  /// [type] /// The defining type of case.
  final CodeableConcept? type;

  /// [status] /// The status associated with the case.
  final CodeableConcept? status;

  /// [datePeriod] /// Relevant date for this case.
  final Period? datePeriod;

  /// [dateDateTime] /// Relevant date for this case.
  final FhirDateTime? dateDateTime;
  final Element? dateDateTimeElement;

  /// [application] /// A regulatory submission from an organization to a regulator, as part of an
  /// assessing case. Multiple applications may occur over time, with more or
  /// different information to support or modify the submission or the
  /// authorization. The applications can be considered as steps within the
  /// longer running case or procedure for this authorization process.
  final List<RegulatedAuthorizationCase>? application;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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
    if (dateDateTime?.value != null) {
      json['dateDateTime'] = dateDateTime!.value;
    }
    if (dateDateTimeElement != null) {
      json['_dateDateTime'] = dateDateTimeElement!.toJson();
    }
    if (application != null && application!.isNotEmpty) {
      json['application'] = application!
          .map<dynamic>((RegulatedAuthorizationCase v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory RegulatedAuthorizationCase.fromJson(Map<String, dynamic> json) {
    return RegulatedAuthorizationCase(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      datePeriod: json['datePeriod'] != null
          ? Period.fromJson(json['datePeriod'] as Map<String, dynamic>)
          : null,
      dateDateTime: json['dateDateTime'] != null
          ? FhirDateTime(json['dateDateTime'])
          : null,
      dateDateTimeElement: json['_dateDateTime'] != null
          ? Element.fromJson(json['_dateDateTime'] as Map<String, dynamic>)
          : null,
      application: json['application'] != null
          ? (json['application'] as List<dynamic>)
              .map<RegulatedAuthorizationCase>((dynamic v) =>
                  RegulatedAuthorizationCase.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
    Element? dateDateTimeElement,
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
      dateDateTimeElement: dateDateTimeElement ?? this.dateDateTimeElement,
      application: application ?? this.application,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RegulatedAuthorizationCase.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorizationCase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RegulatedAuthorizationCase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RegulatedAuthorizationCase cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RegulatedAuthorizationCase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RegulatedAuthorizationCase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
