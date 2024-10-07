import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Account] /// A financial tool for tracking value accrued for a particular purpose. In
/// the healthcare field, used to track charges for a patient, cost centers,
/// etc.
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
  }) : super(resourceType: R4ResourceType.Account);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier used to reference the account. Might or might not be
  /// intended for human use (e.g. credit card number).
  final List<Identifier>? identifier;

  /// [status] /// Indicates whether the account is presently used/usable or not.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// Categorizes the account for reporting and searching purposes.
  final CodeableConcept? type;

  /// [name] /// Name used for the account when displaying it to humans in reports, etc.
  final FhirString? name;
  final Element? nameElement;

  /// [subject] /// Identifies the entity which incurs the expenses. While the immediate
  /// recipients of services or goods might be entities related to the subject,
  /// the expenses were ultimately incurred by the subject of the Account.
  final List<Reference>? subject;

  /// [servicePeriod] /// The date range of services associated with this account.
  final Period? servicePeriod;

  /// [coverage] /// The party(s) that are responsible for covering the payment of this account,
  /// and what order should they be applied to the account.
  final List<AccountCoverage>? coverage;

  /// [owner] /// Indicates the service area, hospital, department, etc. with responsibility
  /// for managing the Account.
  final Reference? owner;

  /// [description] /// Provides additional information about what the account tracks and how it is
  /// used.
  final FhirString? description;
  final Element? descriptionElement;

  /// [guarantor] /// The parties responsible for balancing the account if other payment options
  /// fall short.
  final List<AccountGuarantor>? guarantor;

  /// [partOf] /// Reference to a parent Account.
  final Reference? partOf;
  @override
  Account clone() => throw UnimplementedError();
  Account copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AccountCoverage] /// The party(s) that are responsible for covering the payment of this account,
/// and what order should they be applied to the account.
class AccountCoverage extends BackboneElement {
  AccountCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.priority,
    this.priorityElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [coverage] /// The party(s) that contribute to payment (or part of) of the charges applied
  /// to this account (including self-pay).
  ///
  /// A coverage may only be responsible for specific types of charges, and the
  /// sequence of the coverages in the account could be important when processing
  /// billing.
  final Reference coverage;

  /// [priority] /// The priority of the coverage in the context of this account.
  final FhirPositiveInt? priority;
  final Element? priorityElement;
  @override
  AccountCoverage clone() => throw UnimplementedError();
  AccountCoverage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirPositiveInt? priority,
    Element? priorityElement,
  }) {
    return AccountCoverage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AccountGuarantor] /// The parties responsible for balancing the account if other payment options
/// fall short.
class AccountGuarantor extends BackboneElement {
  AccountGuarantor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.party,
    this.onHold,
    this.onHoldElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [party] /// The entity who is responsible.
  final Reference party;

  /// [onHold] /// A guarantor may be placed on credit hold or otherwise have their role
  /// temporarily suspended.
  final FhirBoolean? onHold;
  final Element? onHoldElement;

  /// [period] /// The timeframe during which the guarantor accepts responsibility for the
  /// account.
  final Period? period;
  @override
  AccountGuarantor clone() => throw UnimplementedError();
  AccountGuarantor copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? party,
    FhirBoolean? onHold,
    Element? onHoldElement,
    Period? period,
  }) {
    return AccountGuarantor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      onHold: onHold ?? this.onHold,
      onHoldElement: onHoldElement ?? this.onHoldElement,
      period: period ?? this.period,
    );
  }
}
