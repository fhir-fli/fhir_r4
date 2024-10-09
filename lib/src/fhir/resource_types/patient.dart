import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'patient.g.dart';

/// [Patient] /// Demographics and other administrative information about an individual or
/// animal receiving care or other health-related services.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Patient);
  @override
  String get fhirType => 'Patient';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An identifier for this patient.
  @JsonKey(name: 'identifier')
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
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [name] /// A name associated with the individual.
  @JsonKey(name: 'name')
  final List<HumanName>? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// individual may be contacted.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [gender] /// Administrative Gender - the gender that the patient is considered to have
  /// for administration and record keeping purposes.
  @JsonKey(name: 'gender')
  final AdministrativeGender? gender;
  @JsonKey(name: '_gender')
  final Element? genderElement;

  /// [birthDate] /// The date of birth for the individual.
  @JsonKey(name: 'birthDate')
  final FhirDate? birthDate;
  @JsonKey(name: '_birthDate')
  final Element? birthDateElement;

  /// [deceasedBoolean] /// Indicates if the individual is deceased or not.
  @JsonKey(name: 'deceasedBoolean')
  final FhirBoolean? deceasedBoolean;
  @JsonKey(name: '_deceasedBoolean')
  final Element? deceasedBooleanElement;

  /// [deceasedDateTime] /// Indicates if the individual is deceased or not.
  @JsonKey(name: 'deceasedDateTime')
  final FhirDateTime? deceasedDateTime;
  @JsonKey(name: '_deceasedDateTime')
  final Element? deceasedDateTimeElement;

  /// [address] /// An address for the individual.
  @JsonKey(name: 'address')
  final List<Address>? address;

  /// [maritalStatus] /// This field contains a patient's most recent marital (civil) status.
  @JsonKey(name: 'maritalStatus')
  final CodeableConcept? maritalStatus;

  /// [multipleBirthBoolean] /// Indicates whether the patient is part of a multiple (boolean) or indicates
  /// the actual birth order (integer).
  @JsonKey(name: 'multipleBirthBoolean')
  final FhirBoolean? multipleBirthBoolean;
  @JsonKey(name: '_multipleBirthBoolean')
  final Element? multipleBirthBooleanElement;

  /// [multipleBirthInteger] /// Indicates whether the patient is part of a multiple (boolean) or indicates
  /// the actual birth order (integer).
  @JsonKey(name: 'multipleBirthInteger')
  final FhirInteger? multipleBirthInteger;
  @JsonKey(name: '_multipleBirthInteger')
  final Element? multipleBirthIntegerElement;

  /// [photo] /// Image of the patient.
  @JsonKey(name: 'photo')
  final List<Attachment>? photo;

  /// [contact] /// A contact party (e.g. guardian, partner, friend) for the patient.
  @JsonKey(name: 'contact')
  final List<PatientContact>? contact;

  /// [communication] /// A language which may be used to communicate with the patient about his or
  /// her health.
  @JsonKey(name: 'communication')
  final List<PatientCommunication>? communication;

  /// [generalPractitioner] /// Patient's nominated care provider.
  @JsonKey(name: 'generalPractitioner')
  final List<Reference>? generalPractitioner;

  /// [managingOrganization] /// Organization that is the custodian of the patient record.
  @JsonKey(name: 'managingOrganization')
  final Reference? managingOrganization;

  /// [link] /// Link to another patient resource that concerns the same actual patient.
  @JsonKey(name: 'link')
  final List<PatientLink>? link;
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PatientToJson(this);

  @override
  Patient clone() => throw UnimplementedError();
  @override
  Patient copyWith({
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
    FhirBoolean? active,
    Element? activeElement,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Patient.fromYaml(dynamic yaml) => yaml is String
      ? Patient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Patient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Patient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Patient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Patient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PatientContact] /// A contact party (e.g. guardian, partner, friend) for the patient.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PatientContact';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationship] /// The nature of the relationship between the patient and the contact person.
  @JsonKey(name: 'relationship')
  final List<CodeableConcept>? relationship;

  /// [name] /// A name associated with the contact person.
  @JsonKey(name: 'name')
  final HumanName? name;

  /// [telecom] /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [address] /// Address for the contact person.
  @JsonKey(name: 'address')
  final Address? address;

  /// [gender] /// Administrative Gender - the gender that the contact person is considered to
  /// have for administration and record keeping purposes.
  @JsonKey(name: 'gender')
  final AdministrativeGender? gender;
  @JsonKey(name: '_gender')
  final Element? genderElement;

  /// [organization] /// Organization on behalf of which the contact is acting or for which the
  /// contact is working.
  @JsonKey(name: 'organization')
  final Reference? organization;

  /// [period] /// The period during which this contact person or organization is valid to be
  /// contacted relating to this patient.
  @JsonKey(name: 'period')
  final Period? period;
  factory PatientContact.fromJson(Map<String, dynamic> json) =>
      _$PatientContactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PatientContactToJson(this);

  @override
  PatientContact clone() => throw UnimplementedError();
  @override
  PatientContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? relationship,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    AdministrativeGender? gender,
    Element? genderElement,
    Reference? organization,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PatientContact.fromYaml(dynamic yaml) => yaml is String
      ? PatientContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PatientContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PatientContact cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PatientContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PatientContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PatientCommunication] /// A language which may be used to communicate with the patient about his or
/// her health.
@JsonSerializable()
class PatientCommunication extends BackboneElement {
  PatientCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
    this.preferredElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PatientCommunication';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [language] /// The ISO-639-1 alpha 2 code in lower case for the language, optionally
  /// followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  /// upper case; e.g. "en" for English, or "en-US" for American English versus
  /// "en-EN" for England English.
  @JsonKey(name: 'language')
  final CodeableConcept language;

  /// [preferred] /// Indicates whether or not the patient prefers this language (over other
  /// languages he masters up a certain level).
  @JsonKey(name: 'preferred')
  final FhirBoolean? preferred;
  @JsonKey(name: '_preferred')
  final Element? preferredElement;
  factory PatientCommunication.fromJson(Map<String, dynamic> json) =>
      _$PatientCommunicationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PatientCommunicationToJson(this);

  @override
  PatientCommunication clone() => throw UnimplementedError();
  @override
  PatientCommunication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
    FhirBoolean? preferred,
    Element? preferredElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PatientCommunication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PatientCommunication.fromYaml(dynamic yaml) => yaml is String
      ? PatientCommunication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PatientCommunication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PatientCommunication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PatientCommunication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PatientCommunication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PatientLink] /// Link to another patient resource that concerns the same actual patient.
@JsonSerializable()
class PatientLink extends BackboneElement {
  PatientLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.other,
    required this.type,
    this.typeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PatientLink';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [other] /// The other patient resource that the link refers to.
  @JsonKey(name: 'other')
  final Reference other;

  /// [type] /// The type of link between this patient resource and another patient
  /// resource.
  @JsonKey(name: 'type')
  final LinkType type;
  @JsonKey(name: '_type')
  final Element? typeElement;
  factory PatientLink.fromJson(Map<String, dynamic> json) =>
      _$PatientLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PatientLinkToJson(this);

  @override
  PatientLink clone() => throw UnimplementedError();
  @override
  PatientLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? other,
    LinkType? type,
    Element? typeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PatientLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      other: other ?? this.other,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PatientLink.fromYaml(dynamic yaml) => yaml is String
      ? PatientLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PatientLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PatientLink cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PatientLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PatientLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
