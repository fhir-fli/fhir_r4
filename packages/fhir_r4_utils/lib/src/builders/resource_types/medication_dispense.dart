import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        MedicationDispense,
        MedicationDispensePerformer,
        MedicationDispenseSubstitution;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [MedicationDispenseBuilder]
/// Indicates that a medication product is to be or has been dispensed for
/// a named person/patient. This includes a description of the medication
/// product (supply) provided and the instructions for administering the
/// medication. The medication dispense is the result of a pharmacy system
/// responding to a medication order.
class MedicationDispenseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationDispenseBuilder]

  MedicationDispenseBuilder({
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
    this.status,
    this.statusReasonX,
    this.category,
    this.medicationX,
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
  /// For Builder classes, no fields are required
  factory MedicationDispenseBuilder.empty() => MedicationDispenseBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispenseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationDispense';
    return MedicationDispenseBuilder(
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
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<MedicationDispenseStatusCodesBuilder>(
        json,
        'status',
        MedicationDispenseStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReasonX:
          JsonParser.parsePolymorphic<StatusReasonXMedicationDispenseBuilder>(
        json,
        {
          'statusReasonCodeableConcept': CodeableConceptBuilder.fromJson,
          'statusReasonReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      medicationX:
          JsonParser.parsePolymorphic<MedicationXMedicationDispenseBuilder>(
        json,
        {
          'medicationCodeableConcept': CodeableConceptBuilder.fromJson,
          'medicationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      context: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'context',
        ReferenceBuilder.fromJson,
        '$objectPath.context',
      ),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<MedicationDispensePerformerBuilder>(
            (v) => MedicationDispensePerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      authorizingPrescription:
          (json['authorizingPrescription'] as List<dynamic>?)
              ?.map<ReferenceBuilder>(
                (v) => ReferenceBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.authorizingPrescription',
                  },
                ),
              )
              .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      daysSupply: JsonParser.parseObject<QuantityBuilder>(
        json,
        'daysSupply',
        QuantityBuilder.fromJson,
        '$objectPath.daysSupply',
      ),
      whenPrepared: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'whenPrepared',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.whenPrepared',
      ),
      whenHandedOver: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'whenHandedOver',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.whenHandedOver',
      ),
      destination: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'destination',
        ReferenceBuilder.fromJson,
        '$objectPath.destination',
      ),
      receiver: (json['receiver'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.receiver',
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
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)
          ?.map<DosageBuilder>(
            (v) => DosageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosageInstruction',
              },
            ),
          )
          .toList(),
      substitution:
          JsonParser.parseObject<MedicationDispenseSubstitutionBuilder>(
        json,
        'substitution',
        MedicationDispenseSubstitutionBuilder.fromJson,
        '$objectPath.substitution',
      ),
      detectedIssue: (json['detectedIssue'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detectedIssue',
              },
            ),
          )
          .toList(),
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eventHistory',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationDispenseBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationDispenseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispenseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispenseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispenseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispenseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispenseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispenseBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [partOf]
  /// The procedure that trigger the dispense.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code specifying the state of the set of dispense events.
  MedicationDispenseStatusCodesBuilder? status;

  /// [statusReasonX]
  /// Indicates the reason why a dispense was not performed.
  StatusReasonXMedicationDispenseBuilder? statusReasonX;

  /// Getter for [statusReasonCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get statusReasonCodeableConcept =>
      statusReasonX?.isAs<CodeableConceptBuilder>();

  /// Getter for [statusReasonReference] as a ReferenceBuilder
  ReferenceBuilder? get statusReasonReference =>
      statusReasonX?.isAs<ReferenceBuilder>();

  /// [category]
  /// Indicates the type of medication dispense (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient
  /// or outpatient)).
  CodeableConceptBuilder? category;

  /// [medicationX]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  MedicationXMedicationDispenseBuilder? medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get medicationCodeableConcept =>
      medicationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [medicationReference] as a ReferenceBuilder
  ReferenceBuilder? get medicationReference =>
      medicationX?.isAs<ReferenceBuilder>();

  /// [subject]
  /// A link to a resource representing the person or the group to whom the
  /// medication will be given.
  ReferenceBuilder? subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// event.
  ReferenceBuilder? context;

  /// [supportingInformation]
  /// Additional information that supports the medication being dispensed.
  List<ReferenceBuilder>? supportingInformation;

  /// [performer]
  /// Indicates who or what performed the event.
  List<MedicationDispensePerformerBuilder>? performer;

  /// [location]
  /// The principal physical location where the dispense was performed.
  ReferenceBuilder? location;

  /// [authorizingPrescription]
  /// Indicates the medication order that is being dispensed against.
  List<ReferenceBuilder>? authorizingPrescription;

  /// [type]
  /// Indicates the type of dispensing event that is performed. For example,
  /// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  /// etc.
  CodeableConceptBuilder? type;

  /// [quantity]
  /// The amount of medication that has been dispensed. Includes unit of
  /// measure.
  QuantityBuilder? quantity;

  /// [daysSupply]
  /// The amount of medication expressed as a timing amount.
  QuantityBuilder? daysSupply;

  /// [whenPrepared]
  /// The time when the dispensed product was packaged and reviewed.
  FhirDateTimeBuilder? whenPrepared;

  /// [whenHandedOver]
  /// The time the dispensed product was provided to the patient or their
  /// representative.
  FhirDateTimeBuilder? whenHandedOver;

  /// [destination]
  /// Identification of the facility/location where the medication was
  /// shipped to, as part of the dispense event.
  ReferenceBuilder? destination;

  /// [receiver]
  /// Identifies the person who picked up the medication. This will usually
  /// be a patient or their caregiver, but some cases exist where it can be a
  /// healthcare professional.
  List<ReferenceBuilder>? receiver;

  /// [note]
  /// Extra information about the dispense that could not be conveyed in the
  /// other attributes.
  List<AnnotationBuilder>? note;

  /// [dosageInstruction]
  /// Indicates how the medication is to be used by the patient.
  List<DosageBuilder>? dosageInstruction;

  /// [substitution]
  /// Indicates whether or not substitution was made as part of the dispense.
  /// In some cases, substitution will be expected but does not happen, in
  /// other cases substitution is not expected but does happen. This block
  /// explains what substitution did or did not happen and why. If nothing is
  /// specified, substitution was not done.
  MedicationDispenseSubstitutionBuilder? substitution;

  /// [detectedIssue]
  /// Indicates an actual or potential clinical issue with or between one or
  /// more active or proposed clinical actions for a patient; e.g. drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  List<ReferenceBuilder>? detectedIssue;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the dispense was verified.
  List<ReferenceBuilder>? eventHistory;

  /// Converts a MedicationDispenseBuilder to [MedicationDispense]
  MedicationDispense build() => MedicationDispense.fromJson(toJson());

  /// Converts a [MedicationDispenseBuilder] to a [Map<String, dynamic>]
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
    addField('partOf', partOf);
    addField('status', status);
    if (statusReasonX != null) {
      final fhirType = statusReasonX!.fhirType;
      addField('statusReason${fhirType.capitalize()}', statusReasonX);
    }

    addField('category', category);
    if (medicationX != null) {
      final fhirType = medicationX!.fhirType;
      addField('medication${fhirType.capitalize()}', medicationX);
    }

    addField('subject', subject);
    addField('context', context);
    addField('supportingInformation', supportingInformation);
    addField('performer', performer);
    addField('location', location);
    addField('authorizingPrescription', authorizingPrescription);
    addField('type', type);
    addField('quantity', quantity);
    addField('daysSupply', daysSupply);
    addField('whenPrepared', whenPrepared);
    addField('whenHandedOver', whenHandedOver);
    addField('destination', destination);
    addField('receiver', receiver);
    addField('note', note);
    addField('dosageInstruction', dosageInstruction);
    addField('substitution', substitution);
    addField('detectedIssue', detectedIssue);
    addField('eventHistory', eventHistory);
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
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReasonX != null) {
          fields.add(statusReasonX!);
        }
      case 'statusReasonX':
        if (statusReasonX != null) {
          fields.add(statusReasonX!);
        }
      case 'statusReasonCodeableConcept':
        if (statusReasonX is CodeableConceptBuilder) {
          fields.add(statusReasonX!);
        }
      case 'statusReasonReference':
        if (statusReasonX is ReferenceBuilder) {
          fields.add(statusReasonX!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'medication':
        if (medicationX != null) {
          fields.add(medicationX!);
        }
      case 'medicationX':
        if (medicationX != null) {
          fields.add(medicationX!);
        }
      case 'medicationCodeableConcept':
        if (medicationX is CodeableConceptBuilder) {
          fields.add(medicationX!);
        }
      case 'medicationReference':
        if (medicationX is ReferenceBuilder) {
          fields.add(medicationX!);
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
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [...(partOf ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is MedicationDispenseStatusCodesBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReasonX':
        {
          if (child is StatusReasonXMedicationDispenseBuilder) {
            statusReasonX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              statusReasonX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              statusReasonX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusReasonCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            statusReasonX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReasonReference':
        {
          if (child is ReferenceBuilder) {
            statusReasonX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationX':
        {
          if (child is MedicationXMedicationDispenseBuilder) {
            medicationX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              medicationX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              medicationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medicationCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            medicationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationReference':
        {
          if (child is ReferenceBuilder) {
            medicationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'context':
        {
          if (child is ReferenceBuilder) {
            context = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInformation = [...(supportingInformation ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<MedicationDispensePerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is MedicationDispensePerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [...(performer ?? []), child];
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
      case 'authorizingPrescription':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            authorizingPrescription = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            authorizingPrescription = [
              ...(authorizingPrescription ?? []),
              child
            ];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'daysSupply':
        {
          if (child is QuantityBuilder) {
            daysSupply = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenPrepared':
        {
          if (child is FhirDateTimeBuilder) {
            whenPrepared = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenHandedOver':
        {
          if (child is FhirDateTimeBuilder) {
            whenHandedOver = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is ReferenceBuilder) {
            destination = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'receiver':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            receiver = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            receiver = [...(receiver ?? []), child];
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
      case 'dosageInstruction':
        {
          if (child is List<DosageBuilder>) {
            // Replace or create new list
            dosageInstruction = child;
            return;
          } else if (child is DosageBuilder) {
            // Add single element to existing list or create new list
            dosageInstruction = [...(dosageInstruction ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'substitution':
        {
          if (child is MedicationDispenseSubstitutionBuilder) {
            substitution = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detectedIssue':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            detectedIssue = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            detectedIssue = [...(detectedIssue ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventHistory':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            eventHistory = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            eventHistory = [...(eventHistory ?? []), child];
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
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
      case 'statusReasonX':
        return ['CodeableConceptBuilder', 'ReferenceBuilder'];
      case 'statusReasonCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'statusReasonReference':
        return ['ReferenceBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'medication':
      case 'medicationX':
        return ['CodeableConceptBuilder', 'ReferenceBuilder'];
      case 'medicationCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'medicationReference':
        return ['ReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'context':
        return ['ReferenceBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['MedicationDispensePerformerBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'authorizingPrescription':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'daysSupply':
        return ['QuantityBuilder'];
      case 'whenPrepared':
        return ['FhirDateTimeBuilder'];
      case 'whenHandedOver':
        return ['FhirDateTimeBuilder'];
      case 'destination':
        return ['ReferenceBuilder'];
      case 'receiver':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'dosageInstruction':
        return ['DosageBuilder'];
      case 'substitution':
        return ['MedicationDispenseSubstitutionBuilder'];
      case 'detectedIssue':
        return ['ReferenceBuilder'];
      case 'eventHistory':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationDispenseBuilder]
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
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = MedicationDispenseStatusCodesBuilder.empty();
          return;
        }
      case 'statusReason':
      case 'statusReasonX':
      case 'statusReasonCodeableConcept':
        {
          statusReasonX = CodeableConceptBuilder.empty();
          return;
        }
      case 'statusReasonReference':
        {
          statusReasonX = ReferenceBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'medication':
      case 'medicationX':
      case 'medicationCodeableConcept':
        {
          medicationX = CodeableConceptBuilder.empty();
          return;
        }
      case 'medicationReference':
        {
          medicationX = ReferenceBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'context':
        {
          context = ReferenceBuilder.empty();
          return;
        }
      case 'supportingInformation':
        {
          supportingInformation = <ReferenceBuilder>[];
          return;
        }
      case 'performer':
        {
          performer = <MedicationDispensePerformerBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'authorizingPrescription':
        {
          authorizingPrescription = <ReferenceBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'daysSupply':
        {
          daysSupply = QuantityBuilder.empty();
          return;
        }
      case 'whenPrepared':
        {
          whenPrepared = FhirDateTimeBuilder.empty();
          return;
        }
      case 'whenHandedOver':
        {
          whenHandedOver = FhirDateTimeBuilder.empty();
          return;
        }
      case 'destination':
        {
          destination = ReferenceBuilder.empty();
          return;
        }
      case 'receiver':
        {
          receiver = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'dosageInstruction':
        {
          dosageInstruction = <DosageBuilder>[];
          return;
        }
      case 'substitution':
        {
          substitution = MedicationDispenseSubstitutionBuilder.empty();
          return;
        }
      case 'detectedIssue':
        {
          detectedIssue = <ReferenceBuilder>[];
          return;
        }
      case 'eventHistory':
        {
          eventHistory = <ReferenceBuilder>[];
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
    bool partOf = false,
    bool status = false,
    bool statusReason = false,
    bool category = false,
    bool medication = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (partOf) this.partOf = null;
    if (status) this.status = null;
    if (statusReason) this.statusReasonX = null;
    if (category) this.category = null;
    if (medication) this.medicationX = null;
    if (subject) this.subject = null;
    if (context) this.context = null;
    if (supportingInformation) this.supportingInformation = null;
    if (performer) this.performer = null;
    if (location) this.location = null;
    if (authorizingPrescription) this.authorizingPrescription = null;
    if (type) this.type = null;
    if (quantity) this.quantity = null;
    if (daysSupply) this.daysSupply = null;
    if (whenPrepared) this.whenPrepared = null;
    if (whenHandedOver) this.whenHandedOver = null;
    if (destination) this.destination = null;
    if (receiver) this.receiver = null;
    if (note) this.note = null;
    if (dosageInstruction) this.dosageInstruction = null;
    if (substitution) this.substitution = null;
    if (detectedIssue) this.detectedIssue = null;
    if (eventHistory) this.eventHistory = null;
  }

  @override
  MedicationDispenseBuilder clone() => throw UnimplementedError();
  @override
  MedicationDispenseBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? partOf,
    MedicationDispenseStatusCodesBuilder? status,
    StatusReasonXMedicationDispenseBuilder? statusReasonX,
    CodeableConceptBuilder? category,
    MedicationXMedicationDispenseBuilder? medicationX,
    ReferenceBuilder? subject,
    ReferenceBuilder? context,
    List<ReferenceBuilder>? supportingInformation,
    List<MedicationDispensePerformerBuilder>? performer,
    ReferenceBuilder? location,
    List<ReferenceBuilder>? authorizingPrescription,
    CodeableConceptBuilder? type,
    QuantityBuilder? quantity,
    QuantityBuilder? daysSupply,
    FhirDateTimeBuilder? whenPrepared,
    FhirDateTimeBuilder? whenHandedOver,
    ReferenceBuilder? destination,
    List<ReferenceBuilder>? receiver,
    List<AnnotationBuilder>? note,
    List<DosageBuilder>? dosageInstruction,
    MedicationDispenseSubstitutionBuilder? substitution,
    List<ReferenceBuilder>? detectedIssue,
    List<ReferenceBuilder>? eventHistory,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationDispenseBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReasonX: statusReasonX ?? this.statusReasonX,
      category: category ?? this.category,
      medicationX: medicationX ?? this.medicationX,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      authorizingPrescription:
          authorizingPrescription ?? this.authorizingPrescription,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      daysSupply: daysSupply ?? this.daysSupply,
      whenPrepared: whenPrepared ?? this.whenPrepared,
      whenHandedOver: whenHandedOver ?? this.whenHandedOver,
      destination: destination ?? this.destination,
      receiver: receiver ?? this.receiver,
      note: note ?? this.note,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      substitution: substitution ?? this.substitution,
      detectedIssue: detectedIssue ?? this.detectedIssue,
      eventHistory: eventHistory ?? this.eventHistory,
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
    if (o is! MedicationDispenseBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!listEquals<MedicationDispensePerformerBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      receiver,
      o.receiver,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<DosageBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      detectedIssue,
      o.detectedIssue,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      eventHistory,
      o.eventHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationDispensePerformerBuilder]
/// Indicates who or what performed the event.
class MedicationDispensePerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationDispensePerformerBuilder]

  MedicationDispensePerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationDispense.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationDispensePerformerBuilder.empty() =>
      MedicationDispensePerformerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispensePerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationDispense.performer';
    return MedicationDispensePerformerBuilder(
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

  /// Deserialize [MedicationDispensePerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationDispensePerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispensePerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispensePerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispensePerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispensePerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispensePerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispensePerformerBuilder.fromJson(json);
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
  CodeableConceptBuilder? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed the action. It should be
  /// assumed that the actor is the dispenser of the medication.
  ReferenceBuilder? actor;

  /// Converts a MedicationDispensePerformerBuilder to [MedicationDispensePerformer]
  MedicationDispensePerformer build() =>
      MedicationDispensePerformer.fromJson(toJson());

  /// Converts a [MedicationDispensePerformerBuilder] to a [Map<String, dynamic>]
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

  /// Creates a new [MedicationDispensePerformerBuilder]
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
  MedicationDispensePerformerBuilder clone() => throw UnimplementedError();
  @override
  MedicationDispensePerformerBuilder copyWith({
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
    final newResult = MedicationDispensePerformerBuilder(
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
    if (o is! MedicationDispensePerformerBuilder) {
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

/// [MedicationDispenseSubstitutionBuilder]
/// Indicates whether or not substitution was made as part of the dispense.
/// In some cases, substitution will be expected but does not happen, in
/// other cases substitution is not expected but does happen. This block
/// explains what substitution did or did not happen and why. If nothing is
/// specified, substitution was not done.
class MedicationDispenseSubstitutionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationDispenseSubstitutionBuilder]

  MedicationDispenseSubstitutionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.wasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationDispense.substitution',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationDispenseSubstitutionBuilder.empty() =>
      MedicationDispenseSubstitutionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispenseSubstitutionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationDispense.substitution';
    return MedicationDispenseSubstitutionBuilder(
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
      wasSubstituted: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'wasSubstituted',
        FhirBooleanBuilder.fromJson,
        '$objectPath.wasSubstituted',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      responsibleParty: (json['responsibleParty'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.responsibleParty',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationDispenseSubstitutionBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationDispenseSubstitutionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispenseSubstitutionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispenseSubstitutionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispenseSubstitutionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispenseSubstitutionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispenseSubstitutionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispenseSubstitutionBuilder.fromJson(json);
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
  FhirBooleanBuilder? wasSubstituted;

  /// [type]
  /// A code signifying whether a different drug was dispensed from what was
  /// prescribed.
  CodeableConceptBuilder? type;

  /// [reason]
  /// Indicates the reason for the substitution (or lack of substitution)
  /// from what was prescribed.
  List<CodeableConceptBuilder>? reason;

  /// [responsibleParty]
  /// The person or organization that has primary responsibility for the
  /// substitution.
  List<ReferenceBuilder>? responsibleParty;

  /// Converts a MedicationDispenseSubstitutionBuilder to [MedicationDispenseSubstitution]
  MedicationDispenseSubstitution build() =>
      MedicationDispenseSubstitution.fromJson(toJson());

  /// Converts a [MedicationDispenseSubstitutionBuilder] to a [Map<String, dynamic>]
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
    addField('wasSubstituted', wasSubstituted);
    addField('type', type);
    addField('reason', reason);
    addField('responsibleParty', responsibleParty);
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
      case 'wasSubstituted':
        if (wasSubstituted != null) {
          fields.add(wasSubstituted!);
        }
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
      case 'wasSubstituted':
        {
          if (child is FhirBooleanBuilder) {
            wasSubstituted = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reason = [...(reason ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responsibleParty':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            responsibleParty = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            responsibleParty = [...(responsibleParty ?? []), child];
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
      case 'wasSubstituted':
        return ['FhirBooleanBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'responsibleParty':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationDispenseSubstitutionBuilder]
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
      case 'wasSubstituted':
        {
          wasSubstituted = FhirBooleanBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableConceptBuilder>[];
          return;
        }
      case 'responsibleParty':
        {
          responsibleParty = <ReferenceBuilder>[];
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
    bool wasSubstituted = false,
    bool type = false,
    bool reason = false,
    bool responsibleParty = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (wasSubstituted) this.wasSubstituted = null;
    if (type) this.type = null;
    if (reason) this.reason = null;
    if (responsibleParty) this.responsibleParty = null;
  }

  @override
  MedicationDispenseSubstitutionBuilder clone() => throw UnimplementedError();
  @override
  MedicationDispenseSubstitutionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? wasSubstituted,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? reason,
    List<ReferenceBuilder>? responsibleParty,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationDispenseSubstitutionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      wasSubstituted: wasSubstituted ?? this.wasSubstituted,
      type: type ?? this.type,
      reason: reason ?? this.reason,
      responsibleParty: responsibleParty ?? this.responsibleParty,
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
    if (o is! MedicationDispenseSubstitutionBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      responsibleParty,
      o.responsibleParty,
    )) {
      return false;
    }
    return true;
  }
}
