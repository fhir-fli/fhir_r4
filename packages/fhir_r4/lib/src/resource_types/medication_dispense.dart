import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationDispense]
/// Indicates that a medication product is to be or has been dispensed for
/// a named person/patient. This includes a description of the medication
/// product (supply) provided and the instructions for administering the
/// medication. The medication dispense is the result of a pharmacy system
/// responding to a medication order.
class MedicationDispense extends DomainResource {
  /// Primary constructor for
  /// [MedicationDispense]

  const MedicationDispense({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.partOf,
    required this.status,
    this.statusReasonX,
    this.category,
    required this.medicationX,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.whenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory,
  }) : super(
          objectPath: 'MedicationDispense',
          resourceType: R4ResourceType.MedicationDispense,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationDispense.empty() => MedicationDispense(
        status: MedicationDispenseStatusCodes.values.first,
        medicationX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationDispense';
    return MedicationDispense(
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
      status: JsonParser.parsePrimitive<MedicationDispenseStatusCodes>(
        json,
        'status',
        MedicationDispenseStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      statusReasonX:
          JsonParser.parsePolymorphic<StatusReasonXMedicationDispense>(
        json,
        {
          'statusReasonCodeableConcept': CodeableConcept.fromJson,
          'statusReasonReference': Reference.fromJson,
        },
        objectPath,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      medicationX: JsonParser.parsePolymorphic<MedicationXMedicationDispense>(
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
      ),
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
      performer: (json['performer'] as List<dynamic>?)
          ?.map<MedicationDispensePerformer>(
            (v) => MedicationDispensePerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      authorizingPrescription:
          (json['authorizingPrescription'] as List<dynamic>?)
              ?.map<Reference>(
                (v) => Reference.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.authorizingPrescription',
                  },
                ),
              )
              .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      daysSupply: JsonParser.parseObject<Quantity>(
        json,
        'daysSupply',
        Quantity.fromJson,
        '$objectPath.daysSupply',
      ),
      whenPrepared: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'whenPrepared',
        FhirDateTime.fromJson,
        '$objectPath.whenPrepared',
      ),
      whenHandedOver: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'whenHandedOver',
        FhirDateTime.fromJson,
        '$objectPath.whenHandedOver',
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
        '$objectPath.destination',
      ),
      receiver: (json['receiver'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.receiver',
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
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)
          ?.map<Dosage>(
            (v) => Dosage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosageInstruction',
              },
            ),
          )
          .toList(),
      substitution: JsonParser.parseObject<MedicationDispenseSubstitution>(
        json,
        'substitution',
        MedicationDispenseSubstitution.fromJson,
        '$objectPath.substitution',
      ),
      detectedIssue: (json['detectedIssue'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detectedIssue',
              },
            ),
          )
          .toList(),
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

  /// Deserialize [MedicationDispense]
  /// from a [String] or [YamlMap] object
  factory MedicationDispense.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispense.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispense.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispense '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispense.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispense';

  /// [identifier]
  /// Identifiers associated with this Medication Dispense that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [partOf]
  /// The procedure that trigger the dispense.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the set of dispense events.
  final MedicationDispenseStatusCodes status;

  /// [statusReasonX]
  /// Indicates the reason why a dispense was not performed.
  final StatusReasonXMedicationDispense? statusReasonX;

  /// Getter for [statusReasonCodeableConcept] as a CodeableConcept
  CodeableConcept? get statusReasonCodeableConcept =>
      statusReasonX?.isAs<CodeableConcept>();

  /// Getter for [statusReasonReference] as a Reference
  Reference? get statusReasonReference => statusReasonX?.isAs<Reference>();

  /// [category]
  /// Indicates the type of medication dispense (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient
  /// or outpatient)).
  final CodeableConcept? category;

  /// [medicationX]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final MedicationXMedicationDispense medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConcept
  CodeableConcept? get medicationCodeableConcept =>
      medicationX.isAs<CodeableConcept>();

  /// Getter for [medicationReference] as a Reference
  Reference? get medicationReference => medicationX.isAs<Reference>();

