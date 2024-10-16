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
  /// Primary constructor for [MedicationDispense]

  MedicationDispense({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.partOf,
    required this.status,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MedicationDispense,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispense.fromJson(Map<String, dynamic> json) {
    return MedicationDispense(
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
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: MedicationDispenseStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReasonCodeableConcept: json['statusReasonCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['statusReasonCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      statusReasonReference: json['statusReasonReference'] != null
          ? Reference.fromJson(
              json['statusReasonReference'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['medicationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      context: json['context'] != null
          ? Reference.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<MedicationDispensePerformer>(
                (v) => MedicationDispensePerformer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      authorizingPrescription: json['authorizingPrescription'] != null
          ? (json['authorizingPrescription'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      daysSupply: json['daysSupply'] != null
          ? Quantity.fromJson(
              json['daysSupply'] as Map<String, dynamic>,
            )
          : null,
      whenPrepared: json['whenPrepared'] != null
          ? FhirDateTime.fromJson({
              'value': json['whenPrepared'],
              '_value': json['_whenPrepared'],
            })
          : null,
      whenHandedOver: json['whenHandedOver'] != null
          ? FhirDateTime.fromJson({
              'value': json['whenHandedOver'],
              '_value': json['_whenHandedOver'],
            })
          : null,
      destination: json['destination'] != null
          ? Reference.fromJson(
              json['destination'] as Map<String, dynamic>,
            )
          : null,
      receiver: json['receiver'] != null
          ? (json['receiver'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dosageInstruction: json['dosageInstruction'] != null
          ? (json['dosageInstruction'] as List<dynamic>)
              .map<Dosage>(
                (v) => Dosage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      substitution: json['substitution'] != null
          ? MedicationDispenseSubstitution.fromJson(
              json['substitution'] as Map<String, dynamic>,
            )
          : null,
      detectedIssue: json['detectedIssue'] != null
          ? (json['detectedIssue'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eventHistory: json['eventHistory'] != null
          ? (json['eventHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicationDispense] from a [String]
  /// or [YamlMap] object
  factory MedicationDispense.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationDispense.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MedicationDispense cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispense';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [statusReasonCodeableConcept]
  /// Indicates the reason why a dispense was not performed.
  final CodeableConcept? statusReasonCodeableConcept;

  /// [statusReasonReference]
  /// Indicates the reason why a dispense was not performed.
  final Reference? statusReasonReference;

  /// [category]
  /// Indicates the type of medication dispense (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient
  /// or outpatient)).
  final CodeableConcept? category;

  /// [medicationCodeableConcept]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final Reference? medicationReference;

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

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson9 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    final fieldJson10 = status.toJson();
    json['status'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_status'] = fieldJson10['_value'];
    }

    if (statusReasonCodeableConcept != null) {
      final fieldJson11 = statusReasonCodeableConcept!.toJson();
      json['statusReasonCodeableConcept'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_statusReasonCodeableConcept'] = fieldJson11['_value'];
      }
    }

    if (statusReasonReference != null) {
      final fieldJson12 = statusReasonReference!.toJson();
      json['statusReasonReference'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_statusReasonReference'] = fieldJson12['_value'];
      }
    }

    if (category != null) {
      final fieldJson13 = category!.toJson();
      json['category'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_category'] = fieldJson13['_value'];
      }
    }

    if (medicationCodeableConcept != null) {
      final fieldJson14 = medicationCodeableConcept!.toJson();
      json['medicationCodeableConcept'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_medicationCodeableConcept'] = fieldJson14['_value'];
      }
    }

    if (medicationReference != null) {
      final fieldJson15 = medicationReference!.toJson();
      json['medicationReference'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_medicationReference'] = fieldJson15['_value'];
      }
    }

    if (subject != null) {
      final fieldJson16 = subject!.toJson();
      json['subject'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_subject'] = fieldJson16['_value'];
      }
    }

    if (context != null) {
      final fieldJson17 = context!.toJson();
      json['context'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_context'] = fieldJson17['_value'];
      }
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      final fieldJson18 =
          supportingInformation!.map((e) => e.toJson()).toList();
      json['supportingInformation'] =
          fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_supportingInformation'] =
            fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson19 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (location != null) {
      final fieldJson20 = location!.toJson();
      json['location'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_location'] = fieldJson20['_value'];
      }
    }

    if (authorizingPrescription != null &&
        authorizingPrescription!.isNotEmpty) {
      final fieldJson21 =
          authorizingPrescription!.map((e) => e.toJson()).toList();
      json['authorizingPrescription'] =
          fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_authorizingPrescription'] =
            fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson22 = type!.toJson();
      json['type'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_type'] = fieldJson22['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson23 = quantity!.toJson();
      json['quantity'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_quantity'] = fieldJson23['_value'];
      }
    }

    if (daysSupply != null) {
      final fieldJson24 = daysSupply!.toJson();
      json['daysSupply'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_daysSupply'] = fieldJson24['_value'];
      }
    }

    if (whenPrepared != null) {
      final fieldJson25 = whenPrepared!.toJson();
      json['whenPrepared'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_whenPrepared'] = fieldJson25['_value'];
      }
    }

    if (whenHandedOver != null) {
      final fieldJson26 = whenHandedOver!.toJson();
      json['whenHandedOver'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_whenHandedOver'] = fieldJson26['_value'];
      }
    }

    if (destination != null) {
      final fieldJson27 = destination!.toJson();
      json['destination'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_destination'] = fieldJson27['_value'];
      }
    }

    if (receiver != null && receiver!.isNotEmpty) {
      final fieldJson28 = receiver!.map((e) => e.toJson()).toList();
      json['receiver'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_receiver'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson29 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (dosageInstruction != null && dosageInstruction!.isNotEmpty) {
      final fieldJson30 = dosageInstruction!.map((e) => e.toJson()).toList();
      json['dosageInstruction'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_dosageInstruction'] =
            fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (substitution != null) {
      final fieldJson31 = substitution!.toJson();
      json['substitution'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_substitution'] = fieldJson31['_value'];
      }
    }

    if (detectedIssue != null && detectedIssue!.isNotEmpty) {
      final fieldJson32 = detectedIssue!.map((e) => e.toJson()).toList();
      json['detectedIssue'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_detectedIssue'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (eventHistory != null && eventHistory!.isNotEmpty) {
      final fieldJson33 = eventHistory!.map((e) => e.toJson()).toList();
      json['eventHistory'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_eventHistory'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    CodeableConcept? statusReasonCodeableConcept,
    Reference? statusReasonReference,
    CodeableConcept? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationDispense(
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
      statusReasonCodeableConcept:
          statusReasonCodeableConcept ?? this.statusReasonCodeableConcept,
      statusReasonReference:
          statusReasonReference ?? this.statusReasonReference,
      category: category ?? this.category,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationDispensePerformer]
/// Indicates who or what performed the event.
class MedicationDispensePerformer extends BackboneElement {
  /// Primary constructor for [MedicationDispensePerformer]

  MedicationDispensePerformer({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispensePerformer.fromJson(Map<String, dynamic> json) {
    return MedicationDispensePerformer(
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
      function_: json['function'] != null
          ? CodeableConcept.fromJson(
              json['function'] as Map<String, dynamic>,
            )
          : null,
      actor: Reference.fromJson(
        json['actor'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MedicationDispensePerformer] from a [String]
  /// or [YamlMap] object
  factory MedicationDispensePerformer.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispensePerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationDispensePerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationDispensePerformer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationDispensePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispensePerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationDispensePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispensePerformer';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (function_ != null) {
      final fieldJson3 = function_!.toJson();
      json['function'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_function'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = actor.toJson();
    json['actor'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_actor'] = fieldJson4['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationDispensePerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationDispenseSubstitution]
/// Indicates whether or not substitution was made as part of the dispense.
/// In some cases, substitution will be expected but does not happen, in
/// other cases substitution is not expected but does happen. This block
/// explains what substitution did or did not happen and why. If nothing is
/// specified, substitution was not done.
class MedicationDispenseSubstitution extends BackboneElement {
  /// Primary constructor for [MedicationDispenseSubstitution]

  MedicationDispenseSubstitution({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.wasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispenseSubstitution.fromJson(Map<String, dynamic> json) {
    return MedicationDispenseSubstitution(
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
      wasSubstituted: FhirBoolean.fromJson({
        'value': json['wasSubstituted'],
        '_value': json['_wasSubstituted'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      reason: json['reason'] != null
          ? (json['reason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      responsibleParty: json['responsibleParty'] != null
          ? (json['responsibleParty'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicationDispenseSubstitution] from a [String]
  /// or [YamlMap] object
  factory MedicationDispenseSubstitution.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationDispenseSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationDispenseSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationDispenseSubstitution cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationDispenseSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispenseSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationDispenseSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispenseSubstitution';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = wasSubstituted.toJson();
    json['wasSubstituted'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_wasSubstituted'] = fieldJson3['_value'];
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    if (reason != null && reason!.isNotEmpty) {
      final fieldJson5 = reason!.map((e) => e.toJson()).toList();
      json['reason'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_reason'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (responsibleParty != null && responsibleParty!.isNotEmpty) {
      final fieldJson6 = responsibleParty!.map((e) => e.toJson()).toList();
      json['responsibleParty'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_responsibleParty'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationDispenseSubstitution(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      wasSubstituted: wasSubstituted ?? this.wasSubstituted,
      type: type ?? this.type,
      reason: reason ?? this.reason,
      responsibleParty: responsibleParty ?? this.responsibleParty,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
