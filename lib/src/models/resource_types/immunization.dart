import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Immunization]
/// Describes the event of a patient being administered a vaccine or a
/// record of an immunization as reported by a patient, a clinician or
/// another party.
class Immunization extends DomainResource {
  /// Primary constructor for
  /// [Immunization]

  const Immunization({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    required this.vaccineCode,
    required this.patient,
    this.encounter,
    required this.occurrenceX,
    this.recorded,
    this.primarySource,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.expirationDate,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
    this.subpotentReason,
    this.education,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied,
  }) : super(
          resourceType: R4ResourceType.Immunization,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Immunization.fromJson(
    Map<String, dynamic> json,
  ) {
    return Immunization(
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
      status: JsonParser.parsePrimitive<ImmunizationStatusCodes>(
        json,
        'status',
        ImmunizationStatusCodes.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      vaccineCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'vaccineCode',
        CodeableConcept.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXImmunization>(json, {
        'occurrenceDateTime': FhirDateTime.fromJson,
        'occurrenceString': FhirString.fromJson,
      })!,
      recorded: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recorded',
        FhirDateTime.fromJson,
      ),
      primarySource: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'primarySource',
        FhirBoolean.fromJson,
      ),
      reportOrigin: JsonParser.parseObject<CodeableConcept>(
        json,
        'reportOrigin',
        CodeableConcept.fromJson,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
      ),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'expirationDate',
        FhirDate.fromJson,
      ),
      site: JsonParser.parseObject<CodeableConcept>(
        json,
        'site',
        CodeableConcept.fromJson,
      ),
      route: JsonParser.parseObject<CodeableConcept>(
        json,
        'route',
        CodeableConcept.fromJson,
      ),
      doseQuantity: JsonParser.parseObject<Quantity>(
        json,
        'doseQuantity',
        Quantity.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImmunizationPerformer>(
            (v) => ImmunizationPerformer.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      isSubpotent: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isSubpotent',
        FhirBoolean.fromJson,
      ),
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      education: (json['education'] as List<dynamic>?)
          ?.map<ImmunizationEducation>(
            (v) => ImmunizationEducation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      fundingSource: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundingSource',
        CodeableConcept.fromJson,
      ),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<ImmunizationReaction>(
            (v) => ImmunizationReaction.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map<ImmunizationProtocolApplied>(
            (v) => ImmunizationProtocolApplied.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Immunization]
  /// from a [String] or [YamlMap] object
  factory Immunization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Immunization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Immunization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Immunization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Immunization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Immunization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Immunization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Immunization';

  /// [identifier]
  /// A unique identifier assigned to this immunization record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current status of the immunization event.
  final ImmunizationStatusCodes status;

  /// [statusReason]
  /// Indicates the reason the immunization event was not performed.
  final CodeableConcept? statusReason;

  /// [vaccineCode]
  /// Vaccine that was administered or was to be administered.
  final CodeableConcept vaccineCode;

  /// [patient]
  /// The patient who either received or did not receive the immunization.
  final Reference patient;

  /// [encounter]
  /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  final Reference? encounter;

  /// [occurrenceX]
  /// Date vaccine administered or was to be administered.
  final OccurrenceXImmunization occurrenceX;

  /// [recorded]
  /// The date the occurrence of the immunization was first captured in the
  /// record - potentially significantly after the occurrence of the event.
  final FhirDateTime? recorded;

  /// [primarySource]
  /// An indication that the content of the record is based on information
  /// from the person who administered the vaccine. This reflects the context
  /// under which the data was originally recorded.
  final FhirBoolean? primarySource;

  /// [reportOrigin]
  /// The source of the data when the report of the immunization event is not
  /// based on information from the person who administered the vaccine.
  final CodeableConcept? reportOrigin;

  /// [location]
  /// The service delivery location where the vaccine administration
  /// occurred.
  final Reference? location;

  /// [manufacturer]
  /// Name of vaccine manufacturer.
  final Reference? manufacturer;

  /// [lotNumber]
  /// Lot number of the vaccine product.
  final FhirString? lotNumber;

  /// [expirationDate]
  /// Date vaccine batch expires.
  final FhirDate? expirationDate;

  /// [site]
  /// Body site where vaccine was administered.
  final CodeableConcept? site;

  /// [route]
  /// The path by which the vaccine product is taken into the body.
  final CodeableConcept? route;

  /// [doseQuantity]
  /// The quantity of vaccine product that was administered.
  final Quantity? doseQuantity;

  /// [performer]
  /// Indicates who performed the immunization event.
  final List<ImmunizationPerformer>? performer;

  /// [note]
  /// Extra information about the immunization that is not conveyed by the
  /// other attributes.
  final List<Annotation>? note;

  /// [reasonCode]
  /// Reasons why the vaccine was administered.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition, Observation or DiagnosticReport that supports why the
  /// immunization was administered.
  final List<Reference>? reasonReference;

  /// [isSubpotent]
  /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  final FhirBoolean? isSubpotent;

  /// [subpotentReason]
  /// Reason why a dose is considered to be subpotent.
  final List<CodeableConcept>? subpotentReason;

  /// [education]
  /// Educational material presented to the patient (or guardian) at the time
  /// of vaccine administration.
  final List<ImmunizationEducation>? education;

  /// [programEligibility]
  /// Indicates a patient's eligibility for a funding program.
  final List<CodeableConcept>? programEligibility;

  /// [fundingSource]
  /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be
  /// eligible for a publically purchased vaccine but due to inventory
  /// issues, vaccine purchased with private funds was actually
  /// administered).
  final CodeableConcept? fundingSource;

  /// [reaction]
  /// Categorical data indicating that an adverse event is associated in time
  /// to an immunization.
  final List<ImmunizationReaction>? reaction;

  /// [protocolApplied]
  /// The protocol (set of recommendations) being followed by the provider
  /// who administered the dose.
  final List<ImmunizationProtocolApplied>? protocolApplied;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }

    json['vaccineCode'] = vaccineCode.toJson();

    json['patient'] = patient.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('occurrence${occurrenceX.fhirType.capitalize()}', occurrenceX);
    if (recorded != null) {
      addField('recorded', recorded);
    }

    if (primarySource != null) {
      addField('primarySource', primarySource);
    }

    if (reportOrigin != null) {
      json['reportOrigin'] = reportOrigin!.toJson();
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (manufacturer != null) {
      json['manufacturer'] = manufacturer!.toJson();
    }

    if (lotNumber != null) {
      addField('lotNumber', lotNumber);
    }

    if (expirationDate != null) {
      addField('expirationDate', expirationDate);
    }

    if (site != null) {
      json['site'] = site!.toJson();
    }

    if (route != null) {
      json['route'] = route!.toJson();
    }

    if (doseQuantity != null) {
      json['doseQuantity'] = doseQuantity!.toJson();
    }

    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (isSubpotent != null) {
      addField('isSubpotent', isSubpotent);
    }

    if (subpotentReason != null && subpotentReason!.isNotEmpty) {
      json['subpotentReason'] =
          subpotentReason!.map((e) => e.toJson()).toList();
    }

    if (education != null && education!.isNotEmpty) {
      json['education'] = education!.map((e) => e.toJson()).toList();
    }

    if (programEligibility != null && programEligibility!.isNotEmpty) {
      json['programEligibility'] =
          programEligibility!.map((e) => e.toJson()).toList();
    }

    if (fundingSource != null) {
      json['fundingSource'] = fundingSource!.toJson();
    }

    if (reaction != null && reaction!.isNotEmpty) {
      json['reaction'] = reaction!.map((e) => e.toJson()).toList();
    }

    if (protocolApplied != null && protocolApplied!.isNotEmpty) {
      json['protocolApplied'] =
          protocolApplied!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Immunization clone() => throw UnimplementedError();
  @override
  Immunization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImmunizationStatusCodes? status,
    CodeableConcept? statusReason,
    CodeableConcept? vaccineCode,
    Reference? patient,
    Reference? encounter,
    OccurrenceXImmunization? occurrenceX,
    FhirDateTime? recorded,
    FhirBoolean? primarySource,
    CodeableConcept? reportOrigin,
    Reference? location,
    Reference? manufacturer,
    FhirString? lotNumber,
    FhirDate? expirationDate,
    CodeableConcept? site,
    CodeableConcept? route,
    Quantity? doseQuantity,
    List<ImmunizationPerformer>? performer,
    List<Annotation>? note,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirBoolean? isSubpotent,
    List<CodeableConcept>? subpotentReason,
    List<ImmunizationEducation>? education,
    List<CodeableConcept>? programEligibility,
    CodeableConcept? fundingSource,
    List<ImmunizationReaction>? reaction,
    List<ImmunizationProtocolApplied>? protocolApplied,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Immunization(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ?? this.occurrenceX,
      recorded: recorded ?? this.recorded,
      primarySource: primarySource ?? this.primarySource,
      reportOrigin: reportOrigin ?? this.reportOrigin,
      location: location ?? this.location,
      manufacturer: manufacturer ?? this.manufacturer,
      lotNumber: lotNumber ?? this.lotNumber,
      expirationDate: expirationDate ?? this.expirationDate,
      site: site ?? this.site,
      route: route ?? this.route,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      performer: performer ?? this.performer,
      note: note ?? this.note,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      isSubpotent: isSubpotent ?? this.isSubpotent,
      subpotentReason: subpotentReason ?? this.subpotentReason,
      education: education ?? this.education,
      programEligibility: programEligibility ?? this.programEligibility,
      fundingSource: fundingSource ?? this.fundingSource,
      reaction: reaction ?? this.reaction,
      protocolApplied: protocolApplied ?? this.protocolApplied,
    );
  }
}

/// [ImmunizationPerformer]
/// Indicates who performed the immunization event.
class ImmunizationPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationPerformer]

  const ImmunizationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [ImmunizationPerformer]
  /// from a [String] or [YamlMap] object
  factory ImmunizationPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationPerformer';

  /// [function_]
  /// Describes the type of performance (e.g. ordering provider,
  /// administering provider, etc.).
  final CodeableConcept? function_;

  /// [actor]
  /// The practitioner or organization who performed the action.
  final Reference actor;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (function_ != null) {
      json['function'] = function_!.toJson();
    }

    json['actor'] = actor.toJson();

    return json;
  }

