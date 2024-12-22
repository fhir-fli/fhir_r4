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
          resourceType: R4ResourceType.HealthcareService,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareService.fromJson(
    Map<String, dynamic> json,
  ) {
    return HealthcareService(
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
      providedBy: JsonParser.parseObject<Reference>(
        json,
        'providedBy',
        Reference.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      extraDetails: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'extraDetails',
        FhirMarkdown.fromJson,
      ),
      photo: JsonParser.parseObject<Attachment>(
        json,
        'photo',
        Attachment.fromJson,
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      serviceProvisionCode: (json['serviceProvisionCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      eligibility: (json['eligibility'] as List<dynamic>?)
          ?.map<HealthcareServiceEligibility>(
            (v) => HealthcareServiceEligibility.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      program: (json['program'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
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
      referralMethod: (json['referralMethod'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      appointmentRequired: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'appointmentRequired',
        FhirBoolean.fromJson,
      ),
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map<HealthcareServiceAvailableTime>(
            (v) => HealthcareServiceAvailableTime.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      notAvailable: (json['notAvailable'] as List<dynamic>?)
          ?.map<HealthcareServiceNotAvailable>(
            (v) => HealthcareServiceNotAvailable.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      availabilityExceptions: JsonParser.parsePrimitive<FhirString>(
        json,
        'availabilityExceptions',
        FhirString.fromJson,
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return HealthcareService.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return HealthcareService(
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceEligibility.fromJson(
    Map<String, dynamic> json,
  ) {
    return HealthcareServiceEligibility(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
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
    if (json is Map<String, Object?>) {
      return HealthcareServiceEligibility.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  @override
  HealthcareServiceEligibility clone() => throw UnimplementedError();
  @override
  HealthcareServiceEligibility copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirMarkdown? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return HealthcareServiceEligibility(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      comment: comment ?? this.comment,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceAvailableTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return HealthcareServiceAvailableTime(
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
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'daysOfWeek',
        DaysOfWeek.fromJson,
      ),
      allDay: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allDay',
        FhirBoolean.fromJson,
      ),
      availableStartTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableStartTime',
        FhirTime.fromJson,
      ),
      availableEndTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableEndTime',
        FhirTime.fromJson,
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
    if (json is Map<String, Object?>) {
      return HealthcareServiceAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return HealthcareServiceAvailableTime(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      allDay: allDay ?? this.allDay,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableEndTime: availableEndTime ?? this.availableEndTime,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceNotAvailable.fromJson(
    Map<String, dynamic> json,
  ) {
    return HealthcareServiceNotAvailable(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      )!,
      during: JsonParser.parseObject<Period>(
        json,
        'during',
        Period.fromJson,
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
    if (json is Map<String, Object?>) {
      return HealthcareServiceNotAvailable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  @override
  HealthcareServiceNotAvailable clone() => throw UnimplementedError();
  @override
  HealthcareServiceNotAvailable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Period? during,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return HealthcareServiceNotAvailable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      during: during ?? this.during,
    );
  }
}
