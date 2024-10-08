import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'account.g.dart';

/// [Account] /// A financial tool for tracking value accrued for a particular purpose. In
/// the healthcare field, used to track charges for a patient, cost centers,
/// etc.
@JsonSerializable()
class Account extends DomainResource {
  Account({
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
    required this.status,
    this.statusElement,
    this.type,
    this.name,
    this.nameElement,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.descriptionElement,
    this.guarantor,
    this.partOf,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Account, fhirType: 'Account');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier used to reference the account. Might or might not be
  /// intended for human use (e.g. credit card number).
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates whether the account is presently used/usable or not.
  @JsonKey(name: 'status')
  final AccountStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// Categorizes the account for reporting and searching purposes.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [name] /// Name used for the account when displaying it to humans in reports, etc.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [subject] /// Identifies the entity which incurs the expenses. While the immediate
  /// recipients of services or goods might be entities related to the subject,
  /// the expenses were ultimately incurred by the subject of the Account.
  @JsonKey(name: 'subject')
  final List<Reference>? subject;

  /// [servicePeriod] /// The date range of services associated with this account.
  @JsonKey(name: 'servicePeriod')
  final Period? servicePeriod;

  /// [coverage] /// The party(s) that are responsible for covering the payment of this account,
  /// and what order should they be applied to the account.
  @JsonKey(name: 'coverage')
  final List<AccountCoverage>? coverage;

  /// [owner] /// Indicates the service area, hospital, department, etc. with responsibility
  /// for managing the Account.
  @JsonKey(name: 'owner')
  final Reference? owner;

  /// [description] /// Provides additional information about what the account tracks and how it is
  /// used.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [guarantor] /// The parties responsible for balancing the account if other payment options
  /// fall short.
  @JsonKey(name: 'guarantor')
  final List<AccountGuarantor>? guarantor;

  /// [partOf] /// Reference to a parent Account.
  @JsonKey(name: 'partOf')
  final Reference? partOf;
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @override
  Account clone() => throw UnimplementedError();
  @override
  Account copyWith({
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
    AccountStatus? status,
    Element? statusElement,
    CodeableConcept? type,
    FhirString? name,
    Element? nameElement,
    List<Reference>? subject,
    Period? servicePeriod,
    List<AccountCoverage>? coverage,
    Reference? owner,
    FhirString? description,
    Element? descriptionElement,
    List<AccountGuarantor>? guarantor,
    Reference? partOf,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Account(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      subject: subject ?? this.subject,
      servicePeriod: servicePeriod ?? this.servicePeriod,
      coverage: coverage ?? this.coverage,
      owner: owner ?? this.owner,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      guarantor: guarantor ?? this.guarantor,
      partOf: partOf ?? this.partOf,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Account.fromYaml(dynamic yaml) => yaml is String
      ? Account.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Account.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Account cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Account.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Account.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AccountCoverage] /// The party(s) that are responsible for covering the payment of this account,
/// and what order should they be applied to the account.
@JsonSerializable()
class AccountCoverage extends BackboneElement {
  AccountCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.priority,
    this.priorityElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'AccountCoverage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [coverage] /// The party(s) that contribute to payment (or part of) of the charges applied
  /// to this account (including self-pay).
  ///
  /// A coverage may only be responsible for specific types of charges, and the
  /// sequence of the coverages in the account could be important when processing
  /// billing.
  @JsonKey(name: 'coverage')
  final Reference coverage;

  /// [priority] /// The priority of the coverage in the context of this account.
  @JsonKey(name: 'priority')
  final FhirPositiveInt? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;
  factory AccountCoverage.fromJson(Map<String, dynamic> json) =>
      _$AccountCoverageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountCoverageToJson(this);

  @override
  AccountCoverage clone() => throw UnimplementedError();
  @override
  AccountCoverage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirPositiveInt? priority,
    Element? priorityElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AccountCoverage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AccountCoverage.fromYaml(dynamic yaml) => yaml is String
      ? AccountCoverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AccountCoverage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AccountCoverage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AccountCoverage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AccountCoverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AccountGuarantor] /// The parties responsible for balancing the account if other payment options
/// fall short.
@JsonSerializable()
class AccountGuarantor extends BackboneElement {
  AccountGuarantor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.party,
    this.onHold,
    this.onHoldElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'AccountGuarantor');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [party] /// The entity who is responsible.
  @JsonKey(name: 'party')
  final Reference party;

  /// [onHold] /// A guarantor may be placed on credit hold or otherwise have their role
  /// temporarily suspended.
  @JsonKey(name: 'onHold')
  final FhirBoolean? onHold;
  @JsonKey(name: '_onHold')
  final Element? onHoldElement;

  /// [period] /// The timeframe during which the guarantor accepts responsibility for the
  /// account.
  @JsonKey(name: 'period')
  final Period? period;
  factory AccountGuarantor.fromJson(Map<String, dynamic> json) =>
      _$AccountGuarantorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountGuarantorToJson(this);

  @override
  AccountGuarantor clone() => throw UnimplementedError();
  @override
  AccountGuarantor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? party,
    FhirBoolean? onHold,
    Element? onHoldElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AccountGuarantor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      onHold: onHold ?? this.onHold,
      onHoldElement: onHoldElement ?? this.onHoldElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AccountGuarantor.fromYaml(dynamic yaml) => yaml is String
      ? AccountGuarantor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AccountGuarantor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AccountGuarantor cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AccountGuarantor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AccountGuarantor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
