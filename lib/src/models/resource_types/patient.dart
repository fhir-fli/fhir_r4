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
          objectPath: 'Patient',
          resourceType: R4ResourceType.Patient,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Patient.empty() => Patient();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Patient.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient';
    return Patient(
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
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
        '$objectPath.active',
      ),
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
      deceasedX: JsonParser.parsePolymorphic<DeceasedXPatient>(
        json,
        {
          'deceasedBoolean': FhirBoolean.fromJson,
          'deceasedDateTime': FhirDateTime.fromJson,
        },
        objectPath,
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
      maritalStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'maritalStatus',
        CodeableConcept.fromJson,
        '$objectPath.maritalStatus',
      ),
      multipleBirthX: JsonParser.parsePolymorphic<MultipleBirthXPatient>(
        json,
        {
          'multipleBirthBoolean': FhirBoolean.fromJson,
          'multipleBirthInteger': FhirInteger.fromJson,
        },
        objectPath,
      ),
      photo: (json['photo'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.photo',
              },
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<PatientContact>(
            (v) => PatientContact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<PatientCommunication>(
            (v) => PatientCommunication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communication',
              },
            ),
          )
          .toList(),
      generalPractitioner: (json['generalPractitioner'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.generalPractitioner',
              },
            ),
          )
          .toList(),
      managingOrganization: JsonParser.parseObject<Reference>(
        json,
        'managingOrganization',
        Reference.fromJson,
        '$objectPath.managingOrganization',
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<PatientLink>(
            (v) => PatientLink.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
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
    if (json is Map<String, dynamic>) {
      return Patient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [deceasedBoolean] as a FhirBoolean
  FhirBoolean? get deceasedBoolean => deceasedX?.isAs<FhirBoolean>();

  /// Getter for [deceasedDateTime] as a FhirDateTime
  FhirDateTime? get deceasedDateTime => deceasedX?.isAs<FhirDateTime>();

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

  /// Getter for [multipleBirthBoolean] as a FhirBoolean
  FhirBoolean? get multipleBirthBoolean => multipleBirthX?.isAs<FhirBoolean>();

  /// Getter for [multipleBirthInteger] as a FhirInteger
  FhirInteger? get multipleBirthInteger => multipleBirthX?.isAs<FhirInteger>();

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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'active',
      'name',
      'telecom',
      'gender',
      'birthDate',
      'deceasedX',
      'address',
      'maritalStatus',
      'multipleBirthX',
      'photo',
      'contact',
      'communication',
      'generalPractitioner',
      'managingOrganization',
      'link',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'active':
        if (active != null) {
          fields.add(active!);
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
      case 'deceased':
        fields.add(deceasedX!);
      case 'deceasedX':
        fields.add(deceasedX!);
      case 'deceasedBoolean':
        if (deceasedX is FhirBoolean) {
          fields.add(deceasedX!);
        }
      case 'deceasedDateTime':
        if (deceasedX is FhirDateTime) {
          fields.add(deceasedX!);
        }
      case 'address':
        if (address != null) {
          fields.addAll(address!);
        }
      case 'maritalStatus':
        if (maritalStatus != null) {
          fields.add(maritalStatus!);
        }
      case 'multipleBirth':
        fields.add(multipleBirthX!);
      case 'multipleBirthX':
        fields.add(multipleBirthX!);
      case 'multipleBirthBoolean':
        if (multipleBirthX is FhirBoolean) {
          fields.add(multipleBirthX!);
        }
      case 'multipleBirthInteger':
        if (multipleBirthX is FhirInteger) {
          fields.add(multipleBirthX!);
        }
      case 'photo':
        if (photo != null) {
          fields.addAll(photo!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'communication':
        if (communication != null) {
          fields.addAll(communication!);
        }
      case 'generalPractitioner':
        if (generalPractitioner != null) {
          fields.addAll(generalPractitioner!);
        }
      case 'managingOrganization':
        if (managingOrganization != null) {
          fields.add(managingOrganization!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Patient(
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
      active: active?.copyWith(
            objectPath: '$newObjectPath.active',
          ) ??
          this.active,
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
      deceasedX: deceasedX?.copyWith(
            objectPath: '$newObjectPath.deceasedX',
          ) as DeceasedXPatient? ??
          this.deceasedX,
      address: address
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.address',
                ),
              )
              .toList() ??
          this.address,
      maritalStatus: maritalStatus?.copyWith(
            objectPath: '$newObjectPath.maritalStatus',
          ) ??
          this.maritalStatus,
      multipleBirthX: multipleBirthX?.copyWith(
            objectPath: '$newObjectPath.multipleBirthX',
          ) as MultipleBirthXPatient? ??
          this.multipleBirthX,
      photo: photo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.photo',
                ),
              )
              .toList() ??
          this.photo,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      communication: communication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.communication',
                ),
              )
              .toList() ??
          this.communication,
      generalPractitioner: generalPractitioner
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.generalPractitioner',
                ),
              )
              .toList() ??
          this.generalPractitioner,
      managingOrganization: managingOrganization?.copyWith(
            objectPath: '$newObjectPath.managingOrganization',
          ) ??
          this.managingOrganization,
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
    if (o is! Patient) {
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
    if (!equalsDeepWithNull(active, o.active)) {
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
    if (!equalsDeepWithNull(deceasedX, o.deceasedX)) {
      return false;
    }
    if (!listEquals<Address>(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(maritalStatus, o.maritalStatus)) {
      return false;
    }
    if (!equalsDeepWithNull(multipleBirthX, o.multipleBirthX)) {
      return false;
    }
    if (!listEquals<Attachment>(
      photo,
      o.photo,
    )) {
      return false;
    }
    if (!listEquals<PatientContact>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<PatientCommunication>(
      communication,
      o.communication,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      generalPractitioner,
      o.generalPractitioner,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(managingOrganization, o.managingOrganization)) {
      return false;
    }
    if (!listEquals<PatientLink>(
      link,
      o.link,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Patient.contact',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PatientContact.empty() => PatientContact();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientContact.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient.contact';
    return PatientContact(
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
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relationship',
              },
            ),
          )
          .toList(),
      name: JsonParser.parseObject<HumanName>(
        json,
        'name',
        HumanName.fromJson,
        '$objectPath.name',
      ),
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
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
        '$objectPath.address',
      ),
      gender: JsonParser.parsePrimitive<AdministrativeGender>(
        json,
        'gender',
        AdministrativeGender.fromJson,
        '$objectPath.gender',
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
        '$objectPath.organization',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
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
    if (json is Map<String, dynamic>) {
      return PatientContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationship',
      'name',
      'telecom',
      'address',
      'gender',
      'organization',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'relationship':
        if (relationship != null) {
          fields.addAll(relationship!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'address':
        if (address != null) {
          fields.add(address!);
        }
      case 'gender':
        if (gender != null) {
          fields.add(gender!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PatientContact(
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
      relationship: relationship
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relationship',
                ),
              )
              .toList() ??
          this.relationship,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      address: address?.copyWith(
            objectPath: '$newObjectPath.address',
          ) ??
          this.address,
      gender: gender?.copyWith(
            objectPath: '$newObjectPath.gender',
          ) ??
          this.gender,
      organization: organization?.copyWith(
            objectPath: '$newObjectPath.organization',
          ) ??
          this.organization,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PatientContact) {
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
    if (!listEquals<CodeableConcept>(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(address, o.address)) {
      return false;
    }
    if (!equalsDeepWithNull(gender, o.gender)) {
      return false;
    }
    if (!equalsDeepWithNull(organization, o.organization)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Patient.communication',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PatientCommunication.empty() => PatientCommunication(
        language: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientCommunication.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient.communication';
    return PatientCommunication(
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
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
        '$objectPath.language',
      )!,
      preferred: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'preferred',
        FhirBoolean.fromJson,
        '$objectPath.preferred',
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
    if (json is Map<String, dynamic>) {
      return PatientCommunication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'language',
      'preferred',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'language':
        fields.add(language);
      case 'preferred':
        if (preferred != null) {
          fields.add(preferred!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PatientCommunication(
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
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      preferred: preferred?.copyWith(
            objectPath: '$newObjectPath.preferred',
          ) ??
          this.preferred,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PatientCommunication) {
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
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(preferred, o.preferred)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Patient.link',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PatientLink.empty() => PatientLink(
        other: Reference.empty(),
        type: LinkType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientLink.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient.link';
    return PatientLink(
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
      other: JsonParser.parseObject<Reference>(
        json,
        'other',
        Reference.fromJson,
        '$objectPath.other',
      )!,
      type: JsonParser.parsePrimitive<LinkType>(
        json,
        'type',
        LinkType.fromJson,
        '$objectPath.type',
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
    if (json is Map<String, dynamic>) {
      return PatientLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'other',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'other':
        fields.add(other);
      case 'type':
        fields.add(type);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PatientLink(
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
      other: other?.copyWith(
            objectPath: '$newObjectPath.other',
          ) ??
          this.other,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PatientLink) {
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
    if (!equalsDeepWithNull(other, o.other)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    return true;
  }
}
