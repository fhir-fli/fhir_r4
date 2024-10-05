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
  final bool? deceasedBoolean;
  final Element? deceasedBooleanElement;
  final FhirString? deceasedDateTime;
  final Element? deceasedDateTimeElement;
  final List<Address>? address;
  final CodeableConcept? maritalStatus;
  final bool? multipleBirthBoolean;
  final Element? multipleBirthBooleanElement;
  final double? multipleBirthInteger;
  final Element? multipleBirthIntegerElement;
  final List<Attachment>? photo;
  final List<PatientContact>? contact;
  final List<PatientCommunication>? communication;
  final List<Reference>? generalPractitioner;
  final Reference? managingOrganization;
  final List<PatientLink>? link;

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
    this.deceasedBoolean,
    this.deceasedBooleanElement,
    this.deceasedDateTime,
    this.deceasedDateTimeElement,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,
    this.multipleBirthBooleanElement,
    this.multipleBirthInteger,
    this.multipleBirthIntegerElement,
    this.photo,
    this.contact,
    this.communication,
    this.generalPractitioner,
    this.managingOrganization,
    this.link,
  }): super(resourceType: R4ResourceType.Patient);

@override
Patient clone() => this;

}


@Data()
@JsonCodable()
class PatientContact {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? relationship;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;
  final FhirCode? gender;
  final Element? genderElement;
  final Reference? organization;
  final Period? period;

  PatientContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.genderElement,
    this.organization,
    this.period,
  });

}


@Data()
@JsonCodable()
class PatientCommunication {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept language;
  final FhirBoolean? preferred;
  final Element? preferredElement;

  PatientCommunication({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.language,
    this.preferred,
    this.preferredElement,
  });

}


@Data()
@JsonCodable()
class PatientLink {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference other;
  final FhirCode? type;
  final Element? typeElement;

  PatientLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.other,
    this.type,
    this.typeElement,
  });

}



