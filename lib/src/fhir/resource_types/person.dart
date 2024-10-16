import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Person]
/// Demographics and administrative information about a person independent
/// of a specific health-related context.
class Person extends DomainResource {
  /// Primary constructor for [Person]

  Person({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.address,
    this.photo,
    this.managingOrganization,
    this.active,
    this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Person,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null
          ? (json['name'] as List<dynamic>)
              .map<HumanName>(
                (v) => HumanName.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      gender: json['gender'] != null
          ? AdministrativeGender.fromJson({
              'value': json['gender'],
              '_value': json['_gender'],
            })
          : null,
      birthDate: json['birthDate'] != null
          ? FhirDate.fromJson({
              'value': json['birthDate'],
              '_value': json['_birthDate'],
            })
          : null,
      address: json['address'] != null
          ? (json['address'] as List<dynamic>)
              .map<Address>(
                (v) => Address.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      photo: json['photo'] != null
          ? Attachment.fromJson(
              json['photo'] as Map<String, dynamic>,
            )
          : null,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>,
            )
          : null,
      active: json['active'] != null
          ? FhirBoolean.fromJson({
              'value': json['active'],
              '_value': json['_active'],
            })
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<PersonLink>(
                (v) => PersonLink.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Person] from a [String]
  /// or [YamlMap] object
  factory Person.fromYaml(dynamic yaml) => yaml is String
      ? Person.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Person.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Person cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Person]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Person.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Person.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Person';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;

  /// [name]
  /// A name associated with the person.
  final List<HumanName>? name;

  /// [telecom]
  /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  final List<ContactPoint>? telecom;

  /// [gender]
  /// Administrative Gender.
  final AdministrativeGender? gender;

  /// [birthDate]
  /// The birth date for the person.
  final FhirDate? birthDate;

  /// [address]
  /// One or more addresses for the person.
  final List<Address>? address;

  /// [photo]
  /// An image that can be displayed as a thumbnail of the person to enhance
  /// the identification of the individual.
  final Attachment? photo;

  /// [managingOrganization]
  /// The organization that is the custodian of the person record.
  final Reference? managingOrganization;

  /// [active]
  /// Whether this person's record is in active use.
  final FhirBoolean? active;

  /// [link]
  /// Link to a resource that concerns the same actual person.
  final List<PersonLink>? link;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
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

    if (name != null && name!.isNotEmpty) {
      json['name'] = name!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (gender != null) {
      json['gender'] = gender!.toJson();
    }

    if (birthDate != null) {
      final fieldJson11 = birthDate!.toJson();
      json['birthDate'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_birthDate'] = fieldJson11['_value'];
      }
    }

    if (address != null && address!.isNotEmpty) {
      json['address'] = address!.map((e) => e.toJson()).toList();
    }

    if (photo != null) {
      json['photo'] = photo!.toJson();
    }

    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }

    if (active != null) {
      final fieldJson15 = active!.toJson();
      json['active'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_active'] = fieldJson15['_value'];
      }
    }

    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Person clone() => throw UnimplementedError();
  @override
  Person copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    List<Address>? address,
    Attachment? photo,
    Reference? managingOrganization,
    FhirBoolean? active,
    List<PersonLink>? link,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Person(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      address: address ?? this.address,
      photo: photo ?? this.photo,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      active: active ?? this.active,
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

/// [PersonLink]
/// Link to a resource that concerns the same actual person.
class PersonLink extends BackboneElement {
  /// Primary constructor for [PersonLink]

  PersonLink({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.target,
    this.assurance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PersonLink.fromJson(Map<String, dynamic> json) {
    return PersonLink(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      target: Reference.fromJson(
        json['target'] as Map<String, dynamic>,
      ),
      assurance: json['assurance'] != null
          ? IdentityAssuranceLevel.fromJson({
              'value': json['assurance'],
              '_value': json['_assurance'],
            })
          : null,
    );
  }

  /// Deserialize [PersonLink] from a [String]
  /// or [YamlMap] object
  factory PersonLink.fromYaml(dynamic yaml) => yaml is String
      ? PersonLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PersonLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('PersonLink cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PersonLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PersonLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PersonLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PersonLink';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [target]
  /// The resource to which this actual person is associated.
  final Reference target;

  /// [assurance]
  /// Level of assurance that this link is associated with the target
  /// resource.
  final IdentityAssuranceLevel? assurance;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['target'] = target.toJson();

    if (assurance != null) {
      json['assurance'] = assurance!.toJson();
    }

    return json;
  }

  @override
  PersonLink clone() => throw UnimplementedError();
  @override
  PersonLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? target,
    IdentityAssuranceLevel? assurance,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PersonLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      assurance: assurance ?? this.assurance,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
