import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [HealthcareService] /// The details of a healthcare service available at a location.
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
  }) : super(resourceType: R4ResourceType.HealthcareService);

  @override
  String get fhirType => 'HealthcareService';

  @Id()
  int dbId = 0;

  /// [identifier] /// External identifiers for this item.
  final List<Identifier>? identifier;

  /// [active] /// This flag is used to mark the record to not be used. This is not used when
  /// a center is closed for maintenance, or for holidays, the notAvailable
  /// period is to be used for this.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [providedBy] /// The organization that provides this healthcare service.
  final Reference? providedBy;

  /// [category] /// Identifies the broad category of service being performed or delivered.
  final List<CodeableConcept>? category;

  /// [type] /// The specific type of service that may be delivered or performed.
  final List<CodeableConcept>? type;

  /// [specialty] /// Collection of specialties handled by the service site. This is more of a
  /// medical term.
  final List<CodeableConcept>? specialty;

  /// [location] /// The location(s) where this healthcare service may be provided.
  final List<Reference>? location;

  /// [name] /// Further description of the service as it would be presented to a consumer
  /// while searching.
  final FhirString? name;
  final Element? nameElement;

  /// [comment] /// Any additional description of the service and/or any specific issues not
  /// covered by the other attributes, which can be displayed as further detail
  /// under the serviceName.
  final FhirString? comment;
  final Element? commentElement;

  /// [extraDetails] /// Extra details about the service that can't be placed in the other fields.
  final FhirMarkdown? extraDetails;
  final Element? extraDetailsElement;

  /// [photo] /// If there is a photo/symbol associated with this HealthcareService, it may
  /// be included here to facilitate quick identification of the service in a
  /// list.
  final Attachment? photo;

  /// [telecom] /// List of contacts related to this specific healthcare service.
  final List<ContactPoint>? telecom;

  /// [coverageArea] /// The location(s) that this service is available to (not where the service is
  /// provided).
  final List<Reference>? coverageArea;

  /// [serviceProvisionCode] /// The code(s) that detail the conditions under which the healthcare service
  /// is available/offered.
  final List<CodeableConcept>? serviceProvisionCode;

  /// [eligibility] /// Does this service have specific eligibility requirements that need to be
  /// met in order to use the service?
  final List<HealthcareServiceEligibility>? eligibility;

  /// [program] /// Programs that this service is applicable to.
  final List<CodeableConcept>? program;

  /// [characteristic] /// Collection of characteristics (attributes).
  final List<CodeableConcept>? characteristic;

  /// [communication] /// Some services are specifically made available in multiple languages, this
  /// property permits a directory to declare the languages this is offered in.
  /// Typically this is only provided where a service operates in communities
  /// with mixed languages used.
  final List<CodeableConcept>? communication;

  /// [referralMethod] /// Ways that the service accepts referrals, if this is not provided then it is
  /// implied that no referral is required.
  final List<CodeableConcept>? referralMethod;

  /// [appointmentRequired] /// Indicates whether or not a prospective consumer will require an appointment
  /// for a particular service at a site to be provided by the Organization.
  /// Indicates if an appointment is required for access to this service.
  final FhirBoolean? appointmentRequired;
  final Element? appointmentRequiredElement;

  /// [availableTime] /// A collection of times that the Service Site is available.
  final List<HealthcareServiceAvailableTime>? availableTime;

  /// [notAvailable] /// The HealthcareService is not available during this period of time due to
  /// the provided reason.
  final List<HealthcareServiceNotAvailable>? notAvailable;

  /// [availabilityExceptions] /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal site
  /// availability as details in the available Times and not available Times.
  final FhirString? availabilityExceptions;
  final Element? availabilityExceptionsElement;

  /// [endpoint] /// Technical endpoints providing access to services operated for the specific
  /// healthcare services defined at this resource.
  final List<Reference>? endpoint;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
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
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (active?.value != null) {
      json['active'] = active!.value;
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    if (providedBy != null) {
      json['providedBy'] = providedBy!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] =
          specialty!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] =
          location!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (extraDetails?.value != null) {
      json['extraDetails'] = extraDetails!.value;
    }
    if (extraDetailsElement != null) {
      json['_extraDetails'] = extraDetailsElement!.toJson();
    }
    if (photo != null) {
      json['photo'] = photo!.toJson();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (coverageArea != null && coverageArea!.isNotEmpty) {
      json['coverageArea'] =
          coverageArea!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (serviceProvisionCode != null && serviceProvisionCode!.isNotEmpty) {
      json['serviceProvisionCode'] = serviceProvisionCode!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (eligibility != null && eligibility!.isNotEmpty) {
      json['eligibility'] = eligibility!
          .map<dynamic>((HealthcareServiceEligibility v) => v.toJson())
          .toList();
    }
    if (program != null && program!.isNotEmpty) {
      json['program'] =
          program!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (communication != null && communication!.isNotEmpty) {
      json['communication'] = communication!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (referralMethod != null && referralMethod!.isNotEmpty) {
      json['referralMethod'] = referralMethod!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (appointmentRequired?.value != null) {
      json['appointmentRequired'] = appointmentRequired!.value;
    }
    if (appointmentRequiredElement != null) {
      json['_appointmentRequired'] = appointmentRequiredElement!.toJson();
    }
    if (availableTime != null && availableTime!.isNotEmpty) {
      json['availableTime'] = availableTime!
          .map<dynamic>((HealthcareServiceAvailableTime v) => v.toJson())
          .toList();
    }
    if (notAvailable != null && notAvailable!.isNotEmpty) {
      json['notAvailable'] = notAvailable!
          .map<dynamic>((HealthcareServiceNotAvailable v) => v.toJson())
          .toList();
    }
    if (availabilityExceptions?.value != null) {
      json['availabilityExceptions'] = availabilityExceptions!.value;
    }
    if (availabilityExceptionsElement != null) {
      json['_availabilityExceptions'] = availabilityExceptionsElement!.toJson();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory HealthcareService.fromJson(Map<String, dynamic> json) {
    return HealthcareService(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      active: json['active'] != null ? FhirBoolean(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(json['_active'] as Map<String, dynamic>)
          : null,
      providedBy: json['providedBy'] != null
          ? Reference.fromJson(json['providedBy'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
      extraDetails: json['extraDetails'] != null
          ? FhirMarkdown(json['extraDetails'])
          : null,
      extraDetailsElement: json['_extraDetails'] != null
          ? Element.fromJson(json['_extraDetails'] as Map<String, dynamic>)
          : null,
      photo: json['photo'] != null
          ? Attachment.fromJson(json['photo'] as Map<String, dynamic>)
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      serviceProvisionCode: json['serviceProvisionCode'] != null
          ? (json['serviceProvisionCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      eligibility: json['eligibility'] != null
          ? (json['eligibility'] as List<dynamic>)
              .map<HealthcareServiceEligibility>((dynamic v) =>
                  HealthcareServiceEligibility.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      program: json['program'] != null
          ? (json['program'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      communication: json['communication'] != null
          ? (json['communication'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      referralMethod: json['referralMethod'] != null
          ? (json['referralMethod'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      appointmentRequired: json['appointmentRequired'] != null
          ? FhirBoolean(json['appointmentRequired'])
          : null,
      appointmentRequiredElement: json['_appointmentRequired'] != null
          ? Element.fromJson(
              json['_appointmentRequired'] as Map<String, dynamic>)
          : null,
      availableTime: json['availableTime'] != null
          ? (json['availableTime'] as List<dynamic>)
              .map<HealthcareServiceAvailableTime>((dynamic v) =>
                  HealthcareServiceAvailableTime.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      notAvailable: json['notAvailable'] != null
          ? (json['notAvailable'] as List<dynamic>)
              .map<HealthcareServiceNotAvailable>((dynamic v) =>
                  HealthcareServiceNotAvailable.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      availabilityExceptions: json['availabilityExceptions'] != null
          ? FhirString(json['availabilityExceptions'])
          : null,
      availabilityExceptionsElement: json['_availabilityExceptions'] != null
          ? Element.fromJson(
              json['_availabilityExceptions'] as Map<String, dynamic>)
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
  int dbId = 0;

  /// [code] /// Coded value for the eligibility.
  final CodeableConcept? code;

  /// [comment] /// Describes the eligibility conditions for the service.
  final FhirMarkdown? comment;
  final Element? commentElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    return json;
  }

  factory HealthcareServiceEligibility.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceEligibility(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] != null ? FhirMarkdown(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
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
  int dbId = 0;

  /// [daysOfWeek] /// Indicates which days of the week are available between the start and end
  /// Times.
  final List<DaysOfWeek>? daysOfWeek;
  final List<Element>? daysOfWeekElement;

  /// [allDay] /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  final FhirBoolean? allDay;
  final Element? allDayElement;

  /// [availableStartTime] /// The opening time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  final FhirTime? availableStartTime;
  final Element? availableStartTimeElement;

  /// [availableEndTime] /// The closing time of day. Note: If the AllDay flag is set, then this time is
  /// ignored.
  final FhirTime? availableEndTime;
  final Element? availableEndTimeElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      json['daysOfWeek'] =
          daysOfWeek!.map<dynamic>((DaysOfWeek v) => v.toJson()).toList();
    }
    if (allDay?.value != null) {
      json['allDay'] = allDay!.value;
    }
    if (allDayElement != null) {
      json['_allDay'] = allDayElement!.toJson();
    }
    if (availableStartTime?.value != null) {
      json['availableStartTime'] = availableStartTime!.value;
    }
    if (availableStartTimeElement != null) {
      json['_availableStartTime'] = availableStartTimeElement!.toJson();
    }
    if (availableEndTime?.value != null) {
      json['availableEndTime'] = availableEndTime!.value;
    }
    if (availableEndTimeElement != null) {
      json['_availableEndTime'] = availableEndTimeElement!.toJson();
    }
    return json;
  }

  factory HealthcareServiceAvailableTime.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceAvailableTime(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      daysOfWeek: json['daysOfWeek'] != null
          ? (json['daysOfWeek'] as List<dynamic>)
              .map<DaysOfWeek>(
                  (dynamic v) => DaysOfWeek.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      allDay: json['allDay'] != null ? FhirBoolean(json['allDay']) : null,
      allDayElement: json['_allDay'] != null
          ? Element.fromJson(json['_allDay'] as Map<String, dynamic>)
          : null,
      availableStartTime: json['availableStartTime'] != null
          ? FhirTime(json['availableStartTime'])
          : null,
      availableStartTimeElement: json['_availableStartTime'] != null
          ? Element.fromJson(
              json['_availableStartTime'] as Map<String, dynamic>)
          : null,
      availableEndTime: json['availableEndTime'] != null
          ? FhirTime(json['availableEndTime'])
          : null,
      availableEndTimeElement: json['_availableEndTime'] != null
          ? Element.fromJson(json['_availableEndTime'] as Map<String, dynamic>)
          : null,
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
  int dbId = 0;

  /// [description] /// The reason that can be presented to the user as to why this time is not
  /// available.
  final FhirString description;
  final Element? descriptionElement;

  /// [during] /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['description'] = description.value;
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (during != null) {
      json['during'] = during!.toJson();
    }
    return json;
  }

  factory HealthcareServiceNotAvailable.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceNotAvailable(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: FhirString(json['description']),
      descriptionElement:
          Element.fromJson(json['_description'] as Map<String, dynamic>),
      during: json['during'] != null
          ? Period.fromJson(json['during'] as Map<String, dynamic>)
          : null,
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
