import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'healthcare_service.g.dart';

/// [HealthcareService] /// The details of a healthcare service available at a location.
@JsonSerializable()
class HealthcareService extends DomainResource {
  HealthcareService({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.activeElement,
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.nameElement,
    this.comment,
    this.commentElement,
    this.extraDetails,
    this.extraDetailsElement,
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
    this.appointmentRequiredElement,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.availabilityExceptionsElement,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.HealthcareService);
  @override
  String get fhirType => 'HealthcareService';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// External identifiers for this item.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// This flag is used to mark the record to not be used. This is not used when
  /// a center is closed for maintenance, or for holidays, the notAvailable
  /// period is to be used for this.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [providedBy] /// The organization that provides this healthcare service.
  @JsonKey(name: 'providedBy')
  final Reference? providedBy;

  /// [category] /// Identifies the broad category of service being performed or delivered.
  @JsonKey(name: 'category')
  final List<ServiceCategory>? category;

  /// [type] /// The specific type of service that may be delivered or performed.
  @JsonKey(name: 'type')
  final List<ServiceType>? type;

  /// [specialty] /// Collection of specialties handled by the service site. This is more of a
  /// medical term.
  @JsonKey(name: 'specialty')
  final List<PracticeSettingCodeValueSet>? specialty;

  /// [location] /// The location(s) where this healthcare service may be provided.
  @JsonKey(name: 'location')
  final List<Reference>? location;

  /// [name] /// Further description of the service as it would be presented to a consumer
  /// while searching.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [comment] /// Any additional description of the service and/or any specific issues not
  /// covered by the other attributes, which can be displayed as further detail
  /// under the serviceName.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;

  /// [extraDetails] /// Extra details about the service that can't be placed in the other fields.
  @JsonKey(name: 'extraDetails')
  final FhirMarkdown? extraDetails;
  @JsonKey(name: '_extraDetails')
  final Element? extraDetailsElement;

  /// [photo] /// If there is a photo/symbol associated with this HealthcareService, it may
  /// be included here to facilitate quick identification of the service in a
  /// list.
  @JsonKey(name: 'photo')
  final Attachment? photo;

  /// [telecom] /// List of contacts related to this specific healthcare service.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [coverageArea] /// The location(s) that this service is available to (not where the service is
  /// provided).
  @JsonKey(name: 'coverageArea')
  final List<Reference>? coverageArea;

  /// [serviceProvisionCode] /// The code(s) that detail the conditions under which the healthcare service
  /// is available/offered.
  @JsonKey(name: 'serviceProvisionCode')
  final List<ServiceProvisionConditions>? serviceProvisionCode;

  /// [eligibility] /// Does this service have specific eligibility requirements that need to be
  /// met in order to use the service?
  @JsonKey(name: 'eligibility')
  final List<HealthcareServiceEligibility>? eligibility;

  /// [program] /// Programs that this service is applicable to.
  @JsonKey(name: 'program')
  final List<Program>? program;

  /// [characteristic] /// Collection of characteristics (attributes).
  @JsonKey(name: 'characteristic')
  final List<CodeableConcept>? characteristic;

  /// [communication] /// Some services are specifically made available in multiple languages, this
  /// property permits a directory to declare the languages this is offered in.
  /// Typically this is only provided where a service operates in communities
  /// with mixed languages used.
  @JsonKey(name: 'communication')
  final List<CommonLanguages>? communication;

  /// [referralMethod] /// Ways that the service accepts referrals, if this is not provided then it is
  /// implied that no referral is required.
  @JsonKey(name: 'referralMethod')
  final List<ReferralMethod>? referralMethod;

  /// [appointmentRequired] /// Indicates whether or not a prospective consumer will require an appointment
  /// for a particular service at a site to be provided by the Organization.
  /// Indicates if an appointment is required for access to this service.
  @JsonKey(name: 'appointmentRequired')
  final FhirBoolean? appointmentRequired;
  @JsonKey(name: '_appointmentRequired')
  final Element? appointmentRequiredElement;

  /// [availableTime] /// A collection of times that the Service Site is available.
  @JsonKey(name: 'availableTime')
  final List<HealthcareServiceAvailableTime>? availableTime;

  /// [notAvailable] /// The HealthcareService is not available during this period of time due to
  /// the provided reason.
  @JsonKey(name: 'notAvailable')
  final List<HealthcareServiceNotAvailable>? notAvailable;

  /// [availabilityExceptions] /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal site
  /// availability as details in the available Times and not available Times.
  @JsonKey(name: 'availabilityExceptions')
  final FhirString? availabilityExceptions;
  @JsonKey(name: '_availabilityExceptions')
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the specific
  /// healthcare services defined at this resource.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;
  factory HealthcareService.fromJson(Map<String, dynamic> json) =>
      _$HealthcareServiceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HealthcareServiceToJson(this);

  @override
  HealthcareService clone() => throw UnimplementedError();
  @override
  HealthcareService copyWith({
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
    Reference? providedBy,
    List<ServiceCategory>? category,
    List<ServiceType>? type,
    List<PracticeSettingCodeValueSet>? specialty,
    List<Reference>? location,
    FhirString? name,
    Element? nameElement,
    FhirString? comment,
    Element? commentElement,
    FhirMarkdown? extraDetails,
    Element? extraDetailsElement,
    Attachment? photo,
    List<ContactPoint>? telecom,
    List<Reference>? coverageArea,
    List<ServiceProvisionConditions>? serviceProvisionCode,
    List<HealthcareServiceEligibility>? eligibility,
    List<Program>? program,
    List<CodeableConcept>? characteristic,
    List<CommonLanguages>? communication,
    List<ReferralMethod>? referralMethod,
    FhirBoolean? appointmentRequired,
    Element? appointmentRequiredElement,
    List<HealthcareServiceAvailableTime>? availableTime,
    List<HealthcareServiceNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    Element? availabilityExceptionsElement,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return HealthcareService(
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
      providedBy: providedBy ?? this.providedBy,
      category: category ?? this.category,
      type: type ?? this.type,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      extraDetails: extraDetails ?? this.extraDetails,
      extraDetailsElement: extraDetailsElement ?? this.extraDetailsElement,
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
      appointmentRequiredElement:
          appointmentRequiredElement ?? this.appointmentRequiredElement,
      availableTime: availableTime ?? this.availableTime,
      notAvailable: notAvailable ?? this.notAvailable,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      availabilityExceptionsElement:
          availabilityExceptionsElement ?? this.availabilityExceptionsElement,
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory HealthcareService.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareService.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? HealthcareService.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'HealthcareService cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory HealthcareService.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return HealthcareService.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [HealthcareServiceEligibility] /// Does this service have specific eligibility requirements that need to be
/// met in order to use the service?
@JsonSerializable()
class HealthcareServiceEligibility extends BackboneElement {
  HealthcareServiceEligibility({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.comment,
    this.commentElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'HealthcareServiceEligibility';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded value for the eligibility.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [comment] /// Describes the eligibility conditions for the service.
  @JsonKey(name: 'comment')
  final FhirMarkdown? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;
  factory HealthcareServiceEligibility.fromJson(Map<String, dynamic> json) =>
      _$HealthcareServiceEligibilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HealthcareServiceEligibilityToJson(this);

  @override
  HealthcareServiceEligibility clone() => throw UnimplementedError();
  @override
  HealthcareServiceEligibility copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirMarkdown? comment,
    Element? commentElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return HealthcareServiceEligibility(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory HealthcareServiceEligibility.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareServiceEligibility.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? HealthcareServiceEligibility.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'HealthcareServiceEligibility cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory HealthcareServiceEligibility.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return HealthcareServiceEligibility.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [HealthcareServiceAvailableTime] /// A collection of times that the Service Site is available.
@JsonSerializable()
class HealthcareServiceAvailableTime extends BackboneElement {
  HealthcareServiceAvailableTime({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.daysOfWeekElement,
    this.allDay,
    this.allDayElement,
    this.availableStartTime,
    this.availableStartTimeElement,
    this.availableEndTime,
    this.availableEndTimeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'HealthcareServiceAvailableTime';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  @JsonKey(name: 'daysOfWeek')
  final List<DaysOfWeek>? daysOfWeek;
  @JsonKey(name: '_daysOfWeek')
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  @JsonKey(name: 'allDay')
  final FhirBoolean? allDay;
  @JsonKey(name: '_allDay')
  final Element? allDayElement;

  /// [availableStartTime] /// The opening time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  @JsonKey(name: 'availableStartTime')
  final FhirTime? availableStartTime;
  @JsonKey(name: '_availableStartTime')
  final Element? availableStartTimeElement;

  /// [availableEndTime] /// The closing time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  @JsonKey(name: 'availableEndTime')
  final FhirTime? availableEndTime;
  @JsonKey(name: '_availableEndTime')
  final Element? availableEndTimeElement;
  factory HealthcareServiceAvailableTime.fromJson(Map<String, dynamic> json) =>
      _$HealthcareServiceAvailableTimeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HealthcareServiceAvailableTimeToJson(this);

  @override
  HealthcareServiceAvailableTime clone() => throw UnimplementedError();
  @override
  HealthcareServiceAvailableTime copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    List<Element>? daysOfWeekElement,
    FhirBoolean? allDay,
    Element? allDayElement,
    FhirTime? availableStartTime,
    Element? availableStartTimeElement,
    FhirTime? availableEndTime,
    Element? availableEndTimeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return HealthcareServiceAvailableTime(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      daysOfWeekElement: daysOfWeekElement ?? this.daysOfWeekElement,
      allDay: allDay ?? this.allDay,
      allDayElement: allDayElement ?? this.allDayElement,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableStartTimeElement:
          availableStartTimeElement ?? this.availableStartTimeElement,
      availableEndTime: availableEndTime ?? this.availableEndTime,
      availableEndTimeElement:
          availableEndTimeElement ?? this.availableEndTimeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory HealthcareServiceAvailableTime.fromYaml(dynamic yaml) => yaml
          is String
      ? HealthcareServiceAvailableTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? HealthcareServiceAvailableTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'HealthcareServiceAvailableTime cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory HealthcareServiceAvailableTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return HealthcareServiceAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [HealthcareServiceNotAvailable] /// The HealthcareService is not available during this period of time due to
/// the provided reason.
@JsonSerializable()
class HealthcareServiceNotAvailable extends BackboneElement {
  HealthcareServiceNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.during,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'HealthcareServiceNotAvailable';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// The reason that can be presented to the user as to why this time is not
  /// available.
  @JsonKey(name: 'description')
  final FhirString description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [during] /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  @JsonKey(name: 'during')
  final Period? during;
  factory HealthcareServiceNotAvailable.fromJson(Map<String, dynamic> json) =>
      _$HealthcareServiceNotAvailableFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HealthcareServiceNotAvailableToJson(this);

  @override
  HealthcareServiceNotAvailable clone() => throw UnimplementedError();
  @override
  HealthcareServiceNotAvailable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Period? during,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return HealthcareServiceNotAvailable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      during: during ?? this.during,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory HealthcareServiceNotAvailable.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareServiceNotAvailable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? HealthcareServiceNotAvailable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'HealthcareServiceNotAvailable cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory HealthcareServiceNotAvailable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return HealthcareServiceNotAvailable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
