import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Patient extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final List<HumanName>? name;
  final List<ContactPoint>? telecom;
  final FhirCode? gender;
  final Element? genderElement;
  final FhirDate? birthDate;
  final Element? birthDateElement;
  final FhirBoolean? deceasedFhirBoolean;
  final Element? deceasedFhirBooleanElement;
  final FhirDateTime? deceasedFhirDateTime;
  final Element? deceasedFhirDateTimeElement;
  final List<Address>? address;
  final CodeableConcept? maritalStatus;
  final FhirBoolean? multipleBirthFhirBoolean;
  final Element? multipleBirthFhirBooleanElement;
  final FhirInteger? multipleBirthFhirInteger;
  final Element? multipleBirthFhirIntegerElement;
  final List<Attachment>? photo;
  final List<BackboneElement>? contact;
  final List<BackboneElement>? communication;
  final List<Reference>? generalPractitioner;
  final Reference? managingOrganization;
  final List<BackboneElement>? link;

  Patient({
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
    this.active,
this.activeElement,
    this.name,
    this.telecom,
    this.gender,
this.genderElement,
    this.birthDate,
this.birthDateElement,
    this.deceasedFhirBoolean,
this.deceasedFhirBooleanElement,
    this.deceasedFhirDateTime,
this.deceasedFhirDateTimeElement,
    this.address,
    this.maritalStatus,
    this.multipleBirthFhirBoolean,
this.multipleBirthFhirBooleanElement,
    this.multipleBirthFhirInteger,
this.multipleBirthFhirIntegerElement,
    this.photo,
    this.contact,
    this.communication,
    this.generalPractitioner,
    this.managingOrganization,
    this.link,
  }) : super(resourceType: R4ResourceType.Patient);

@override
Patient clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PatientContact extends BackboneElement {
  final List<CodeableConcept>? relationship;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;
  final FhirCode? gender;
  final Element? genderElement;
  final Reference? organization;
  final Period? period;

  PatientContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
this.genderElement,
    this.organization,
    this.period,
  });

@override
PatientContact clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PatientCommunication extends BackboneElement {
  final CodeableConcept language;
  final FhirBoolean? preferred;
  final Element? preferredElement;

  PatientCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
this.preferredElement,
  });

@override
PatientCommunication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PatientLink extends BackboneElement {
  final Reference other;
  final FhirCode type;
  final Element? typeElement;

  PatientLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.other,
    required this.type,
this.typeElement,
  });

@override
PatientLink clone() => throw UnimplementedError();
}