  /// [subject]
  /// A link to a resource representing the person or the group to whom the
  /// medication will be given.
  final Reference? subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// event.
  final Reference? context;

  /// [supportingInformation]
  /// Additional information that supports the medication being dispensed.
  final List<Reference>? supportingInformation;

  /// [performer]
  /// Indicates who or what performed the event.
  final List<MedicationDispensePerformer>? performer;

  /// [location]
  /// The principal physical location where the dispense was performed.
  final Reference? location;

  /// [authorizingPrescription]
  /// Indicates the medication order that is being dispensed against.
  final List<Reference>? authorizingPrescription;

  /// [type]
  /// Indicates the type of dispensing event that is performed. For example,
  /// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  /// etc.
  final CodeableConcept? type;

  /// [quantity]
  /// The amount of medication that has been dispensed. Includes unit of
  /// measure.
  final Quantity? quantity;

  /// [daysSupply]
  /// The amount of medication expressed as a timing amount.
  final Quantity? daysSupply;

  /// [whenPrepared]
  /// The time when the dispensed product was packaged and reviewed.
  final FhirDateTime? whenPrepared;

  /// [whenHandedOver]
  /// The time the dispensed product was provided to the patient or their
  /// representative.
  final FhirDateTime? whenHandedOver;

  /// [destination]
  /// Identification of the facility/location where the medication was
  /// shipped to, as part of the dispense event.
  final Reference? destination;

  /// [receiver]
  /// Identifies the person who picked up the medication. This will usually
  /// be a patient or their caregiver, but some cases exist where it can be a
  /// healthcare professional.
  final List<Reference>? receiver;

  /// [note]
  /// Extra information about the dispense that could not be conveyed in the
  /// other attributes.
  final List<Annotation>? note;

  /// [dosageInstruction]
  /// Indicates how the medication is to be used by the patient.
  final List<Dosage>? dosageInstruction;

  /// [substitution]
  /// Indicates whether or not substitution was made as part of the dispense.
  /// In some cases, substitution will be expected but does not happen, in
  /// other cases substitution is not expected but does happen. This block
  /// explains what substitution did or did not happen and why. If nothing is
  /// specified, substitution was not done.
  final MedicationDispenseSubstitution? substitution;