  @override
  ImmunizationPerformer clone() => throw UnimplementedError();
  @override
  ImmunizationPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    );
  }
}

/// [ImmunizationEducation]
/// Educational material presented to the patient (or guardian) at the time
/// of vaccine administration.
class ImmunizationEducation extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationEducation]

  const ImmunizationEducation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.documentType,
    this.reference,
    this.publicationDate,
    this.presentationDate,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEducation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationEducation(
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
      documentType: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentType',
        FhirString.fromJson,
      ),
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'publicationDate',
        FhirDateTime.fromJson,
      ),
      presentationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'presentationDate',
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [ImmunizationEducation]
  /// from a [String] or [YamlMap] object
  factory ImmunizationEducation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationEducation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationEducation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationEducation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationEducation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEducation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationEducation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEducation';

  /// [documentType]
  /// Identifier of the material presented to the patient.
  final FhirString? documentType;

  /// [reference]
  /// Reference pointer to the educational material given to the patient if
  /// the information was on line.
  final FhirUri? reference;

  /// [publicationDate]
  /// Date the educational material was published.
  final FhirDateTime? publicationDate;

  /// [presentationDate]
  /// Date the educational material was given to the patient.
  final FhirDateTime? presentationDate;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (documentType != null) {
      addField('documentType', documentType);
    }

    if (reference != null) {
      addField('reference', reference);
    }

    if (publicationDate != null) {
      addField('publicationDate', publicationDate);
    }

    if (presentationDate != null) {
      addField('presentationDate', presentationDate);
    }

    return json;
  }

  @override
  ImmunizationEducation clone() => throw UnimplementedError();
  @override
  ImmunizationEducation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? documentType,
    FhirUri? reference,
    FhirDateTime? publicationDate,
    FhirDateTime? presentationDate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationEducation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      documentType: documentType ?? this.documentType,
      reference: reference ?? this.reference,
      publicationDate: publicationDate ?? this.publicationDate,
      presentationDate: presentationDate ?? this.presentationDate,
    );
  }
}

