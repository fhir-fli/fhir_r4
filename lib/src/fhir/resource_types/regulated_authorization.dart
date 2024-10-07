import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class RegulatedAuthorization extends DomainResource {
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
  final BackboneElement? case_;

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

@override
RegulatedAuthorization clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class RegulatedAuthorizationCase extends BackboneElement {
  final Identifier? identifier;
  final CodeableConcept? type;
  final CodeableConcept? status;
  final Period? datePeriod;
  final FhirDateTime? dateFhirDateTime;
  final Element? dateFhirDateTimeElement;
  final List<dynamic>? application;

  RegulatedAuthorizationCase({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateFhirDateTime,
this.dateFhirDateTimeElement,
    this.application,
  });

@override
RegulatedAuthorizationCase clone() => throw UnimplementedError();
}

