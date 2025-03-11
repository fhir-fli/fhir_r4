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
          objectPath: 'Immunization',
          resourceType: R4ResourceType.Immunization,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Immunization.empty() => Immunization(
        status: ImmunizationStatusCodes.values.first,
        vaccineCode: CodeableConcept.empty(),
        patient: Reference.empty(),
        occurrenceX: FhirDateTime.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Immunization.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization';
    return Immunization(
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
      status: JsonParser.parsePrimitive<ImmunizationStatusCodes>(
        json,
        'status',
        ImmunizationStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
        '$objectPath.statusReason',
      ),
      vaccineCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'vaccineCode',
        CodeableConcept.fromJson,
        '$objectPath.vaccineCode',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXImmunization>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrenceString': FhirString.fromJson,
        },
        objectPath,
      )!,
      recorded: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recorded',
        FhirDateTime.fromJson,
        '$objectPath.recorded',
      ),
      primarySource: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'primarySource',
        FhirBoolean.fromJson,
        '$objectPath.primarySource',
      ),
      reportOrigin: JsonParser.parseObject<CodeableConcept>(
        json,
        'reportOrigin',
        CodeableConcept.fromJson,
        '$objectPath.reportOrigin',
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
        '$objectPath.manufacturer',
      ),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
        '$objectPath.lotNumber',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'expirationDate',
        FhirDate.fromJson,
        '$objectPath.expirationDate',
      ),
      site: JsonParser.parseObject<CodeableConcept>(
        json,
        'site',
        CodeableConcept.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConcept>(
        json,
        'route',
        CodeableConcept.fromJson,
        '$objectPath.route',
      ),
      doseQuantity: JsonParser.parseObject<Quantity>(
        json,
        'doseQuantity',
        Quantity.fromJson,
        '$objectPath.doseQuantity',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImmunizationPerformer>(
            (v) => ImmunizationPerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      isSubpotent: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isSubpotent',
        FhirBoolean.fromJson,
        '$objectPath.isSubpotent',
      ),
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subpotentReason',
              },
            ),
          )
          .toList(),
      education: (json['education'] as List<dynamic>?)
          ?.map<ImmunizationEducation>(
            (v) => ImmunizationEducation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.education',
              },
            ),
          )
          .toList(),
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programEligibility',
              },
            ),
          )
          .toList(),
      fundingSource: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundingSource',
        CodeableConcept.fromJson,
        '$objectPath.fundingSource',
      ),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<ImmunizationReaction>(
            (v) => ImmunizationReaction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reaction',
              },
            ),
          )
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map<ImmunizationProtocolApplied>(
            (v) => ImmunizationProtocolApplied.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.protocolApplied',
              },
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
    if (json is Map<String, dynamic>) {
      return Immunization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX.isAs<FhirDateTime>();

  /// Getter for [occurrenceString] as a FhirString
  FhirString? get occurrenceString => occurrenceX.isAs<FhirString>();

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
    addField('status', status);
    addField('statusReason', statusReason);
    addField('vaccineCode', vaccineCode);
    addField('patient', patient);
    addField('encounter', encounter);
    final occurrenceXFhirType = occurrenceX.fhirType;
    addField('occurrence${occurrenceXFhirType.capitalize()}', occurrenceX);

    addField('recorded', recorded);
    addField('primarySource', primarySource);
    addField('reportOrigin', reportOrigin);
    addField('location', location);
    addField('manufacturer', manufacturer);
    addField('lotNumber', lotNumber);
    addField('expirationDate', expirationDate);
    addField('site', site);
    addField('route', route);
    addField('doseQuantity', doseQuantity);
    addField('performer', performer);
    addField('note', note);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('isSubpotent', isSubpotent);
    addField('subpotentReason', subpotentReason);
    addField('education', education);
    addField('programEligibility', programEligibility);
    addField('fundingSource', fundingSource);
    addField('reaction', reaction);
    addField('protocolApplied', protocolApplied);
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
      'status',
      'statusReason',
      'vaccineCode',
      'patient',
      'encounter',
      'occurrenceX',
      'recorded',
      'primarySource',
      'reportOrigin',
      'location',
      'manufacturer',
      'lotNumber',
      'expirationDate',
      'site',
      'route',
      'doseQuantity',
      'performer',
      'note',
      'reasonCode',
      'reasonReference',
      'isSubpotent',
      'subpotentReason',
      'education',
      'programEligibility',
      'fundingSource',
      'reaction',
      'protocolApplied',
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
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'vaccineCode':
        fields.add(vaccineCode);
      case 'patient':
        fields.add(patient);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        fields.add(occurrenceX);
      case 'occurrenceX':
        fields.add(occurrenceX);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX);
        }
      case 'occurrenceString':
        if (occurrenceX is FhirString) {
          fields.add(occurrenceX);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
      case 'primarySource':
        if (primarySource != null) {
          fields.add(primarySource!);
        }
      case 'reportOrigin':
        if (reportOrigin != null) {
          fields.add(reportOrigin!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'route':
        if (route != null) {
          fields.add(route!);
        }
      case 'doseQuantity':
        if (doseQuantity != null) {
          fields.add(doseQuantity!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'isSubpotent':
        if (isSubpotent != null) {
          fields.add(isSubpotent!);
        }
      case 'subpotentReason':
        if (subpotentReason != null) {
          fields.addAll(subpotentReason!);
        }
      case 'education':
        if (education != null) {
          fields.addAll(education!);
        }
      case 'programEligibility':
        if (programEligibility != null) {
          fields.addAll(programEligibility!);
        }
      case 'fundingSource':
        if (fundingSource != null) {
          fields.add(fundingSource!);
        }
      case 'reaction':
        if (reaction != null) {
          fields.addAll(reaction!);
        }
      case 'protocolApplied':
        if (protocolApplied != null) {
          fields.addAll(protocolApplied!);
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
      case 'status':
        {
          if (child is ImmunizationStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'statusReason':
        {
          if (child is CodeableConcept) {
            return copyWith(statusReason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'vaccineCode':
        {
          if (child is CodeableConcept) {
            return copyWith(vaccineCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceX':
        {
          if (child is OccurrenceXImmunization) {
            // child is e.g. SubjectX union
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceFhirString':
        {
          if (child is FhirString) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'recorded':
        {
          if (child is FhirDateTime) {
            return copyWith(recorded: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'primarySource':
        {
          if (child is FhirBoolean) {
            return copyWith(primarySource: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reportOrigin':
        {
          if (child is CodeableConcept) {
            return copyWith(reportOrigin: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'manufacturer':
        {
          if (child is Reference) {
            return copyWith(manufacturer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lotNumber':
        {
          if (child is FhirString) {
            return copyWith(lotNumber: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expirationDate':
        {
          if (child is FhirDate) {
            return copyWith(expirationDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'site':
        {
          if (child is CodeableConcept) {
            return copyWith(site: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'route':
        {
          if (child is CodeableConcept) {
            return copyWith(route: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'doseQuantity':
        {
          if (child is Quantity) {
            return copyWith(doseQuantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'performer':
        {
          if (child is List<ImmunizationPerformer>) {
            return copyWith(performer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(reasonCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            return copyWith(reasonReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'isSubpotent':
        {
          if (child is FhirBoolean) {
            return copyWith(isSubpotent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subpotentReason':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(subpotentReason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'education':
        {
          if (child is List<ImmunizationEducation>) {
            return copyWith(education: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'programEligibility':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(programEligibility: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'fundingSource':
        {
          if (child is CodeableConcept) {
            return copyWith(fundingSource: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reaction':
        {
          if (child is List<ImmunizationReaction>) {
            return copyWith(reaction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'protocolApplied':
        {
          if (child is List<ImmunizationProtocolApplied>) {
            return copyWith(protocolApplied: child);
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
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'vaccineCode':
        return ['CodeableConcept'];
      case 'patient':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'occurrence':
      case 'occurrenceX':
        return ['FhirDateTime', 'FhirString'];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'occurrenceString':
        return ['FhirString'];
      case 'recorded':
        return ['FhirDateTime'];
      case 'primarySource':
        return ['FhirBoolean'];
      case 'reportOrigin':
        return ['CodeableConcept'];
      case 'location':
        return ['Reference'];
      case 'manufacturer':
        return ['Reference'];
      case 'lotNumber':
        return ['FhirString'];
      case 'expirationDate':
        return ['FhirDate'];
      case 'site':
        return ['CodeableConcept'];
      case 'route':
        return ['CodeableConcept'];
      case 'doseQuantity':
        return ['Quantity'];
      case 'performer':
        return ['ImmunizationPerformer'];
      case 'note':
        return ['Annotation'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'isSubpotent':
        return ['FhirBoolean'];
      case 'subpotentReason':
        return ['CodeableConcept'];
      case 'education':
        return ['ImmunizationEducation'];
      case 'programEligibility':
        return ['CodeableConcept'];
      case 'fundingSource':
        return ['CodeableConcept'];
      case 'reaction':
        return ['ImmunizationReaction'];
      case 'protocolApplied':
        return ['ImmunizationProtocolApplied'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Immunization]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Immunization createProperty(String propertyName) {
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
      case 'status':
        {
          return copyWith(status: ImmunizationStatusCodes.empty());
        }
      case 'statusReason':
        {
          return copyWith(statusReason: CodeableConcept.empty());
        }
      case 'vaccineCode':
        {
          return copyWith(vaccineCode: CodeableConcept.empty());
        }
      case 'patient':
        {
          return copyWith(patient: Reference.empty());
        }
      case 'encounter':
        {
          return copyWith(encounter: Reference.empty());
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          return copyWith(occurrenceX: FhirDateTime.empty());
        }
      case 'occurrenceString':
        {
          return copyWith(occurrenceX: FhirString.empty());
        }
      case 'recorded':
        {
          return copyWith(recorded: FhirDateTime.empty());
        }
      case 'primarySource':
        {
          return copyWith(primarySource: FhirBoolean.empty());
        }
      case 'reportOrigin':
        {
          return copyWith(reportOrigin: CodeableConcept.empty());
        }
      case 'location':
        {
          return copyWith(location: Reference.empty());
        }
      case 'manufacturer':
        {
          return copyWith(manufacturer: Reference.empty());
        }
      case 'lotNumber':
        {
          return copyWith(lotNumber: FhirString.empty());
        }
      case 'expirationDate':
        {
          return copyWith(expirationDate: FhirDate.empty());
        }
      case 'site':
        {
          return copyWith(site: CodeableConcept.empty());
        }
      case 'route':
        {
          return copyWith(route: CodeableConcept.empty());
        }
      case 'doseQuantity':
        {
          return copyWith(doseQuantity: Quantity.empty());
        }
      case 'performer':
        {
          return copyWith(performer: <ImmunizationPerformer>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      case 'reasonCode':
        {
          return copyWith(reasonCode: <CodeableConcept>[]);
        }
      case 'reasonReference':
        {
          return copyWith(reasonReference: <Reference>[]);
        }
      case 'isSubpotent':
        {
          return copyWith(isSubpotent: FhirBoolean.empty());
        }
      case 'subpotentReason':
        {
          return copyWith(subpotentReason: <CodeableConcept>[]);
        }
      case 'education':
        {
          return copyWith(education: <ImmunizationEducation>[]);
        }
      case 'programEligibility':
        {
          return copyWith(programEligibility: <CodeableConcept>[]);
        }
      case 'fundingSource':
        {
          return copyWith(fundingSource: CodeableConcept.empty());
        }
      case 'reaction':
        {
          return copyWith(reaction: <ImmunizationReaction>[]);
        }
      case 'protocolApplied':
        {
          return copyWith(protocolApplied: <ImmunizationProtocolApplied>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Immunization clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool statusReason = false,
    bool encounter = false,
    bool recorded = false,
    bool primarySource = false,
    bool reportOrigin = false,
    bool location = false,
    bool manufacturer = false,
    bool lotNumber = false,
    bool expirationDate = false,
    bool site = false,
    bool route = false,
    bool doseQuantity = false,
    bool performer = false,
    bool note = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool isSubpotent = false,
    bool subpotentReason = false,
    bool education = false,
    bool programEligibility = false,
    bool fundingSource = false,
    bool reaction = false,
    bool protocolApplied = false,
  }) {
    return Immunization(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      statusReason: statusReason ? null : this.statusReason,
      vaccineCode: vaccineCode,
      patient: patient,
      encounter: encounter ? null : this.encounter,
      occurrenceX: occurrenceX,
      recorded: recorded ? null : this.recorded,
      primarySource: primarySource ? null : this.primarySource,
      reportOrigin: reportOrigin ? null : this.reportOrigin,
      location: location ? null : this.location,
      manufacturer: manufacturer ? null : this.manufacturer,
      lotNumber: lotNumber ? null : this.lotNumber,
      expirationDate: expirationDate ? null : this.expirationDate,
      site: site ? null : this.site,
      route: route ? null : this.route,
      doseQuantity: doseQuantity ? null : this.doseQuantity,
      performer: performer ? null : this.performer,
      note: note ? null : this.note,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      isSubpotent: isSubpotent ? null : this.isSubpotent,
      subpotentReason: subpotentReason ? null : this.subpotentReason,
      education: education ? null : this.education,
      programEligibility: programEligibility ? null : this.programEligibility,
      fundingSource: fundingSource ? null : this.fundingSource,
      reaction: reaction ? null : this.reaction,
      protocolApplied: protocolApplied ? null : this.protocolApplied,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Immunization(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason?.copyWith(
            objectPath: '$newObjectPath.statusReason',
          ) ??
          this.statusReason,
      vaccineCode: vaccineCode?.copyWith(
            objectPath: '$newObjectPath.vaccineCode',
          ) ??
          this.vaccineCode,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXImmunization? ??
          this.occurrenceX,
      recorded: recorded?.copyWith(
            objectPath: '$newObjectPath.recorded',
          ) ??
          this.recorded,
      primarySource: primarySource?.copyWith(
            objectPath: '$newObjectPath.primarySource',
          ) ??
          this.primarySource,
      reportOrigin: reportOrigin?.copyWith(
            objectPath: '$newObjectPath.reportOrigin',
          ) ??
          this.reportOrigin,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      manufacturer: manufacturer?.copyWith(
            objectPath: '$newObjectPath.manufacturer',
          ) ??
          this.manufacturer,
      lotNumber: lotNumber?.copyWith(
            objectPath: '$newObjectPath.lotNumber',
          ) ??
          this.lotNumber,
      expirationDate: expirationDate?.copyWith(
            objectPath: '$newObjectPath.expirationDate',
          ) ??
          this.expirationDate,
      site: site?.copyWith(
            objectPath: '$newObjectPath.site',
          ) ??
          this.site,
      route: route?.copyWith(
            objectPath: '$newObjectPath.route',
          ) ??
          this.route,
      doseQuantity: doseQuantity?.copyWith(
            objectPath: '$newObjectPath.doseQuantity',
          ) ??
          this.doseQuantity,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      isSubpotent: isSubpotent?.copyWith(
            objectPath: '$newObjectPath.isSubpotent',
          ) ??
          this.isSubpotent,
      subpotentReason: subpotentReason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subpotentReason',
                ),
              )
              .toList() ??
          this.subpotentReason,
      education: education
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.education',
                ),
              )
              .toList() ??
          this.education,
      programEligibility: programEligibility
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.programEligibility',
                ),
              )
              .toList() ??
          this.programEligibility,
      fundingSource: fundingSource?.copyWith(
            objectPath: '$newObjectPath.fundingSource',
          ) ??
          this.fundingSource,
      reaction: reaction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reaction',
                ),
              )
              .toList() ??
          this.reaction,
      protocolApplied: protocolApplied
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.protocolApplied',
                ),
              )
              .toList() ??
          this.protocolApplied,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Immunization) {
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
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(statusReason, o.statusReason)) {
      return false;
    }
    if (!equalsDeepWithNull(vaccineCode, o.vaccineCode)) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(occurrenceX, o.occurrenceX)) {
      return false;
    }
    if (!equalsDeepWithNull(recorded, o.recorded)) {
      return false;
    }
    if (!equalsDeepWithNull(primarySource, o.primarySource)) {
      return false;
    }
    if (!equalsDeepWithNull(reportOrigin, o.reportOrigin)) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!equalsDeepWithNull(manufacturer, o.manufacturer)) {
      return false;
    }
    if (!equalsDeepWithNull(lotNumber, o.lotNumber)) {
      return false;
    }
    if (!equalsDeepWithNull(expirationDate, o.expirationDate)) {
      return false;
    }
    if (!equalsDeepWithNull(site, o.site)) {
      return false;
    }
    if (!equalsDeepWithNull(route, o.route)) {
      return false;
    }
    if (!equalsDeepWithNull(doseQuantity, o.doseQuantity)) {
      return false;
    }
    if (!listEquals<ImmunizationPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(isSubpotent, o.isSubpotent)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      subpotentReason,
      o.subpotentReason,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationEducation>(
      education,
      o.education,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      programEligibility,
      o.programEligibility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(fundingSource, o.fundingSource)) {
      return false;
    }
    if (!listEquals<ImmunizationReaction>(
      reaction,
      o.reaction,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationProtocolApplied>(
      protocolApplied,
      o.protocolApplied,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Immunization.performer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationPerformer.empty() => ImmunizationPerformer(
        actor: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.performer';
    return ImmunizationPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
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
    if (json is Map<String, dynamic>) {
      return ImmunizationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    addField('function', function_);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
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
      case 'function':
        {
          if (child is CodeableConcept) {
            return copyWith(function_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'actor':
        {
          if (child is Reference) {
            return copyWith(actor: child);
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
      case 'function':
        return ['CodeableConcept'];
      case 'actor':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationPerformer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImmunizationPerformer createProperty(String propertyName) {
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
      case 'function':
        {
          return copyWith(function_: CodeableConcept.empty());
        }
      case 'actor':
        {
          return copyWith(actor: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImmunizationPerformer clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool function_ = false,
  }) {
    return ImmunizationPerformer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      function_: function_ ? null : this.function_,
      actor: actor,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImmunizationPerformer(
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
      function_: function_?.copyWith(
            objectPath: '$newObjectPath.function',
          ) ??
          this.function_,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationPerformer) {
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
    if (!equalsDeepWithNull(function_, o.function_)) {
      return false;
    }
    if (!equalsDeepWithNull(actor, o.actor)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Immunization.education',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationEducation.empty() => const ImmunizationEducation();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEducation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.education';
    return ImmunizationEducation(
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
      documentType: JsonParser.parsePrimitive<FhirString>(
        json,
        'documentType',
        FhirString.fromJson,
        '$objectPath.documentType',
      ),
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
        '$objectPath.reference',
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'publicationDate',
        FhirDateTime.fromJson,
        '$objectPath.publicationDate',
      ),
      presentationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'presentationDate',
        FhirDateTime.fromJson,
        '$objectPath.presentationDate',
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
    if (json is Map<String, dynamic>) {
      return ImmunizationEducation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    addField('documentType', documentType);
    addField('reference', reference);
    addField('publicationDate', publicationDate);
    addField('presentationDate', presentationDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'documentType',
      'reference',
      'publicationDate',
      'presentationDate',
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
      case 'documentType':
        if (documentType != null) {
          fields.add(documentType!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'publicationDate':
        if (publicationDate != null) {
          fields.add(publicationDate!);
        }
      case 'presentationDate':
        if (presentationDate != null) {
          fields.add(presentationDate!);
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
      case 'documentType':
        {
          if (child is FhirString) {
            return copyWith(documentType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reference':
        {
          if (child is FhirUri) {
            return copyWith(reference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publicationDate':
        {
          if (child is FhirDateTime) {
            return copyWith(publicationDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'presentationDate':
        {
          if (child is FhirDateTime) {
            return copyWith(presentationDate: child);
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
      case 'documentType':
        return ['FhirString'];
      case 'reference':
        return ['FhirUri'];
      case 'publicationDate':
        return ['FhirDateTime'];
      case 'presentationDate':
        return ['FhirDateTime'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationEducation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImmunizationEducation createProperty(String propertyName) {
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
      case 'documentType':
        {
          return copyWith(documentType: FhirString.empty());
        }
      case 'reference':
        {
          return copyWith(reference: FhirUri.empty());
        }
      case 'publicationDate':
        {
          return copyWith(publicationDate: FhirDateTime.empty());
        }
      case 'presentationDate':
        {
          return copyWith(presentationDate: FhirDateTime.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImmunizationEducation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool documentType = false,
    bool reference = false,
    bool publicationDate = false,
    bool presentationDate = false,
  }) {
    return ImmunizationEducation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      documentType: documentType ? null : this.documentType,
      reference: reference ? null : this.reference,
      publicationDate: publicationDate ? null : this.publicationDate,
      presentationDate: presentationDate ? null : this.presentationDate,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImmunizationEducation(
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
      documentType: documentType?.copyWith(
            objectPath: '$newObjectPath.documentType',
          ) ??
          this.documentType,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      publicationDate: publicationDate?.copyWith(
            objectPath: '$newObjectPath.publicationDate',
          ) ??
          this.publicationDate,
      presentationDate: presentationDate?.copyWith(
            objectPath: '$newObjectPath.presentationDate',
          ) ??
          this.presentationDate,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationEducation) {
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
    if (!equalsDeepWithNull(documentType, o.documentType)) {
      return false;
    }
    if (!equalsDeepWithNull(reference, o.reference)) {
      return false;
    }
    if (!equalsDeepWithNull(publicationDate, o.publicationDate)) {
      return false;
    }
    if (!equalsDeepWithNull(presentationDate, o.presentationDate)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Immunization.reaction',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationReaction.empty() => const ImmunizationReaction();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReaction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.reaction';
    return ImmunizationReaction(
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
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      detail: JsonParser.parseObject<Reference>(
        json,
        'detail',
        Reference.fromJson,
        '$objectPath.detail',
      ),
      reported: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'reported',
        FhirBoolean.fromJson,
        '$objectPath.reported',
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
    if (json is Map<String, dynamic>) {
      return ImmunizationReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    addField('date', date);
    addField('detail', detail);
    addField('reported', reported);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'date',
      'detail',
      'reported',
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
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'detail':
        if (detail != null) {
          fields.add(detail!);
        }
      case 'reported':
        if (reported != null) {
          fields.add(reported!);
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
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detail':
        {
          if (child is Reference) {
            return copyWith(detail: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reported':
        {
          if (child is FhirBoolean) {
            return copyWith(reported: child);
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
      case 'date':
        return ['FhirDateTime'];
      case 'detail':
        return ['Reference'];
      case 'reported':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationReaction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImmunizationReaction createProperty(String propertyName) {
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
      case 'date':
        {
          return copyWith(date: FhirDateTime.empty());
        }
      case 'detail':
        {
          return copyWith(detail: Reference.empty());
        }
      case 'reported':
        {
          return copyWith(reported: FhirBoolean.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImmunizationReaction clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool date = false,
    bool detail = false,
    bool reported = false,
  }) {
    return ImmunizationReaction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      date: date ? null : this.date,
      detail: detail ? null : this.detail,
      reported: reported ? null : this.reported,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImmunizationReaction(
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
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      detail: detail?.copyWith(
            objectPath: '$newObjectPath.detail',
          ) ??
          this.detail,
      reported: reported?.copyWith(
            objectPath: '$newObjectPath.reported',
          ) ??
          this.reported,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationReaction) {
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
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(detail, o.detail)) {
      return false;
    }
    if (!equalsDeepWithNull(reported, o.reported)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Immunization.protocolApplied',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationProtocolApplied.empty() => ImmunizationProtocolApplied(
        doseNumberX: FhirPositiveInt.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.protocolApplied';
    return ImmunizationProtocolApplied(
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
      series: JsonParser.parsePrimitive<FhirString>(
        json,
        'series',
        FhirString.fromJson,
        '$objectPath.series',
      ),
      authority: JsonParser.parseObject<Reference>(
        json,
        'authority',
        Reference.fromJson,
        '$objectPath.authority',
      ),
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetDisease',
              },
            ),
          )
          .toList(),
      doseNumberX:
          JsonParser.parsePolymorphic<DoseNumberXImmunizationProtocolApplied>(
        json,
        {
          'doseNumberPositiveInt': FhirPositiveInt.fromJson,
          'doseNumberString': FhirString.fromJson,
        },
        objectPath,
      )!,
      seriesDosesX:
          JsonParser.parsePolymorphic<SeriesDosesXImmunizationProtocolApplied>(
        json,
        {
          'seriesDosesPositiveInt': FhirPositiveInt.fromJson,
          'seriesDosesString': FhirString.fromJson,
        },
        objectPath,
      ),
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
    if (json is Map<String, dynamic>) {
      return ImmunizationProtocolApplied.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [doseNumberPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get doseNumberPositiveInt =>
      doseNumberX.isAs<FhirPositiveInt>();

  /// Getter for [doseNumberString] as a FhirString
  FhirString? get doseNumberString => doseNumberX.isAs<FhirString>();

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  final SeriesDosesXImmunizationProtocolApplied? seriesDosesX;

  /// Getter for [seriesDosesPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get seriesDosesPositiveInt =>
      seriesDosesX?.isAs<FhirPositiveInt>();

  /// Getter for [seriesDosesString] as a FhirString
  FhirString? get seriesDosesString => seriesDosesX?.isAs<FhirString>();
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
    addField('series', series);
    addField('authority', authority);
    addField('targetDisease', targetDisease);
    final doseNumberXFhirType = doseNumberX.fhirType;
    addField('doseNumber${doseNumberXFhirType.capitalize()}', doseNumberX);

    if (seriesDosesX != null) {
      final fhirType = seriesDosesX!.fhirType;
      addField('seriesDoses${fhirType.capitalize()}', seriesDosesX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'series',
      'authority',
      'targetDisease',
      'doseNumberX',
      'seriesDosesX',
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
      case 'series':
        if (series != null) {
          fields.add(series!);
        }
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'targetDisease':
        if (targetDisease != null) {
          fields.addAll(targetDisease!);
        }
      case 'doseNumber':
        fields.add(doseNumberX);
      case 'doseNumberX':
        fields.add(doseNumberX);
      case 'doseNumberPositiveInt':
        if (doseNumberX is FhirPositiveInt) {
          fields.add(doseNumberX);
        }
      case 'doseNumberString':
        if (doseNumberX is FhirString) {
          fields.add(doseNumberX);
        }
      case 'seriesDoses':
        fields.add(seriesDosesX!);
      case 'seriesDosesX':
        fields.add(seriesDosesX!);
      case 'seriesDosesPositiveInt':
        if (seriesDosesX is FhirPositiveInt) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesString':
        if (seriesDosesX is FhirString) {
          fields.add(seriesDosesX!);
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
      case 'series':
        {
          if (child is FhirString) {
            return copyWith(series: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authority':
        {
          if (child is Reference) {
            return copyWith(authority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetDisease':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(targetDisease: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'doseNumberX':
        {
          if (child is DoseNumberXImmunizationProtocolApplied) {
            // child is e.g. SubjectX union
            return copyWith(doseNumberX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'doseNumberFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(doseNumberX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'doseNumberFhirString':
        {
          if (child is FhirString) {
            return copyWith(doseNumberX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'seriesDosesX':
        {
          if (child is SeriesDosesXImmunizationProtocolApplied) {
            // child is e.g. SubjectX union
            return copyWith(seriesDosesX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'seriesDosesFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(seriesDosesX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'seriesDosesFhirString':
        {
          if (child is FhirString) {
            return copyWith(seriesDosesX: child);
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
      case 'series':
        return ['FhirString'];
      case 'authority':
        return ['Reference'];
      case 'targetDisease':
        return ['CodeableConcept'];
      case 'doseNumber':
      case 'doseNumberX':
        return ['FhirPositiveInt', 'FhirString'];
      case 'doseNumberPositiveInt':
        return ['FhirPositiveInt'];
      case 'doseNumberString':
        return ['FhirString'];
      case 'seriesDoses':
      case 'seriesDosesX':
        return ['FhirPositiveInt', 'FhirString'];
      case 'seriesDosesPositiveInt':
        return ['FhirPositiveInt'];
      case 'seriesDosesString':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationProtocolApplied]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImmunizationProtocolApplied createProperty(String propertyName) {
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
      case 'series':
        {
          return copyWith(series: FhirString.empty());
        }
      case 'authority':
        {
          return copyWith(authority: Reference.empty());
        }
      case 'targetDisease':
        {
          return copyWith(targetDisease: <CodeableConcept>[]);
        }
      case 'doseNumber':
      case 'doseNumberX':
      case 'doseNumberPositiveInt':
        {
          return copyWith(doseNumberX: FhirPositiveInt.empty());
        }
      case 'doseNumberString':
        {
          return copyWith(doseNumberX: FhirString.empty());
        }
      case 'seriesDoses':
      case 'seriesDosesX':
      case 'seriesDosesPositiveInt':
        {
          return copyWith(seriesDosesX: FhirPositiveInt.empty());
        }
      case 'seriesDosesString':
        {
          return copyWith(seriesDosesX: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImmunizationProtocolApplied clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool series = false,
    bool authority = false,
    bool targetDisease = false,
    bool seriesDoses = false,
  }) {
    return ImmunizationProtocolApplied(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      series: series ? null : this.series,
      authority: authority ? null : this.authority,
      targetDisease: targetDisease ? null : this.targetDisease,
      doseNumberX: doseNumberX,
      seriesDosesX: seriesDoses ? null : seriesDosesX,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImmunizationProtocolApplied(
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
      series: series?.copyWith(
            objectPath: '$newObjectPath.series',
          ) ??
          this.series,
      authority: authority?.copyWith(
            objectPath: '$newObjectPath.authority',
          ) ??
          this.authority,
      targetDisease: targetDisease
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetDisease',
                ),
              )
              .toList() ??
          this.targetDisease,
      doseNumberX: doseNumberX?.copyWith(
            objectPath: '$newObjectPath.doseNumberX',
          ) as DoseNumberXImmunizationProtocolApplied? ??
          this.doseNumberX,
      seriesDosesX: seriesDosesX?.copyWith(
            objectPath: '$newObjectPath.seriesDosesX',
          ) as SeriesDosesXImmunizationProtocolApplied? ??
          this.seriesDosesX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationProtocolApplied) {
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
    if (!equalsDeepWithNull(series, o.series)) {
      return false;
    }
    if (!equalsDeepWithNull(authority, o.authority)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      targetDisease,
      o.targetDisease,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(doseNumberX, o.doseNumberX)) {
      return false;
    }
    if (!equalsDeepWithNull(seriesDosesX, o.seriesDosesX)) {
      return false;
    }
    return true;
  }
}
