import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        HealthcareService,
        HealthcareServiceEligibility,
        HealthcareServiceAvailableTime,
        HealthcareServiceNotAvailable;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [HealthcareService] to a Builder
extension BuilderHealthcareService on HealthcareService {
  /// Converts [HealthcareService] to a [HealthcareServiceBuilder]
  HealthcareServiceBuilder get toBuilder =>
      HealthcareServiceBuilder.fromJson(toJson());
}

/// [HealthcareServiceBuilder]
/// The details of a healthcare service available at a location.
class HealthcareServiceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [HealthcareServiceBuilder]

  HealthcareServiceBuilder({
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
  /// For Builder classes, no fields are required
  factory HealthcareServiceBuilder.empty() => HealthcareServiceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService';
    return HealthcareServiceBuilder(
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
      providedBy: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'providedBy',
        ReferenceBuilder.fromJson,
        '$objectPath.providedBy',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialty',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
      extraDetails: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'extraDetails',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.extraDetails',
      ),
      photo: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'photo',
        AttachmentBuilder.fromJson,
        '$objectPath.photo',
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
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      serviceProvisionCode: (json['serviceProvisionCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceProvisionCode',
              },
            ),
          )
          .toList(),
      eligibility: (json['eligibility'] as List<dynamic>?)
          ?.map<HealthcareServiceEligibilityBuilder>(
            (v) => HealthcareServiceEligibilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eligibility',
              },
            ),
          )
          .toList(),
      program: (json['program'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.program',
              },
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communication',
              },
            ),
          )
          .toList(),
      referralMethod: (json['referralMethod'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referralMethod',
              },
            ),
          )
          .toList(),
      appointmentRequired: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'appointmentRequired',
        FhirBooleanBuilder.fromJson,
        '$objectPath.appointmentRequired',
      ),
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map<HealthcareServiceAvailableTimeBuilder>(
            (v) => HealthcareServiceAvailableTimeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.availableTime',
              },
            ),
          )
          .toList(),
      notAvailable: (json['notAvailable'] as List<dynamic>?)
          ?.map<HealthcareServiceNotAvailableBuilder>(
            (v) => HealthcareServiceNotAvailableBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notAvailable',
              },
            ),
          )
          .toList(),
      availabilityExceptions: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'availabilityExceptions',
        FhirStringBuilder.fromJson,
        '$objectPath.availabilityExceptions',
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [HealthcareServiceBuilder]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareService';

  /// [identifier]
  /// External identifiers for this item.
  List<IdentifierBuilder>? identifier;

  /// [active]
  /// This flag is used to mark the record to not be used. This is not used
  /// when a center is closed for maintenance, or for holidays, the
  /// notAvailable period is to be used for this.
  FhirBooleanBuilder? active;

  /// [providedBy]
  /// The organization that provides this healthcare service.
  ReferenceBuilder? providedBy;

  /// [category]
  /// Identifies the broad category of service being performed or delivered.
  List<CodeableConceptBuilder>? category;

  /// [type]
  /// The specific type of service that may be delivered or performed.
  List<CodeableConceptBuilder>? type;

  /// [specialty]
  /// Collection of specialties handled by the service site. This is more of
  /// a medical term.
  List<CodeableConceptBuilder>? specialty;

  /// [location]
  /// The location(s) where this healthcare service may be provided.
  List<ReferenceBuilder>? location;

  /// [name]
  /// Further description of the service as it would be presented to a
  /// consumer while searching.
  FhirStringBuilder? name;

  /// [comment]
  /// Any additional description of the service and/or any specific issues
  /// not covered by the other attributes, which can be displayed as further
  /// detail under the serviceName.
  FhirStringBuilder? comment;

  /// [extraDetails]
  /// Extra details about the service that can't be placed in the other
  /// fields.
  FhirMarkdownBuilder? extraDetails;

  /// [photo]
  /// If there is a photo/symbol associated with this HealthcareService, it
  /// may be included here to facilitate quick identification of the service
  /// in a list.
  AttachmentBuilder? photo;

  /// [telecom]
  /// List of contacts related to this specific healthcare service.
  List<ContactPointBuilder>? telecom;

  /// [coverageArea]
  /// The location(s) that this service is available to (not where the
  /// service is provided).
  List<ReferenceBuilder>? coverageArea;

  /// [serviceProvisionCode]
  /// The code(s) that detail the conditions under which the healthcare
  /// service is available/offered.
  List<CodeableConceptBuilder>? serviceProvisionCode;

  /// [eligibility]
  /// Does this service have specific eligibility requirements that need to
  /// be met in order to use the service?
  List<HealthcareServiceEligibilityBuilder>? eligibility;

  /// [program]
  /// Programs that this service is applicable to.
  List<CodeableConceptBuilder>? program;

  /// [characteristic]
  /// Collection of characteristics (attributes).
  List<CodeableConceptBuilder>? characteristic;

  /// [communication]
  /// Some services are specifically made available in multiple languages,
  /// this property permits a directory to declare the languages this is
  /// offered in. Typically this is only provided where a service operates in
  /// communities with mixed languages used.
  List<CodeableConceptBuilder>? communication;

  /// [referralMethod]
  /// Ways that the service accepts referrals, if this is not provided then
  /// it is implied that no referral is required.
  List<CodeableConceptBuilder>? referralMethod;

  /// [appointmentRequired]
  /// Indicates whether or not a prospective consumer will require an
  /// appointment for a particular service at a site to be provided by the
  /// Organization. Indicates if an appointment is required for access to
  /// this service.
  FhirBooleanBuilder? appointmentRequired;

  /// [availableTime]
  /// A collection of times that the Service Site is available.
  List<HealthcareServiceAvailableTimeBuilder>? availableTime;

  /// [notAvailable]
  /// The HealthcareService is not available during this period of time due
  /// to the provided reason.
  List<HealthcareServiceNotAvailableBuilder>? notAvailable;

  /// [availabilityExceptions]
  /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal
  /// site availability as details in the available Times and not available
  /// Times.
  FhirStringBuilder? availabilityExceptions;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// specific healthcare services defined at this resource.
  List<ReferenceBuilder>? endpoint;

  /// Converts a HealthcareServiceBuilder to [HealthcareService]
  HealthcareService build() => HealthcareService.fromJson(toJson());

  /// Converts a [HealthcareServiceBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'active':
        {
          if (child is FhirBooleanBuilder) {
            active = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'providedBy':
        {
          if (child is ReferenceBuilder) {
            providedBy = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [...(category ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialty':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialty = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialty = [...(specialty ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            location = [...(location ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extraDetails':
        {
          if (child is FhirMarkdownBuilder) {
            extraDetails = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'photo':
        {
          if (child is AttachmentBuilder) {
            photo = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            telecom = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            telecom = [...(telecom ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverageArea':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            coverageArea = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            coverageArea = [...(coverageArea ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serviceProvisionCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            serviceProvisionCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            serviceProvisionCode = [...(serviceProvisionCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eligibility':
        {
          if (child is List<HealthcareServiceEligibilityBuilder>) {
            // Replace or create new list
            eligibility = child;
            return;
          } else if (child is HealthcareServiceEligibilityBuilder) {
            // Add single element to existing list or create new list
            eligibility = [...(eligibility ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'program':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            program = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            program = [...(program ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'characteristic':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            characteristic = [...(characteristic ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'communication':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            communication = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            communication = [...(communication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referralMethod':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            referralMethod = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            referralMethod = [...(referralMethod ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'appointmentRequired':
        {
          if (child is FhirBooleanBuilder) {
            appointmentRequired = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'availableTime':
        {
          if (child is List<HealthcareServiceAvailableTimeBuilder>) {
            // Replace or create new list
            availableTime = child;
            return;
          } else if (child is HealthcareServiceAvailableTimeBuilder) {
            // Add single element to existing list or create new list
            availableTime = [...(availableTime ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'notAvailable':
        {
          if (child is List<HealthcareServiceNotAvailableBuilder>) {
            // Replace or create new list
            notAvailable = child;
            return;
          } else if (child is HealthcareServiceNotAvailableBuilder) {
            // Add single element to existing list or create new list
            notAvailable = [...(notAvailable ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'availabilityExceptions':
        {
          if (child is FhirStringBuilder) {
            availabilityExceptions = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpoint':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            endpoint = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            endpoint = [...(endpoint ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'providedBy':
        return ['ReferenceBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'specialty':
        return ['CodeableConceptBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      case 'extraDetails':
        return ['FhirMarkdownBuilder'];
      case 'photo':
        return ['AttachmentBuilder'];
      case 'telecom':
        return ['ContactPointBuilder'];
      case 'coverageArea':
        return ['ReferenceBuilder'];
      case 'serviceProvisionCode':
        return ['CodeableConceptBuilder'];
      case 'eligibility':
        return ['HealthcareServiceEligibilityBuilder'];
      case 'program':
        return ['CodeableConceptBuilder'];
      case 'characteristic':
        return ['CodeableConceptBuilder'];
      case 'communication':
        return ['CodeableConceptBuilder'];
      case 'referralMethod':
        return ['CodeableConceptBuilder'];
      case 'appointmentRequired':
        return ['FhirBooleanBuilder'];
      case 'availableTime':
        return ['HealthcareServiceAvailableTimeBuilder'];
      case 'notAvailable':
        return ['HealthcareServiceNotAvailableBuilder'];
      case 'availabilityExceptions':
        return ['FhirStringBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceBuilder]
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
      case 'providedBy':
        {
          providedBy = ReferenceBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'specialty':
        {
          specialty = <CodeableConceptBuilder>[];
          return;
        }
      case 'location':
        {
          location = <ReferenceBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
          return;
        }
      case 'extraDetails':
        {
          extraDetails = FhirMarkdownBuilder.empty();
          return;
        }
      case 'photo':
        {
          photo = AttachmentBuilder.empty();
          return;
        }
      case 'telecom':
        {
          telecom = <ContactPointBuilder>[];
          return;
        }
      case 'coverageArea':
        {
          coverageArea = <ReferenceBuilder>[];
          return;
        }
      case 'serviceProvisionCode':
        {
          serviceProvisionCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'eligibility':
        {
          eligibility = <HealthcareServiceEligibilityBuilder>[];
          return;
        }
      case 'program':
        {
          program = <CodeableConceptBuilder>[];
          return;
        }
      case 'characteristic':
        {
          characteristic = <CodeableConceptBuilder>[];
          return;
        }
      case 'communication':
        {
          communication = <CodeableConceptBuilder>[];
          return;
        }
      case 'referralMethod':
        {
          referralMethod = <CodeableConceptBuilder>[];
          return;
        }
      case 'appointmentRequired':
        {
          appointmentRequired = FhirBooleanBuilder.empty();
          return;
        }
      case 'availableTime':
        {
          availableTime = <HealthcareServiceAvailableTimeBuilder>[];
          return;
        }
      case 'notAvailable':
        {
          notAvailable = <HealthcareServiceNotAvailableBuilder>[];
          return;
        }
      case 'availabilityExceptions':
        {
          availabilityExceptions = FhirStringBuilder.empty();
          return;
        }
      case 'endpoint':
        {
          endpoint = <ReferenceBuilder>[];
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
    if (providedBy) this.providedBy = null;
    if (category) this.category = null;
    if (type) this.type = null;
    if (specialty) this.specialty = null;
    if (location) this.location = null;
    if (name) this.name = null;
    if (comment) this.comment = null;
    if (extraDetails) this.extraDetails = null;
    if (photo) this.photo = null;
    if (telecom) this.telecom = null;
    if (coverageArea) this.coverageArea = null;
    if (serviceProvisionCode) this.serviceProvisionCode = null;
    if (eligibility) this.eligibility = null;
    if (program) this.program = null;
    if (characteristic) this.characteristic = null;
    if (communication) this.communication = null;
    if (referralMethod) this.referralMethod = null;
    if (appointmentRequired) this.appointmentRequired = null;
    if (availableTime) this.availableTime = null;
    if (notAvailable) this.notAvailable = null;
    if (availabilityExceptions) this.availabilityExceptions = null;
    if (endpoint) this.endpoint = null;
  }

  @override
  HealthcareServiceBuilder clone() => throw UnimplementedError();
  @override
  HealthcareServiceBuilder copyWith({
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
    ReferenceBuilder? providedBy,
    List<CodeableConceptBuilder>? category,
    List<CodeableConceptBuilder>? type,
    List<CodeableConceptBuilder>? specialty,
    List<ReferenceBuilder>? location,
    FhirStringBuilder? name,
    FhirStringBuilder? comment,
    FhirMarkdownBuilder? extraDetails,
    AttachmentBuilder? photo,
    List<ContactPointBuilder>? telecom,
    List<ReferenceBuilder>? coverageArea,
    List<CodeableConceptBuilder>? serviceProvisionCode,
    List<HealthcareServiceEligibilityBuilder>? eligibility,
    List<CodeableConceptBuilder>? program,
    List<CodeableConceptBuilder>? characteristic,
    List<CodeableConceptBuilder>? communication,
    List<CodeableConceptBuilder>? referralMethod,
    FhirBooleanBuilder? appointmentRequired,
    List<HealthcareServiceAvailableTimeBuilder>? availableTime,
    List<HealthcareServiceNotAvailableBuilder>? notAvailable,
    FhirStringBuilder? availabilityExceptions,
    List<ReferenceBuilder>? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = HealthcareServiceBuilder(
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
      providedBy: providedBy ?? this.providedBy,
      category: category ?? this.category,
      type: type ?? this.type,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      name: name ?? this.name,
      comment: comment ?? this.comment,
      extraDetails: extraDetails ?? this.extraDetails,
      photo: photo ?? this.photo,
      telecom: telecom ?? this.telecom,
      coverageArea: coverageArea ?? this.coverageArea,
      serviceProvisionCode: serviceProvisionCode ?? this.serviceProvisionCode,
      eligibility: eligibility ?? this.eligibility,
      program: program ?? this.program,
      characteristic: characteristic ?? this.characteristic,
      communication: communication ?? this.communication,
      referralMethod: referralMethod ?? this.referralMethod,
      appointmentRequired: appointmentRequired ?? this.appointmentRequired,
      availableTime: availableTime ?? this.availableTime,
      notAvailable: notAvailable ?? this.notAvailable,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      endpoint: endpoint ?? this.endpoint,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! HealthcareServiceBuilder) {
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
    if (!equalsDeepWithNull(
      providedBy,
      o.providedBy,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      extraDetails,
      o.extraDetails,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      photo,
      o.photo,
    )) {
      return false;
    }
    if (!listEquals<ContactPointBuilder>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      serviceProvisionCode,
      o.serviceProvisionCode,
    )) {
      return false;
    }
    if (!listEquals<HealthcareServiceEligibilityBuilder>(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      program,
      o.program,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      communication,
      o.communication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      referralMethod,
      o.referralMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      appointmentRequired,
      o.appointmentRequired,
    )) {
      return false;
    }
    if (!listEquals<HealthcareServiceAvailableTimeBuilder>(
      availableTime,
      o.availableTime,
    )) {
      return false;
    }
    if (!listEquals<HealthcareServiceNotAvailableBuilder>(
      notAvailable,
      o.notAvailable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      availabilityExceptions,
      o.availabilityExceptions,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [HealthcareServiceEligibility] to a Builder
extension BuilderHealthcareServiceEligibility on HealthcareServiceEligibility {
  /// Converts [HealthcareServiceEligibility] to a [HealthcareServiceEligibilityBuilder]
  HealthcareServiceEligibilityBuilder get toBuilder =>
      HealthcareServiceEligibilityBuilder.fromJson(toJson());
}

/// [HealthcareServiceEligibilityBuilder]
/// Does this service have specific eligibility requirements that need to
/// be met in order to use the service?
class HealthcareServiceEligibilityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [HealthcareServiceEligibilityBuilder]

  HealthcareServiceEligibilityBuilder({
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
  /// For Builder classes, no fields are required
  factory HealthcareServiceEligibilityBuilder.empty() =>
      HealthcareServiceEligibilityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceEligibilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.eligibility';
    return HealthcareServiceEligibilityBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'comment',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [HealthcareServiceEligibilityBuilder]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceEligibilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceEligibilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceEligibilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceEligibilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceEligibilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceEligibilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceEligibilityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareServiceEligibility';

  /// [code]
  /// Coded value for the eligibility.
  CodeableConceptBuilder? code;

  /// [comment]
  /// Describes the eligibility conditions for the service.
  FhirMarkdownBuilder? comment;

  /// Converts a HealthcareServiceEligibilityBuilder to [HealthcareServiceEligibility]
  HealthcareServiceEligibility build() =>
      HealthcareServiceEligibility.fromJson(toJson());

  /// Converts a [HealthcareServiceEligibilityBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirMarkdownBuilder) {
            comment = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'comment':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceEligibilityBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirMarkdownBuilder.empty();
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
    bool code = false,
    bool comment = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (comment) this.comment = null;
  }

  @override
  HealthcareServiceEligibilityBuilder clone() => throw UnimplementedError();
  @override
  HealthcareServiceEligibilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    FhirMarkdownBuilder? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = HealthcareServiceEligibilityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      comment: comment ?? this.comment,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! HealthcareServiceEligibilityBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [HealthcareServiceAvailableTime] to a Builder
extension BuilderHealthcareServiceAvailableTime
    on HealthcareServiceAvailableTime {
  /// Converts [HealthcareServiceAvailableTime] to a [HealthcareServiceAvailableTimeBuilder]
  HealthcareServiceAvailableTimeBuilder get toBuilder =>
      HealthcareServiceAvailableTimeBuilder.fromJson(toJson());
}

/// [HealthcareServiceAvailableTimeBuilder]
/// A collection of times that the Service Site is available.
class HealthcareServiceAvailableTimeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [HealthcareServiceAvailableTimeBuilder]

  HealthcareServiceAvailableTimeBuilder({
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
  /// For Builder classes, no fields are required
  factory HealthcareServiceAvailableTimeBuilder.empty() =>
      HealthcareServiceAvailableTimeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceAvailableTimeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.availableTime';
    return HealthcareServiceAvailableTimeBuilder(
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
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeekBuilder>(
        json,
        'daysOfWeek',
        DaysOfWeekBuilder.fromJson,
        '$objectPath.daysOfWeek',
      ),
      allDay: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'allDay',
        FhirBooleanBuilder.fromJson,
        '$objectPath.allDay',
      ),
      availableStartTime: JsonParser.parsePrimitive<FhirTimeBuilder>(
        json,
        'availableStartTime',
        FhirTimeBuilder.fromJson,
        '$objectPath.availableStartTime',
      ),
      availableEndTime: JsonParser.parsePrimitive<FhirTimeBuilder>(
        json,
        'availableEndTime',
        FhirTimeBuilder.fromJson,
        '$objectPath.availableEndTime',
      ),
    );
  }

  /// Deserialize [HealthcareServiceAvailableTimeBuilder]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceAvailableTimeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceAvailableTimeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceAvailableTimeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceAvailableTimeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceAvailableTimeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceAvailableTimeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceAvailableTimeBuilder.fromJson(json);
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
  List<DaysOfWeekBuilder>? daysOfWeek;

  /// [allDay]
  /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  FhirBooleanBuilder? allDay;

  /// [availableStartTime]
  /// The opening time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  FhirTimeBuilder? availableStartTime;

  /// [availableEndTime]
  /// The closing time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  FhirTimeBuilder? availableEndTime;

  /// Converts a HealthcareServiceAvailableTimeBuilder to [HealthcareServiceAvailableTime]
  HealthcareServiceAvailableTime build() =>
      HealthcareServiceAvailableTime.fromJson(toJson());

  /// Converts a [HealthcareServiceAvailableTimeBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'daysOfWeek':
        {
          if (child is List<DaysOfWeekBuilder>) {
            // Replace or create new list
            daysOfWeek = child;
            return;
          } else if (child is DaysOfWeekBuilder) {
            // Add single element to existing list or create new list
            daysOfWeek = [...(daysOfWeek ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allDay':
        {
          if (child is FhirBooleanBuilder) {
            allDay = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'availableStartTime':
        {
          if (child is FhirTimeBuilder) {
            availableStartTime = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'availableEndTime':
        {
          if (child is FhirTimeBuilder) {
            availableEndTime = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'daysOfWeek':
        return ['FhirCodeEnumBuilder'];
      case 'allDay':
        return ['FhirBooleanBuilder'];
      case 'availableStartTime':
        return ['FhirTimeBuilder'];
      case 'availableEndTime':
        return ['FhirTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceAvailableTimeBuilder]
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
      case 'daysOfWeek':
        {
          daysOfWeek = <DaysOfWeekBuilder>[];
          return;
        }
      case 'allDay':
        {
          allDay = FhirBooleanBuilder.empty();
          return;
        }
      case 'availableStartTime':
        {
          availableStartTime = FhirTimeBuilder.empty();
          return;
        }
      case 'availableEndTime':
        {
          availableEndTime = FhirTimeBuilder.empty();
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
    bool daysOfWeek = false,
    bool allDay = false,
    bool availableStartTime = false,
    bool availableEndTime = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (daysOfWeek) this.daysOfWeek = null;
    if (allDay) this.allDay = null;
    if (availableStartTime) this.availableStartTime = null;
    if (availableEndTime) this.availableEndTime = null;
  }

  @override
  HealthcareServiceAvailableTimeBuilder clone() => throw UnimplementedError();
  @override
  HealthcareServiceAvailableTimeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<DaysOfWeekBuilder>? daysOfWeek,
    FhirBooleanBuilder? allDay,
    FhirTimeBuilder? availableStartTime,
    FhirTimeBuilder? availableEndTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = HealthcareServiceAvailableTimeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      allDay: allDay ?? this.allDay,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableEndTime: availableEndTime ?? this.availableEndTime,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! HealthcareServiceAvailableTimeBuilder) {
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
    if (!listEquals<DaysOfWeekBuilder>(
      daysOfWeek,
      o.daysOfWeek,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allDay,
      o.allDay,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      availableStartTime,
      o.availableStartTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      availableEndTime,
      o.availableEndTime,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [HealthcareServiceNotAvailable] to a Builder
extension BuilderHealthcareServiceNotAvailable
    on HealthcareServiceNotAvailable {
  /// Converts [HealthcareServiceNotAvailable] to a [HealthcareServiceNotAvailableBuilder]
  HealthcareServiceNotAvailableBuilder get toBuilder =>
      HealthcareServiceNotAvailableBuilder.fromJson(toJson());
}

/// [HealthcareServiceNotAvailableBuilder]
/// The HealthcareService is not available during this period of time due
/// to the provided reason.
class HealthcareServiceNotAvailableBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [HealthcareServiceNotAvailableBuilder]

  HealthcareServiceNotAvailableBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.during,
    super.disallowExtensions,
  }) : super(
          objectPath: 'HealthcareService.notAvailable',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory HealthcareServiceNotAvailableBuilder.empty() =>
      HealthcareServiceNotAvailableBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceNotAvailableBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.notAvailable';
    return HealthcareServiceNotAvailableBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      during: JsonParser.parseObject<PeriodBuilder>(
        json,
        'during',
        PeriodBuilder.fromJson,
        '$objectPath.during',
      ),
    );
  }

  /// Deserialize [HealthcareServiceNotAvailableBuilder]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceNotAvailableBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceNotAvailableBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceNotAvailableBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceNotAvailableBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceNotAvailableBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceNotAvailableBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceNotAvailableBuilder.fromJson(json);
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
  FhirStringBuilder? description;

  /// [during]
  /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  PeriodBuilder? during;

  /// Converts a HealthcareServiceNotAvailableBuilder to [HealthcareServiceNotAvailable]
  HealthcareServiceNotAvailable build() =>
      HealthcareServiceNotAvailable.fromJson(toJson());

  /// Converts a [HealthcareServiceNotAvailableBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'during':
        {
          if (child is PeriodBuilder) {
            during = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'description':
        return ['FhirStringBuilder'];
      case 'during':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceNotAvailableBuilder]
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'during':
        {
          during = PeriodBuilder.empty();
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
    bool description = false,
    bool during = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (during) this.during = null;
  }

  @override
  HealthcareServiceNotAvailableBuilder clone() => throw UnimplementedError();
  @override
  HealthcareServiceNotAvailableBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    PeriodBuilder? during,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = HealthcareServiceNotAvailableBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      during: during ?? this.during,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! HealthcareServiceNotAvailableBuilder) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      during,
      o.during,
    )) {
      return false;
    }
    return true;
  }
}
