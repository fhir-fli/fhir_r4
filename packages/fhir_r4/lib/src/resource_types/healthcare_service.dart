import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [HealthcareService]
/// The details of a healthcare service available at a location.
class HealthcareService extends DomainResource {
  /// Primary constructor for
  /// [HealthcareService]

  const HealthcareService({
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
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.comment,
    this.extraDetails,
    this.photo,
    this.telecom,
    this.coverageArea,
    this.serviceProvisionCode,
    this.eligibility,
    this.program,
    this.characteristic,
    this.communication,
    this.referralMethod,
    this.appointmentRequired,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.endpoint,
  }) : super(
          objectPath: 'HealthcareService',
          resourceType: R4ResourceType.HealthcareService,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory HealthcareService.empty() => const HealthcareService();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareService.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService';
    return HealthcareService(
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
      providedBy: JsonParser.parseObject<Reference>(
        json,
        'providedBy',
        Reference.fromJson,
        '$objectPath.providedBy',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialty',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
      extraDetails: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'extraDetails',
        FhirMarkdown.fromJson,
        '$objectPath.extraDetails',
      ),
      photo: JsonParser.parseObject<Attachment>(
        json,
        'photo',
        Attachment.fromJson,
        '$objectPath.photo',
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
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      serviceProvisionCode: (json['serviceProvisionCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceProvisionCode',
              },
            ),
          )
          .toList(),
      eligibility: (json['eligibility'] as List<dynamic>?)
          ?.map<HealthcareServiceEligibility>(
            (v) => HealthcareServiceEligibility.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eligibility',
              },
            ),
          )
          .toList(),
      program: (json['program'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.program',
              },
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communication',
              },
            ),
          )
          .toList(),
      referralMethod: (json['referralMethod'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referralMethod',
              },
            ),
          )
          .toList(),
      appointmentRequired: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'appointmentRequired',
        FhirBoolean.fromJson,
        '$objectPath.appointmentRequired',
      ),
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map<HealthcareServiceAvailableTime>(
            (v) => HealthcareServiceAvailableTime.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.availableTime',
              },
            ),
          )
          .toList(),
      notAvailable: (json['notAvailable'] as List<dynamic>?)
          ?.map<HealthcareServiceNotAvailable>(
            (v) => HealthcareServiceNotAvailable.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notAvailable',
              },
            ),
          )
          .toList(),
      availabilityExceptions: JsonParser.parsePrimitive<FhirString>(
        json,
        'availabilityExceptions',
        FhirString.fromJson,
        '$objectPath.availabilityExceptions',
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [HealthcareService]
  /// from a [String] or [YamlMap] object
  factory HealthcareService.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareService.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareService.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareService '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareService]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareService.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareService.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareService';

  /// [identifier]
  /// External identifiers for this item.
  final List<Identifier>? identifier;

  /// [active]
  /// This flag is used to mark the record to not be used. This is not used
  /// when a center is closed for maintenance, or for holidays, the
  /// notAvailable period is to be used for this.
  final FhirBoolean? active;

  /// [providedBy]
  /// The organization that provides this healthcare service.
  final Reference? providedBy;

  /// [category]
  /// Identifies the broad category of service being performed or delivered.
  final List<CodeableConcept>? category;

  /// [type]
  /// The specific type of service that may be delivered or performed.
  final List<CodeableConcept>? type;

  /// [specialty]
  /// Collection of specialties handled by the service site. This is more of
  /// a medical term.
  final List<CodeableConcept>? specialty;

  /// [location]
  /// The location(s) where this healthcare service may be provided.
  final List<Reference>? location;

  /// [name]
  /// Further description of the service as it would be presented to a
  /// consumer while searching.
  final FhirString? name;

  /// [comment]
  /// Any additional description of the service and/or any specific issues
  /// not covered by the other attributes, which can be displayed as further
  /// detail under the serviceName.
  final FhirString? comment;

  /// [extraDetails]
  /// Extra details about the service that can't be placed in the other
  /// fields.
  final FhirMarkdown? extraDetails;

  /// [photo]
  /// If there is a photo/symbol associated with this HealthcareService, it
  /// may be included here to facilitate quick identification of the service
  /// in a list.
  final Attachment? photo;

  /// [telecom]
  /// List of contacts related to this specific healthcare service.
  final List<ContactPoint>? telecom;

  /// [coverageArea]
  /// The location(s) that this service is available to (not where the
  /// service is provided).
  final List<Reference>? coverageArea;

  /// [serviceProvisionCode]
  /// The code(s) that detail the conditions under which the healthcare
  /// service is available/offered.
  final List<CodeableConcept>? serviceProvisionCode;

  /// [eligibility]
  /// Does this service have specific eligibility requirements that need to
  /// be met in order to use the service?
  final List<HealthcareServiceEligibility>? eligibility;

  /// [program]
  /// Programs that this service is applicable to.
  final List<CodeableConcept>? program;

  /// [characteristic]
  /// Collection of characteristics (attributes).
  final List<CodeableConcept>? characteristic;

  /// [communication]
  /// Some services are specifically made available in multiple languages,
  /// this property permits a directory to declare the languages this is
  /// offered in. Typically this is only provided where a service operates in
  /// communities with mixed languages used.
  final List<CodeableConcept>? communication;

  /// [referralMethod]
  /// Ways that the service accepts referrals, if this is not provided then
  /// it is implied that no referral is required.
  final List<CodeableConcept>? referralMethod;

  /// [appointmentRequired]
  /// Indicates whether or not a prospective consumer will require an
  /// appointment for a particular service at a site to be provided by the
  /// Organization. Indicates if an appointment is required for access to
  /// this service.
  final FhirBoolean? appointmentRequired;

  /// [availableTime]
  /// A collection of times that the Service Site is available.
  final List<HealthcareServiceAvailableTime>? availableTime;

  /// [notAvailable]
  /// The HealthcareService is not available during this period of time due
  /// to the provided reason.
  final List<HealthcareServiceNotAvailable>? notAvailable;

  /// [availabilityExceptions]
  /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal
  /// site availability as details in the available Times and not available
  /// Times.
  final FhirString? availabilityExceptions;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// specific healthcare services defined at this resource.
  final List<Reference>? endpoint;
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
    addField('providedBy', providedBy);
    addField('category', category);
    addField('type', type);
    addField('specialty', specialty);
    addField('location', location);
    addField('name', name);
    addField('comment', comment);
    addField('extraDetails', extraDetails);
    addField('photo', photo);
    addField('telecom', telecom);
    addField('coverageArea', coverageArea);
    addField('serviceProvisionCode', serviceProvisionCode);
    addField('eligibility', eligibility);
    addField('program', program);
    addField('characteristic', characteristic);
    addField('communication', communication);
    addField('referralMethod', referralMethod);
    addField('appointmentRequired', appointmentRequired);
    addField('availableTime', availableTime);
    addField('notAvailable', notAvailable);
    addField('availabilityExceptions', availabilityExceptions);
    addField('endpoint', endpoint);
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
      'providedBy',
      'category',
      'type',
      'specialty',
      'location',
      'name',
      'comment',
      'extraDetails',
      'photo',
      'telecom',
      'coverageArea',
      'serviceProvisionCode',
      'eligibility',
      'program',
      'characteristic',
      'communication',
      'referralMethod',
      'appointmentRequired',
      'availableTime',
      'notAvailable',
      'availabilityExceptions',
      'endpoint',
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
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'providedBy':
        if (providedBy != null) {
          fields.add(providedBy!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'extraDetails':
        if (extraDetails != null) {
          fields.add(extraDetails!);
        }
      case 'photo':
        if (photo != null) {
          fields.add(photo!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'coverageArea':
        if (coverageArea != null) {
          fields.addAll(coverageArea!);
        }
      case 'serviceProvisionCode':
        if (serviceProvisionCode != null) {
          fields.addAll(serviceProvisionCode!);
        }
      case 'eligibility':
        if (eligibility != null) {
          fields.addAll(eligibility!);
        }
      case 'program':
        if (program != null) {
          fields.addAll(program!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'communication':
        if (communication != null) {
          fields.addAll(communication!);
        }
      case 'referralMethod':
        if (referralMethod != null) {
          fields.addAll(referralMethod!);
        }
      case 'appointmentRequired':
        if (appointmentRequired != null) {
          fields.add(appointmentRequired!);
        }
      case 'availableTime':
        if (availableTime != null) {
          fields.addAll(availableTime!);
        }
      case 'notAvailable':
        if (notAvailable != null) {
          fields.addAll(notAvailable!);
        }
      case 'availabilityExceptions':
        if (availabilityExceptions != null) {
          fields.add(availabilityExceptions!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'contained':
        if (contained != null) {
          return contained!;
        } else {
          return <FhirBase>[];
        }
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'identifier':
        if (identifier != null) {
          return identifier!;
        } else {
          return <FhirBase>[];
        }
      case 'category':
        if (category != null) {
          return category!;
        } else {
          return <FhirBase>[];
        }
      case 'type':
        if (type != null) {
          return type!;
        } else {
          return <FhirBase>[];
        }
      case 'specialty':
        if (specialty != null) {
          return specialty!;
        } else {
          return <FhirBase>[];
        }
      case 'location':
        if (location != null) {
          return location!;
        } else {
          return <FhirBase>[];
        }
      case 'telecom':
        if (telecom != null) {
          return telecom!;
        } else {
          return <FhirBase>[];
        }
      case 'coverageArea':
        if (coverageArea != null) {
          return coverageArea!;
        } else {
          return <FhirBase>[];
        }
      case 'serviceProvisionCode':
        if (serviceProvisionCode != null) {
          return serviceProvisionCode!;
        } else {
          return <FhirBase>[];
        }
      case 'eligibility':
        if (eligibility != null) {
          return eligibility!;
        } else {
          return <FhirBase>[];
        }
      case 'program':
        if (program != null) {
          return program!;
        } else {
          return <FhirBase>[];
        }
      case 'characteristic':
        if (characteristic != null) {
          return characteristic!;
        } else {
          return <FhirBase>[];
        }
      case 'communication':
        if (communication != null) {
          return communication!;
        } else {
          return <FhirBase>[];
        }
      case 'referralMethod':
        if (referralMethod != null) {
          return referralMethod!;
        } else {
          return <FhirBase>[];
        }
      case 'availableTime':
        if (availableTime != null) {
          return availableTime!;
        } else {
          return <FhirBase>[];
        }
      case 'notAvailable':
        if (notAvailable != null) {
          return notAvailable!;
        } else {
          return <FhirBase>[];
        }
      case 'endpoint':
        if (endpoint != null) {
          return endpoint!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'active':
        {
          if (child is FhirBoolean) {
            return copyWith(active: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'providedBy':
        {
          if (child is Reference) {
            return copyWith(providedBy: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'specialty':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(specialty: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'location':
        {
          if (child is List<Reference>) {
            return copyWith(location: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comment':
        {
          if (child is FhirString) {
            return copyWith(comment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extraDetails':
        {
          if (child is FhirMarkdown) {
            return copyWith(extraDetails: child);
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
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            return copyWith(telecom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'coverageArea':
        {
          if (child is List<Reference>) {
            return copyWith(coverageArea: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'serviceProvisionCode':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(serviceProvisionCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'eligibility':
        {
          if (child is List<HealthcareServiceEligibility>) {
            return copyWith(eligibility: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'program':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(program: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'characteristic':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(characteristic: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'communication':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(communication: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'referralMethod':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(referralMethod: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'appointmentRequired':
        {
          if (child is FhirBoolean) {
            return copyWith(appointmentRequired: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availableTime':
        {
          if (child is List<HealthcareServiceAvailableTime>) {
            return copyWith(availableTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'notAvailable':
        {
          if (child is List<HealthcareServiceNotAvailable>) {
            return copyWith(notAvailable: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availabilityExceptions':
        {
          if (child is FhirString) {
            return copyWith(availabilityExceptions: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endpoint':
        {
          if (child is List<Reference>) {
            return copyWith(endpoint: child);
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
      case 'active':
        return ['FhirBoolean'];
      case 'providedBy':
        return ['Reference'];
      case 'category':
        return ['CodeableConcept'];
      case 'type':
        return ['CodeableConcept'];
      case 'specialty':
        return ['CodeableConcept'];
      case 'location':
        return ['Reference'];
      case 'name':
        return ['FhirString'];
      case 'comment':
        return ['FhirString'];
      case 'extraDetails':
        return ['FhirMarkdown'];
      case 'photo':
        return ['Attachment'];
      case 'telecom':
        return ['ContactPoint'];
      case 'coverageArea':
        return ['Reference'];
      case 'serviceProvisionCode':
        return ['CodeableConcept'];
      case 'eligibility':
        return ['HealthcareServiceEligibility'];
      case 'program':
        return ['CodeableConcept'];
      case 'characteristic':
        return ['CodeableConcept'];
      case 'communication':
        return ['CodeableConcept'];
      case 'referralMethod':
        return ['CodeableConcept'];
      case 'appointmentRequired':
        return ['FhirBoolean'];
      case 'availableTime':
        return ['HealthcareServiceAvailableTime'];
      case 'notAvailable':
        return ['HealthcareServiceNotAvailable'];
      case 'availabilityExceptions':
        return ['FhirString'];
      case 'endpoint':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareService]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  HealthcareService createProperty(String propertyName) {
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
      case 'active':
        {
          return copyWith(active: FhirBoolean.empty());
        }
      case 'providedBy':
        {
          return copyWith(providedBy: Reference.empty());
        }
      case 'category':
        {
          return copyWith(category: <CodeableConcept>[]);
        }
      case 'type':
        {
          return copyWith(type: <CodeableConcept>[]);
        }
      case 'specialty':
        {
          return copyWith(specialty: <CodeableConcept>[]);
        }
      case 'location':
        {
          return copyWith(location: <Reference>[]);
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'comment':
        {
          return copyWith(comment: FhirString.empty());
        }
      case 'extraDetails':
        {
          return copyWith(extraDetails: FhirMarkdown.empty());
        }
      case 'photo':
        {
          return copyWith(photo: Attachment.empty());
        }
      case 'telecom':
        {
          return copyWith(telecom: <ContactPoint>[]);
        }
      case 'coverageArea':
        {
          return copyWith(coverageArea: <Reference>[]);
        }
      case 'serviceProvisionCode':
        {
          return copyWith(serviceProvisionCode: <CodeableConcept>[]);
        }
      case 'eligibility':
        {
          return copyWith(eligibility: <HealthcareServiceEligibility>[]);
        }
      case 'program':
        {
          return copyWith(program: <CodeableConcept>[]);
        }
      case 'characteristic':
        {
          return copyWith(characteristic: <CodeableConcept>[]);
        }
      case 'communication':
        {
          return copyWith(communication: <CodeableConcept>[]);
        }
      case 'referralMethod':
        {
          return copyWith(referralMethod: <CodeableConcept>[]);
        }
      case 'appointmentRequired':
        {
          return copyWith(appointmentRequired: FhirBoolean.empty());
        }
      case 'availableTime':
        {
          return copyWith(availableTime: <HealthcareServiceAvailableTime>[]);
        }
      case 'notAvailable':
        {
          return copyWith(notAvailable: <HealthcareServiceNotAvailable>[]);
        }
      case 'availabilityExceptions':
        {
          return copyWith(availabilityExceptions: FhirString.empty());
        }
      case 'endpoint':
        {
          return copyWith(endpoint: <Reference>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  HealthcareService clear({
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
    bool providedBy = false,
    bool category = false,
    bool type = false,
    bool specialty = false,
    bool location = false,
    bool name = false,
    bool comment = false,
    bool extraDetails = false,
    bool photo = false,
    bool telecom = false,
    bool coverageArea = false,
    bool serviceProvisionCode = false,
    bool eligibility = false,
    bool program = false,
    bool characteristic = false,
    bool communication = false,
    bool referralMethod = false,
    bool appointmentRequired = false,
    bool availableTime = false,
    bool notAvailable = false,
    bool availabilityExceptions = false,
    bool endpoint = false,
  }) {
    return HealthcareService(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      active: active ? null : this.active,
      providedBy: providedBy ? null : this.providedBy,
      category: category ? null : this.category,
      type: type ? null : this.type,
      specialty: specialty ? null : this.specialty,
      location: location ? null : this.location,
      name: name ? null : this.name,
      comment: comment ? null : this.comment,
      extraDetails: extraDetails ? null : this.extraDetails,
      photo: photo ? null : this.photo,
      telecom: telecom ? null : this.telecom,
      coverageArea: coverageArea ? null : this.coverageArea,
      serviceProvisionCode:
          serviceProvisionCode ? null : this.serviceProvisionCode,
      eligibility: eligibility ? null : this.eligibility,
      program: program ? null : this.program,
      characteristic: characteristic ? null : this.characteristic,
      communication: communication ? null : this.communication,
      referralMethod: referralMethod ? null : this.referralMethod,
      appointmentRequired:
          appointmentRequired ? null : this.appointmentRequired,
      availableTime: availableTime ? null : this.availableTime,
      notAvailable: notAvailable ? null : this.notAvailable,
      availabilityExceptions:
          availabilityExceptions ? null : this.availabilityExceptions,
      endpoint: endpoint ? null : this.endpoint,
    );
  }

  @override
  HealthcareService clone() => throw UnimplementedError();
  @override
  HealthcareService copyWith({
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
    Reference? providedBy,
    List<CodeableConcept>? category,
    List<CodeableConcept>? type,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    FhirString? name,
    FhirString? comment,
    FhirMarkdown? extraDetails,
    Attachment? photo,
    List<ContactPoint>? telecom,
    List<Reference>? coverageArea,
    List<CodeableConcept>? serviceProvisionCode,
    List<HealthcareServiceEligibility>? eligibility,
    List<CodeableConcept>? program,
    List<CodeableConcept>? characteristic,
    List<CodeableConcept>? communication,
    List<CodeableConcept>? referralMethod,
    FhirBoolean? appointmentRequired,
    List<HealthcareServiceAvailableTime>? availableTime,
    List<HealthcareServiceNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    List<Reference>? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return HealthcareService(
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
      providedBy: providedBy?.copyWith(
            objectPath: '$newObjectPath.providedBy',
          ) ??
          this.providedBy,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      specialty: specialty
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialty',
                ),
              )
              .toList() ??
          this.specialty,
      location: location
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.location',
                ),
              )
              .toList() ??
          this.location,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
      extraDetails: extraDetails?.copyWith(
            objectPath: '$newObjectPath.extraDetails',
          ) ??
          this.extraDetails,
      photo: photo?.copyWith(
            objectPath: '$newObjectPath.photo',
          ) ??
          this.photo,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      coverageArea: coverageArea
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.coverageArea',
                ),
              )
              .toList() ??
          this.coverageArea,
      serviceProvisionCode: serviceProvisionCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.serviceProvisionCode',
                ),
              )
              .toList() ??
          this.serviceProvisionCode,
      eligibility: eligibility
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.eligibility',
                ),
              )
              .toList() ??
          this.eligibility,
      program: program
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.program',
                ),
              )
              .toList() ??
          this.program,
      characteristic: characteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.characteristic',
                ),
              )
              .toList() ??
          this.characteristic,
      communication: communication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.communication',
                ),
              )
              .toList() ??
          this.communication,
      referralMethod: referralMethod
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referralMethod',
                ),
              )
              .toList() ??
          this.referralMethod,
      appointmentRequired: appointmentRequired?.copyWith(
            objectPath: '$newObjectPath.appointmentRequired',
          ) ??
          this.appointmentRequired,
      availableTime: availableTime
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.availableTime',
                ),
              )
              .toList() ??
          this.availableTime,
      notAvailable: notAvailable
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.notAvailable',
                ),
              )
              .toList() ??
          this.notAvailable,
      availabilityExceptions: availabilityExceptions?.copyWith(
            objectPath: '$newObjectPath.availabilityExceptions',
          ) ??
          this.availabilityExceptions,
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! HealthcareService) {
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
    if (!equalsDeepWithNull(providedBy, o.providedBy)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(comment, o.comment)) {
      return false;
    }
    if (!equalsDeepWithNull(extraDetails, o.extraDetails)) {
      return false;
    }
    if (!equalsDeepWithNull(photo, o.photo)) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      serviceProvisionCode,
      o.serviceProvisionCode,
    )) {
      return false;
    }
    if (!listEquals<HealthcareServiceEligibility>(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      program,
      o.program,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      communication,
      o.communication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      referralMethod,
      o.referralMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(appointmentRequired, o.appointmentRequired)) {
      return false;
    }
    if (!listEquals<HealthcareServiceAvailableTime>(
      availableTime,
      o.availableTime,
    )) {
      return false;
    }
    if (!listEquals<HealthcareServiceNotAvailable>(
      notAvailable,
      o.notAvailable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(availabilityExceptions, o.availabilityExceptions)) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}

/// [HealthcareServiceEligibility]
/// Does this service have specific eligibility requirements that need to
/// be met in order to use the service?
class HealthcareServiceEligibility extends BackboneElement {
  /// Primary constructor for
  /// [HealthcareServiceEligibility]

  const HealthcareServiceEligibility({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.comment,
    super.disallowExtensions,
  }) : super(
          objectPath: 'HealthcareService.eligibility',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory HealthcareServiceEligibility.empty() =>
      const HealthcareServiceEligibility();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceEligibility.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.eligibility';
    return HealthcareServiceEligibility(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [HealthcareServiceEligibility]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceEligibility.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceEligibility.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceEligibility.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceEligibility '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceEligibility]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceEligibility.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceEligibility.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareServiceEligibility';

  /// [code]
  /// Coded value for the eligibility.
  final CodeableConcept? code;

  /// [comment]
  /// Describes the eligibility conditions for the service.
  final FhirMarkdown? comment;
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
    addField('code', code);
    addField('comment', comment);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'comment',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comment':
        {
          if (child is FhirMarkdown) {
            return copyWith(comment: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'comment':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceEligibility]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  HealthcareServiceEligibility createProperty(String propertyName) {
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
      case 'code':
        {
          return copyWith(code: CodeableConcept.empty());
        }
      case 'comment':
        {
          return copyWith(comment: FhirMarkdown.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  HealthcareServiceEligibility clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool comment = false,
  }) {
    return HealthcareServiceEligibility(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code ? null : this.code,
      comment: comment ? null : this.comment,
    );
  }

  @override
  HealthcareServiceEligibility clone() => throw UnimplementedError();
  @override
  HealthcareServiceEligibility copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirMarkdown? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return HealthcareServiceEligibility(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! HealthcareServiceEligibility) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(comment, o.comment)) {
      return false;
    }
    return true;
  }
}

/// [HealthcareServiceAvailableTime]
/// A collection of times that the Service Site is available.
class HealthcareServiceAvailableTime extends BackboneElement {
  /// Primary constructor for
  /// [HealthcareServiceAvailableTime]

  const HealthcareServiceAvailableTime({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
    super.disallowExtensions,
  }) : super(
          objectPath: 'HealthcareService.availableTime',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory HealthcareServiceAvailableTime.empty() =>
      const HealthcareServiceAvailableTime();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceAvailableTime.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.availableTime';
    return HealthcareServiceAvailableTime(
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
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'daysOfWeek',
        DaysOfWeek.fromJson,
        '$objectPath.daysOfWeek',
      ),
      allDay: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allDay',
        FhirBoolean.fromJson,
        '$objectPath.allDay',
      ),
      availableStartTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableStartTime',
        FhirTime.fromJson,
        '$objectPath.availableStartTime',
      ),
      availableEndTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableEndTime',
        FhirTime.fromJson,
        '$objectPath.availableEndTime',
      ),
    );
  }

  /// Deserialize [HealthcareServiceAvailableTime]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceAvailableTime.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceAvailableTime.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceAvailableTime.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceAvailableTime '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceAvailableTime]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceAvailableTime.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareServiceAvailableTime';

  /// [daysOfWeek]
  /// Indicates which days of the week are available between the start and
  /// end Times.
  final List<DaysOfWeek>? daysOfWeek;

  /// [allDay]
  /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  final FhirBoolean? allDay;

  /// [availableStartTime]
  /// The opening time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableStartTime;

  /// [availableEndTime]
  /// The closing time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableEndTime;
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
    addField('daysOfWeek', daysOfWeek);
    addField('allDay', allDay);
    addField('availableStartTime', availableStartTime);
    addField('availableEndTime', availableEndTime);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'daysOfWeek',
      'allDay',
      'availableStartTime',
      'availableEndTime',
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
      case 'daysOfWeek':
        if (daysOfWeek != null) {
          fields.addAll(daysOfWeek!);
        }
      case 'allDay':
        if (allDay != null) {
          fields.add(allDay!);
        }
      case 'availableStartTime':
        if (availableStartTime != null) {
          fields.add(availableStartTime!);
        }
      case 'availableEndTime':
        if (availableEndTime != null) {
          fields.add(availableEndTime!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'daysOfWeek':
        if (daysOfWeek != null) {
          return daysOfWeek!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'daysOfWeek':
        {
          if (child is List<DaysOfWeek>) {
            return copyWith(daysOfWeek: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allDay':
        {
          if (child is FhirBoolean) {
            return copyWith(allDay: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availableStartTime':
        {
          if (child is FhirTime) {
            return copyWith(availableStartTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availableEndTime':
        {
          if (child is FhirTime) {
            return copyWith(availableEndTime: child);
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
      case 'daysOfWeek':
        return ['FhirCode'];
      case 'allDay':
        return ['FhirBoolean'];
      case 'availableStartTime':
        return ['FhirTime'];
      case 'availableEndTime':
        return ['FhirTime'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceAvailableTime]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  HealthcareServiceAvailableTime createProperty(String propertyName) {
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
      case 'daysOfWeek':
        {
          return copyWith(daysOfWeek: <DaysOfWeek>[]);
        }
      case 'allDay':
        {
          return copyWith(allDay: FhirBoolean.empty());
        }
      case 'availableStartTime':
        {
          return copyWith(availableStartTime: FhirTime.empty());
        }
      case 'availableEndTime':
        {
          return copyWith(availableEndTime: FhirTime.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  HealthcareServiceAvailableTime clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool daysOfWeek = false,
    bool allDay = false,
    bool availableStartTime = false,
    bool availableEndTime = false,
  }) {
    return HealthcareServiceAvailableTime(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      daysOfWeek: daysOfWeek ? null : this.daysOfWeek,
      allDay: allDay ? null : this.allDay,
      availableStartTime: availableStartTime ? null : this.availableStartTime,
      availableEndTime: availableEndTime ? null : this.availableEndTime,
    );
  }

  @override
  HealthcareServiceAvailableTime clone() => throw UnimplementedError();
  @override
  HealthcareServiceAvailableTime copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? availableStartTime,
    FhirTime? availableEndTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return HealthcareServiceAvailableTime(
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
      daysOfWeek: daysOfWeek
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.daysOfWeek',
                ),
              )
              .toList() ??
          this.daysOfWeek,
      allDay: allDay?.copyWith(
            objectPath: '$newObjectPath.allDay',
          ) ??
          this.allDay,
      availableStartTime: availableStartTime?.copyWith(
            objectPath: '$newObjectPath.availableStartTime',
          ) ??
          this.availableStartTime,
      availableEndTime: availableEndTime?.copyWith(
            objectPath: '$newObjectPath.availableEndTime',
          ) ??
          this.availableEndTime,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! HealthcareServiceAvailableTime) {
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
    if (!listEquals<DaysOfWeek>(
      daysOfWeek,
      o.daysOfWeek,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(allDay, o.allDay)) {
      return false;
    }
    if (!equalsDeepWithNull(availableStartTime, o.availableStartTime)) {
      return false;
    }
    if (!equalsDeepWithNull(availableEndTime, o.availableEndTime)) {
      return false;
    }
    return true;
  }
}

/// [HealthcareServiceNotAvailable]
/// The HealthcareService is not available during this period of time due
/// to the provided reason.
class HealthcareServiceNotAvailable extends BackboneElement {
  /// Primary constructor for
  /// [HealthcareServiceNotAvailable]

  const HealthcareServiceNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.during,
    super.disallowExtensions,
  }) : super(
          objectPath: 'HealthcareService.notAvailable',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory HealthcareServiceNotAvailable.empty() =>
      HealthcareServiceNotAvailable(
        description: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceNotAvailable.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.notAvailable';
    return HealthcareServiceNotAvailable(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      )!,
      during: JsonParser.parseObject<Period>(
        json,
        'during',
        Period.fromJson,
        '$objectPath.during',
      ),
    );
  }

  /// Deserialize [HealthcareServiceNotAvailable]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceNotAvailable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceNotAvailable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceNotAvailable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceNotAvailable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceNotAvailable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceNotAvailable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceNotAvailable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareServiceNotAvailable';

  /// [description]
  /// The reason that can be presented to the user as to why this time is not
  /// available.
  final FhirString description;

  /// [during]
  /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
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
    addField('description', description);
    addField('during', during);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'during',
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
      case 'description':
        fields.add(description);
      case 'during':
        if (during != null) {
          fields.add(during!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
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
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'during':
        {
          if (child is Period) {
            return copyWith(during: child);
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
      case 'description':
        return ['FhirString'];
      case 'during':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceNotAvailable]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  HealthcareServiceNotAvailable createProperty(String propertyName) {
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
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'during':
        {
          return copyWith(during: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  HealthcareServiceNotAvailable clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool during = false,
  }) {
    return HealthcareServiceNotAvailable(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description,
      during: during ? null : this.during,
    );
  }

  @override
  HealthcareServiceNotAvailable clone() => throw UnimplementedError();
  @override
  HealthcareServiceNotAvailable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Period? during,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return HealthcareServiceNotAvailable(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      during: during?.copyWith(
            objectPath: '$newObjectPath.during',
          ) ??
          this.during,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! HealthcareServiceNotAvailable) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(during, o.during)) {
      return false;
    }
    return true;
  }
}