/// [ImmunizationReaction]
/// Categorical data indicating that an adverse event is associated in time
/// to an immunization.
class ImmunizationReaction extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationReaction]

  const ImmunizationReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.detail,
    this.reported,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReaction.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationReaction(
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
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      detail: JsonParser.parseObject<Reference>(
        json,
        'detail',
        Reference.fromJson,
      ),
      reported: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'reported',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [ImmunizationReaction]
  /// from a [String] or [YamlMap] object
  factory ImmunizationReaction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationReaction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationReaction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationReaction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationReaction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationReaction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationReaction';

  /// [date]
  /// Date of reaction to the immunization.
  final FhirDateTime? date;

  /// [detail]
  /// Details of the reaction.
  final Reference? detail;

  /// [reported]
  /// Self-reported indicator.
  final FhirBoolean? reported;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (date != null) {
      addField('date', date);
    }

    if (detail != null) {
      json['detail'] = detail!.toJson();
    }

    if (reported != null) {
      addField('reported', reported);
    }

    return json;
  }

  @override
  ImmunizationReaction clone() => throw UnimplementedError();
  @override
  ImmunizationReaction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDateTime? date,
    Reference? detail,
    FhirBoolean? reported,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationReaction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      detail: detail ?? this.detail,
      reported: reported ?? this.reported,
    );
  }
}

