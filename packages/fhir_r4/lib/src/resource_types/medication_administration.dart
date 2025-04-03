import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationAdministration]
/// Describes the event of a patient consuming or otherwise being
/// administered a medication. This may be as simple as swallowing a tablet
/// or it may be a long running infusion. Related resources tie this event
/// to the authorizing prescription, and the specific encounter between
/// patient and health care practitioner.
class MedicationAdministration extends DomainResource {
  /// Primary constructor for
  /// [MedicationAdministration]

  const MedicationAdministration({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiates,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    required this.medicationX,
    required this.subject,
    this.context,
    this.supportingInformation,
    required this.effectiveX,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
  }) : super(
          objectPath: 'MedicationAdministration',
          resourceType: R4ResourceType.MedicationAdministration,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationAdministration.empty() => MedicationAdministration(
        status: MedicationAdministrationStatusCodes.values.first,
        medicationX: CodeableConcept.empty(),
        subject: Reference.empty(),
        effectiveX: FhirDateTime.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationAdministration';
    return MedicationAdministration(
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
      instantiates: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiates',
        FhirUri.fromJson,
        '$objectPath.instantiates',
      ),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<MedicationAdministrationStatusCodes>(
        json,
        'status',
        MedicationAdministrationStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      medicationX:
          JsonParser.parsePolymorphic<MedicationXMedicationAdministration>(
        json,
        {
          'medicationCodeableConcept': CodeableConcept.fromJson,
          'medicationReference': Reference.fromJson,
        },
        objectPath,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
        '$objectPath.context',
      ),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
      effectiveX:
          JsonParser.parsePolymorphic<EffectiveXMedicationAdministration>(
        json,
        {
          'effectiveDateTime': FhirDateTime.fromJson,
          'effectivePeriod': Period.fromJson,
        },
        objectPath,
      )!,
      performer: (json['performer'] as List<dynamic>?)
          ?.map<MedicationAdministrationPerformer>(
            (v) => MedicationAdministrationPerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
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
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
        '$objectPath.request',
      ),
      device: (json['device'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.device',
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
      dosage: JsonParser.parseObject<MedicationAdministrationDosage>(
        json,
        'dosage',
        MedicationAdministrationDosage.fromJson,
        '$objectPath.dosage',
      ),
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eventHistory',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationAdministration]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministration';

  /// [identifier]
  /// Identifiers associated with this Medication Administration that are
  /// defined by business processes and/or used to refer to it when a direct
  /// URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or
  /// other systems and remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiates]
  /// A protocol, guideline, orderset, or other definition that was adhered
  /// to in whole or in part by this event.
  final List<FhirUri>? instantiates;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// Will generally be set to show that the administration has been
  /// completed. For some long running administrations such as infusions, it
  /// is possible for an administration to be started but not completed or it
  /// may be paused while some other process is under way.
  final MedicationAdministrationStatusCodes status;

  /// [statusReason]
  /// A code indicating why the administration was not performed.
  final List<CodeableConcept>? statusReason;

  /// [category]
  /// Indicates where the medication is expected to be consumed or
  /// administered.
  final CodeableConcept? category;

  /// [medicationX]
  /// Identifies the medication that was administered. This is either a link
  /// to a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final MedicationXMedicationAdministration medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConcept
  CodeableConcept? get medicationCodeableConcept =>
      medicationX.isAs<CodeableConcept>();

  /// Getter for [medicationReference] as a Reference
  Reference? get medicationReference => medicationX.isAs<Reference>();

  /// [subject]
  /// The person or animal or group receiving the medication.
  final Reference subject;

  /// [context]
  /// The visit, admission, or other contact between patient and health care
  /// provider during which the medication administration was performed.
  final Reference? context;

  /// [supportingInformation]
  /// Additional information (for example, patient height and weight) that
  /// supports the administration of the medication.
  final List<Reference>? supportingInformation;

  /// [effectiveX]
  /// A specific date/time or interval of time during which the
  /// administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a
  /// tablet the use of dateTime is more appropriate.
  final EffectiveXMedicationAdministration effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTime
  FhirDateTime? get effectiveDateTime => effectiveX.isAs<FhirDateTime>();

  /// Getter for [effectivePeriod] as a Period
  Period? get effectivePeriod => effectiveX.isAs<Period>();

  /// [performer]
  /// Indicates who or what performed the medication administration and how
  /// they were involved.
  final List<MedicationAdministrationPerformer>? performer;

  /// [reasonCode]
  /// A code indicating why the medication was given.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication was
  /// administered.
  final List<Reference>? reasonReference;

  /// [request]
  /// The original request, instruction or authority to perform the
  /// administration.
  final Reference? request;

  /// [device]
  /// The device used in administering the medication to the patient. For
  /// example, a particular infusion pump.
  final List<Reference>? device;

  /// [note]
  /// Extra information about the medication administration that is not
  /// conveyed by the other attributes.
  final List<Annotation>? note;

  /// [dosage]
  /// Describes the medication dosage information details e.g. dose, rate,
  /// site, route, etc.
  final MedicationAdministrationDosage? dosage;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the administration was verified.
  final List<Reference>? eventHistory;
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
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'instantiates',
      instantiates,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'category',
      category,
    );
    final medicationXFhirType = medicationX.fhirType;
    addField(
      'medication${medicationXFhirType.capitalize()}',
      medicationX,
    );

    addField(
      'subject',
      subject,
    );
    addField(
      'context',
      context,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    final effectiveXFhirType = effectiveX.fhirType;
    addField(
      'effective${effectiveXFhirType.capitalize()}',
      effectiveX,
    );

    addField(
      'performer',
      performer,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'request',
      request,
    );
    addField(
      'device',
      device,
    );
    addField(
      'note',
      note,
    );
    addField(
      'dosage',
      dosage,
    );
    addField(
      'eventHistory',
      eventHistory,
    );
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
      'instantiates',
      'partOf',
      'status',
      'statusReason',
      'category',
      'medicationX',
      'subject',
      'context',
      'supportingInformation',
      'effectiveX',
      'performer',
      'reasonCode',
      'reasonReference',
      'request',
      'device',
      'note',
      'dosage',
      'eventHistory',
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
      case 'instantiates':
        if (instantiates != null) {
          fields.addAll(instantiates!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.addAll(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'medication':
        fields.add(medicationX);
      case 'medicationX':
        fields.add(medicationX);
      case 'medicationCodeableConcept':
        if (medicationX is CodeableConcept) {
          fields.add(medicationX);
        }
      case 'medicationReference':
        if (medicationX is Reference) {
          fields.add(medicationX);
        }
      case 'subject':
        fields.add(subject);
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'effective':
        fields.add(effectiveX);
      case 'effectiveX':
        fields.add(effectiveX);
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTime) {
          fields.add(effectiveX);
        }
      case 'effectivePeriod':
        if (effectiveX is Period) {
          fields.add(effectiveX);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'device':
        if (device != null) {
          fields.addAll(device!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.add(dosage!);
        }
      case 'eventHistory':
        if (eventHistory != null) {
          fields.addAll(eventHistory!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiates':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?instantiates, ...child];
            return copyWith(instantiates: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiates,
              child,
            ];
            return copyWith(instantiates: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?partOf, ...child];
            return copyWith(partOf: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?partOf,
              child,
            ];
            return copyWith(partOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is MedicationAdministrationStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?statusReason, ...child];
            return copyWith(statusReason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?statusReason,
              child,
            ];
            return copyWith(statusReason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medication':
      case 'medicationX':
        {
          if (child is MedicationXMedicationAdministration) {
            return copyWith(medicationX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(medicationX: child);
            }
            if (child is Reference) {
              return copyWith(medicationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medicationCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(medicationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationReference':
        {
          if (child is Reference) {
            return copyWith(medicationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'context':
        {
          if (child is Reference) {
            return copyWith(context: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInformation':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?supportingInformation, ...child];
            return copyWith(supportingInformation: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?supportingInformation,
              child,
            ];
            return copyWith(supportingInformation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effective':
      case 'effectiveX':
        {
          if (child is EffectiveXMedicationAdministration) {
            return copyWith(effectiveX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(effectiveX: child);
            }
            if (child is Period) {
              return copyWith(effectiveX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<MedicationAdministrationPerformer>) {
            // Add all elements from passed list
            final newList = [...?performer, ...child];
            return copyWith(performer: newList);
          } else if (child is MedicationAdministrationPerformer) {
            // Add single element to existing list or create new list
            final newList = [
              ...?performer,
              child,
            ];
            return copyWith(performer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reasonCode, ...child];
            return copyWith(reasonCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonCode,
              child,
            ];
            return copyWith(reasonCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?reasonReference, ...child];
            return copyWith(reasonReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonReference,
              child,
            ];
            return copyWith(reasonReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'request':
        {
          if (child is Reference) {
            return copyWith(request: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'device':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?device, ...child];
            return copyWith(device: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?device,
              child,
            ];
            return copyWith(device: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?note,
              child,
            ];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dosage':
        {
          if (child is MedicationAdministrationDosage) {
            return copyWith(dosage: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventHistory':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?eventHistory, ...child];
            return copyWith(eventHistory: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?eventHistory,
              child,
            ];
            return copyWith(eventHistory: newList);
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
      case 'instantiates':
        return ['FhirUri'];
      case 'partOf':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'medication':
      case 'medicationX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'medicationCodeableConcept':
        return ['CodeableConcept'];
      case 'medicationReference':
        return ['Reference'];
      case 'subject':
        return ['Reference'];
      case 'context':
        return ['Reference'];
      case 'supportingInformation':
        return ['Reference'];
      case 'effective':
      case 'effectiveX':
        return [
          'FhirDateTime',
          'Period',
        ];
      case 'effectiveDateTime':
        return ['FhirDateTime'];
      case 'effectivePeriod':
        return ['Period'];
      case 'performer':
        return ['MedicationAdministrationPerformer'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'request':
        return ['Reference'];
      case 'device':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'dosage':
        return ['MedicationAdministrationDosage'];
      case 'eventHistory':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationAdministration]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationAdministration createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'instantiates':
        {
          return copyWith(
            instantiates: <FhirUri>[],
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: <Reference>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: MedicationAdministrationStatusCodes.empty(),
          );
        }
      case 'statusReason':
        {
          return copyWith(
            statusReason: <CodeableConcept>[],
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'medication':
      case 'medicationX':
      case 'medicationCodeableConcept':
        {
          return copyWith(
            medicationX: CodeableConcept.empty(),
          );
        }
      case 'medicationReference':
        {
          return copyWith(
            medicationX: Reference.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'context':
        {
          return copyWith(
            context: Reference.empty(),
          );
        }
      case 'supportingInformation':
        {
          return copyWith(
            supportingInformation: <Reference>[],
          );
        }
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          return copyWith(
            effectiveX: FhirDateTime.empty(),
          );
        }
      case 'effectivePeriod':
        {
          return copyWith(
            effectiveX: Period.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: <MedicationAdministrationPerformer>[],
          );
        }
      case 'reasonCode':
        {
          return copyWith(
            reasonCode: <CodeableConcept>[],
          );
        }
      case 'reasonReference':
        {
          return copyWith(
            reasonReference: <Reference>[],
          );
        }
      case 'request':
        {
          return copyWith(
            request: Reference.empty(),
          );
        }
      case 'device':
        {
          return copyWith(
            device: <Reference>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'dosage':
        {
          return copyWith(
            dosage: MedicationAdministrationDosage.empty(),
          );
        }
      case 'eventHistory':
        {
          return copyWith(
            eventHistory: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationAdministration clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool instantiates = false,
    bool partOf = false,
    bool statusReason = false,
    bool category = false,
    bool context = false,
    bool supportingInformation = false,
    bool performer = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool request = false,
    bool device = false,
    bool note = false,
    bool dosage = false,
    bool eventHistory = false,
  }) {
    return MedicationAdministration(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      instantiates: instantiates ? null : this.instantiates,
      partOf: partOf ? null : this.partOf,
      status: status,
      statusReason: statusReason ? null : this.statusReason,
      category: category ? null : this.category,
      medicationX: medicationX,
      subject: subject,
      context: context ? null : this.context,
      supportingInformation:
          supportingInformation ? null : this.supportingInformation,
      effectiveX: effectiveX,
      performer: performer ? null : this.performer,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      request: request ? null : this.request,
      device: device ? null : this.device,
      note: note ? null : this.note,
      dosage: dosage ? null : this.dosage,
      eventHistory: eventHistory ? null : this.eventHistory,
    );
  }

  @override
  MedicationAdministration clone() => throw UnimplementedError();
  @override
  MedicationAdministration copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirUri>? instantiates,
    List<Reference>? partOf,
    MedicationAdministrationStatusCodes? status,
    List<CodeableConcept>? statusReason,
    CodeableConcept? category,
    MedicationXMedicationAdministration? medicationX,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    EffectiveXMedicationAdministration? effectiveX,
    List<MedicationAdministrationPerformer>? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? request,
    List<Reference>? device,
    List<Annotation>? note,
    MedicationAdministrationDosage? dosage,
    List<Reference>? eventHistory,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MedicationAdministration(
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
      instantiates: instantiates
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiates',
                ),
              )
              .toList() ??
          this.instantiates,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statusReason',
                ),
              )
              .toList() ??
          this.statusReason,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      medicationX: medicationX?.copyWith(
            objectPath: '$newObjectPath.medicationX',
          ) as MedicationXMedicationAdministration? ??
          this.medicationX,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      supportingInformation: supportingInformation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInformation',
                ),
              )
              .toList() ??
          this.supportingInformation,
      effectiveX: effectiveX?.copyWith(
            objectPath: '$newObjectPath.effectiveX',
          ) as EffectiveXMedicationAdministration? ??
          this.effectiveX,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
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
      request: request?.copyWith(
            objectPath: '$newObjectPath.request',
          ) ??
          this.request,
      device: device
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.device',
                ),
              )
              .toList() ??
          this.device,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      dosage: dosage?.copyWith(
            objectPath: '$newObjectPath.dosage',
          ) ??
          this.dosage,
      eventHistory: eventHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.eventHistory',
                ),
              )
              .toList() ??
          this.eventHistory,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationAdministration) {
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
    if (!listEquals<FhirUri>(
      instantiates,
      o.instantiates,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      medicationX,
      o.medicationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveX,
      o.effectiveX,
    )) {
      return false;
    }
    if (!listEquals<MedicationAdministrationPerformer>(
      performer,
      o.performer,
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
    if (!equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      eventHistory,
      o.eventHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationAdministrationPerformer]
/// Indicates who or what performed the medication administration and how
/// they were involved.
class MedicationAdministrationPerformer extends BackboneElement {
  /// Primary constructor for
  /// [MedicationAdministrationPerformer]

  const MedicationAdministrationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationAdministration.performer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationAdministrationPerformer.empty() =>
      MedicationAdministrationPerformer(
        actor: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationAdministration.performer';
    return MedicationAdministrationPerformer(
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

  /// Deserialize [MedicationAdministrationPerformer]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationAdministrationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministrationPerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the
  /// medication administration.
  final CodeableConcept? function_;

  /// [actor]
  /// Indicates who or what performed the medication administration.
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
    );
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'function':
        {
          if (child is CodeableConcept) {
            return copyWith(function_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actor':
        {
          if (child is Reference) {
            return copyWith(actor: child);
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

  /// Creates a new [MedicationAdministrationPerformer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationAdministrationPerformer createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'function':
        {
          return copyWith(
            function_: CodeableConcept.empty(),
          );
        }
      case 'actor':
        {
          return copyWith(
            actor: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationAdministrationPerformer clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool function_ = false,
  }) {
    return MedicationAdministrationPerformer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      function_: function_ ? null : this.function_,
      actor: actor,
    );
  }

  @override
  MedicationAdministrationPerformer clone() => throw UnimplementedError();
  @override
  MedicationAdministrationPerformer copyWith({
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
    return MedicationAdministrationPerformer(
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
    if (o is! MedicationAdministrationPerformer) {
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

/// [MedicationAdministrationDosage]
/// Describes the medication dosage information details e.g. dose, rate,
/// site, route, etc.
class MedicationAdministrationDosage extends BackboneElement {
  /// Primary constructor for
  /// [MedicationAdministrationDosage]

  const MedicationAdministrationDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.text,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationAdministration.dosage',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationAdministrationDosage.empty() =>
      const MedicationAdministrationDosage();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationDosage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationAdministration.dosage';
    return MedicationAdministrationDosage(
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
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
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
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      dose: JsonParser.parseObject<Quantity>(
        json,
        'dose',
        Quantity.fromJson,
        '$objectPath.dose',
      ),
      rateX: JsonParser.parsePolymorphic<RateXMedicationAdministrationDosage>(
        json,
        {
          'rateRatio': Ratio.fromJson,
          'rateQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationAdministrationDosage]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationDosage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationDosage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationDosage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationDosage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationDosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationDosage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationAdministrationDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministrationDosage';

  /// [text]
  /// Free text dosage can be used for cases where the dosage administered is
  /// too complex to code. When coded dosage is present, the free text dosage
  /// may still be present for display to humans. The dosage instructions
  /// should reflect the dosage of the medication that was administered.
  final FhirString? text;

  /// [site]
  /// A coded specification of the anatomic site where the medication first
  /// entered the body. For example, "left arm".
  final CodeableConcept? site;

  /// [route]
  /// A code specifying the route or physiological path of administration of
  /// a therapeutic agent into or onto the patient. For example, topical,
  /// intravenous, etc.
  final CodeableConcept? route;

  /// [method]
  /// A coded value indicating the method by which the medication is intended
  /// to be or was introduced into or on the body. This attribute will most
  /// often NOT be populated. It is most commonly used for injections. For
  /// example, Slow Push, Deep IV.
  final CodeableConcept? method;

  /// [dose]
  /// The amount of the medication given at one administration event. Use
  /// this value when the administration is essentially an instantaneous
  /// event such as a swallowing a tablet or giving an injection.
  final Quantity? dose;

  /// [rateX]
  /// Identifies the speed with which the medication was or will be
  /// introduced into the patient. Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
  /// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
  /// 200 mcg/1 minute; 1 liter/8 hours.
  final RateXMedicationAdministrationDosage? rateX;

  /// Getter for [rateRatio] as a Ratio
  Ratio? get rateRatio => rateX?.isAs<Ratio>();

  /// Getter for [rateQuantity] as a Quantity
  Quantity? get rateQuantity => rateX?.isAs<Quantity>();
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'text',
      text,
    );
    addField(
      'site',
      site,
    );
    addField(
      'route',
      route,
    );
    addField(
      'method',
      method,
    );
    addField(
      'dose',
      dose,
    );
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField(
        'rate${fhirType.capitalize()}',
        rateX,
      );
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
      'text',
      'site',
      'route',
      'method',
      'dose',
      'rateX',
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
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'route':
        if (route != null) {
          fields.add(route!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'dose':
        if (dose != null) {
          fields.add(dose!);
        }
      case 'rate':
        fields.add(rateX!);
      case 'rateX':
        fields.add(rateX!);
      case 'rateRatio':
        if (rateX is Ratio) {
          fields.add(rateX!);
        }
      case 'rateQuantity':
        if (rateX is Quantity) {
          fields.add(rateX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'site':
        {
          if (child is CodeableConcept) {
            return copyWith(site: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'route':
        {
          if (child is CodeableConcept) {
            return copyWith(route: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dose':
        {
          if (child is Quantity) {
            return copyWith(dose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rate':
      case 'rateX':
        {
          if (child is RateXMedicationAdministrationDosage) {
            return copyWith(rateX: child);
          } else {
            if (child is Ratio) {
              return copyWith(rateX: child);
            }
            if (child is Quantity) {
              return copyWith(rateX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rateRatio':
        {
          if (child is Ratio) {
            return copyWith(rateX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateQuantity':
        {
          if (child is Quantity) {
            return copyWith(rateX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'text':
        return ['FhirString'];
      case 'site':
        return ['CodeableConcept'];
      case 'route':
        return ['CodeableConcept'];
      case 'method':
        return ['CodeableConcept'];
      case 'dose':
        return ['Quantity'];
      case 'rate':
      case 'rateX':
        return [
          'Ratio',
          'Quantity',
        ];
      case 'rateRatio':
        return ['Ratio'];
      case 'rateQuantity':
        return ['Quantity'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationAdministrationDosage]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationAdministrationDosage createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'site':
        {
          return copyWith(
            site: CodeableConcept.empty(),
          );
        }
      case 'route':
        {
          return copyWith(
            route: CodeableConcept.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: CodeableConcept.empty(),
          );
        }
      case 'dose':
        {
          return copyWith(
            dose: Quantity.empty(),
          );
        }
      case 'rate':
      case 'rateX':
      case 'rateRatio':
        {
          return copyWith(
            rateX: Ratio.empty(),
          );
        }
      case 'rateQuantity':
        {
          return copyWith(
            rateX: Quantity.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationAdministrationDosage clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool text = false,
    bool site = false,
    bool route = false,
    bool method = false,
    bool dose = false,
    bool rate = false,
  }) {
    return MedicationAdministrationDosage(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      text: text ? null : this.text,
      site: site ? null : this.site,
      route: route ? null : this.route,
      method: method ? null : this.method,
      dose: dose ? null : this.dose,
      rateX: rate ? null : rateX,
    );
  }

  @override
  MedicationAdministrationDosage clone() => throw UnimplementedError();
  @override
  MedicationAdministrationDosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? text,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    Quantity? dose,
    RateXMedicationAdministrationDosage? rateX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationAdministrationDosage(
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
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      site: site?.copyWith(
            objectPath: '$newObjectPath.site',
          ) ??
          this.site,
      route: route?.copyWith(
            objectPath: '$newObjectPath.route',
          ) ??
          this.route,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      dose: dose?.copyWith(
            objectPath: '$newObjectPath.dose',
          ) ??
          this.dose,
      rateX: rateX?.copyWith(
            objectPath: '$newObjectPath.rateX',
          ) as RateXMedicationAdministrationDosage? ??
          this.rateX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationAdministrationDosage) {
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
    if (!equalsDeepWithNull(
      text,
      o.text,
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
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dose,
      o.dose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    return true;
  }
}
