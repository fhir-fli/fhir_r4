import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Patient extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.Patient);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final List<HumanName>? name;
  final List<ContactPoint>? telecom;
  final FhirCode? gender;
  final Element? genderElement;
  final FhirDate? birthDate;
  final Element? birthDateElement;
  final FhirBoolean? deceasedBoolean;
  final Element? deceasedBooleanElement;
  final FhirDateTime? deceasedDateTime;
  final Element? deceasedDateTimeElement;
  final List<Address>? address;
  final CodeableConcept? maritalStatus;
  final FhirBoolean? multipleBirthBoolean;
  final Element? multipleBirthBooleanElement;
  final FhirInteger? multipleBirthInteger;
  final Element? multipleBirthIntegerElement;
  final List<Attachment>? photo;
  final List<PatientContact>? contact;
  final List<PatientCommunication>? communication;
  final List<Reference>? generalPractitioner;
  final Reference? managingOrganization;
  final List<PatientLink>? link;
  @override
  Patient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PatientContact extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<CodeableConcept>? relationship;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;
  final FhirCode? gender;
  final Element? genderElement;
  final Reference? organization;
  final Period? period;
  @override
  PatientContact clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PatientCommunication extends BackboneElement {
  PatientCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
    this.preferredElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept language;
  final FhirBoolean? preferred;
  final Element? preferredElement;
  @override
  PatientCommunication clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PatientLink extends BackboneElement {
  PatientLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.other,
    required this.type,
    this.typeElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference other;
  final FhirCode type;
  final Element? typeElement;
  @override
  PatientLink clone() => throw UnimplementedError();
}