/// [ImmunizationProtocolApplied]
/// The protocol (set of recommendations) being followed by the provider
/// who administered the dose.
class ImmunizationProtocolApplied extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationProtocolApplied]

  const ImmunizationProtocolApplied({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
    this.authority,
    this.targetDisease,
    required this.doseNumberX,
    this.seriesDosesX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationProtocolApplied(
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
      series: JsonParser.parsePrimitive<FhirString>(
        json,
        'series',
        FhirString.fromJson,
      ),
      authority: JsonParser.parseObject<Reference>(
        json,
        'authority',
        Reference.fromJson,
      ),
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      doseNumberX:
          JsonParser.parsePolymorphic<DoseNumberXImmunizationProtocolApplied>(
              json, {
        'doseNumberPositiveInt': FhirPositiveInt.fromJson,
        'doseNumberString': FhirString.fromJson,
      })!,
      seriesDosesX:
          JsonParser.parsePolymorphic<SeriesDosesXImmunizationProtocolApplied>(
              json, {
        'seriesDosesPositiveInt': FhirPositiveInt.fromJson,
        'seriesDosesString': FhirString.fromJson,
      }),
    );
  }

  /// Deserialize [ImmunizationProtocolApplied]
  /// from a [String] or [YamlMap] object
  factory ImmunizationProtocolApplied.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationProtocolApplied.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationProtocolApplied.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationProtocolApplied '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationProtocolApplied]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProtocolApplied.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationProtocolApplied.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationProtocolApplied';

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  final FhirString? series;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  final Reference? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being administered against.
  final List<CodeableConcept>? targetDisease;

  /// [doseNumberX]
  /// Nominal position in a series.
  final DoseNumberXImmunizationProtocolApplied doseNumberX;

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  final SeriesDosesXImmunizationProtocolApplied? seriesDosesX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (series != null) {
      addField('series', series);
    }

    if (authority != null) {
      json['authority'] = authority!.toJson();
    }

    if (targetDisease != null && targetDisease!.isNotEmpty) {
      json['targetDisease'] = targetDisease!.map((e) => e.toJson()).toList();
    }

    addField('doseNumber${doseNumberX.fhirType.capitalize()}', doseNumberX);
    if (seriesDosesX != null) {
      addField(
          'seriesDoses${seriesDosesX!.fhirType.capitalize()}', seriesDosesX);
    }

    return json;
  }

  @override
  ImmunizationProtocolApplied clone() => throw UnimplementedError();
  @override
  ImmunizationProtocolApplied copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? series,
    Reference? authority,
    List<CodeableConcept>? targetDisease,
    DoseNumberXImmunizationProtocolApplied? doseNumberX,
    SeriesDosesXImmunizationProtocolApplied? seriesDosesX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImmunizationProtocolApplied(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      series: series ?? this.series,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      doseNumberX: doseNumberX ?? this.doseNumberX,
      seriesDosesX: seriesDosesX ?? this.seriesDosesX,
    );
  }
}
