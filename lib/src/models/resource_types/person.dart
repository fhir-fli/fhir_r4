import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Person]
/// Demographics and administrative information about a person independent
/// of a specific health-related context.
class Person extends DomainResource {
  /// Primary constructor for
  /// [Person]

  const Person({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          objectPath: 'Person',
          resourceType: R4ResourceType.Person,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Person.empty() => const Person();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Person.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Person';
    return Person(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<HumanName>(
            (v) => HumanName.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGender>(
        json,
        'gender',
        AdministrativeGender.fromJson,
        '$objectPath.gender',
      ),
      birthDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'birthDate',
        FhirDate.fromJson,
        '$objectPath.birthDate',
      ),
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.address',
              },
            ),
          )
          .toList(),
      photo: JsonParser.parseObject<Attachment>(
        json,
        'photo',
        Attachment.fromJson,
        '$objectPath.photo',
      ),
      managingOrganization: JsonParser.parseObject<Reference>(
        json,
        'managingOrganization',
        Reference.fromJson,
        '$objectPath.managingOrganization',
      ),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
        '$objectPath.active',
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<PersonLink>(
            (v) => PersonLink.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Person]
  /// from a [String] or [YamlMap] object
  factory Person.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Person.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Person.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Person '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Person]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Person.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Person.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Person';

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
    addField('name', name);
    addField('telecom', telecom);
    addField('gender', gender);
    addField('birthDate', birthDate);
    addField('address', address);
    addField('photo', photo);
    addField('managingOrganization', managingOrganization);
    addField('active', active);
    addField('link', link);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'name',
      'telecom',
      'gender',
      'birthDate',
      'address',
      'photo',
      'managingOrganization',
      'active',
      'link',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'gender':
        if (gender != null) {
          fields.add(gender!);
        }
      case 'birthDate':
        if (birthDate != null) {
          fields.add(birthDate!);
        }
      case 'address':
        if (address != null) {
          fields.addAll(address!);
        }
      case 'photo':
        if (photo != null) {
          fields.add(photo!);
        }
      case 'managingOrganization':
        if (managingOrganization != null) {
          fields.add(managingOrganization!);
        }
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is List<HumanName>) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            return copyWith(telecom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'gender':
        {
          if (child is AdministrativeGender) {
            return copyWith(gender: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'birthDate':
        {
          if (child is FhirDate) {
            return copyWith(birthDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'address':
        {
          if (child is List<Address>) {
            return copyWith(address: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'photo':
        {
          if (child is Attachment) {
            return copyWith(photo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'managingOrganization':
        {
          if (child is Reference) {
            return copyWith(managingOrganization: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'active':
        {
          if (child is FhirBoolean) {
            return copyWith(active: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'link':
        {
          if (child is List<PersonLink>) {
            return copyWith(link: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'name':
        return ['HumanName'];
      case 'telecom':
        return ['ContactPoint'];
      case 'gender':
        return ['FhirCode'];
      case 'birthDate':
        return ['FhirDate'];
      case 'address':
        return ['Address'];
      case 'photo':
        return ['Attachment'];
      case 'managingOrganization':
        return ['Reference'];
      case 'active':
        return ['FhirBoolean'];
      case 'link':
        return ['PersonLink'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Person]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Person createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'name':
        {
          return copyWith(name: <HumanName>[]);
        }
      case 'telecom':
        {
          return copyWith(telecom: <ContactPoint>[]);
        }
      case 'gender':
        {
          return copyWith(gender: AdministrativeGender.empty());
        }
      case 'birthDate':
        {
          return copyWith(birthDate: FhirDate.empty());
        }
      case 'address':
        {
          return copyWith(address: <Address>[]);
        }
      case 'photo':
        {
          return copyWith(photo: Attachment.empty());
        }
      case 'managingOrganization':
        {
          return copyWith(managingOrganization: Reference.empty());
        }
      case 'active':
        {
          return copyWith(active: FhirBoolean.empty());
        }
      case 'link':
        {
          return copyWith(link: <PersonLink>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Person(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      name: name
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.name',
                ),
              )
              .toList() ??
          this.name,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      gender: gender?.copyWith(
            objectPath: '$newObjectPath.gender',
          ) ??
          this.gender,
      birthDate: birthDate?.copyWith(
            objectPath: '$newObjectPath.birthDate',
          ) ??
          this.birthDate,
      address: address
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.address',
                ),
              )
              .toList() ??
          this.address,
      photo: photo?.copyWith(
            objectPath: '$newObjectPath.photo',
          ) ??
          this.photo,
      managingOrganization: managingOrganization?.copyWith(
            objectPath: '$newObjectPath.managingOrganization',
          ) ??
          this.managingOrganization,
      active: active?.copyWith(
            objectPath: '$newObjectPath.active',
          ) ??
          this.active,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Person) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<HumanName>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(gender, o.gender)) {
      return false;
    }
    if (!equalsDeepWithNull(birthDate, o.birthDate)) {
      return false;
    }
    if (!listEquals<Address>(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(photo, o.photo)) {
      return false;
    }
    if (!equalsDeepWithNull(managingOrganization, o.managingOrganization)) {
      return false;
    }
    if (!equalsDeepWithNull(active, o.active)) {
      return false;
    }
    if (!listEquals<PersonLink>(
      link,
      o.link,
    )) {
      return false;
    }
    return true;
  }
}

/// [PersonLink]
/// Link to a resource that concerns the same actual person.
class PersonLink extends BackboneElement {
  /// Primary constructor for
  /// [PersonLink]

  const PersonLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.assurance,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Person.link',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PersonLink.empty() => PersonLink(
        target: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PersonLink.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Person.link';
    return PersonLink(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
        '$objectPath.target',
      )!,
      assurance: JsonParser.parsePrimitive<IdentityAssuranceLevel>(
        json,
        'assurance',
        IdentityAssuranceLevel.fromJson,
        '$objectPath.assurance',
      ),
    );
  }

  /// Deserialize [PersonLink]
  /// from a [String] or [YamlMap] object
  factory PersonLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PersonLink.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PersonLink.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PersonLink '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PersonLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PersonLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PersonLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PersonLink';

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
    addField('target', target);
    addField('assurance', assurance);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'target',
      'assurance',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'target':
        fields.add(target);
      case 'assurance':
        if (assurance != null) {
          fields.add(assurance!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'target':
        {
          if (child is Reference) {
            return copyWith(target: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'assurance':
        {
          if (child is IdentityAssuranceLevel) {
            return copyWith(assurance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'target':
        return ['Reference'];
      case 'assurance':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PersonLink]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PersonLink createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'target':
        {
          return copyWith(target: Reference.empty());
        }
      case 'assurance':
        {
          return copyWith(assurance: IdentityAssuranceLevel.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PersonLink(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      target: target?.copyWith(
            objectPath: '$newObjectPath.target',
          ) ??
          this.target,
      assurance: assurance?.copyWith(
            objectPath: '$newObjectPath.assurance',
          ) ??
          this.assurance,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PersonLink) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(target, o.target)) {
      return false;
    }
    if (!equalsDeepWithNull(assurance, o.assurance)) {
      return false;
    }
    return true;
  }
}
