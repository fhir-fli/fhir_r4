import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RelatedPerson]
/// Information about a person that is involved in the care for a patient,
/// but who is not the target of healthcare, nor has a formal
/// responsibility in the care process.
class RelatedPerson extends DomainResource {
  /// Primary constructor for
  /// [RelatedPerson]

  const RelatedPerson({
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
    required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.address,
    this.photo,
    this.period,
    this.communication,
  }) : super(
          resourceType: R4ResourceType.RelatedPerson,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedPerson.fromJson(
    Map<String, dynamic> json,
  ) {
    return RelatedPerson(
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
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      photo: (json['photo'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<RelatedPersonCommunication>(
            (v) => RelatedPersonCommunication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RelatedPerson]
  /// from a [String] or [YamlMap] object
  factory RelatedPerson.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelatedPerson.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelatedPerson.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelatedPerson '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelatedPerson]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelatedPerson.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RelatedPerson.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RelatedPerson';

  /// [identifier]
  /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this related person record is in active use.
  final FhirBoolean? active;

  /// [patient]
  /// The patient this person is related to.
  final Reference patient;

  /// [relationship]
  /// The nature of the relationship between a patient and the related
  /// person.
  final List<CodeableConcept>? relationship;

  /// [name]
  /// A name associated with the person.
  final List<HumanName>? name;

  /// [telecom]
  /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [gender]
  /// Administrative Gender - the gender that the person is considered to
  /// have for administration and record keeping purposes.
  final AdministrativeGender? gender;

  /// [birthDate]
  /// The date on which the related person was born.
  final FhirDate? birthDate;

  /// [address]
  /// Address where the related person can be contacted or visited.
  final List<Address>? address;

  /// [photo]
  /// Image of the person.
  final List<Attachment>? photo;

  /// [period]
  /// The period of time during which this relationship is or was active. If
  /// there are no dates defined, then the interval is unknown.
  final Period? period;

  /// [communication]
  /// A language which may be used to communicate with about the patient's
  /// health.
  final List<RelatedPersonCommunication>? communication;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (active != null) {
      addField('active', active);
    }

    json['patient'] = patient.toJson();

    if (relationship != null && relationship!.isNotEmpty) {
      json['relationship'] = relationship!.map((e) => e.toJson()).toList();
    }

    if (name != null && name!.isNotEmpty) {
      json['name'] = name!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (gender != null) {
      addField('gender', gender);
    }

    if (birthDate != null) {
      addField('birthDate', birthDate);
    }

    if (address != null && address!.isNotEmpty) {
      json['address'] = address!.map((e) => e.toJson()).toList();
    }

    if (photo != null && photo!.isNotEmpty) {
      json['photo'] = photo!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (communication != null && communication!.isNotEmpty) {
      json['communication'] = communication!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  RelatedPerson clone() => throw UnimplementedError();
  @override
  RelatedPerson copyWith({
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
    Reference? patient,
    List<CodeableConcept>? relationship,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    List<Address>? address,
    List<Attachment>? photo,
    Period? period,
    List<RelatedPersonCommunication>? communication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return RelatedPerson(
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
      patient: patient ?? this.patient,
      relationship: relationship ?? this.relationship,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      address: address ?? this.address,
      photo: photo ?? this.photo,
      period: period ?? this.period,
      communication: communication ?? this.communication,
    );
  }
}

/// [RelatedPersonCommunication]
/// A language which may be used to communicate with about the patient's
/// health.
class RelatedPersonCommunication extends BackboneElement {
  /// Primary constructor for
  /// [RelatedPersonCommunication]

  const RelatedPersonCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedPersonCommunication.fromJson(
    Map<String, dynamic> json,
  ) {
    return RelatedPersonCommunication(
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

  /// Deserialize [RelatedPersonCommunication]
  /// from a [String] or [YamlMap] object
  factory RelatedPersonCommunication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelatedPersonCommunication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelatedPersonCommunication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelatedPersonCommunication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelatedPersonCommunication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelatedPersonCommunication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RelatedPersonCommunication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RelatedPersonCommunication';

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['language'] = language.toJson();

    if (preferred != null) {
      addField('preferred', preferred);
    }

    return json;
  }

  @override
  RelatedPersonCommunication clone() => throw UnimplementedError();
  @override
  RelatedPersonCommunication copyWith({
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
    return RelatedPersonCommunication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
    );
  }
}
