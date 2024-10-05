import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Account extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? type;
  final FhirString? name;
  final Element? nameElement;
  final List<Reference>? subject;
  final Period? servicePeriod;
  final List<AccountCoverage>? coverage;
  final Reference? owner;
  final FhirString? description;
  final Element? descriptionElement;
  final List<AccountGuarantor>? guarantor;
  final Reference? partOf;

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
    this.status,
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
  }): super(resourceType: R4ResourceType.Account);

@override
Account clone() => this;

}


@Data()
@JsonCodable()
class AccountCoverage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference coverage;
  final FhirPositiveInt? priority;
  final Element? priorityElement;

  AccountCoverage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.coverage,
    this.priority,
    this.priorityElement,
  });

}


@Data()
@JsonCodable()
class AccountGuarantor {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference party;
  final FhirBoolean? onHold;
  final Element? onHoldElement;
  final Period? period;

  AccountGuarantor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.party,
    this.onHold,
    this.onHoldElement,
    this.period,
  });

}



