import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Patient]
/// Demographics and other administrative information about an individual
/// or animal receiving care or other health-related services.
class Patient extends DomainResource {
  /// Primary constructor for [Patient]

  Patient({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,

    /// Extensions for [active]
    this.activeElement,
    this.name,
    this.telecom,
    this.gender,

    /// Extensions for [gender]
    this.genderElement,
    this.birthDate,

    /// Extensions for [birthDate]
    this.birthDateElement,
    this.deceasedBoolean,

    /// Extensions for [deceasedBoolean]
    this.deceasedBooleanElement,
    this.deceasedDateTime,

    /// Extensions for [deceasedDateTime]
    this.deceasedDateTimeElement,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,

    /// Extensions for [multipleBirthBoolean]
    this.multipleBirthBooleanElement,
    this.multipleBirthInteger,

    /// Extensions for [multipleBirthInteger]
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
  }) : super(
          resourceType: R4ResourceType.Patient,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      active:
          json['active'] != null ? FhirBoolean.fromJson(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(
              json['_active'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null
          ? (json['name'] as List<dynamic>)
              .map<HumanName>(
                (dynamic v) => HumanName.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (dynamic v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      gender: json['gender'] != null
          ? AdministrativeGender.fromJson(json['gender'])
          : null,
      genderElement: json['_gender'] != null
          ? Element.fromJson(
              json['_gender'] as Map<String, dynamic>,
            )
          : null,
      birthDate: json['birthDate'] != null
          ? FhirDate.fromJson(json['birthDate'])
          : null,
      birthDateElement: json['_birthDate'] != null
          ? Element.fromJson(
              json['_birthDate'] as Map<String, dynamic>,
            )
          : null,
      deceasedBoolean: json['deceasedBoolean'] != null
          ? FhirBoolean.fromJson(json['deceasedBoolean'])
          : null,
      deceasedBooleanElement: json['_deceasedBoolean'] != null
          ? Element.fromJson(
              json['_deceasedBoolean'] as Map<String, dynamic>,
            )
          : null,
      deceasedDateTime: json['deceasedDateTime'] != null
          ? FhirDateTime.fromJson(json['deceasedDateTime'])
          : null,
      deceasedDateTimeElement: json['_deceasedDateTime'] != null
          ? Element.fromJson(
              json['_deceasedDateTime'] as Map<String, dynamic>,
            )
          : null,
      address: json['address'] != null
          ? (json['address'] as List<dynamic>)
              .map<Address>(
                (dynamic v) => Address.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      maritalStatus: json['maritalStatus'] != null
          ? CodeableConcept.fromJson(
              json['maritalStatus'] as Map<String, dynamic>,
            )
          : null,
      multipleBirthBoolean: json['multipleBirthBoolean'] != null
          ? FhirBoolean.fromJson(json['multipleBirthBoolean'])
          : null,
      multipleBirthBooleanElement: json['_multipleBirthBoolean'] != null
          ? Element.fromJson(
              json['_multipleBirthBoolean'] as Map<String, dynamic>,
            )
          : null,
      multipleBirthInteger: json['multipleBirthInteger'] != null
          ? FhirInteger.fromJson(json['multipleBirthInteger'])
          : null,
      multipleBirthIntegerElement: json['_multipleBirthInteger'] != null
          ? Element.fromJson(
              json['_multipleBirthInteger'] as Map<String, dynamic>,
            )
          : null,
      photo: json['photo'] != null
          ? (json['photo'] as List<dynamic>)
              .map<Attachment>(
                (dynamic v) => Attachment.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<PatientContact>(
                (dynamic v) => PatientContact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      communication: json['communication'] != null
          ? (json['communication'] as List<dynamic>)
              .map<PatientCommunication>(
                (dynamic v) => PatientCommunication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      generalPractitioner: json['generalPractitioner'] != null
          ? (json['generalPractitioner'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>,
            )
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<PatientLink>(
                (dynamic v) => PatientLink.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Patient] from a [String] or [YamlMap] object
  factory Patient.fromYaml(dynamic yaml) => yaml is String
      ? Patient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Patient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Patient cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Patient] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Patient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Patient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Patient';

  /// [identifier]
  /// An identifier for this patient.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this patient record is in active use.
  /// Many systems use this property to mark as non-current patients, such as
  /// those that have not been seen for a period of time based on an
  /// organization's business rules.
  ///
  /// It is often used to filter patient lists to exclude inactive patients
  ///
  /// Deceased patients may also be marked as inactive for the same reasons,
  /// but may be active for some time after death.
  final FhirBoolean? active;

  /// Extensions for [active]
  final Element? activeElement;

  /// [name]
  /// A name associated with the individual.
  final List<HumanName>? name;

  /// [telecom]
  /// A contact detail (e.g. a telephone number or an email address) by which
  /// the individual may be contacted.
  final List<ContactPoint>? telecom;

  /// [gender]
  /// Administrative Gender - the gender that the patient is considered to
  /// have for administration and record keeping purposes.
  final AdministrativeGender? gender;

  /// Extensions for [gender]
  final Element? genderElement;

  /// [birthDate]
  /// The date of birth for the individual.
  final FhirDate? birthDate;

  /// Extensions for [birthDate]
  final Element? birthDateElement;

  /// [deceasedBoolean]
  /// Indicates if the individual is deceased or not.
  final FhirBoolean? deceasedBoolean;

  /// Extensions for [deceasedBoolean]
  final Element? deceasedBooleanElement;

  /// [deceasedDateTime]
  /// Indicates if the individual is deceased or not.
  final FhirDateTime? deceasedDateTime;

  /// Extensions for [deceasedDateTime]
  final Element? deceasedDateTimeElement;

  /// [address]
  /// An address for the individual.
  final List<Address>? address;

  /// [maritalStatus]
  /// This field contains a patient's most recent marital (civil) status.
  final CodeableConcept? maritalStatus;

  /// [multipleBirthBoolean]
  /// Indicates whether the patient is part of a multiple (boolean) or
  /// indicates the actual birth order (integer).
  final FhirBoolean? multipleBirthBoolean;

  /// Extensions for [multipleBirthBoolean]
  final Element? multipleBirthBooleanElement;

  /// [multipleBirthInteger]
  /// Indicates whether the patient is part of a multiple (boolean) or
  /// indicates the actual birth order (integer).
  final FhirInteger? multipleBirthInteger;

  /// Extensions for [multipleBirthInteger]
  final Element? multipleBirthIntegerElement;

  /// [photo]
  /// Image of the patient.
  final List<Attachment>? photo;

  /// [contact]
  /// A contact party (e.g. guardian, partner, friend) for the patient.
  final List<PatientContact>? contact;

  /// [communication]
  /// A language which may be used to communicate with the patient about his
  /// or her health.
  final List<PatientCommunication>? communication;

  /// [generalPractitioner]
  /// Patient's nominated care provider.
  final List<Reference>? generalPractitioner;

  /// [managingOrganization]
  /// Organization that is the custodian of the patient record.
  final Reference? managingOrganization;

  /// [link]
  /// Link to another patient resource that concerns the same actual patient.
  final List<PatientLink>? link;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (active?.value != null) {
      json['active'] = active!.toJson();
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    if (name != null && name!.isNotEmpty) {
      json['name'] = name!.map((HumanName v) => v.toJson()).toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((ContactPoint v) => v.toJson()).toList();
    }
    if (gender != null) {
      json['gender'] = gender!.toJson();
    }
    if (birthDate?.value != null) {
      json['birthDate'] = birthDate!.toJson();
    }
    if (birthDateElement != null) {
      json['_birthDate'] = birthDateElement!.toJson();
    }
    if (deceasedBoolean?.value != null) {
      json['deceasedBoolean'] = deceasedBoolean!.toJson();
    }
    if (deceasedBooleanElement != null) {
      json['_deceasedBoolean'] = deceasedBooleanElement!.toJson();
    }
    if (deceasedDateTime?.value != null) {
      json['deceasedDateTime'] = deceasedDateTime!.toJson();
    }
    if (deceasedDateTimeElement != null) {
      json['_deceasedDateTime'] = deceasedDateTimeElement!.toJson();
    }
    if (address != null && address!.isNotEmpty) {
      json['address'] = address!.map((Address v) => v.toJson()).toList();
    }
    if (maritalStatus != null) {
      json['maritalStatus'] = maritalStatus!.toJson();
    }
    if (multipleBirthBoolean?.value != null) {
      json['multipleBirthBoolean'] = multipleBirthBoolean!.toJson();
    }
    if (multipleBirthBooleanElement != null) {
      json['_multipleBirthBoolean'] = multipleBirthBooleanElement!.toJson();
    }
    if (multipleBirthInteger?.value != null) {
      json['multipleBirthInteger'] = multipleBirthInteger!.toJson();
    }
    if (multipleBirthIntegerElement != null) {
      json['_multipleBirthInteger'] = multipleBirthIntegerElement!.toJson();
    }
    if (photo != null && photo!.isNotEmpty) {
      json['photo'] = photo!.map((Attachment v) => v.toJson()).toList();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((PatientContact v) => v.toJson()).toList();
    }
    if (communication != null && communication!.isNotEmpty) {
      json['communication'] =
          communication!.map((PatientCommunication v) => v.toJson()).toList();
    }
    if (generalPractitioner != null && generalPractitioner!.isNotEmpty) {
      json['generalPractitioner'] =
          generalPractitioner!.map((Reference v) => v.toJson()).toList();
    }
    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }
    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map((PatientLink v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [PatientContact]
/// A contact party (e.g. guardian, partner, friend) for the patient.
class PatientContact extends BackboneElement {
  /// Primary constructor for [PatientContact]

  PatientContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,

    /// Extensions for [gender]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientContact.fromJson(Map<String, dynamic> json) {
    return PatientContact(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relationship: json['relationship'] != null
          ? (json['relationship'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null
          ? HumanName.fromJson(
              json['name'] as Map<String, dynamic>,
            )
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (dynamic v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      address: json['address'] != null
          ? Address.fromJson(
              json['address'] as Map<String, dynamic>,
            )
          : null,
      gender: json['gender'] != null
          ? AdministrativeGender.fromJson(json['gender'])
          : null,
      genderElement: json['_gender'] != null
          ? Element.fromJson(
              json['_gender'] as Map<String, dynamic>,
            )
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(
              json['organization'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PatientContact] from a [String] or [YamlMap] object
  factory PatientContact.fromYaml(dynamic yaml) => yaml is String
      ? PatientContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PatientContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PatientContact cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PatientContact] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PatientContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PatientContact';

  /// [relationship]
  /// The nature of the relationship between the patient and the contact
  /// person.
  final List<CodeableConcept>? relationship;

  /// [name]
  /// A name associated with the contact person.
  final HumanName? name;

  /// [telecom]
  /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [address]
  /// Address for the contact person.
  final Address? address;

  /// [gender]
  /// Administrative Gender - the gender that the contact person is
  /// considered to have for administration and record keeping purposes.
  final AdministrativeGender? gender;

  /// Extensions for [gender]
  final Element? genderElement;

  /// [organization]
  /// Organization on behalf of which the contact is acting or for which the
  /// contact is working.
  final Reference? organization;

  /// [period]
  /// The period during which this contact person or organization is valid to
  /// be contacted relating to this patient.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (relationship != null && relationship!.isNotEmpty) {
      json['relationship'] =
          relationship!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (name != null) {
      json['name'] = name!.toJson();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((ContactPoint v) => v.toJson()).toList();
    }
    if (address != null) {
      json['address'] = address!.toJson();
    }
    if (gender != null) {
      json['gender'] = gender!.toJson();
    }
    if (organization != null) {
      json['organization'] = organization!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

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
}

/// [PatientCommunication]
/// A language which may be used to communicate with the patient about his
/// or her health.
class PatientCommunication extends BackboneElement {
  /// Primary constructor for [PatientCommunication]

  PatientCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,

    /// Extensions for [preferred]
    this.preferredElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientCommunication.fromJson(Map<String, dynamic> json) {
    return PatientCommunication(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      language: CodeableConcept.fromJson(
        json['language'] as Map<String, dynamic>,
      ),
      preferred: json['preferred'] != null
          ? FhirBoolean.fromJson(json['preferred'])
          : null,
      preferredElement: json['_preferred'] != null
          ? Element.fromJson(
              json['_preferred'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PatientCommunication] from a [String] or [YamlMap] object
  factory PatientCommunication.fromYaml(dynamic yaml) => yaml is String
      ? PatientCommunication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PatientCommunication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PatientCommunication cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PatientCommunication] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientCommunication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PatientCommunication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PatientCommunication';

  /// [language]
  /// The ISO-639-1 alpha 2 code in lower case for the language, optionally
  /// followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  /// upper case; e.g. "en" for English, or "en-US" for American English
  /// versus "en-EN" for England English.
  final CodeableConcept language;

  /// [preferred]
  /// Indicates whether or not the patient prefers this language (over other
  /// languages he masters up a certain level).
  final FhirBoolean? preferred;

  /// Extensions for [preferred]
  final Element? preferredElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['language'] = language.toJson();
    if (preferred?.value != null) {
      json['preferred'] = preferred!.toJson();
    }
    if (preferredElement != null) {
      json['_preferred'] = preferredElement!.toJson();
    }
    return json;
  }

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
}

/// [PatientLink]
/// Link to another patient resource that concerns the same actual patient.
class PatientLink extends BackboneElement {
  /// Primary constructor for [PatientLink]

  PatientLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.other,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientLink.fromJson(Map<String, dynamic> json) {
    return PatientLink(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      other: Reference.fromJson(
        json['other'] as Map<String, dynamic>,
      ),
      type: LinkType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PatientLink] from a [String] or [YamlMap] object
  factory PatientLink.fromYaml(dynamic yaml) => yaml is String
      ? PatientLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PatientLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('PatientLink cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PatientLink] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PatientLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PatientLink';

  /// [other]
  /// The other patient resource that the link refers to.
  final Reference other;

  /// [type]
  /// The type of link between this patient resource and another patient
  /// resource.
  final LinkType type;

  /// Extensions for [type]
  final Element? typeElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['other'] = other.toJson();
    json['type'] = type.toJson();
    return json;
  }

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
}