  /// [detectedIssue]
  /// Indicates an actual or potential clinical issue with or between one or
  /// more active or proposed clinical actions for a patient; e.g. drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  final List<Reference>? detectedIssue;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the dispense was verified.
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
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    if (statusReasonX != null) {
      final fhirType = statusReasonX!.fhirType;
      addField(
        'statusReason${fhirType.capitalize()}',
        statusReasonX,
      );
    }

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
    addField(
      'performer',
      performer,
    );
    addField(
      'location',
      location,
    );
    addField(
      'authorizingPrescription',
      authorizingPrescription,
    );
    addField(
      'type',
      type,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'daysSupply',
      daysSupply,
    );
    addField(
      'whenPrepared',
      whenPrepared,
    );
    addField(
      'whenHandedOver',
      whenHandedOver,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'receiver',
      receiver,
    );
    addField(
      'note',
      note,
    );
    addField(
      'dosageInstruction',
      dosageInstruction,
    );
    addField(
      'substitution',
      substitution,
    );
    addField(
      'detectedIssue',
      detectedIssue,
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
      'partOf',
      'status',
      'statusReasonX',
      'category',
      'medicationX',
      'subject',
      'context',
      'supportingInformation',
      'performer',
      'location',
      'authorizingPrescription',
      'type',
      'quantity',
      'daysSupply',
      'whenPrepared',
      'whenHandedOver',
      'destination',
      'receiver',
      'note',
      'dosageInstruction',
      'substitution',
      'detectedIssue',
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
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        fields.add(statusReasonX!);
      case 'statusReasonX':
        fields.add(statusReasonX!);
      case 'statusReasonCodeableConcept':
        if (statusReasonX is CodeableConcept) {
          fields.add(statusReasonX!);
        }
      case 'statusReasonReference':
        if (statusReasonX is Reference) {
          fields.add(statusReasonX!);
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
        if (subject != null) {
          fields.add(subject!);
        }
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'authorizingPrescription':
        if (authorizingPrescription != null) {
          fields.addAll(authorizingPrescription!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'daysSupply':
        if (daysSupply != null) {
          fields.add(daysSupply!);
        }
      case 'whenPrepared':
        if (whenPrepared != null) {
          fields.add(whenPrepared!);
        }
      case 'whenHandedOver':
        if (whenHandedOver != null) {
          fields.add(whenHandedOver!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'receiver':
        if (receiver != null) {
          fields.addAll(receiver!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'dosageInstruction':
        if (dosageInstruction != null) {
          fields.addAll(dosageInstruction!);
        }
      case 'substitution':
        if (substitution != null) {
          fields.add(substitution!);
        }
      case 'detectedIssue':
        if (detectedIssue != null) {
          fields.addAll(detectedIssue!);
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
            final newList = [...?contained, child];
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
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
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
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
            final newList = [...?partOf, child];
            return copyWith(partOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is MedicationDispenseStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReasonX':
        {
          if (child is StatusReasonXMedicationDispense) {
            return copyWith(statusReasonX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(statusReasonX: child);
            }
            if (child is Reference) {
              return copyWith(statusReasonX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusReasonCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(statusReasonX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReasonReference':
        {
          if (child is Reference) {
            return copyWith(statusReasonX: child);
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
      case 'medicationX':
        {
          if (child is MedicationXMedicationDispense) {
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
            final newList = [...?supportingInformation, child];
            return copyWith(supportingInformation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<MedicationDispensePerformer>) {
            // Add all elements from passed list
            final newList = [...?performer, ...child];
            return copyWith(performer: newList);
          } else if (child is MedicationDispensePerformer) {
            // Add single element to existing list or create new list
            final newList = [...?performer, child];
            return copyWith(performer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authorizingPrescription':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?authorizingPrescription, ...child];
            return copyWith(authorizingPrescription: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?authorizingPrescription, child];
            return copyWith(authorizingPrescription: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'daysSupply':
        {
          if (child is Quantity) {
            return copyWith(daysSupply: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenPrepared':
        {
          if (child is FhirDateTime) {
            return copyWith(whenPrepared: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenHandedOver':
        {
          if (child is FhirDateTime) {
            return copyWith(whenHandedOver: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is Reference) {
            return copyWith(destination: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'receiver':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?receiver, ...child];
            return copyWith(receiver: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?receiver, child];
            return copyWith(receiver: newList);
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
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dosageInstruction':
        {
          if (child is List<Dosage>) {
            // Add all elements from passed list
            final newList = [...?dosageInstruction, ...child];
            return copyWith(dosageInstruction: newList);
          } else if (child is Dosage) {
            // Add single element to existing list or create new list
            final newList = [...?dosageInstruction, child];
            return copyWith(dosageInstruction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'substitution':
        {
          if (child is MedicationDispenseSubstitution) {
            return copyWith(substitution: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detectedIssue':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?detectedIssue, ...child];
            return copyWith(detectedIssue: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?detectedIssue, child];
            return copyWith(detectedIssue: newList);
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
            final newList = [...?eventHistory, child];
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
      case 'partOf':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
      case 'statusReasonX':
        return ['CodeableConcept', 'Reference'];
      case 'statusReasonCodeableConcept':
        return ['CodeableConcept'];
      case 'statusReasonReference':
        return ['Reference'];
      case 'category':
        return ['CodeableConcept'];
      case 'medication':
      case 'medicationX':
        return ['CodeableConcept', 'Reference'];
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
      case 'performer':
        return ['MedicationDispensePerformer'];
      case 'location':
        return ['Reference'];
      case 'authorizingPrescription':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'daysSupply':
        return ['Quantity'];
      case 'whenPrepared':
        return ['FhirDateTime'];
      case 'whenHandedOver':
        return ['FhirDateTime'];
      case 'destination':
        return ['Reference'];
      case 'receiver':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'dosageInstruction':
        return ['Dosage'];
      case 'substitution':
        return ['MedicationDispenseSubstitution'];
      case 'detectedIssue':
        return ['Reference'];
      case 'eventHistory':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationDispense]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationDispense createProperty(
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
      case 'partOf':
        {
          return copyWith(
            partOf: <Reference>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: MedicationDispenseStatusCodes.empty(),
          );
        }
      case 'statusReason':
      case 'statusReasonX':
      case 'statusReasonCodeableConcept':
        {
          return copyWith(
            statusReasonX: CodeableConcept.empty(),
          );
        }
      case 'statusReasonReference':
        {
          return copyWith(
            statusReasonX: Reference.empty(),
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
      case 'performer':
        {
          return copyWith(
            performer: <MedicationDispensePerformer>[],
          );
        }
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'authorizingPrescription':
        {
          return copyWith(
            authorizingPrescription: <Reference>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'daysSupply':
        {
          return copyWith(
            daysSupply: Quantity.empty(),
          );
        }
      case 'whenPrepared':
        {
          return copyWith(
            whenPrepared: FhirDateTime.empty(),
          );
        }
      case 'whenHandedOver':
        {
          return copyWith(
            whenHandedOver: FhirDateTime.empty(),
          );
        }
      case 'destination':
        {
          return copyWith(
            destination: Reference.empty(),
          );
        }
      case 'receiver':
        {
          return copyWith(
            receiver: <Reference>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'dosageInstruction':
        {
          return copyWith(
            dosageInstruction: <Dosage>[],
          );
        }
      case 'substitution':
        {
          return copyWith(
            substitution: MedicationDispenseSubstitution.empty(),
          );
        }
      case 'detectedIssue':
        {
          return copyWith(
            detectedIssue: <Reference>[],
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
  MedicationDispense clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool partOf = false,
    bool statusReason = false,
    bool category = false,
    bool subject = false,
    bool context = false,
    bool supportingInformation = false,
    bool performer = false,
    bool location = false,
    bool authorizingPrescription = false,
    bool type = false,
    bool quantity = false,
    bool daysSupply = false,
    bool whenPrepared = false,
    bool whenHandedOver = false,
    bool destination = false,
    bool receiver = false,
    bool note = false,
    bool dosageInstruction = false,
    bool substitution = false,
    bool detectedIssue = false,
    bool eventHistory = false,
  }) {
    return MedicationDispense(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      partOf: partOf ? null : this.partOf,
      status: status,
      statusReasonX: statusReason ? null : statusReasonX,
      category: category ? null : this.category,
      medicationX: medicationX,
      subject: subject ? null : this.subject,
      context: context ? null : this.context,
      supportingInformation:
          supportingInformation ? null : this.supportingInformation,
      performer: performer ? null : this.performer,
      location: location ? null : this.location,
      authorizingPrescription:
          authorizingPrescription ? null : this.authorizingPrescription,
      type: type ? null : this.type,
      quantity: quantity ? null : this.quantity,
      daysSupply: daysSupply ? null : this.daysSupply,
      whenPrepared: whenPrepared ? null : this.whenPrepared,
      whenHandedOver: whenHandedOver ? null : this.whenHandedOver,
      destination: destination ? null : this.destination,
      receiver: receiver ? null : this.receiver,
      note: note ? null : this.note,
      dosageInstruction: dosageInstruction ? null : this.dosageInstruction,
      substitution: substitution ? null : this.substitution,
      detectedIssue: detectedIssue ? null : this.detectedIssue,
      eventHistory: eventHistory ? null : this.eventHistory,
    );
  }

  @override
  MedicationDispense clone() => throw UnimplementedError();
  @override
  MedicationDispense copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? partOf,
    MedicationDispenseStatusCodes? status,
    StatusReasonXMedicationDispense? statusReasonX,
    CodeableConcept? category,
    MedicationXMedicationDispense? medicationX,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    List<MedicationDispensePerformer>? performer,
    Reference? location,
    List<Reference>? authorizingPrescription,
    CodeableConcept? type,
    Quantity? quantity,
    Quantity? daysSupply,
    FhirDateTime? whenPrepared,
    FhirDateTime? whenHandedOver,
    Reference? destination,
    List<Reference>? receiver,
    List<Annotation>? note,
    List<Dosage>? dosageInstruction,
    MedicationDispenseSubstitution? substitution,
    List<Reference>? detectedIssue,
    List<Reference>? eventHistory,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MedicationDispense(
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
      statusReasonX: statusReasonX?.copyWith(
            objectPath: '$newObjectPath.statusReasonX',
          ) as StatusReasonXMedicationDispense? ??
          this.statusReasonX,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      medicationX: medicationX?.copyWith(
            objectPath: '$newObjectPath.medicationX',
          ) as MedicationXMedicationDispense? ??
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
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      authorizingPrescription: authorizingPrescription
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.authorizingPrescription',
                ),
              )
              .toList() ??
          this.authorizingPrescription,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      daysSupply: daysSupply?.copyWith(
            objectPath: '$newObjectPath.daysSupply',
          ) ??
          this.daysSupply,
      whenPrepared: whenPrepared?.copyWith(
            objectPath: '$newObjectPath.whenPrepared',
          ) ??
          this.whenPrepared,
      whenHandedOver: whenHandedOver?.copyWith(
            objectPath: '$newObjectPath.whenHandedOver',
          ) ??
          this.whenHandedOver,
      destination: destination?.copyWith(
            objectPath: '$newObjectPath.destination',
          ) ??
          this.destination,
      receiver: receiver
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.receiver',
                ),
              )
              .toList() ??
          this.receiver,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      dosageInstruction: dosageInstruction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dosageInstruction',
                ),
              )
              .toList() ??
          this.dosageInstruction,
      substitution: substitution?.copyWith(
            objectPath: '$newObjectPath.substitution',
          ) ??
          this.substitution,
      detectedIssue: detectedIssue
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detectedIssue',
                ),
              )
              .toList() ??
          this.detectedIssue,
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
    if (o is! MedicationDispense) {
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
    if (!equalsDeepWithNull(
      statusReasonX,
      o.statusReasonX,
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
    if (!listEquals<MedicationDispensePerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      authorizingPrescription,
      o.authorizingPrescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      daysSupply,
      o.daysSupply,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whenPrepared,
      o.whenPrepared,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whenHandedOver,
      o.whenHandedOver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      receiver,
      o.receiver,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Dosage>(
      dosageInstruction,
      o.dosageInstruction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      substitution,
      o.substitution,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      detectedIssue,
      o.detectedIssue,
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

/// [MedicationDispensePerformer]
/// Indicates who or what performed the event.
class MedicationDispensePerformer extends BackboneElement {
  /// Primary constructor for
  /// [MedicationDispensePerformer]

  const MedicationDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationDispense.performer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationDispensePerformer.empty() => MedicationDispensePerformer(
        actor: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispensePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationDispense.performer';
    return MedicationDispensePerformer(
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

  /// Deserialize [MedicationDispensePerformer]
  /// from a [String] or [YamlMap] object
  factory MedicationDispensePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispensePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispensePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispensePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispensePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispensePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispensePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispensePerformer';

  /// [function_]
  /// Distinguishes the type of performer in the dispense. For example, date
  /// enterer, packager, final checker.
  final CodeableConcept? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed the action. It should be
  /// assumed that the actor is the dispenser of the medication.
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
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

  /// Creates a new [MedicationDispensePerformer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationDispensePerformer createProperty(
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
  MedicationDispensePerformer clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool function_ = false,
  }) {
    return MedicationDispensePerformer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      function_: function_ ? null : this.function_,
      actor: actor,
    );
  }

  @override
  MedicationDispensePerformer clone() => throw UnimplementedError();
  @override
  MedicationDispensePerformer copyWith({
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
    return MedicationDispensePerformer(
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
    if (o is! MedicationDispensePerformer) {
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

/// [MedicationDispenseSubstitution]
/// Indicates whether or not substitution was made as part of the dispense.
/// In some cases, substitution will be expected but does not happen, in
/// other cases substitution is not expected but does happen. This block
/// explains what substitution did or did not happen and why. If nothing is
/// specified, substitution was not done.
class MedicationDispenseSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationDispenseSubstitution]

  const MedicationDispenseSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.wasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationDispense.substitution',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationDispenseSubstitution.empty() =>
      MedicationDispenseSubstitution(
        wasSubstituted: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispenseSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationDispense.substitution';
    return MedicationDispenseSubstitution(
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
      wasSubstituted: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'wasSubstituted',
        FhirBoolean.fromJson,
        '$objectPath.wasSubstituted',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      responsibleParty: (json['responsibleParty'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.responsibleParty',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationDispenseSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationDispenseSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispenseSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispenseSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispenseSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispenseSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispenseSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispenseSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispenseSubstitution';

  /// [wasSubstituted]
  /// True if the dispenser dispensed a different drug or product from what
  /// was prescribed.
  final FhirBoolean wasSubstituted;

  /// [type]
  /// A code signifying whether a different drug was dispensed from what was
  /// prescribed.
  final CodeableConcept? type;

  /// [reason]
  /// Indicates the reason for the substitution (or lack of substitution)
  /// from what was prescribed.
  final List<CodeableConcept>? reason;

  /// [responsibleParty]
  /// The person or organization that has primary responsibility for the
  /// substitution.
  final List<Reference>? responsibleParty;
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
      'wasSubstituted',
      wasSubstituted,
    );
    addField(
      'type',
      type,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'responsibleParty',
      responsibleParty,
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
      'wasSubstituted',
      'type',
      'reason',
      'responsibleParty',
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
      case 'wasSubstituted':
        fields.add(wasSubstituted);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'responsibleParty':
        if (responsibleParty != null) {
          fields.addAll(responsibleParty!);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'wasSubstituted':
        {
          if (child is FhirBoolean) {
            return copyWith(wasSubstituted: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reason, ...child];
            return copyWith(reason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?reason, child];
            return copyWith(reason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responsibleParty':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?responsibleParty, ...child];
            return copyWith(responsibleParty: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?responsibleParty, child];
            return copyWith(responsibleParty: newList);
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
      case 'wasSubstituted':
        return ['FhirBoolean'];
      case 'type':
        return ['CodeableConcept'];
      case 'reason':
        return ['CodeableConcept'];
      case 'responsibleParty':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationDispenseSubstitution]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationDispenseSubstitution createProperty(
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
      case 'wasSubstituted':
        {
          return copyWith(
            wasSubstituted: FhirBoolean.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: <CodeableConcept>[],
          );
        }
      case 'responsibleParty':
        {
          return copyWith(
            responsibleParty: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationDispenseSubstitution clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool reason = false,
    bool responsibleParty = false,
  }) {
    return MedicationDispenseSubstitution(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      wasSubstituted: wasSubstituted,
      type: type ? null : this.type,
      reason: reason ? null : this.reason,
      responsibleParty: responsibleParty ? null : this.responsibleParty,
    );
  }

  @override
  MedicationDispenseSubstitution clone() => throw UnimplementedError();
  @override
  MedicationDispenseSubstitution copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? wasSubstituted,
    CodeableConcept? type,
    List<CodeableConcept>? reason,
    List<Reference>? responsibleParty,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationDispenseSubstitution(
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
      wasSubstituted: wasSubstituted?.copyWith(
            objectPath: '$newObjectPath.wasSubstituted',
          ) ??
          this.wasSubstituted,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      reason: reason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reason',
                ),
              )
              .toList() ??
          this.reason,
      responsibleParty: responsibleParty
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.responsibleParty',
                ),
              )
              .toList() ??
          this.responsibleParty,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationDispenseSubstitution) {
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
      wasSubstituted,
      o.wasSubstituted,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      responsibleParty,
      o.responsibleParty,
    )) {
      return false;
    }
    return true;
  }
}
