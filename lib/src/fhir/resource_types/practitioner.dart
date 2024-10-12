import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Practitioner]
/// A person who is directly or indirectly involved in the provisioning of
/// healthcare.
class Practitioner extends DomainResource {
  /// Primary constructor for [Practitioner]

  Practitioner({
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
    this.address,
    this.gender,

    /// Extensions for [gender]
    this.genderElement,
    this.birthDate,

    /// Extensions for [birthDate]
    this.birthDateElement,
    this.photo,
    this.qualification,
    this.communication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Practitioner,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Practitioner.fromJson(Map<String, dynamic> json) {
    return Practitioner(
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
      address: json['address'] != null
          ? (json['address'] as List<dynamic>)
              .map<Address>(
                (dynamic v) => Address.fromJson(
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
      photo: json['photo'] != null
          ? (json['photo'] as List<dynamic>)
              .map<Attachment>(
                (dynamic v) => Attachment.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      qualification: json['qualification'] != null
          ? (json['qualification'] as List<dynamic>)
              .map<PractitionerQualification>(
                (dynamic v) => PractitionerQualification.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      communication: json['communication'] != null
          ? (json['communication'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Practitioner] from a [String] or [YamlMap] object
  factory Practitioner.fromYaml(dynamic yaml) => yaml is String
      ? Practitioner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Practitioner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Practitioner cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Practitioner] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Practitioner.fromJsonString(String source) {
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

  /// Extensions for [active]
  final Element? activeElement;

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

  /// Extensions for [gender]
  final Element? genderElement;

  /// [birthDate]
  /// The date of birth for the practitioner.
  final FhirDate? birthDate;

  /// Extensions for [birthDate]
  final Element? birthDateElement;

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
    if (address != null && address!.isNotEmpty) {
      json['address'] = address!.map((Address v) => v.toJson()).toList();
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
    if (photo != null && photo!.isNotEmpty) {
      json['photo'] = photo!.map((Attachment v) => v.toJson()).toList();
    }
    if (qualification != null && qualification!.isNotEmpty) {
      json['qualification'] = qualification!
          .map((PractitionerQualification v) => v.toJson())
          .toList();
    }
    if (communication != null && communication!.isNotEmpty) {
      json['communication'] =
          communication!.map((CodeableConcept v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  Practitioner clone() => throw UnimplementedError();
  @override
  Practitioner copyWith({
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
    List<Address>? address,
    AdministrativeGender? gender,
    Element? genderElement,
    FhirDate? birthDate,
    Element? birthDateElement,
    List<Attachment>? photo,
    List<PractitionerQualification>? qualification,
    List<CodeableConcept>? communication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Practitioner(
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
      address: address ?? this.address,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      birthDate: birthDate ?? this.birthDate,
      birthDateElement: birthDateElement ?? this.birthDateElement,
      photo: photo ?? this.photo,
      qualification: qualification ?? this.qualification,
      communication: communication ?? this.communication,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PractitionerQualification]
/// The official certifications, training, and licenses that authorize or
/// otherwise pertain to the provision of care by the practitioner. For
/// example, a medical license issued by a medical board authorizing the
/// practitioner to practice medicine within a certian locality.
class PractitionerQualification extends BackboneElement {
  /// Primary constructor for [PractitionerQualification]

  PractitionerQualification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerQualification.fromJson(Map<String, dynamic> json) {
    return PractitionerQualification(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      issuer: json['issuer'] != null
          ? Reference.fromJson(
              json['issuer'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PractitionerQualification] from a [String] or [YamlMap] object
  factory PractitionerQualification.fromYaml(dynamic yaml) => yaml is String
      ? PractitionerQualification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PractitionerQualification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PractitionerQualification cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PractitionerQualification] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerQualification.fromJsonString(String source) {
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    json['code'] = code.toJson();
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (issuer != null) {
      json['issuer'] = issuer!.toJson();
    }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PractitionerQualification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      period: period ?? this.period,
      issuer: issuer ?? this.issuer,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
