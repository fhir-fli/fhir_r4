import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Patient] /// Demographics and other administrative information about an individual or
/// animal receiving care or other health-related services.
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

  /// [identifier] /// An identifier for this patient.
  final List<Identifier>? identifier;

  /// [active] /// Whether this patient record is in active use.
  /// Many systems use this property to mark as non-current patients, such as
  /// those that have not been seen for a period of time based on an
  /// organization's business rules.
  ///
  /// It is often used to filter patient lists to exclude inactive patients
  ///
  /// Deceased patients may also be marked as inactive for the same reasons, but
  /// may be active for some time after death.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [name] /// A name associated with the individual.
  final List<HumanName>? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// individual may be contacted.
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender - the gender that the patient is considered to have
  /// for administration and record keeping purposes.
  final FhirCode? gender;
  final Element? genderElement;

  /// [birthDate] /// The date of birth for the individual.
  final FhirDate? birthDate;
  final Element? birthDateElement;

  /// [deceasedBoolean] /// Indicates if the individual is deceased or not.
  final FhirBoolean? deceasedBoolean;
  final Element? deceasedBooleanElement;

  /// [deceasedDateTime] /// Indicates if the individual is deceased or not.
  final FhirDateTime? deceasedDateTime;
  final Element? deceasedDateTimeElement;

  /// [address] /// An address for the individual.
  final List<Address>? address;

  /// [maritalStatus] /// This field contains a patient's most recent marital (civil) status.
  final CodeableConcept? maritalStatus;

  /// [multipleBirthBoolean] /// Indicates whether the patient is part of a multiple (boolean) or indicates
  /// the actual birth order (integer).
  final FhirBoolean? multipleBirthBoolean;
  final Element? multipleBirthBooleanElement;

  /// [multipleBirthInteger] /// Indicates whether the patient is part of a multiple (boolean) or indicates
  /// the actual birth order (integer).
  final FhirInteger? multipleBirthInteger;
  final Element? multipleBirthIntegerElement;

  /// [photo] /// Image of the patient.
  final List<Attachment>? photo;

  /// [contact] /// A contact party (e.g. guardian, partner, friend) for the patient.
  final List<PatientContact>? contact;

  /// [communication] /// A language which may be used to communicate with the patient about his or
  /// her health.
  final List<PatientCommunication>? communication;

  /// [generalPractitioner] /// Patient's nominated care provider.
  final List<Reference>? generalPractitioner;

  /// [managingOrganization] /// Organization that is the custodian of the patient record.
  final Reference? managingOrganization;

  /// [link] /// Link to another patient resource that concerns the same actual patient.
  final List<PatientLink>? link;
  @override
  Patient clone() => throw UnimplementedError();
  Patient copy({
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
    FhirBoolean? active,
    Element? activeElement,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    FhirCode? gender,
    Element? genderElement,
    FhirDate? birthDate,
    Element? birthDateElement,
    FhirBoolean? deceasedBoolean,
    Element? deceasedBooleanElement,
    FhirDateTime? deceasedDateTime,
    Element? deceasedDateTimeElement,
    List<Address>? address,
    CodeableConcept? maritalStatus,
    FhirBoolean? multipleBirthBoolean,
    Element? multipleBirthBooleanElement,
    FhirInteger? multipleBirthInteger,
    Element? multipleBirthIntegerElement,
    List<Attachment>? photo,
    List<PatientContact>? contact,
    List<PatientCommunication>? communication,
    List<Reference>? generalPractitioner,
    Reference? managingOrganization,
    List<PatientLink>? link,
  }) {
    return Patient(
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
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      birthDate: birthDate ?? this.birthDate,
      birthDateElement: birthDateElement ?? this.birthDateElement,
      deceasedBoolean: deceasedBoolean ?? this.deceasedBoolean,
      deceasedBooleanElement:
          deceasedBooleanElement ?? this.deceasedBooleanElement,
      deceasedDateTime: deceasedDateTime ?? this.deceasedDateTime,
      deceasedDateTimeElement:
          deceasedDateTimeElement ?? this.deceasedDateTimeElement,
      address: address ?? this.address,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      multipleBirthBoolean: multipleBirthBoolean ?? this.multipleBirthBoolean,
      multipleBirthBooleanElement:
          multipleBirthBooleanElement ?? this.multipleBirthBooleanElement,
      multipleBirthInteger: multipleBirthInteger ?? this.multipleBirthInteger,
      multipleBirthIntegerElement:
          multipleBirthIntegerElement ?? this.multipleBirthIntegerElement,
      photo: photo ?? this.photo,
      contact: contact ?? this.contact,
      communication: communication ?? this.communication,
      generalPractitioner: generalPractitioner ?? this.generalPractitioner,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      link: link ?? this.link,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PatientContact] /// A contact party (e.g. guardian, partner, friend) for the patient.
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

  /// [relationship] /// The nature of the relationship between the patient and the contact person.
  final List<CodeableConcept>? relationship;

  /// [name] /// A name associated with the contact person.
  final HumanName? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [address] /// Address for the contact person.
  final Address? address;

  /// [gender] /// Administrative Gender - the gender that the contact person is considered to
  /// have for administration and record keeping purposes.
  final FhirCode? gender;
  final Element? genderElement;

  /// [organization] /// Organization on behalf of which the contact is acting or for which the
  /// contact is working.
  final Reference? organization;

  /// [period] /// The period during which this contact person or organization is valid to be
  /// contacted relating to this patient.
  final Period? period;
  @override
  PatientContact clone() => throw UnimplementedError();
  PatientContact copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? relationship,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    FhirCode? gender,
    Element? genderElement,
    Reference? organization,
    Period? period,
  }) {
    return PatientContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationship: relationship ?? this.relationship,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      organization: organization ?? this.organization,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PatientCommunication] /// A language which may be used to communicate with the patient about his or
/// her health.
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

  /// [language] /// The ISO-639-1 alpha 2 code in lower case for the language, optionally
  /// followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  /// upper case; e.g. "en" for English, or "en-US" for American English versus
  /// "en-EN" for England English.
  final CodeableConcept language;

  /// [preferred] /// Indicates whether or not the patient prefers this language (over other
  /// languages he masters up a certain level).
  final FhirBoolean? preferred;
  final Element? preferredElement;
  @override
  PatientCommunication clone() => throw UnimplementedError();
  PatientCommunication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
    FhirBoolean? preferred,
    Element? preferredElement,
  }) {
    return PatientCommunication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PatientLink] /// Link to another patient resource that concerns the same actual patient.
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

  /// [other] /// The other patient resource that the link refers to.
  final Reference other;

  /// [type] /// The type of link between this patient resource and another patient
  /// resource.
  final FhirCode type;
  final Element? typeElement;
  @override
  PatientLink clone() => throw UnimplementedError();
  PatientLink copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? other,
    FhirCode? type,
    Element? typeElement,
  }) {
    return PatientLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      other: other ?? this.other,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
    );
  }
}
