import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [HealthcareService]
/// The details of a healthcare service available at a location.
class HealthcareService extends DomainResource {
  /// Primary constructor for [HealthcareService]

  HealthcareService({
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
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.comment,

    /// Extensions for [comment]
    this.commentElement,
    this.extraDetails,

    /// Extensions for [extraDetails]
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

    /// Extensions for [appointmentRequired]
    this.appointmentRequiredElement,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,

    /// Extensions for [availabilityExceptions]
    this.availabilityExceptionsElement,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.HealthcareService,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareService.fromJson(Map<String, dynamic> json) {
    return HealthcareService(
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
      providedBy: json['providedBy'] != null
          ? Reference.fromJson(
              json['providedBy'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      comment:
          json['comment'] != null ? FhirString.fromJson(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
      extraDetails: json['extraDetails'] != null
          ? FhirMarkdown.fromJson(json['extraDetails'])
          : null,
      extraDetailsElement: json['_extraDetails'] != null
          ? Element.fromJson(
              json['_extraDetails'] as Map<String, dynamic>,
            )
          : null,
      photo: json['photo'] != null
          ? Attachment.fromJson(
              json['photo'] as Map<String, dynamic>,
            )
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
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceProvisionCode: json['serviceProvisionCode'] != null
          ? (json['serviceProvisionCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eligibility: json['eligibility'] != null
          ? (json['eligibility'] as List<dynamic>)
              .map<HealthcareServiceEligibility>(
                (dynamic v) => HealthcareServiceEligibility.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      program: json['program'] != null
          ? (json['program'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
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
      referralMethod: json['referralMethod'] != null
          ? (json['referralMethod'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      appointmentRequired: json['appointmentRequired'] != null
          ? FhirBoolean.fromJson(json['appointmentRequired'])
          : null,
      appointmentRequiredElement: json['_appointmentRequired'] != null
          ? Element.fromJson(
              json['_appointmentRequired'] as Map<String, dynamic>,
            )
          : null,
      availableTime: json['availableTime'] != null
          ? (json['availableTime'] as List<dynamic>)
              .map<HealthcareServiceAvailableTime>(
                (dynamic v) => HealthcareServiceAvailableTime.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      notAvailable: json['notAvailable'] != null
          ? (json['notAvailable'] as List<dynamic>)
              .map<HealthcareServiceNotAvailable>(
                (dynamic v) => HealthcareServiceNotAvailable.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      availabilityExceptions: json['availabilityExceptions'] != null
          ? FhirString.fromJson(json['availabilityExceptions'])
          : null,
      availabilityExceptionsElement: json['_availabilityExceptions'] != null
          ? Element.fromJson(
              json['_availabilityExceptions'] as Map<String, dynamic>,
            )
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [HealthcareService] from a [String] or [YamlMap] object
  factory HealthcareService.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareService.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareService.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'HealthcareService cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareService] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareService.fromJsonString(String source) {
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

  /// Extensions for [active]
  final Element? activeElement;

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

  /// Extensions for [name]
  final Element? nameElement;

  /// [comment]
  /// Any additional description of the service and/or any specific issues
  /// not covered by the other attributes, which can be displayed as further
  /// detail under the serviceName.
  final FhirString? comment;

  /// Extensions for [comment]
  final Element? commentElement;

  /// [extraDetails]
  /// Extra details about the service that can't be placed in the other
  /// fields.
  final FhirMarkdown? extraDetails;

  /// Extensions for [extraDetails]
  final Element? extraDetailsElement;

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

  /// Extensions for [appointmentRequired]
  final Element? appointmentRequiredElement;

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

  /// Extensions for [availabilityExceptions]
  final Element? availabilityExceptionsElement;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// specific healthcare services defined at this resource.
  final List<Reference>? endpoint;
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
    if (providedBy != null) {
      json['providedBy'] = providedBy!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] =
          specialty!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] = location!.map((Reference v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (extraDetails?.value != null) {
      json['extraDetails'] = extraDetails!.toJson();
    }
    if (extraDetailsElement != null) {
      json['_extraDetails'] = extraDetailsElement!.toJson();
    }
    if (photo != null) {
      json['photo'] = photo!.toJson();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((ContactPoint v) => v.toJson()).toList();
    }
    if (coverageArea != null && coverageArea!.isNotEmpty) {
      json['coverageArea'] =
          coverageArea!.map((Reference v) => v.toJson()).toList();
    }
    if (serviceProvisionCode != null && serviceProvisionCode!.isNotEmpty) {
      json['serviceProvisionCode'] =
          serviceProvisionCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (eligibility != null && eligibility!.isNotEmpty) {
      json['eligibility'] = eligibility!
          .map((HealthcareServiceEligibility v) => v.toJson())
          .toList();
    }
    if (program != null && program!.isNotEmpty) {
      json['program'] =
          program!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] =
          characteristic!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (communication != null && communication!.isNotEmpty) {
      json['communication'] =
          communication!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (referralMethod != null && referralMethod!.isNotEmpty) {
      json['referralMethod'] =
          referralMethod!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (appointmentRequired?.value != null) {
      json['appointmentRequired'] = appointmentRequired!.toJson();
    }
    if (appointmentRequiredElement != null) {
      json['_appointmentRequired'] = appointmentRequiredElement!.toJson();
    }
    if (availableTime != null && availableTime!.isNotEmpty) {
      json['availableTime'] = availableTime!
          .map((HealthcareServiceAvailableTime v) => v.toJson())
          .toList();
    }
    if (notAvailable != null && notAvailable!.isNotEmpty) {
      json['notAvailable'] = notAvailable!
          .map((HealthcareServiceNotAvailable v) => v.toJson())
          .toList();
    }
    if (availabilityExceptions?.value != null) {
      json['availabilityExceptions'] = availabilityExceptions!.toJson();
    }
    if (availabilityExceptionsElement != null) {
      json['_availabilityExceptions'] = availabilityExceptionsElement!.toJson();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((Reference v) => v.toJson()).toList();
    }
    return json;
  }

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
    List<CodeableConcept>? category,
    List<CodeableConcept>? type,
    List<CodeableConcept>? specialty,
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
    List<CodeableConcept>? serviceProvisionCode,
    List<HealthcareServiceEligibility>? eligibility,
    List<CodeableConcept>? program,
    List<CodeableConcept>? characteristic,
    List<CodeableConcept>? communication,
    List<CodeableConcept>? referralMethod,
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
}

/// [HealthcareServiceEligibility]
/// Does this service have specific eligibility requirements that need to
/// be met in order to use the service?
class HealthcareServiceEligibility extends BackboneElement {
  /// Primary constructor for [HealthcareServiceEligibility]

  HealthcareServiceEligibility({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.comment,

    /// Extensions for [comment]
    this.commentElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceEligibility.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceEligibility(
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
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      comment: json['comment'] != null
          ? FhirMarkdown.fromJson(json['comment'])
          : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [HealthcareServiceEligibility] from a [String] or [YamlMap] object
  factory HealthcareServiceEligibility.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareServiceEligibility.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareServiceEligibility.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'HealthcareServiceEligibility cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareServiceEligibility] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceEligibility.fromJsonString(String source) {
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

  /// Extensions for [comment]
  final Element? commentElement;
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
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
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
}

/// [HealthcareServiceAvailableTime]
/// A collection of times that the Service Site is available.
class HealthcareServiceAvailableTime extends BackboneElement {
  /// Primary constructor for [HealthcareServiceAvailableTime]

  HealthcareServiceAvailableTime({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,

    /// Extensions for [daysOfWeek]
    this.daysOfWeekElement,
    this.allDay,

    /// Extensions for [allDay]
    this.allDayElement,
    this.availableStartTime,

    /// Extensions for [availableStartTime]
    this.availableStartTimeElement,
    this.availableEndTime,

    /// Extensions for [availableEndTime]
    this.availableEndTimeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceAvailableTime.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceAvailableTime(
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
      daysOfWeek: json['daysOfWeek'] != null
          ? (json['daysOfWeek'] as List<dynamic>)
              .map<DaysOfWeek>(
                (dynamic v) => DaysOfWeek.fromJson(v as dynamic),
              )
              .toList()
          : null,
      daysOfWeekElement: json['_daysOfWeek'] != null
          ? (json['_daysOfWeek'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      allDay:
          json['allDay'] != null ? FhirBoolean.fromJson(json['allDay']) : null,
      allDayElement: json['_allDay'] != null
          ? Element.fromJson(
              json['_allDay'] as Map<String, dynamic>,
            )
          : null,
      availableStartTime: json['availableStartTime'] != null
          ? FhirTime.fromJson(json['availableStartTime'])
          : null,
      availableStartTimeElement: json['_availableStartTime'] != null
          ? Element.fromJson(
              json['_availableStartTime'] as Map<String, dynamic>,
            )
          : null,
      availableEndTime: json['availableEndTime'] != null
          ? FhirTime.fromJson(json['availableEndTime'])
          : null,
      availableEndTimeElement: json['_availableEndTime'] != null
          ? Element.fromJson(
              json['_availableEndTime'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [HealthcareServiceAvailableTime] from a [String] or [YamlMap] object
  factory HealthcareServiceAvailableTime.fromYaml(dynamic yaml) => yaml
          is String
      ? HealthcareServiceAvailableTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareServiceAvailableTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'HealthcareServiceAvailableTime cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareServiceAvailableTime] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceAvailableTime.fromJsonString(String source) {
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

  /// Extensions for [daysOfWeek]
  final List<Element>? daysOfWeekElement;

  /// [allDay]
  /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  final FhirBoolean? allDay;

  /// Extensions for [allDay]
  final Element? allDayElement;

  /// [availableStartTime]
  /// The opening time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableStartTime;

  /// Extensions for [availableStartTime]
  final Element? availableStartTimeElement;

  /// [availableEndTime]
  /// The closing time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableEndTime;

  /// Extensions for [availableEndTime]
  final Element? availableEndTimeElement;
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
    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      json['daysOfWeek'] =
          daysOfWeek!.map((DaysOfWeek v) => v.toJson()).toList();
    }
    if (allDay?.value != null) {
      json['allDay'] = allDay!.toJson();
    }
    if (allDayElement != null) {
      json['_allDay'] = allDayElement!.toJson();
    }
    if (availableStartTime?.value != null) {
      json['availableStartTime'] = availableStartTime!.toJson();
    }
    if (availableStartTimeElement != null) {
      json['_availableStartTime'] = availableStartTimeElement!.toJson();
    }
    if (availableEndTime?.value != null) {
      json['availableEndTime'] = availableEndTime!.toJson();
    }
    if (availableEndTimeElement != null) {
      json['_availableEndTime'] = availableEndTimeElement!.toJson();
    }
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
}

/// [HealthcareServiceNotAvailable]
/// The HealthcareService is not available during this period of time due
/// to the provided reason.
class HealthcareServiceNotAvailable extends BackboneElement {
  /// Primary constructor for [HealthcareServiceNotAvailable]

  HealthcareServiceNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.during,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceNotAvailable.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceNotAvailable(
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
      description: FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      during: json['during'] != null
          ? Period.fromJson(
              json['during'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [HealthcareServiceNotAvailable] from a [String] or [YamlMap] object
  factory HealthcareServiceNotAvailable.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareServiceNotAvailable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareServiceNotAvailable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'HealthcareServiceNotAvailable cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareServiceNotAvailable] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceNotAvailable.fromJsonString(String source) {
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

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [during]
  /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
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
    json['description'] = description.toJson();
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (during != null) {
      json['during'] = during!.toJson();
    }
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
}
