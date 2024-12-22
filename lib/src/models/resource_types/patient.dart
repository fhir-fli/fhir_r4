import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Patient]
/// Demographics and other administrative information about an individual
/// or animal receiving care or other health-related services.
class Patient extends DomainResource {
  /// Primary constructor for
  /// [Patient]

  const Patient({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.deceasedX,
    this.address,
    this.maritalStatus,
    this.multipleBirthX,
    this.photo,
    this.contact,
    this.communication,
    this.generalPractitioner,
    this.managingOrganization,
    this.link,
  }) : super(
          resourceType: R4ResourceType.Patient,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Patient.fromJson(
    Map<String, dynamic> json,
  ) {
    return Patient(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      name: (json['name'] as List<dynamic>?)
          ?.map<HumanName>(
            (v) => HumanName.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGender>(
        json,
        'gender',
        AdministrativeGender.fromJson,
      ),
      birthDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'birthDate',
        FhirDate.fromJson,
      ),
      deceasedX: JsonParser.parsePolymorphic<DeceasedXPatient>(json, {
        'deceasedBoolean': FhirBoolean.fromJson,
        'deceasedDateTime': FhirDateTime.fromJson,
      }),
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      maritalStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'maritalStatus',
        CodeableConcept.fromJson,
      ),
      multipleBirthX: JsonParser.parsePolymorphic<MultipleBirthXPatient>(json, {
        'multipleBirthBoolean': FhirBoolean.fromJson,
        'multipleBirthInteger': FhirInteger.fromJson,
      }),
      photo: (json['photo'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<PatientContact>(
            (v) => PatientContact.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<PatientCommunication>(
            (v) => PatientCommunication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      generalPractitioner: (json['generalPractitioner'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      managingOrganization: JsonParser.parseObject<Reference>(
        json,
        'managingOrganization',
        Reference.fromJson,
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<PatientLink>(
            (v) => PatientLink.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Patient]
  /// from a [String] or [YamlMap] object
  factory Patient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Patient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Patient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Patient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Patient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Patient.fromJsonString(
    String source,
  ) {
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

  /// [birthDate]
  /// The date of birth for the individual.
  final FhirDate? birthDate;

  /// [deceasedX]
  /// Indicates if the individual is deceased or not.
  final DeceasedXPatient? deceasedX;

  /// [address]
  /// An address for the individual.
  final List<Address>? address;

  /// [maritalStatus]
  /// This field contains a patient's most recent marital (civil) status.
  final CodeableConcept? maritalStatus;

  /// [multipleBirthX]
  /// Indicates whether the patient is part of a multiple (boolean) or
  /// indicates the actual birth order (integer).
  final MultipleBirthXPatient? multipleBirthX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('active', active);
    addField('name', name);
    addField('telecom', telecom);
    addField('gender', gender);
    addField('birthDate', birthDate);
    if (deceasedX != null) {
      final fhirType = deceasedX!.fhirType;
      addField('deceased${fhirType.capitalize()}', deceasedX);
    }

    addField('address', address);
    addField('maritalStatus', maritalStatus);
    if (multipleBirthX != null) {
      final fhirType = multipleBirthX!.fhirType;
      addField('multipleBirth${fhirType.capitalize()}', multipleBirthX);
    }

    addField('photo', photo);
    addField('contact', contact);
    addField('communication', communication);
    addField('generalPractitioner', generalPractitioner);
    addField('managingOrganization', managingOrganization);
    addField('link', link);
    return json;
  }

  @override
  Patient clone() => throw UnimplementedError();
  @override
  Patient copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    DeceasedXPatient? deceasedX,
    List<Address>? address,
    CodeableConcept? maritalStatus,
    MultipleBirthXPatient? multipleBirthX,
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
  }) {
    return Patient(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      deceasedX: deceasedX ?? this.deceasedX,
      address: address ?? this.address,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      multipleBirthX: multipleBirthX ?? this.multipleBirthX,
      photo: photo ?? this.photo,
      contact: contact ?? this.contact,
      communication: communication ?? this.communication,
      generalPractitioner: generalPractitioner ?? this.generalPractitioner,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      link: link ?? this.link,
    );
  }
}

/// [PatientContact]
/// A contact party (e.g. guardian, partner, friend) for the patient.
class PatientContact extends BackboneElement {
  /// Primary constructor for
  /// [PatientContact]

  const PatientContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.organization,
    this.period,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientContact.fromJson(
    Map<String, dynamic> json,
  ) {
    return PatientContact(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: JsonParser.parseObject<HumanName>(
        json,
        'name',
        HumanName.fromJson,
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
      ),
      gender: JsonParser.parsePrimitive<AdministrativeGender>(
        json,
        'gender',
        AdministrativeGender.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [PatientContact]
  /// from a [String] or [YamlMap] object
  factory PatientContact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientContact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientContact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientContact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientContact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientContact.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('relationship', relationship);
    addField('name', name);
    addField('telecom', telecom);
    addField('address', address);
    addField('gender', gender);
    addField('organization', organization);
    addField('period', period);
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
    Reference? organization,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      organization: organization ?? this.organization,
      period: period ?? this.period,
    );
  }
}

/// [PatientCommunication]
/// A language which may be used to communicate with the patient about his
/// or her health.
class PatientCommunication extends BackboneElement {
  /// Primary constructor for
  /// [PatientCommunication]

  const PatientCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientCommunication.fromJson(
    Map<String, dynamic> json,
  ) {
    return PatientCommunication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      )!,
      preferred: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'preferred',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [PatientCommunication]
  /// from a [String] or [YamlMap] object
  factory PatientCommunication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientCommunication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientCommunication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientCommunication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientCommunication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientCommunication.fromJsonString(
    String source,
  ) {
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('language', language);
    addField('preferred', preferred);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return PatientCommunication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
    );
  }
}

/// [PatientLink]
/// Link to another patient resource that concerns the same actual patient.
class PatientLink extends BackboneElement {
  /// Primary constructor for
  /// [PatientLink]

  const PatientLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.other,
    required this.type,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientLink.fromJson(
    Map<String, dynamic> json,
  ) {
    return PatientLink(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      other: JsonParser.parseObject<Reference>(
        json,
        'other',
        Reference.fromJson,
      )!,
      type: JsonParser.parsePrimitive<LinkType>(
        json,
        'type',
        LinkType.fromJson,
      )!,
    );
  }

  /// Deserialize [PatientLink]
  /// from a [String] or [YamlMap] object
  factory PatientLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientLink.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientLink.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientLink '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientLink.fromJsonString(
    String source,
  ) {
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('other', other);
    addField('type', type);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return PatientLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      other: other ?? this.other,
      type: type ?? this.type,
    );
  }
}
