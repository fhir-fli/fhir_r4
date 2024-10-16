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
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
      active: json['active'] != null
          ? FhirBoolean.fromJson({
              'value': json['active'],
              '_value': json['_active'],
            })
          : null,
      providedBy: json['providedBy'] != null
          ? Reference.fromJson(
              json['providedBy'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      extraDetails: json['extraDetails'] != null
          ? FhirMarkdown.fromJson({
              'value': json['extraDetails'],
              '_value': json['_extraDetails'],
            })
          : null,
      photo: json['photo'] != null
          ? Attachment.fromJson(
              json['photo'] as Map<String, dynamic>,
            )
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
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceProvisionCode: json['serviceProvisionCode'] != null
          ? (json['serviceProvisionCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eligibility: json['eligibility'] != null
          ? (json['eligibility'] as List<dynamic>)
              .map<HealthcareServiceEligibility>(
                (v) => HealthcareServiceEligibility.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      program: json['program'] != null
          ? (json['program'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      communication: json['communication'] != null
          ? (json['communication'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      referralMethod: json['referralMethod'] != null
          ? (json['referralMethod'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      appointmentRequired: json['appointmentRequired'] != null
          ? FhirBoolean.fromJson({
              'value': json['appointmentRequired'],
              '_value': json['_appointmentRequired'],
            })
          : null,
      availableTime: json['availableTime'] != null
          ? (json['availableTime'] as List<dynamic>)
              .map<HealthcareServiceAvailableTime>(
                (v) => HealthcareServiceAvailableTime.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      notAvailable: json['notAvailable'] != null
          ? (json['notAvailable'] as List<dynamic>)
              .map<HealthcareServiceNotAvailable>(
                (v) => HealthcareServiceNotAvailable.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      availabilityExceptions: json['availabilityExceptions'] != null
          ? FhirString.fromJson({
              'value': json['availabilityExceptions'],
              '_value': json['_availabilityExceptions'],
            })
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [HealthcareService] from a [String]
  /// or [YamlMap] object
  factory HealthcareService.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareService.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareService.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('HealthcareService cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareService]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (active != null) {
      final fieldJson9 = active!.toJson();
      json['active'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_active'] = fieldJson9['_value'];
      }
    }

    if (providedBy != null) {
      final fieldJson10 = providedBy!.toJson();
      json['providedBy'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_providedBy'] = fieldJson10['_value'];
      }
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson11 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson12 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (specialty != null && specialty!.isNotEmpty) {
      final fieldJson13 = specialty!.map((e) => e.toJson()).toList();
      json['specialty'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_specialty'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    if (location != null && location!.isNotEmpty) {
      final fieldJson14 = location!.map((e) => e.toJson()).toList();
      json['location'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_location'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (name != null) {
      final fieldJson15 = name!.toJson();
      json['name'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_name'] = fieldJson15['_value'];
      }
    }

    if (comment != null) {
      final fieldJson16 = comment!.toJson();
      json['comment'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_comment'] = fieldJson16['_value'];
      }
    }

    if (extraDetails != null) {
      final fieldJson17 = extraDetails!.toJson();
      json['extraDetails'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_extraDetails'] = fieldJson17['_value'];
      }
    }

    if (photo != null) {
      final fieldJson18 = photo!.toJson();
      json['photo'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_photo'] = fieldJson18['_value'];
      }
    }

    if (telecom != null && telecom!.isNotEmpty) {
      final fieldJson19 = telecom!.map((e) => e.toJson()).toList();
      json['telecom'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_telecom'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (coverageArea != null && coverageArea!.isNotEmpty) {
      final fieldJson20 = coverageArea!.map((e) => e.toJson()).toList();
      json['coverageArea'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_coverageArea'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (serviceProvisionCode != null && serviceProvisionCode!.isNotEmpty) {
      final fieldJson21 = serviceProvisionCode!.map((e) => e.toJson()).toList();
      json['serviceProvisionCode'] =
          fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_serviceProvisionCode'] =
            fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (eligibility != null && eligibility!.isNotEmpty) {
      final fieldJson22 = eligibility!.map((e) => e.toJson()).toList();
      json['eligibility'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_eligibility'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (program != null && program!.isNotEmpty) {
      final fieldJson23 = program!.map((e) => e.toJson()).toList();
      json['program'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_program'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      final fieldJson24 = characteristic!.map((e) => e.toJson()).toList();
      json['characteristic'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_characteristic'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (communication != null && communication!.isNotEmpty) {
      final fieldJson25 = communication!.map((e) => e.toJson()).toList();
      json['communication'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_communication'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (referralMethod != null && referralMethod!.isNotEmpty) {
      final fieldJson26 = referralMethod!.map((e) => e.toJson()).toList();
      json['referralMethod'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_referralMethod'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (appointmentRequired != null) {
      final fieldJson27 = appointmentRequired!.toJson();
      json['appointmentRequired'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_appointmentRequired'] = fieldJson27['_value'];
      }
    }

    if (availableTime != null && availableTime!.isNotEmpty) {
      final fieldJson28 = availableTime!.map((e) => e.toJson()).toList();
      json['availableTime'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_availableTime'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (notAvailable != null && notAvailable!.isNotEmpty) {
      final fieldJson29 = notAvailable!.map((e) => e.toJson()).toList();
      json['notAvailable'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_notAvailable'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (availabilityExceptions != null) {
      final fieldJson30 = availabilityExceptions!.toJson();
      json['availabilityExceptions'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_availabilityExceptions'] = fieldJson30['_value'];
      }
    }

    if (endpoint != null && endpoint!.isNotEmpty) {
      final fieldJson31 = endpoint!.map((e) => e.toJson()).toList();
      json['endpoint'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_endpoint'] = fieldJson31.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
    this.extension_,
    super.modifierExtension,
    this.code,
    this.comment,
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
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      comment: json['comment'] != null
          ? FhirMarkdown.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [HealthcareServiceEligibility] from a [String]
  /// or [YamlMap] object
  factory HealthcareServiceEligibility.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareServiceEligibility.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareServiceEligibility.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'HealthcareServiceEligibility cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareServiceEligibility]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// Coded value for the eligibility.
  final CodeableConcept? code;

  /// [comment]
  /// Describes the eligibility conditions for the service.
  final FhirMarkdown? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (comment != null) {
      final fieldJson4 = comment!.toJson();
      json['comment'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_comment'] = fieldJson4['_value'];
      }
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
    this.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
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
      daysOfWeek: parsePrimitiveList<DaysOfWeek>(
          json['daysOfWeek'] as List<dynamic>?,
          json['_daysOfWeek'] as List<dynamic>?,
          fromJson: DaysOfWeek.fromJson),
      allDay: json['allDay'] != null
          ? FhirBoolean.fromJson({
              'value': json['allDay'],
              '_value': json['_allDay'],
            })
          : null,
      availableStartTime: json['availableStartTime'] != null
          ? FhirTime.fromJson({
              'value': json['availableStartTime'],
              '_value': json['_availableStartTime'],
            })
          : null,
      availableEndTime: json['availableEndTime'] != null
          ? FhirTime.fromJson({
              'value': json['availableEndTime'],
              '_value': json['_availableEndTime'],
            })
          : null,
    );
  }

  /// Deserialize [HealthcareServiceAvailableTime] from a [String]
  /// or [YamlMap] object
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
              'HealthcareServiceAvailableTime cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareServiceAvailableTime]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (daysOfWeek != null && daysOfWeek!.isNotEmpty) {
      final fieldJson3 = daysOfWeek!.map((e) => e.toJson()).toList();
      json['daysOfWeek'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_daysOfWeek'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (allDay != null) {
      final fieldJson4 = allDay!.toJson();
      json['allDay'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_allDay'] = fieldJson4['_value'];
      }
    }

    if (availableStartTime != null) {
      final fieldJson5 = availableStartTime!.toJson();
      json['availableStartTime'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_availableStartTime'] = fieldJson5['_value'];
      }
    }

    if (availableEndTime != null) {
      final fieldJson6 = availableEndTime!.toJson();
      json['availableEndTime'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_availableEndTime'] = fieldJson6['_value'];
      }
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
    FhirBoolean? allDay,
    FhirTime? availableStartTime,
    FhirTime? availableEndTime,
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
      allDay: allDay ?? this.allDay,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableEndTime: availableEndTime ?? this.availableEndTime,
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
    this.extension_,
    super.modifierExtension,
    required this.description,
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
      description: FhirString.fromJson({
        'value': json['description'],
        '_value': json['_description'],
      }),
      during: json['during'] != null
          ? Period.fromJson(
              json['during'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [HealthcareServiceNotAvailable] from a [String]
  /// or [YamlMap] object
  factory HealthcareServiceNotAvailable.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareServiceNotAvailable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? HealthcareServiceNotAvailable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'HealthcareServiceNotAvailable cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [HealthcareServiceNotAvailable]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = description.toJson();
    json['description'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_description'] = fieldJson3['_value'];
    }

    if (during != null) {
      final fieldJson4 = during!.toJson();
      json['during'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_during'] = fieldJson4['_value'];
      }
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
