import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Patient,
        PatientCommunication,
        PatientContact,
        PatientLink,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [PatientBuilder]
/// Demographics and other administrative information about an individual
/// or animal receiving care or other health-related services.
class PatientBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [PatientBuilder]

  PatientBuilder({
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
  /// For Builder classes, no fields are required
  factory PatientBuilder.empty() => PatientBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient';
    return PatientBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'active',
        FhirBooleanBuilder.fromJson,
        '$objectPath.active',
      ),
      name: (json['name'] as List<dynamic>?)
          ?.map<HumanNameBuilder>(
            (v) => HumanNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGenderBuilder>(
        json,
        'gender',
        AdministrativeGenderBuilder.fromJson,
        '$objectPath.gender',
      ),
      birthDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'birthDate',
        FhirDateBuilder.fromJson,
        '$objectPath.birthDate',
      ),
      deceasedX: JsonParser.parsePolymorphic<DeceasedXPatientBuilder>(
        json,
        {
          'deceasedBoolean': FhirBooleanBuilder.fromJson,
          'deceasedDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
      address: (json['address'] as List<dynamic>?)
          ?.map<AddressBuilder>(
            (v) => AddressBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.address',
              },
            ),
          )
          .toList(),
      maritalStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'maritalStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.maritalStatus',
      ),
      multipleBirthX: JsonParser.parsePolymorphic<MultipleBirthXPatientBuilder>(
        json,
        {
          'multipleBirthBoolean': FhirBooleanBuilder.fromJson,
          'multipleBirthInteger': FhirIntegerBuilder.fromJson,
        },
        objectPath,
      ),
      photo: (json['photo'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.photo',
              },
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<PatientContactBuilder>(
            (v) => PatientContactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<PatientCommunicationBuilder>(
            (v) => PatientCommunicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communication',
              },
            ),
          )
          .toList(),
      generalPractitioner: (json['generalPractitioner'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.generalPractitioner',
              },
            ),
          )
          .toList(),
      managingOrganization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'managingOrganization',
        ReferenceBuilder.fromJson,
        '$objectPath.managingOrganization',
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<PatientLinkBuilder>(
            (v) => PatientLinkBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PatientBuilder]
  /// from a [String] or [YamlMap] object
  factory PatientBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PatientBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Patient';

  /// [identifier]
  /// An identifier for this patient.
  List<IdentifierBuilder>? identifier;

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
  FhirBooleanBuilder? active;

  /// [name]
  /// A name associated with the individual.
  List<HumanNameBuilder>? name;

  /// [telecom]
  /// A contact detail (e.g. a telephone number or an email address) by which
  /// the individual may be contacted.
  List<ContactPointBuilder>? telecom;

  /// [gender]
  /// Administrative Gender - the gender that the patient is considered to
  /// have for administration and record keeping purposes.
  AdministrativeGenderBuilder? gender;

  /// [birthDate]
  /// The date of birth for the individual.
  FhirDateBuilder? birthDate;

  /// [deceasedX]
  /// Indicates if the individual is deceased or not.
  DeceasedXPatientBuilder? deceasedX;

  /// Getter for [deceasedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get deceasedBoolean =>
      deceasedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [deceasedDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get deceasedDateTime =>
      deceasedX?.isAs<FhirDateTimeBuilder>();

  /// [address]
  /// An address for the individual.
  List<AddressBuilder>? address;

  /// [maritalStatus]
  /// This field contains a patient's most recent marital (civil) status.
  CodeableConceptBuilder? maritalStatus;

  /// [multipleBirthX]
  /// Indicates whether the patient is part of a multiple (boolean) or
  /// indicates the actual birth order (integer).
  MultipleBirthXPatientBuilder? multipleBirthX;

  /// Getter for [multipleBirthBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get multipleBirthBoolean =>
      multipleBirthX?.isAs<FhirBooleanBuilder>();

  /// Getter for [multipleBirthInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get multipleBirthInteger =>
      multipleBirthX?.isAs<FhirIntegerBuilder>();

  /// [photo]
  /// Image of the patient.
  List<AttachmentBuilder>? photo;

  /// [contact]
  /// A contact party (e.g. guardian, partner, friend) for the patient.
  List<PatientContactBuilder>? contact;

  /// [communication]
  /// A language which may be used to communicate with the patient about his
  /// or her health.
  List<PatientCommunicationBuilder>? communication;

  /// [generalPractitioner]
  /// Patient's nominated care provider.
  List<ReferenceBuilder>? generalPractitioner;

  /// [managingOrganization]
  /// Organization that is the custodian of the patient record.
  ReferenceBuilder? managingOrganization;

  /// [link]
  /// Link to another patient resource that concerns the same actual patient.
  List<PatientLinkBuilder>? link;

  /// Converts a [PatientBuilder]
  /// to [Patient]
  @override
  Patient build() => Patient.fromJson(toJson());

  /// Converts a [PatientBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'active',
      active,
    );
    addField(
      'name',
      name,
    );
    addField(
      'telecom',
      telecom,
    );
    addField(
      'gender',
      gender,
    );
    addField(
      'birthDate',
      birthDate,
    );
    if (deceasedX != null) {
      final fhirType = deceasedX!.fhirType;
      addField(
        'deceased${fhirType.capitalize()}',
        deceasedX,
      );
    }

    addField(
      'address',
      address,
    );
    addField(
      'maritalStatus',
      maritalStatus,
    );
    if (multipleBirthX != null) {
      final fhirType = multipleBirthX!.fhirType;
      addField(
        'multipleBirth${fhirType.capitalize()}',
        multipleBirthX,
      );
    }

    addField(
      'photo',
      photo,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'communication',
      communication,
    );
    addField(
      'generalPractitioner',
      generalPractitioner,
    );
    addField(
      'managingOrganization',
      managingOrganization,
    );
    addField(
      'link',
      link,
    );
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (deceasedX != null) {
          fields.add(deceasedX!);
        }
      case 'deceasedX':
        if (deceasedX != null) {
          fields.add(deceasedX!);
        }
      case 'deceasedBoolean':
        if (deceasedX is FhirBooleanBuilder) {
          fields.add(deceasedX!);
        }
      case 'deceasedDateTime':
        if (deceasedX is FhirDateTimeBuilder) {
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
        if (multipleBirthX != null) {
          fields.add(multipleBirthX!);
        }
      case 'multipleBirthX':
        if (multipleBirthX != null) {
          fields.add(multipleBirthX!);
        }
      case 'multipleBirthBoolean':
        if (multipleBirthX is FhirBooleanBuilder) {
          fields.add(multipleBirthX!);
        }
      case 'multipleBirthInteger':
        if (multipleBirthX is FhirIntegerBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'active':
        {
          if (child is FhirBooleanBuilder) {
            active = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                active = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<HumanNameBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is HumanNameBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'telecom':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            telecom = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            telecom = [
              ...(telecom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gender':
        {
          if (child is AdministrativeGenderBuilder) {
            gender = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdministrativeGenderBuilder(stringValue);
                gender = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'birthDate':
        {
          if (child is FhirDateBuilder) {
            birthDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                birthDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'deceased':
      case 'deceasedX':
        {
          if (child is DeceasedXPatientBuilder) {
            deceasedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              deceasedX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              deceasedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'deceasedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deceasedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'address':
        {
          if (child is List<AddressBuilder>) {
            // Replace or create new list
            address = child;
            return;
          } else if (child is AddressBuilder) {
            // Add single element to existing list or create new list
            address = [
              ...(address ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maritalStatus':
        {
          if (child is CodeableConceptBuilder) {
            maritalStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'multipleBirth':
      case 'multipleBirthX':
        {
          if (child is MultipleBirthXPatientBuilder) {
            multipleBirthX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              multipleBirthX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              multipleBirthX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'multipleBirthBoolean':
        {
          if (child is FhirBooleanBuilder) {
            multipleBirthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'multipleBirthInteger':
        {
          if (child is FhirIntegerBuilder) {
            multipleBirthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'photo':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            photo = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            photo = [
              ...(photo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<PatientContactBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is PatientContactBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'communication':
        {
          if (child is List<PatientCommunicationBuilder>) {
            // Replace or create new list
            communication = child;
            return;
          } else if (child is PatientCommunicationBuilder) {
            // Add single element to existing list or create new list
            communication = [
              ...(communication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'generalPractitioner':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            generalPractitioner = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            generalPractitioner = [
              ...(generalPractitioner ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'managingOrganization':
        {
          if (child is ReferenceBuilder) {
            managingOrganization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is List<PatientLinkBuilder>) {
            // Replace or create new list
            link = child;
            return;
          } else if (child is PatientLinkBuilder) {
            // Add single element to existing list or create new list
            link = [
              ...(link ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'active':
        return ['FhirBooleanBuilder'];
      case 'name':
        return ['HumanNameBuilder'];
      case 'telecom':
        return ['ContactPointBuilder'];
      case 'gender':
        return ['FhirCodeEnumBuilder'];
      case 'birthDate':
        return ['FhirDateBuilder'];
      case 'deceased':
      case 'deceasedX':
        return [
          'FhirBooleanBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'deceasedBoolean':
        return ['FhirBooleanBuilder'];
      case 'deceasedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'address':
        return ['AddressBuilder'];
      case 'maritalStatus':
        return ['CodeableConceptBuilder'];
      case 'multipleBirth':
      case 'multipleBirthX':
        return [
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
        ];
      case 'multipleBirthBoolean':
        return ['FhirBooleanBuilder'];
      case 'multipleBirthInteger':
        return ['FhirIntegerBuilder'];
      case 'photo':
        return ['AttachmentBuilder'];
      case 'contact':
        return ['PatientContactBuilder'];
      case 'communication':
        return ['PatientCommunicationBuilder'];
      case 'generalPractitioner':
        return ['ReferenceBuilder'];
      case 'managingOrganization':
        return ['ReferenceBuilder'];
      case 'link':
        return ['PatientLinkBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PatientBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'active':
        {
          active = FhirBooleanBuilder.empty();
          return;
        }
      case 'name':
        {
          name = <HumanNameBuilder>[];
          return;
        }
      case 'telecom':
        {
          telecom = <ContactPointBuilder>[];
          return;
        }
      case 'gender':
        {
          gender = AdministrativeGenderBuilder.empty();
          return;
        }
      case 'birthDate':
        {
          birthDate = FhirDateBuilder.empty();
          return;
        }
      case 'deceased':
      case 'deceasedX':
      case 'deceasedBoolean':
        {
          deceasedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'deceasedDateTime':
        {
          deceasedX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'address':
        {
          address = <AddressBuilder>[];
          return;
        }
      case 'maritalStatus':
        {
          maritalStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'multipleBirth':
      case 'multipleBirthX':
      case 'multipleBirthBoolean':
        {
          multipleBirthX = FhirBooleanBuilder.empty();
          return;
        }
      case 'multipleBirthInteger':
        {
          multipleBirthX = FhirIntegerBuilder.empty();
          return;
        }
      case 'photo':
        {
          photo = <AttachmentBuilder>[];
          return;
        }
      case 'contact':
        {
          contact = <PatientContactBuilder>[];
          return;
        }
      case 'communication':
        {
          communication = <PatientCommunicationBuilder>[];
          return;
        }
      case 'generalPractitioner':
        {
          generalPractitioner = <ReferenceBuilder>[];
          return;
        }
      case 'managingOrganization':
        {
          managingOrganization = ReferenceBuilder.empty();
          return;
        }
      case 'link':
        {
          link = <PatientLinkBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool active = false,
    bool name = false,
    bool telecom = false,
    bool gender = false,
    bool birthDate = false,
    bool deceased = false,
    bool address = false,
    bool maritalStatus = false,
    bool multipleBirth = false,
    bool photo = false,
    bool contact = false,
    bool communication = false,
    bool generalPractitioner = false,
    bool managingOrganization = false,
    bool link = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (active) this.active = null;
    if (name) this.name = null;
    if (telecom) this.telecom = null;
    if (gender) this.gender = null;
    if (birthDate) this.birthDate = null;
    if (deceased) deceasedX = null;
    if (address) this.address = null;
    if (maritalStatus) this.maritalStatus = null;
    if (multipleBirth) multipleBirthX = null;
    if (photo) this.photo = null;
    if (contact) this.contact = null;
    if (communication) this.communication = null;
    if (generalPractitioner) this.generalPractitioner = null;
    if (managingOrganization) this.managingOrganization = null;
    if (link) this.link = null;
  }

  @override
  PatientBuilder clone() => throw UnimplementedError();
  @override
  PatientBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirBooleanBuilder? active,
    List<HumanNameBuilder>? name,
    List<ContactPointBuilder>? telecom,
    AdministrativeGenderBuilder? gender,
    FhirDateBuilder? birthDate,
    DeceasedXPatientBuilder? deceasedX,
    List<AddressBuilder>? address,
    CodeableConceptBuilder? maritalStatus,
    MultipleBirthXPatientBuilder? multipleBirthX,
    List<AttachmentBuilder>? photo,
    List<PatientContactBuilder>? contact,
    List<PatientCommunicationBuilder>? communication,
    List<ReferenceBuilder>? generalPractitioner,
    ReferenceBuilder? managingOrganization,
    List<PatientLinkBuilder>? link,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = PatientBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PatientBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      active,
      o.active,
    )) {
      return false;
    }
    if (!listEquals<HumanNameBuilder>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ContactPointBuilder>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gender,
      o.gender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      birthDate,
      o.birthDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      deceasedX,
      o.deceasedX,
    )) {
      return false;
    }
    if (!listEquals<AddressBuilder>(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maritalStatus,
      o.maritalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      multipleBirthX,
      o.multipleBirthX,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
      photo,
      o.photo,
    )) {
      return false;
    }
    if (!listEquals<PatientContactBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<PatientCommunicationBuilder>(
      communication,
      o.communication,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      generalPractitioner,
      o.generalPractitioner,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      managingOrganization,
      o.managingOrganization,
    )) {
      return false;
    }
    if (!listEquals<PatientLinkBuilder>(
      link,
      o.link,
    )) {
      return false;
    }
    return true;
  }
}

/// [PatientContactBuilder]
/// A contact party (e.g. guardian, partner, friend) for the patient.
class PatientContactBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PatientContactBuilder]

  PatientContactBuilder({
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
  /// For Builder classes, no fields are required
  factory PatientContactBuilder.empty() => PatientContactBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientContactBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient.contact';
    return PatientContactBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relationship',
              },
            ),
          )
          .toList(),
      name: JsonParser.parseObject<HumanNameBuilder>(
        json,
        'name',
        HumanNameBuilder.fromJson,
        '$objectPath.name',
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      address: JsonParser.parseObject<AddressBuilder>(
        json,
        'address',
        AddressBuilder.fromJson,
        '$objectPath.address',
      ),
      gender: JsonParser.parsePrimitive<AdministrativeGenderBuilder>(
        json,
        'gender',
        AdministrativeGenderBuilder.fromJson,
        '$objectPath.gender',
      ),
      organization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'organization',
        ReferenceBuilder.fromJson,
        '$objectPath.organization',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [PatientContactBuilder]
  /// from a [String] or [YamlMap] object
  factory PatientContactBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientContactBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientContactBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientContactBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientContactBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientContactBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PatientContactBuilder.fromJson(json);
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
  List<CodeableConceptBuilder>? relationship;

  /// [name]
  /// A name associated with the contact person.
  HumanNameBuilder? name;

  /// [telecom]
  /// A contact detail for the person, e.g. a telephone number or an email
  /// address.
  List<ContactPointBuilder>? telecom;

  /// [address]
  /// Address for the contact person.
  AddressBuilder? address;

  /// [gender]
  /// Administrative Gender - the gender that the contact person is
  /// considered to have for administration and record keeping purposes.
  AdministrativeGenderBuilder? gender;

  /// [organization]
  /// Organization on behalf of which the contact is acting or for which the
  /// contact is working.
  ReferenceBuilder? organization;

  /// [period]
  /// The period during which this contact person or organization is valid to
  /// be contacted relating to this patient.
  PeriodBuilder? period;

  /// Converts a [PatientContactBuilder]
  /// to [PatientContact]
  @override
  PatientContact build() => PatientContact.fromJson(toJson());

  /// Converts a [PatientContactBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'relationship',
      relationship,
    );
    addField(
      'name',
      name,
    );
    addField(
      'telecom',
      telecom,
    );
    addField(
      'address',
      address,
    );
    addField(
      'gender',
      gender,
    );
    addField(
      'organization',
      organization,
    );
    addField(
      'period',
      period,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationship':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            relationship = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            relationship = [
              ...(relationship ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is HumanNameBuilder) {
            name = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'telecom':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            telecom = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            telecom = [
              ...(telecom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'address':
        {
          if (child is AddressBuilder) {
            address = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gender':
        {
          if (child is AdministrativeGenderBuilder) {
            gender = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdministrativeGenderBuilder(stringValue);
                gender = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organization':
        {
          if (child is ReferenceBuilder) {
            organization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'relationship':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['HumanNameBuilder'];
      case 'telecom':
        return ['ContactPointBuilder'];
      case 'address':
        return ['AddressBuilder'];
      case 'gender':
        return ['FhirCodeEnumBuilder'];
      case 'organization':
        return ['ReferenceBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PatientContactBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'relationship':
        {
          relationship = <CodeableConceptBuilder>[];
          return;
        }
      case 'name':
        {
          name = HumanNameBuilder.empty();
          return;
        }
      case 'telecom':
        {
          telecom = <ContactPointBuilder>[];
          return;
        }
      case 'address':
        {
          address = AddressBuilder.empty();
          return;
        }
      case 'gender':
        {
          gender = AdministrativeGenderBuilder.empty();
          return;
        }
      case 'organization':
        {
          organization = ReferenceBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool relationship = false,
    bool name = false,
    bool telecom = false,
    bool address = false,
    bool gender = false,
    bool organization = false,
    bool period = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (relationship) this.relationship = null;
    if (name) this.name = null;
    if (telecom) this.telecom = null;
    if (address) this.address = null;
    if (gender) this.gender = null;
    if (organization) this.organization = null;
    if (period) this.period = null;
  }

  @override
  PatientContactBuilder clone() => throw UnimplementedError();
  @override
  PatientContactBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? relationship,
    HumanNameBuilder? name,
    List<ContactPointBuilder>? telecom,
    AddressBuilder? address,
    AdministrativeGenderBuilder? gender,
    ReferenceBuilder? organization,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PatientContactBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PatientContactBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ContactPointBuilder>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gender,
      o.gender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [PatientCommunicationBuilder]
/// A language which may be used to communicate with the patient about his
/// or her health.
class PatientCommunicationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PatientCommunicationBuilder]

  PatientCommunicationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.preferred,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Patient.communication',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PatientCommunicationBuilder.empty() => PatientCommunicationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientCommunicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient.communication';
    return PatientCommunicationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      language: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'language',
        CodeableConceptBuilder.fromJson,
        '$objectPath.language',
      ),
      preferred: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'preferred',
        FhirBooleanBuilder.fromJson,
        '$objectPath.preferred',
      ),
    );
  }

  /// Deserialize [PatientCommunicationBuilder]
  /// from a [String] or [YamlMap] object
  factory PatientCommunicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientCommunicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientCommunicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientCommunicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientCommunicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientCommunicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PatientCommunicationBuilder.fromJson(json);
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
  CodeableConceptBuilder? language;

  /// [preferred]
  /// Indicates whether or not the patient prefers this language (over other
  /// languages he masters up a certain level).
  FhirBooleanBuilder? preferred;

  /// Converts a [PatientCommunicationBuilder]
  /// to [PatientCommunication]
  @override
  PatientCommunication build() => PatientCommunication.fromJson(toJson());

  /// Converts a [PatientCommunicationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'language',
      language,
    );
    addField(
      'preferred',
      preferred,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (language != null) {
          fields.add(language!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CodeableConceptBuilder) {
            language = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preferred':
        {
          if (child is FhirBooleanBuilder) {
            preferred = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                preferred = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'language':
        return ['CodeableConceptBuilder'];
      case 'preferred':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PatientCommunicationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'language':
        {
          language = CodeableConceptBuilder.empty();
          return;
        }
      case 'preferred':
        {
          preferred = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool language = false,
    bool preferred = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (language) this.language = null;
    if (preferred) this.preferred = null;
  }

  @override
  PatientCommunicationBuilder clone() => throw UnimplementedError();
  @override
  PatientCommunicationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? language,
    FhirBooleanBuilder? preferred,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PatientCommunicationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      preferred: preferred ?? this.preferred,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PatientCommunicationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preferred,
      o.preferred,
    )) {
      return false;
    }
    return true;
  }
}

/// [PatientLinkBuilder]
/// Link to another patient resource that concerns the same actual patient.
class PatientLinkBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PatientLinkBuilder]

  PatientLinkBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.other,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Patient.link',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PatientLinkBuilder.empty() => PatientLinkBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PatientLinkBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Patient.link';
    return PatientLinkBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      other: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'other',
        ReferenceBuilder.fromJson,
        '$objectPath.other',
      ),
      type: JsonParser.parsePrimitive<LinkTypeBuilder>(
        json,
        'type',
        LinkTypeBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [PatientLinkBuilder]
  /// from a [String] or [YamlMap] object
  factory PatientLinkBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PatientLinkBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PatientLinkBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PatientLinkBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PatientLinkBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PatientLinkBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PatientLinkBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PatientLink';

  /// [other]
  /// The other patient resource that the link refers to.
  ReferenceBuilder? other;

  /// [type]
  /// The type of link between this patient resource and another patient
  /// resource.
  LinkTypeBuilder? type;

  /// Converts a [PatientLinkBuilder]
  /// to [PatientLink]
  @override
  PatientLink build() => PatientLink.fromJson(toJson());

  /// Converts a [PatientLinkBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'other',
      other,
    );
    addField(
      'type',
      type,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (other != null) {
          fields.add(other!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'other':
        {
          if (child is ReferenceBuilder) {
            other = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is LinkTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = LinkTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'other':
        return ['ReferenceBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PatientLinkBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'other':
        {
          other = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = LinkTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool other = false,
    bool type = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (other) this.other = null;
    if (type) this.type = null;
  }

  @override
  PatientLinkBuilder clone() => throw UnimplementedError();
  @override
  PatientLinkBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? other,
    LinkTypeBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PatientLinkBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      other: other ?? this.other,
      type: type ?? this.type,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PatientLinkBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      other,
      o.other,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}
