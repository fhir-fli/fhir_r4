import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Practitioner]
/// A person who is directly or indirectly involved in the provisioning of
/// healthcare.
class Practitioner extends DomainResource {
  /// Primary constructor for
  /// [Practitioner]

  const Practitioner({
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
    this.address,
    this.gender,
    this.birthDate,
    this.photo,
    this.qualification,
    this.communication,
  }) : super(
          resourceType: R4ResourceType.Practitioner,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Practitioner.fromJson(
    Map<String, dynamic> json,
  ) {
    return Practitioner(
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
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
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
      photo: (json['photo'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      qualification: (json['qualification'] as List<dynamic>?)
          ?.map<PractitionerQualification>(
            (v) => PractitionerQualification.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Practitioner]
  /// from a [String] or [YamlMap] object
  factory Practitioner.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Practitioner.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Practitioner.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Practitioner '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Practitioner]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Practitioner.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Practitioner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Practitioner';

  /// [identifier]
  /// An identifier that applies to this person in this role.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this practitioner's record is in active use.
  final FhirBoolean? active;

  /// [name]
  /// The name(s) associated with the practitioner.
  final List<HumanName>? name;

  /// [telecom]
  /// A contact detail for the practitioner, e.g. a telephone number or an
  /// email address.
  final List<ContactPoint>? telecom;

  /// [address]
  /// Address(es) of the practitioner that are not role specific (typically
  /// home address). Work addresses are not typically entered in this
  /// property as they are usually role dependent.
  final List<Address>? address;

  /// [gender]
  /// Administrative Gender - the gender that the person is considered to
  /// have for administration and record keeping purposes.
  final AdministrativeGender? gender;

  /// [birthDate]
  /// The date of birth for the practitioner.
  final FhirDate? birthDate;

  /// [photo]
  /// Image of the person.
  final List<Attachment>? photo;

  /// [qualification]
  /// The official certifications, training, and licenses that authorize or
  /// otherwise pertain to the provision of care by the practitioner. For
  /// example, a medical license issued by a medical board authorizing the
  /// practitioner to practice medicine within a certian locality.
  final List<PractitionerQualification>? qualification;

  /// [communication]
  /// A language the practitioner can use in patient communication.
  final List<CodeableConcept>? communication;
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
    addField('address', address);
    addField('gender', gender);
    addField('birthDate', birthDate);
    addField('photo', photo);
    addField('qualification', qualification);
    addField('communication', communication);
    return json;
  }

  @override
  Practitioner clone() => throw UnimplementedError();
  @override
  Practitioner copyWith({
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
    List<Address>? address,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    List<Attachment>? photo,
    List<PractitionerQualification>? qualification,
    List<CodeableConcept>? communication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Practitioner(
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
      address: address ?? this.address,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      photo: photo ?? this.photo,
      qualification: qualification ?? this.qualification,
      communication: communication ?? this.communication,
    );
  }
}

/// [PractitionerQualification]
/// The official certifications, training, and licenses that authorize or
/// otherwise pertain to the provision of care by the practitioner. For
/// example, a medical license issued by a medical board authorizing the
/// practitioner to practice medicine within a certian locality.
class PractitionerQualification extends BackboneElement {
  /// Primary constructor for
  /// [PractitionerQualification]

  const PractitionerQualification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerQualification.fromJson(
    Map<String, dynamic> json,
  ) {
    return PractitionerQualification(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      issuer: JsonParser.parseObject<Reference>(
        json,
        'issuer',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [PractitionerQualification]
  /// from a [String] or [YamlMap] object
  factory PractitionerQualification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PractitionerQualification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PractitionerQualification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PractitionerQualification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PractitionerQualification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerQualification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PractitionerQualification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PractitionerQualification';

  /// [identifier]
  /// An identifier that applies to this person's qualification in this role.
  final List<Identifier>? identifier;

  /// [code]
  /// Coded representation of the qualification.
  final CodeableConcept code;

  /// [period]
  /// Period during which the qualification is valid.
  final Period? period;

  /// [issuer]
  /// Organization that regulates and issues the qualification.
  final Reference? issuer;
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
    addField('identifier', identifier);
    addField('code', code);
    addField('period', period);
    addField('issuer', issuer);
    return json;
  }

  @override
  PractitionerQualification clone() => throw UnimplementedError();
  @override
  PractitionerQualification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? code,
    Period? period,
    Reference? issuer,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return PractitionerQualification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      period: period ?? this.period,
      issuer: issuer ?? this.issuer,
    );
  }
}
