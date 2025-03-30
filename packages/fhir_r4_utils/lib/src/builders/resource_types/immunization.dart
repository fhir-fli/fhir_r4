import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        Immunization,
        ImmunizationPerformer,
        ImmunizationEducation,
        ImmunizationReaction,
        ImmunizationProtocolApplied;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationBuilder]
/// Describes the event of a patient being administered a vaccine or a
/// record of an immunization as reported by a patient, a clinician or
/// another party.
class ImmunizationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ImmunizationBuilder]

  ImmunizationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.statusReason,
    this.vaccineCode,
    this.patient,
    this.encounter,
    this.occurrenceX,
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
  /// For Builder classes, no fields are required
  factory ImmunizationBuilder.empty() => ImmunizationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization';
    return ImmunizationBuilder(
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
      status: JsonParser.parsePrimitive<ImmunizationStatusCodesBuilder>(
        json,
        'status',
        ImmunizationStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      vaccineCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'vaccineCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.vaccineCode',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXImmunizationBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrenceString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recorded',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recorded',
      ),
      primarySource: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'primarySource',
        FhirBooleanBuilder.fromJson,
        '$objectPath.primarySource',
      ),
      reportOrigin: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reportOrigin',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reportOrigin',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      manufacturer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'manufacturer',
        ReferenceBuilder.fromJson,
        '$objectPath.manufacturer',
      ),
      lotNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'lotNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.lotNumber',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'expirationDate',
        FhirDateBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
      site: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'site',
        CodeableConceptBuilder.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'route',
        CodeableConceptBuilder.fromJson,
        '$objectPath.route',
      ),
      doseQuantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'doseQuantity',
        QuantityBuilder.fromJson,
        '$objectPath.doseQuantity',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImmunizationPerformerBuilder>(
            (v) => ImmunizationPerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      isSubpotent: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isSubpotent',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isSubpotent',
      ),
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subpotentReason',
              },
            ),
          )
          .toList(),
      education: (json['education'] as List<dynamic>?)
          ?.map<ImmunizationEducationBuilder>(
            (v) => ImmunizationEducationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.education',
              },
            ),
          )
          .toList(),
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programEligibility',
              },
            ),
          )
          .toList(),
      fundingSource: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundingSource',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundingSource',
      ),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<ImmunizationReactionBuilder>(
            (v) => ImmunizationReactionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reaction',
              },
            ),
          )
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map<ImmunizationProtocolAppliedBuilder>(
            (v) => ImmunizationProtocolAppliedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.protocolApplied',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImmunizationBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Immunization';

  /// [identifier]
  /// A unique identifier assigned to this immunization record.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Indicates the current status of the immunization event.
  ImmunizationStatusCodesBuilder? status;

  /// [statusReason]
  /// Indicates the reason the immunization event was not performed.
  CodeableConceptBuilder? statusReason;

  /// [vaccineCode]
  /// Vaccine that was administered or was to be administered.
  CodeableConceptBuilder? vaccineCode;

  /// [patient]
  /// The patient who either received or did not receive the immunization.
  ReferenceBuilder? patient;

  /// [encounter]
  /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// Date vaccine administered or was to be administered.
  OccurrenceXImmunizationBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrenceString] as a FhirStringBuilder
  FhirStringBuilder? get occurrenceString =>
      occurrenceX?.isAs<FhirStringBuilder>();

  /// [recorded]
  /// The date the occurrence of the immunization was first captured in the
  /// record - potentially significantly after the occurrence of the event.
  FhirDateTimeBuilder? recorded;

  /// [primarySource]
  /// An indication that the content of the record is based on information
  /// from the person who administered the vaccine. This reflects the context
  /// under which the data was originally recorded.
  FhirBooleanBuilder? primarySource;

  /// [reportOrigin]
  /// The source of the data when the report of the immunization event is not
  /// based on information from the person who administered the vaccine.
  CodeableConceptBuilder? reportOrigin;

  /// [location]
  /// The service delivery location where the vaccine administration
  /// occurred.
  ReferenceBuilder? location;

  /// [manufacturer]
  /// Name of vaccine manufacturer.
  ReferenceBuilder? manufacturer;

  /// [lotNumber]
  /// Lot number of the vaccine product.
  FhirStringBuilder? lotNumber;

  /// [expirationDate]
  /// Date vaccine batch expires.
  FhirDateBuilder? expirationDate;

  /// [site]
  /// Body site where vaccine was administered.
  CodeableConceptBuilder? site;

  /// [route]
  /// The path by which the vaccine product is taken into the body.
  CodeableConceptBuilder? route;

  /// [doseQuantity]
  /// The quantity of vaccine product that was administered.
  QuantityBuilder? doseQuantity;

  /// [performer]
  /// Indicates who performed the immunization event.
  List<ImmunizationPerformerBuilder>? performer;

  /// [note]
  /// Extra information about the immunization that is not conveyed by the
  /// other attributes.
  List<AnnotationBuilder>? note;

  /// [reasonCode]
  /// Reasons why the vaccine was administered.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Condition, Observation or DiagnosticReport that supports why the
  /// immunization was administered.
  List<ReferenceBuilder>? reasonReference;

  /// [isSubpotent]
  /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  FhirBooleanBuilder? isSubpotent;

  /// [subpotentReason]
  /// Reason why a dose is considered to be subpotent.
  List<CodeableConceptBuilder>? subpotentReason;

  /// [education]
  /// Educational material presented to the patient (or guardian) at the time
  /// of vaccine administration.
  List<ImmunizationEducationBuilder>? education;

  /// [programEligibility]
  /// Indicates a patient's eligibility for a funding program.
  List<CodeableConceptBuilder>? programEligibility;

  /// [fundingSource]
  /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be
  /// eligible for a publically purchased vaccine but due to inventory
  /// issues, vaccine purchased with private funds was actually
  /// administered).
  CodeableConceptBuilder? fundingSource;

  /// [reaction]
  /// Categorical data indicating that an adverse event is associated in time
  /// to an immunization.
  List<ImmunizationReactionBuilder>? reaction;

  /// [protocolApplied]
  /// The protocol (set of recommendations) being followed by the provider
  /// who administered the dose.
  List<ImmunizationProtocolAppliedBuilder>? protocolApplied;

  /// Converts a ImmunizationBuilder to [Immunization]
  Immunization build() => Immunization.fromJson(toJson());

  /// Converts a [ImmunizationBuilder] to a [Map<String, dynamic>]
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
    addField('status', status);
    addField('statusReason', statusReason);
    addField('vaccineCode', vaccineCode);
    addField('patient', patient);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'vaccineCode':
        if (vaccineCode != null) {
          fields.add(vaccineCode!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceString':
        if (occurrenceX is FhirStringBuilder) {
          fields.add(occurrenceX!);
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
      case 'status':
        {
          if (child is ImmunizationStatusCodesBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is CodeableConceptBuilder) {
            statusReason = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'vaccineCode':
        {
          if (child is CodeableConceptBuilder) {
            vaccineCode = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceX':
        {
          if (child is OccurrenceXImmunizationBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceString':
        {
          if (child is FhirStringBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorded':
        {
          if (child is FhirDateTimeBuilder) {
            recorded = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'primarySource':
        {
          if (child is FhirBooleanBuilder) {
            primarySource = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reportOrigin':
        {
          if (child is CodeableConceptBuilder) {
            reportOrigin = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufacturer':
        {
          if (child is ReferenceBuilder) {
            manufacturer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lotNumber':
        {
          if (child is FhirStringBuilder) {
            lotNumber = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expirationDate':
        {
          if (child is FhirDateBuilder) {
            expirationDate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'site':
        {
          if (child is CodeableConceptBuilder) {
            site = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'route':
        {
          if (child is CodeableConceptBuilder) {
            route = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseQuantity':
        {
          if (child is QuantityBuilder) {
            doseQuantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<ImmunizationPerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ImmunizationPerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [...(performer ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reasonCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reasonCode = [...(reasonCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reasonReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reasonReference = [...(reasonReference ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isSubpotent':
        {
          if (child is FhirBooleanBuilder) {
            isSubpotent = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subpotentReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subpotentReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subpotentReason = [...(subpotentReason ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'education':
        {
          if (child is List<ImmunizationEducationBuilder>) {
            // Replace or create new list
            education = child;
            return;
          } else if (child is ImmunizationEducationBuilder) {
            // Add single element to existing list or create new list
            education = [...(education ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programEligibility':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            programEligibility = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            programEligibility = [...(programEligibility ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fundingSource':
        {
          if (child is CodeableConceptBuilder) {
            fundingSource = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reaction':
        {
          if (child is List<ImmunizationReactionBuilder>) {
            // Replace or create new list
            reaction = child;
            return;
          } else if (child is ImmunizationReactionBuilder) {
            // Add single element to existing list or create new list
            reaction = [...(reaction ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'protocolApplied':
        {
          if (child is List<ImmunizationProtocolAppliedBuilder>) {
            // Replace or create new list
            protocolApplied = child;
            return;
          } else if (child is ImmunizationProtocolAppliedBuilder) {
            // Add single element to existing list or create new list
            protocolApplied = [...(protocolApplied ?? []), child];
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'vaccineCode':
        return ['CodeableConceptBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return ['FhirDateTimeBuilder', 'FhirStringBuilder'];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrenceString':
        return ['FhirStringBuilder'];
      case 'recorded':
        return ['FhirDateTimeBuilder'];
      case 'primarySource':
        return ['FhirBooleanBuilder'];
      case 'reportOrigin':
        return ['CodeableConceptBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      case 'lotNumber':
        return ['FhirStringBuilder'];
      case 'expirationDate':
        return ['FhirDateBuilder'];
      case 'site':
        return ['CodeableConceptBuilder'];
      case 'route':
        return ['CodeableConceptBuilder'];
      case 'doseQuantity':
        return ['QuantityBuilder'];
      case 'performer':
        return ['ImmunizationPerformerBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'isSubpotent':
        return ['FhirBooleanBuilder'];
      case 'subpotentReason':
        return ['CodeableConceptBuilder'];
      case 'education':
        return ['ImmunizationEducationBuilder'];
      case 'programEligibility':
        return ['CodeableConceptBuilder'];
      case 'fundingSource':
        return ['CodeableConceptBuilder'];
      case 'reaction':
        return ['ImmunizationReactionBuilder'];
      case 'protocolApplied':
        return ['ImmunizationProtocolAppliedBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationBuilder]
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
      case 'status':
        {
          status = ImmunizationStatusCodesBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'vaccineCode':
        {
          vaccineCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrenceString':
        {
          occurrenceX = FhirStringBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirDateTimeBuilder.empty();
          return;
        }
      case 'primarySource':
        {
          primarySource = FhirBooleanBuilder.empty();
          return;
        }
      case 'reportOrigin':
        {
          reportOrigin = CodeableConceptBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = ReferenceBuilder.empty();
          return;
        }
      case 'lotNumber':
        {
          lotNumber = FhirStringBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateBuilder.empty();
          return;
        }
      case 'site':
        {
          site = CodeableConceptBuilder.empty();
          return;
        }
      case 'route':
        {
          route = CodeableConceptBuilder.empty();
          return;
        }
      case 'doseQuantity':
        {
          doseQuantity = QuantityBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ImmunizationPerformerBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'reasonCode':
        {
          reasonCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'reasonReference':
        {
          reasonReference = <ReferenceBuilder>[];
          return;
        }
      case 'isSubpotent':
        {
          isSubpotent = FhirBooleanBuilder.empty();
          return;
        }
      case 'subpotentReason':
        {
          subpotentReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'education':
        {
          education = <ImmunizationEducationBuilder>[];
          return;
        }
      case 'programEligibility':
        {
          programEligibility = <CodeableConceptBuilder>[];
          return;
        }
      case 'fundingSource':
        {
          fundingSource = CodeableConceptBuilder.empty();
          return;
        }
      case 'reaction':
        {
          reaction = <ImmunizationReactionBuilder>[];
          return;
        }
      case 'protocolApplied':
        {
          protocolApplied = <ImmunizationProtocolAppliedBuilder>[];
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
    bool status = false,
    bool statusReason = false,
    bool vaccineCode = false,
    bool patient = false,
    bool encounter = false,
    bool occurrence = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (statusReason) this.statusReason = null;
    if (vaccineCode) this.vaccineCode = null;
    if (patient) this.patient = null;
    if (encounter) this.encounter = null;
    if (occurrence) this.occurrenceX = null;
    if (recorded) this.recorded = null;
    if (primarySource) this.primarySource = null;
    if (reportOrigin) this.reportOrigin = null;
    if (location) this.location = null;
    if (manufacturer) this.manufacturer = null;
    if (lotNumber) this.lotNumber = null;
    if (expirationDate) this.expirationDate = null;
    if (site) this.site = null;
    if (route) this.route = null;
    if (doseQuantity) this.doseQuantity = null;
    if (performer) this.performer = null;
    if (note) this.note = null;
    if (reasonCode) this.reasonCode = null;
    if (reasonReference) this.reasonReference = null;
    if (isSubpotent) this.isSubpotent = null;
    if (subpotentReason) this.subpotentReason = null;
    if (education) this.education = null;
    if (programEligibility) this.programEligibility = null;
    if (fundingSource) this.fundingSource = null;
    if (reaction) this.reaction = null;
    if (protocolApplied) this.protocolApplied = null;
  }

  @override
  ImmunizationBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ImmunizationStatusCodesBuilder? status,
    CodeableConceptBuilder? statusReason,
    CodeableConceptBuilder? vaccineCode,
    ReferenceBuilder? patient,
    ReferenceBuilder? encounter,
    OccurrenceXImmunizationBuilder? occurrenceX,
    FhirDateTimeBuilder? recorded,
    FhirBooleanBuilder? primarySource,
    CodeableConceptBuilder? reportOrigin,
    ReferenceBuilder? location,
    ReferenceBuilder? manufacturer,
    FhirStringBuilder? lotNumber,
    FhirDateBuilder? expirationDate,
    CodeableConceptBuilder? site,
    CodeableConceptBuilder? route,
    QuantityBuilder? doseQuantity,
    List<ImmunizationPerformerBuilder>? performer,
    List<AnnotationBuilder>? note,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    FhirBooleanBuilder? isSubpotent,
    List<CodeableConceptBuilder>? subpotentReason,
    List<ImmunizationEducationBuilder>? education,
    List<CodeableConceptBuilder>? programEligibility,
    CodeableConceptBuilder? fundingSource,
    List<ImmunizationReactionBuilder>? reaction,
    List<ImmunizationProtocolAppliedBuilder>? protocolApplied,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ImmunizationBuilder(
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
    if (o is! ImmunizationBuilder) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      vaccineCode,
      o.vaccineCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorded,
      o.recorded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      primarySource,
      o.primarySource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportOrigin,
      o.reportOrigin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      route,
      o.route,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseQuantity,
      o.doseQuantity,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationPerformerBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isSubpotent,
      o.isSubpotent,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subpotentReason,
      o.subpotentReason,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationEducationBuilder>(
      education,
      o.education,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      programEligibility,
      o.programEligibility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundingSource,
      o.fundingSource,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationReactionBuilder>(
      reaction,
      o.reaction,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationProtocolAppliedBuilder>(
      protocolApplied,
      o.protocolApplied,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationPerformerBuilder]
/// Indicates who performed the immunization event.
class ImmunizationPerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationPerformerBuilder]

  ImmunizationPerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Immunization.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationPerformerBuilder.empty() =>
      ImmunizationPerformerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.performer';
    return ImmunizationPerformerBuilder(
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
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [ImmunizationPerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationPerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationPerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationPerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationPerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationPerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationPerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationPerformerBuilder.fromJson(json);
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
  CodeableConceptBuilder? function_;

  /// [actor]
  /// The practitioner or organization who performed the action.
  ReferenceBuilder? actor;

  /// Converts a ImmunizationPerformerBuilder to [ImmunizationPerformer]
  ImmunizationPerformer build() => ImmunizationPerformer.fromJson(toJson());

  /// Converts a [ImmunizationPerformerBuilder] to a [Map<String, dynamic>]
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
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
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
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
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationPerformerBuilder]
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
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
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
    bool function_ = false,
    bool actor = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (function_) this.function_ = null;
    if (actor) this.actor = null;
  }

  @override
  ImmunizationPerformerBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationPerformerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationPerformerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
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
    if (o is! ImmunizationPerformerBuilder) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationEducationBuilder]
/// Educational material presented to the patient (or guardian) at the time
/// of vaccine administration.
class ImmunizationEducationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationEducationBuilder]

  ImmunizationEducationBuilder({
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
  /// For Builder classes, no fields are required
  factory ImmunizationEducationBuilder.empty() =>
      ImmunizationEducationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEducationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.education';
    return ImmunizationEducationBuilder(
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
      documentType: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'documentType',
        FhirStringBuilder.fromJson,
        '$objectPath.documentType',
      ),
      reference: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'reference',
        FhirUriBuilder.fromJson,
        '$objectPath.reference',
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'publicationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.publicationDate',
      ),
      presentationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'presentationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.presentationDate',
      ),
    );
  }

  /// Deserialize [ImmunizationEducationBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationEducationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationEducationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationEducationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationEducationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationEducationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEducationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationEducationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEducation';

  /// [documentType]
  /// Identifier of the material presented to the patient.
  FhirStringBuilder? documentType;

  /// [reference]
  /// Reference pointer to the educational material given to the patient if
  /// the information was on line.
  FhirUriBuilder? reference;

  /// [publicationDate]
  /// Date the educational material was published.
  FhirDateTimeBuilder? publicationDate;

  /// [presentationDate]
  /// Date the educational material was given to the patient.
  FhirDateTimeBuilder? presentationDate;

  /// Converts a ImmunizationEducationBuilder to [ImmunizationEducation]
  ImmunizationEducation build() => ImmunizationEducation.fromJson(toJson());

  /// Converts a [ImmunizationEducationBuilder] to a [Map<String, dynamic>]
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
      case 'documentType':
        {
          if (child is FhirStringBuilder) {
            documentType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is FhirUriBuilder) {
            reference = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publicationDate':
        {
          if (child is FhirDateTimeBuilder) {
            publicationDate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'presentationDate':
        {
          if (child is FhirDateTimeBuilder) {
            presentationDate = child;
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
      case 'documentType':
        return ['FhirStringBuilder'];
      case 'reference':
        return ['FhirUriBuilder'];
      case 'publicationDate':
        return ['FhirDateTimeBuilder'];
      case 'presentationDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationEducationBuilder]
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
      case 'documentType':
        {
          documentType = FhirStringBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = FhirUriBuilder.empty();
          return;
        }
      case 'publicationDate':
        {
          publicationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'presentationDate':
        {
          presentationDate = FhirDateTimeBuilder.empty();
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
    bool documentType = false,
    bool reference = false,
    bool publicationDate = false,
    bool presentationDate = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (documentType) this.documentType = null;
    if (reference) this.reference = null;
    if (publicationDate) this.publicationDate = null;
    if (presentationDate) this.presentationDate = null;
  }

  @override
  ImmunizationEducationBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationEducationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? documentType,
    FhirUriBuilder? reference,
    FhirDateTimeBuilder? publicationDate,
    FhirDateTimeBuilder? presentationDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationEducationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      documentType: documentType ?? this.documentType,
      reference: reference ?? this.reference,
      publicationDate: publicationDate ?? this.publicationDate,
      presentationDate: presentationDate ?? this.presentationDate,
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
    if (o is! ImmunizationEducationBuilder) {
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
      documentType,
      o.documentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationDate,
      o.publicationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      presentationDate,
      o.presentationDate,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationReactionBuilder]
/// Categorical data indicating that an adverse event is associated in time
/// to an immunization.
class ImmunizationReactionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationReactionBuilder]

  ImmunizationReactionBuilder({
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
  /// For Builder classes, no fields are required
  factory ImmunizationReactionBuilder.empty() => ImmunizationReactionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReactionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.reaction';
    return ImmunizationReactionBuilder(
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
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      detail: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'detail',
        ReferenceBuilder.fromJson,
        '$objectPath.detail',
      ),
      reported: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'reported',
        FhirBooleanBuilder.fromJson,
        '$objectPath.reported',
      ),
    );
  }

  /// Deserialize [ImmunizationReactionBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationReactionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationReactionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationReactionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationReactionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationReactionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationReactionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationReactionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationReaction';

  /// [date]
  /// Date of reaction to the immunization.
  FhirDateTimeBuilder? date;

  /// [detail]
  /// Details of the reaction.
  ReferenceBuilder? detail;

  /// [reported]
  /// Self-reported indicator.
  FhirBooleanBuilder? reported;

  /// Converts a ImmunizationReactionBuilder to [ImmunizationReaction]
  ImmunizationReaction build() => ImmunizationReaction.fromJson(toJson());

  /// Converts a [ImmunizationReactionBuilder] to a [Map<String, dynamic>]
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
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is ReferenceBuilder) {
            detail = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reported':
        {
          if (child is FhirBooleanBuilder) {
            reported = child;
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
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'detail':
        return ['ReferenceBuilder'];
      case 'reported':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationReactionBuilder]
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
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'detail':
        {
          detail = ReferenceBuilder.empty();
          return;
        }
      case 'reported':
        {
          reported = FhirBooleanBuilder.empty();
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
    bool date = false,
    bool detail = false,
    bool reported = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (date) this.date = null;
    if (detail) this.detail = null;
    if (reported) this.reported = null;
  }

  @override
  ImmunizationReactionBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationReactionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDateTimeBuilder? date,
    ReferenceBuilder? detail,
    FhirBooleanBuilder? reported,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationReactionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      detail: detail ?? this.detail,
      reported: reported ?? this.reported,
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
    if (o is! ImmunizationReactionBuilder) {
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
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detail,
      o.detail,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reported,
      o.reported,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationProtocolAppliedBuilder]
/// The protocol (set of recommendations) being followed by the provider
/// who administered the dose.
class ImmunizationProtocolAppliedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationProtocolAppliedBuilder]

  ImmunizationProtocolAppliedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
    this.authority,
    this.targetDisease,
    this.doseNumberX,
    this.seriesDosesX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Immunization.protocolApplied',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationProtocolAppliedBuilder.empty() =>
      ImmunizationProtocolAppliedBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolAppliedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.protocolApplied';
    return ImmunizationProtocolAppliedBuilder(
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
      series: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'series',
        FhirStringBuilder.fromJson,
        '$objectPath.series',
      ),
      authority: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'authority',
        ReferenceBuilder.fromJson,
        '$objectPath.authority',
      ),
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetDisease',
              },
            ),
          )
          .toList(),
      doseNumberX: JsonParser.parsePolymorphic<
          DoseNumberXImmunizationProtocolAppliedBuilder>(
        json,
        {
          'doseNumberPositiveInt': FhirPositiveIntBuilder.fromJson,
          'doseNumberString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      seriesDosesX: JsonParser.parsePolymorphic<
          SeriesDosesXImmunizationProtocolAppliedBuilder>(
        json,
        {
          'seriesDosesPositiveInt': FhirPositiveIntBuilder.fromJson,
          'seriesDosesString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ImmunizationProtocolAppliedBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationProtocolAppliedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationProtocolAppliedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationProtocolAppliedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationProtocolAppliedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationProtocolAppliedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProtocolAppliedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationProtocolAppliedBuilder.fromJson(json);
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
  FhirStringBuilder? series;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  ReferenceBuilder? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being administered against.
  List<CodeableConceptBuilder>? targetDisease;

  /// [doseNumberX]
  /// Nominal position in a series.
  DoseNumberXImmunizationProtocolAppliedBuilder? doseNumberX;

  /// Getter for [doseNumberPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get doseNumberPositiveInt =>
      doseNumberX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [doseNumberString] as a FhirStringBuilder
  FhirStringBuilder? get doseNumberString =>
      doseNumberX?.isAs<FhirStringBuilder>();

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  SeriesDosesXImmunizationProtocolAppliedBuilder? seriesDosesX;

  /// Getter for [seriesDosesPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get seriesDosesPositiveInt =>
      seriesDosesX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [seriesDosesString] as a FhirStringBuilder
  FhirStringBuilder? get seriesDosesString =>
      seriesDosesX?.isAs<FhirStringBuilder>();

  /// Converts a ImmunizationProtocolAppliedBuilder to [ImmunizationProtocolApplied]
  ImmunizationProtocolApplied build() =>
      ImmunizationProtocolApplied.fromJson(toJson());

  /// Converts a [ImmunizationProtocolAppliedBuilder] to a [Map<String, dynamic>]
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
    addField('series', series);
    addField('authority', authority);
    addField('targetDisease', targetDisease);
    if (doseNumberX != null) {
      final fhirType = doseNumberX!.fhirType;
      addField('doseNumber${fhirType.capitalize()}', doseNumberX);
    }

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
        if (doseNumberX != null) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberX':
        if (doseNumberX != null) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberPositiveInt':
        if (doseNumberX is FhirPositiveIntBuilder) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberString':
        if (doseNumberX is FhirStringBuilder) {
          fields.add(doseNumberX!);
        }
      case 'seriesDoses':
        if (seriesDosesX != null) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesX':
        if (seriesDosesX != null) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesPositiveInt':
        if (seriesDosesX is FhirPositiveIntBuilder) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesString':
        if (seriesDosesX is FhirStringBuilder) {
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
      case 'series':
        {
          if (child is FhirStringBuilder) {
            series = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authority':
        {
          if (child is ReferenceBuilder) {
            authority = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetDisease':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            targetDisease = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            targetDisease = [...(targetDisease ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumberX':
        {
          if (child is DoseNumberXImmunizationProtocolAppliedBuilder) {
            doseNumberX = child;
            return;
          } else {
            if (child is FhirPositiveIntBuilder) {
              doseNumberX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              doseNumberX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseNumberPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            doseNumberX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumberString':
        {
          if (child is FhirStringBuilder) {
            doseNumberX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDosesX':
        {
          if (child is SeriesDosesXImmunizationProtocolAppliedBuilder) {
            seriesDosesX = child;
            return;
          } else {
            if (child is FhirPositiveIntBuilder) {
              seriesDosesX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              seriesDosesX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesDosesPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            seriesDosesX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDosesString':
        {
          if (child is FhirStringBuilder) {
            seriesDosesX = child;
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
      case 'series':
        return ['FhirStringBuilder'];
      case 'authority':
        return ['ReferenceBuilder'];
      case 'targetDisease':
        return ['CodeableConceptBuilder'];
      case 'doseNumber':
      case 'doseNumberX':
        return ['FhirPositiveIntBuilder', 'FhirStringBuilder'];
      case 'doseNumberPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'doseNumberString':
        return ['FhirStringBuilder'];
      case 'seriesDoses':
      case 'seriesDosesX':
        return ['FhirPositiveIntBuilder', 'FhirStringBuilder'];
      case 'seriesDosesPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'seriesDosesString':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationProtocolAppliedBuilder]
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
      case 'series':
        {
          series = FhirStringBuilder.empty();
          return;
        }
      case 'authority':
        {
          authority = ReferenceBuilder.empty();
          return;
        }
      case 'targetDisease':
        {
          targetDisease = <CodeableConceptBuilder>[];
          return;
        }
      case 'doseNumber':
      case 'doseNumberX':
      case 'doseNumberPositiveInt':
        {
          doseNumberX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'doseNumberString':
        {
          doseNumberX = FhirStringBuilder.empty();
          return;
        }
      case 'seriesDoses':
      case 'seriesDosesX':
      case 'seriesDosesPositiveInt':
        {
          seriesDosesX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'seriesDosesString':
        {
          seriesDosesX = FhirStringBuilder.empty();
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
    bool series = false,
    bool authority = false,
    bool targetDisease = false,
    bool doseNumber = false,
    bool seriesDoses = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (series) this.series = null;
    if (authority) this.authority = null;
    if (targetDisease) this.targetDisease = null;
    if (doseNumber) this.doseNumberX = null;
    if (seriesDoses) this.seriesDosesX = null;
  }

  @override
  ImmunizationProtocolAppliedBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationProtocolAppliedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? series,
    ReferenceBuilder? authority,
    List<CodeableConceptBuilder>? targetDisease,
    DoseNumberXImmunizationProtocolAppliedBuilder? doseNumberX,
    SeriesDosesXImmunizationProtocolAppliedBuilder? seriesDosesX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationProtocolAppliedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      series: series ?? this.series,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      doseNumberX: doseNumberX ?? this.doseNumberX,
      seriesDosesX: seriesDosesX ?? this.seriesDosesX,
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
    if (o is! ImmunizationProtocolAppliedBuilder) {
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
      series,
      o.series,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      targetDisease,
      o.targetDisease,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseNumberX,
      o.doseNumberX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesDosesX,
      o.seriesDosesX,
    )) {
      return false;
    }
    return true;
  }
}
