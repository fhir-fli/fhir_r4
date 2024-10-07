import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<Identifier>? identifier;
  final FhirCode status;
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
  @override
  Account clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final Reference coverage;
  final FhirPositiveInt? priority;
  final Element? priorityElement;
  @override
  AccountCoverage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final Reference party;
  final FhirBoolean? onHold;
  final Element? onHoldElement;
  final Period? period;
  @override
  AccountGuarantor clone() => throw UnimplementedError();
}
