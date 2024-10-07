import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  }) : super(resourceType: R4ResourceType.RegulatedAuthorization);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final List<Reference>? subject;
  final CodeableConcept? type;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<CodeableConcept>? region;
  final CodeableConcept? status;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final Period? validityPeriod;
  final CodeableReference? indication;
  final CodeableConcept? intendedUse;
  final List<CodeableConcept>? basis;
  final Reference? holder;
  final Reference? regulator;
  final RegulatedAuthorizationCase? case_;
  @override
  RegulatedAuthorization clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Identifier? identifier;
  final CodeableConcept? type;
  final CodeableConcept? status;
  final Period? datePeriod;
  final FhirDateTime? dateDateTime;
  final Element? dateDateTimeElement;
  final List<RegulatedAuthorizationCase>? application;
  @override
  RegulatedAuthorizationCase clone() => throw UnimplementedError();
}
