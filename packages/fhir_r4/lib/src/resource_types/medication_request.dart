import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationRequest]
/// An order or request for both supply of the medication and the
/// instructions for administration of the medication to a patient. The
/// resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use
/// across inpatient and outpatient settings, including care plans, etc.,
/// and to harmonize with workflow patterns.
class MedicationRequest extends DomainResource {
  /// Primary constructor for
  /// [MedicationRequest]

  const MedicationRequest({
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
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.reportedX,
    required this.medicationX,
    required this.subject,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.courseOfTherapyType,
    this.insurance,
    this.note,
    this.dosageInstruction,
    this.dispenseRequest,
    this.substitution,
    this.priorPrescription,
    this.detectedIssue,
    this.eventHistory,
  }) : super(
          objectPath: 'MedicationRequest',
          resourceType: R4ResourceType.MedicationRequest,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationRequest.empty() => MedicationRequest(
        status: MedicationrequestStatus.values.first,
        intent: MedicationRequestIntent.values.first,
        medicationX: CodeableConcept.empty(),
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest';
    return MedicationRequest(
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
      status: JsonParser.parsePrimitive<MedicationrequestStatus>(
        json,
        'status',
        MedicationrequestStatus.fromJson,
        '$objectPath.status',
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
        '$objectPath.statusReason',
      ),
      intent: JsonParser.parsePrimitive<MedicationRequestIntent>(
        json,
        'intent',
        MedicationRequestIntent.fromJson,
        '$objectPath.intent',
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
        '$objectPath.doNotPerform',
      ),
      reportedX: JsonParser.parsePolymorphic<ReportedXMedicationRequest>(
        json,
        {
          'reportedBoolean': FhirBoolean.fromJson,
          'reportedReference': Reference.fromJson,
        },
        objectPath,
      ),
      medicationX: JsonParser.parsePolymorphic<MedicationXMedicationRequest>(
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
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
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
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
        '$objectPath.requester',
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
        '$objectPath.performer',
      ),
      performerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerType',
        CodeableConcept.fromJson,
        '$objectPath.performerType',
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
        '$objectPath.recorder',
      ),
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
        '$objectPath.groupIdentifier',
      ),
      courseOfTherapyType: JsonParser.parseObject<CodeableConcept>(
        json,
        'courseOfTherapyType',
        CodeableConcept.fromJson,
        '$objectPath.courseOfTherapyType',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
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
      dispenseRequest: JsonParser.parseObject<MedicationRequestDispenseRequest>(
        json,
        'dispenseRequest',
        MedicationRequestDispenseRequest.fromJson,
        '$objectPath.dispenseRequest',
      ),
      substitution: JsonParser.parseObject<MedicationRequestSubstitution>(
        json,
        'substitution',
        MedicationRequestSubstitution.fromJson,
        '$objectPath.substitution',
      ),
      priorPrescription: JsonParser.parseObject<Reference>(
        json,
        'priorPrescription',
        Reference.fromJson,
        '$objectPath.priorPrescription',
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

  /// Deserialize [MedicationRequest]
  /// from a [String] or [YamlMap] object
  factory MedicationRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequest';

  /// [identifier]
  /// Identifiers associated with this medication request that are defined by
  /// business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [status]
  /// A code specifying the current state of the order. Generally, this will
  /// be active or completed state.
  final MedicationrequestStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationRequest.
  final CodeableConcept? statusReason;

  /// [intent]
  /// Whether the request is a proposal, plan, or an original order.
  final MedicationRequestIntent intent;

  /// [category]
  /// Indicates the type of medication request (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient
  /// or outpatient)).
  final List<CodeableConcept>? category;

  /// [priority]
  /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// If true indicates that the provider is asking for the medication
  /// request not to occur.
  final FhirBoolean? doNotPerform;

  /// [reportedX]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final ReportedXMedicationRequest? reportedX;

  /// Getter for [reportedBoolean] as a FhirBoolean
  FhirBoolean? get reportedBoolean => reportedX?.isAs<FhirBoolean>();

  /// Getter for [reportedReference] as a Reference
  Reference? get reportedReference => reportedX?.isAs<Reference>();

  /// [medicationX]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  final MedicationXMedicationRequest medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConcept
  CodeableConcept? get medicationCodeableConcept =>
      medicationX.isAs<CodeableConcept>();

  /// Getter for [medicationReference] as a Reference
  Reference? get medicationReference => medicationX.isAs<Reference>();

  /// [subject]
  /// A link to a resource representing the person or set of individuals to
  /// whom the medication will be given.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this [x] was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [supportingInformation]
  /// Include additional information (for example, patient height and weight)
  /// that supports the ordering of the medication.
  final List<Reference>? supportingInformation;

  /// [authoredOn]
  /// The date (and perhaps time) when the prescription was initially written
  /// or authored on.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The individual, organization, or device that initiated the request and
  /// has responsibility for its activation.
  final Reference? requester;

  /// [performer]
  /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration).
  final Reference? performer;

  /// [performerType]
  /// Indicates the type of performer of the administration of the
  /// medication.
  final CodeableConcept? performerType;

  /// [recorder]
  /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  final Reference? recorder;

  /// [reasonCode]
  /// The reason or the indication for ordering or not ordering the
  /// medication.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication was ordered.
  final List<Reference>? reasonReference;

  /// [instantiatesCanonical]
  /// The URL pointing to a protocol, guideline, orderset, or other
  /// definition that is adhered to in whole or in part by this
  /// MedicationRequest.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this MedicationRequest.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A plan or request that is fulfilled in whole or in part by this
  /// medication request.
  final List<Reference>? basedOn;

  /// [groupIdentifier]
  /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of
  /// the requisition or prescription.
  final Identifier? groupIdentifier;

  /// [courseOfTherapyType]
  /// The description of the overall patte3rn of the administration of the
  /// medication to the patient.
  final CodeableConcept? courseOfTherapyType;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [note]
  /// Extra information about the prescription that could not be conveyed by
  /// the other attributes.
  final List<Annotation>? note;

  /// [dosageInstruction]
  /// Indicates how the medication is to be used by the patient.
  final List<Dosage>? dosageInstruction;

  /// [dispenseRequest]
  /// Indicates the specific details for the dispense or medication supply
  /// part of a medication request (also known as a Medication Prescription
  /// or Medication Order). Note that this information is not always sent
  /// with the order. There may be in some settings (e.g. hospitals)
  /// institutional or system support for completing the dispense details in
  /// the pharmacy department.
  final MedicationRequestDispenseRequest? dispenseRequest;

  /// [substitution]
  /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's
  /// intent. If nothing is specified substitution may be done.
  final MedicationRequestSubstitution? substitution;

  /// [priorPrescription]
  /// A link to a resource representing an earlier order related order or
  /// prescription.
  final Reference? priorPrescription;

  /// [detectedIssue]
  /// Indicates an actual or potential clinical issue with or between one or
  /// more active or proposed clinical actions for a patient; e.g. Drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  final List<Reference>? detectedIssue;

  /// [eventHistory]
  /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the resource.
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
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'category',
      category,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    if (reportedX != null) {
      final fhirType = reportedX!.fhirType;
      addField(
        'reported${fhirType.capitalize()}',
        reportedX,
      );
    }

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
      'encounter',
      encounter,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    addField(
      'authoredOn',
      authoredOn,
    );
    addField(
      'requester',
      requester,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'performerType',
      performerType,
    );
    addField(
      'recorder',
      recorder,
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
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'groupIdentifier',
      groupIdentifier,
    );
    addField(
      'courseOfTherapyType',
      courseOfTherapyType,
    );
    addField(
      'insurance',
      insurance,
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
      'dispenseRequest',
      dispenseRequest,
    );
    addField(
      'substitution',
      substitution,
    );
    addField(
      'priorPrescription',
      priorPrescription,
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
      'status',
      'statusReason',
      'intent',
      'category',
      'priority',
      'doNotPerform',
      'reportedX',
      'medicationX',
      'subject',
      'encounter',
      'supportingInformation',
      'authoredOn',
      'requester',
      'performer',
      'performerType',
      'recorder',
      'reasonCode',
      'reasonReference',
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'groupIdentifier',
      'courseOfTherapyType',
      'insurance',
      'note',
      'dosageInstruction',
      'dispenseRequest',
      'substitution',
      'priorPrescription',
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
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'intent':
        fields.add(intent);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'reported':
        fields.add(reportedX!);
      case 'reportedX':
        fields.add(reportedX!);
      case 'reportedBoolean':
        if (reportedX is FhirBoolean) {
          fields.add(reportedX!);
        }
      case 'reportedReference':
        if (reportedX is Reference) {
          fields.add(reportedX!);
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
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.add(performerType!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'courseOfTherapyType':
        if (courseOfTherapyType != null) {
          fields.add(courseOfTherapyType!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'dosageInstruction':
        if (dosageInstruction != null) {
          fields.addAll(dosageInstruction!);
        }
      case 'dispenseRequest':
        if (dispenseRequest != null) {
          fields.add(dispenseRequest!);
        }
      case 'substitution':
        if (substitution != null) {
          fields.add(substitution!);
        }
      case 'priorPrescription':
        if (priorPrescription != null) {
          fields.add(priorPrescription!);
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
      case 'status':
        {
          if (child is MedicationrequestStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is CodeableConcept) {
            return copyWith(statusReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'intent':
        {
          if (child is MedicationRequestIntent) {
            return copyWith(intent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?category, ...child];
            return copyWith(category: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?category,
              child,
            ];
            return copyWith(category: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priority':
        {
          if (child is RequestPriority) {
            return copyWith(priority: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doNotPerform':
        {
          if (child is FhirBoolean) {
            return copyWith(doNotPerform: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reportedX':
        {
          if (child is ReportedXMedicationRequest) {
            return copyWith(reportedX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(reportedX: child);
            }
            if (child is Reference) {
              return copyWith(reportedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportedFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(reportedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reportedReference':
        {
          if (child is Reference) {
            return copyWith(reportedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medicationX':
        {
          if (child is MedicationXMedicationRequest) {
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
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
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
      case 'authoredOn':
        {
          if (child is FhirDateTime) {
            return copyWith(authoredOn: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requester':
        {
          if (child is Reference) {
            return copyWith(requester: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is Reference) {
            return copyWith(performer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performerType':
        {
          if (child is CodeableConcept) {
            return copyWith(performerType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorder':
        {
          if (child is Reference) {
            return copyWith(recorder: child);
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
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?instantiatesCanonical, ...child];
            return copyWith(instantiatesCanonical: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiatesCanonical,
              child,
            ];
            return copyWith(instantiatesCanonical: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?instantiatesUri, ...child];
            return copyWith(instantiatesUri: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiatesUri,
              child,
            ];
            return copyWith(instantiatesUri: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?basedOn, ...child];
            return copyWith(basedOn: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?basedOn,
              child,
            ];
            return copyWith(basedOn: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'groupIdentifier':
        {
          if (child is Identifier) {
            return copyWith(groupIdentifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'courseOfTherapyType':
        {
          if (child is CodeableConcept) {
            return copyWith(courseOfTherapyType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurance':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?insurance, ...child];
            return copyWith(insurance: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?insurance,
              child,
            ];
            return copyWith(insurance: newList);
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
      case 'dosageInstruction':
        {
          if (child is List<Dosage>) {
            // Add all elements from passed list
            final newList = [...?dosageInstruction, ...child];
            return copyWith(dosageInstruction: newList);
          } else if (child is Dosage) {
            // Add single element to existing list or create new list
            final newList = [
              ...?dosageInstruction,
              child,
            ];
            return copyWith(dosageInstruction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dispenseRequest':
        {
          if (child is MedicationRequestDispenseRequest) {
            return copyWith(dispenseRequest: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'substitution':
        {
          if (child is MedicationRequestSubstitution) {
            return copyWith(substitution: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priorPrescription':
        {
          if (child is Reference) {
            return copyWith(priorPrescription: child);
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
            final newList = [
              ...?detectedIssue,
              child,
            ];
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
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'intent':
        return ['FhirCode'];
      case 'category':
        return ['CodeableConcept'];
      case 'priority':
        return ['FhirCode'];
      case 'doNotPerform':
        return ['FhirBoolean'];
      case 'reported':
      case 'reportedX':
        return [
          'FhirBoolean',
          'Reference',
        ];
      case 'reportedBoolean':
        return ['FhirBoolean'];
      case 'reportedReference':
        return ['Reference'];
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
      case 'encounter':
        return ['Reference'];
      case 'supportingInformation':
        return ['Reference'];
      case 'authoredOn':
        return ['FhirDateTime'];
      case 'requester':
        return ['Reference'];
      case 'performer':
        return ['Reference'];
      case 'performerType':
        return ['CodeableConcept'];
      case 'recorder':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'instantiatesCanonical':
        return ['FhirCanonical'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'basedOn':
        return ['Reference'];
      case 'groupIdentifier':
        return ['Identifier'];
      case 'courseOfTherapyType':
        return ['CodeableConcept'];
      case 'insurance':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'dosageInstruction':
        return ['Dosage'];
      case 'dispenseRequest':
        return ['MedicationRequestDispenseRequest'];
      case 'substitution':
        return ['MedicationRequestSubstitution'];
      case 'priorPrescription':
        return ['Reference'];
      case 'detectedIssue':
        return ['Reference'];
      case 'eventHistory':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequest]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationRequest createProperty(
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
      case 'status':
        {
          return copyWith(
            status: MedicationrequestStatus.empty(),
          );
        }
      case 'statusReason':
        {
          return copyWith(
            statusReason: CodeableConcept.empty(),
          );
        }
      case 'intent':
        {
          return copyWith(
            intent: MedicationRequestIntent.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'priority':
        {
          return copyWith(
            priority: RequestPriority.empty(),
          );
        }
      case 'doNotPerform':
        {
          return copyWith(
            doNotPerform: FhirBoolean.empty(),
          );
        }
      case 'reported':
      case 'reportedX':
      case 'reportedBoolean':
        {
          return copyWith(
            reportedX: FhirBoolean.empty(),
          );
        }
      case 'reportedReference':
        {
          return copyWith(
            reportedX: Reference.empty(),
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
      case 'encounter':
        {
          return copyWith(
            encounter: Reference.empty(),
          );
        }
      case 'supportingInformation':
        {
          return copyWith(
            supportingInformation: <Reference>[],
          );
        }
      case 'authoredOn':
        {
          return copyWith(
            authoredOn: FhirDateTime.empty(),
          );
        }
      case 'requester':
        {
          return copyWith(
            requester: Reference.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: Reference.empty(),
          );
        }
      case 'performerType':
        {
          return copyWith(
            performerType: CodeableConcept.empty(),
          );
        }
      case 'recorder':
        {
          return copyWith(
            recorder: Reference.empty(),
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
      case 'instantiatesCanonical':
        {
          return copyWith(
            instantiatesCanonical: <FhirCanonical>[],
          );
        }
      case 'instantiatesUri':
        {
          return copyWith(
            instantiatesUri: <FhirUri>[],
          );
        }
      case 'basedOn':
        {
          return copyWith(
            basedOn: <Reference>[],
          );
        }
      case 'groupIdentifier':
        {
          return copyWith(
            groupIdentifier: Identifier.empty(),
          );
        }
      case 'courseOfTherapyType':
        {
          return copyWith(
            courseOfTherapyType: CodeableConcept.empty(),
          );
        }
      case 'insurance':
        {
          return copyWith(
            insurance: <Reference>[],
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
      case 'dispenseRequest':
        {
          return copyWith(
            dispenseRequest: MedicationRequestDispenseRequest.empty(),
          );
        }
      case 'substitution':
        {
          return copyWith(
            substitution: MedicationRequestSubstitution.empty(),
          );
        }
      case 'priorPrescription':
        {
          return copyWith(
            priorPrescription: Reference.empty(),
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
  MedicationRequest clear({
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
    bool category = false,
    bool priority = false,
    bool doNotPerform = false,
    bool reported = false,
    bool encounter = false,
    bool supportingInformation = false,
    bool authoredOn = false,
    bool requester = false,
    bool performer = false,
    bool performerType = false,
    bool recorder = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool instantiatesCanonical = false,
    bool instantiatesUri = false,
    bool basedOn = false,
    bool groupIdentifier = false,
    bool courseOfTherapyType = false,
    bool insurance = false,
    bool note = false,
    bool dosageInstruction = false,
    bool dispenseRequest = false,
    bool substitution = false,
    bool priorPrescription = false,
    bool detectedIssue = false,
    bool eventHistory = false,
  }) {
    return MedicationRequest(
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
      intent: intent,
      category: category ? null : this.category,
      priority: priority ? null : this.priority,
      doNotPerform: doNotPerform ? null : this.doNotPerform,
      reportedX: reported ? null : reportedX,
      medicationX: medicationX,
      subject: subject,
      encounter: encounter ? null : this.encounter,
      supportingInformation:
          supportingInformation ? null : this.supportingInformation,
      authoredOn: authoredOn ? null : this.authoredOn,
      requester: requester ? null : this.requester,
      performer: performer ? null : this.performer,
      performerType: performerType ? null : this.performerType,
      recorder: recorder ? null : this.recorder,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      instantiatesCanonical:
          instantiatesCanonical ? null : this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ? null : this.instantiatesUri,
      basedOn: basedOn ? null : this.basedOn,
      groupIdentifier: groupIdentifier ? null : this.groupIdentifier,
      courseOfTherapyType:
          courseOfTherapyType ? null : this.courseOfTherapyType,
      insurance: insurance ? null : this.insurance,
      note: note ? null : this.note,
      dosageInstruction: dosageInstruction ? null : this.dosageInstruction,
      dispenseRequest: dispenseRequest ? null : this.dispenseRequest,
      substitution: substitution ? null : this.substitution,
      priorPrescription: priorPrescription ? null : this.priorPrescription,
      detectedIssue: detectedIssue ? null : this.detectedIssue,
      eventHistory: eventHistory ? null : this.eventHistory,
    );
  }

  @override
  MedicationRequest clone() => throw UnimplementedError();
  @override
  MedicationRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    MedicationrequestStatus? status,
    CodeableConcept? statusReason,
    MedicationRequestIntent? intent,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    ReportedXMedicationRequest? reportedX,
    MedicationXMedicationRequest? medicationX,
    Reference? subject,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? authoredOn,
    Reference? requester,
    Reference? performer,
    CodeableConcept? performerType,
    Reference? recorder,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    Identifier? groupIdentifier,
    CodeableConcept? courseOfTherapyType,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Dosage>? dosageInstruction,
    MedicationRequestDispenseRequest? dispenseRequest,
    MedicationRequestSubstitution? substitution,
    Reference? priorPrescription,
    List<Reference>? detectedIssue,
    List<Reference>? eventHistory,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MedicationRequest(
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
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      doNotPerform: doNotPerform?.copyWith(
            objectPath: '$newObjectPath.doNotPerform',
          ) ??
          this.doNotPerform,
      reportedX: reportedX?.copyWith(
            objectPath: '$newObjectPath.reportedX',
          ) as ReportedXMedicationRequest? ??
          this.reportedX,
      medicationX: medicationX?.copyWith(
            objectPath: '$newObjectPath.medicationX',
          ) as MedicationXMedicationRequest? ??
          this.medicationX,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      supportingInformation: supportingInformation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInformation',
                ),
              )
              .toList() ??
          this.supportingInformation,
      authoredOn: authoredOn?.copyWith(
            objectPath: '$newObjectPath.authoredOn',
          ) ??
          this.authoredOn,
      requester: requester?.copyWith(
            objectPath: '$newObjectPath.requester',
          ) ??
          this.requester,
      performer: performer?.copyWith(
            objectPath: '$newObjectPath.performer',
          ) ??
          this.performer,
      performerType: performerType?.copyWith(
            objectPath: '$newObjectPath.performerType',
          ) ??
          this.performerType,
      recorder: recorder?.copyWith(
            objectPath: '$newObjectPath.recorder',
          ) ??
          this.recorder,
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
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      groupIdentifier: groupIdentifier?.copyWith(
            objectPath: '$newObjectPath.groupIdentifier',
          ) ??
          this.groupIdentifier,
      courseOfTherapyType: courseOfTherapyType?.copyWith(
            objectPath: '$newObjectPath.courseOfTherapyType',
          ) ??
          this.courseOfTherapyType,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
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
      dispenseRequest: dispenseRequest?.copyWith(
            objectPath: '$newObjectPath.dispenseRequest',
          ) ??
          this.dispenseRequest,
      substitution: substitution?.copyWith(
            objectPath: '$newObjectPath.substitution',
          ) ??
          this.substitution,
      priorPrescription: priorPrescription?.copyWith(
            objectPath: '$newObjectPath.priorPrescription',
          ) ??
          this.priorPrescription,
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
    if (o is! MedicationRequest) {
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
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportedX,
      o.reportedX,
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
      encounter,
      o.encounter,
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
      authoredOn,
      o.authoredOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorder,
      o.recorder,
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
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupIdentifier,
      o.groupIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      courseOfTherapyType,
      o.courseOfTherapyType,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      insurance,
      o.insurance,
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
      dispenseRequest,
      o.dispenseRequest,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      substitution,
      o.substitution,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priorPrescription,
      o.priorPrescription,
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

/// [MedicationRequestDispenseRequest]
/// Indicates the specific details for the dispense or medication supply
/// part of a medication request (also known as a Medication Prescription
/// or Medication Order). Note that this information is not always sent
/// with the order. There may be in some settings (e.g. hospitals)
/// institutional or system support for completing the dispense details in
/// the pharmacy department.
class MedicationRequestDispenseRequest extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestDispenseRequest]

  const MedicationRequestDispenseRequest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationRequest.dispenseRequest',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationRequestDispenseRequest.empty() =>
      const MedicationRequestDispenseRequest();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestDispenseRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.dispenseRequest';
    return MedicationRequestDispenseRequest(
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
      initialFill: JsonParser.parseObject<MedicationRequestInitialFill>(
        json,
        'initialFill',
        MedicationRequestInitialFill.fromJson,
        '$objectPath.initialFill',
      ),
      dispenseInterval: JsonParser.parseObject<FhirDuration>(
        json,
        'dispenseInterval',
        FhirDuration.fromJson,
        '$objectPath.dispenseInterval',
      ),
      validityPeriod: JsonParser.parseObject<Period>(
        json,
        'validityPeriod',
        Period.fromJson,
        '$objectPath.validityPeriod',
      ),
      numberOfRepeatsAllowed: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfRepeatsAllowed',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfRepeatsAllowed',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      expectedSupplyDuration: JsonParser.parseObject<FhirDuration>(
        json,
        'expectedSupplyDuration',
        FhirDuration.fromJson,
        '$objectPath.expectedSupplyDuration',
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
        '$objectPath.performer',
      ),
    );
  }

  /// Deserialize [MedicationRequestDispenseRequest]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestDispenseRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestDispenseRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestDispenseRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestDispenseRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestDispenseRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestDispenseRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestDispenseRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestDispenseRequest';

  /// [initialFill]
  /// Indicates the quantity or duration for the first dispense of the
  /// medication.
  final MedicationRequestInitialFill? initialFill;

  /// [dispenseInterval]
  /// The minimum period of time that must occur between dispenses of the
  /// medication.
  final FhirDuration? dispenseInterval;

  /// [validityPeriod]
  /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  final Period? validityPeriod;

  /// [numberOfRepeatsAllowed]
  /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense
  /// 30 tablets plus "3 repeats", then the order can be dispensed a total of
  /// 4 times and the patient can receive a total of 120 tablets. A
  /// prescriber may explicitly say that zero refills are permitted after the
  /// initial dispense.
  final FhirUnsignedInt? numberOfRepeatsAllowed;

  /// [quantity]
  /// The amount that is to be dispensed for one fill.
  final Quantity? quantity;

  /// [expectedSupplyDuration]
  /// Identifies the period time over which the supplied product is expected
  /// to be used, or the length of time the dispense is expected to last.
  final FhirDuration? expectedSupplyDuration;

  /// [performer]
  /// Indicates the intended dispensing Organization specified by the
  /// prescriber.
  final Reference? performer;
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
      'initialFill',
      initialFill,
    );
    addField(
      'dispenseInterval',
      dispenseInterval,
    );
    addField(
      'validityPeriod',
      validityPeriod,
    );
    addField(
      'numberOfRepeatsAllowed',
      numberOfRepeatsAllowed,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'expectedSupplyDuration',
      expectedSupplyDuration,
    );
    addField(
      'performer',
      performer,
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
      'initialFill',
      'dispenseInterval',
      'validityPeriod',
      'numberOfRepeatsAllowed',
      'quantity',
      'expectedSupplyDuration',
      'performer',
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
      case 'initialFill':
        if (initialFill != null) {
          fields.add(initialFill!);
        }
      case 'dispenseInterval':
        if (dispenseInterval != null) {
          fields.add(dispenseInterval!);
        }
      case 'validityPeriod':
        if (validityPeriod != null) {
          fields.add(validityPeriod!);
        }
      case 'numberOfRepeatsAllowed':
        if (numberOfRepeatsAllowed != null) {
          fields.add(numberOfRepeatsAllowed!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'expectedSupplyDuration':
        if (expectedSupplyDuration != null) {
          fields.add(expectedSupplyDuration!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
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
      case 'initialFill':
        {
          if (child is MedicationRequestInitialFill) {
            return copyWith(initialFill: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dispenseInterval':
        {
          if (child is FhirDuration) {
            return copyWith(dispenseInterval: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validityPeriod':
        {
          if (child is Period) {
            return copyWith(validityPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numberOfRepeatsAllowed':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(numberOfRepeatsAllowed: child);
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
      case 'expectedSupplyDuration':
        {
          if (child is FhirDuration) {
            return copyWith(expectedSupplyDuration: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is Reference) {
            return copyWith(performer: child);
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
      case 'initialFill':
        return ['MedicationRequestInitialFill'];
      case 'dispenseInterval':
        return ['FhirDuration'];
      case 'validityPeriod':
        return ['Period'];
      case 'numberOfRepeatsAllowed':
        return ['FhirUnsignedInt'];
      case 'quantity':
        return ['Quantity'];
      case 'expectedSupplyDuration':
        return ['FhirDuration'];
      case 'performer':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestDispenseRequest]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationRequestDispenseRequest createProperty(
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
      case 'initialFill':
        {
          return copyWith(
            initialFill: MedicationRequestInitialFill.empty(),
          );
        }
      case 'dispenseInterval':
        {
          return copyWith(
            dispenseInterval: FhirDuration.empty(),
          );
        }
      case 'validityPeriod':
        {
          return copyWith(
            validityPeriod: Period.empty(),
          );
        }
      case 'numberOfRepeatsAllowed':
        {
          return copyWith(
            numberOfRepeatsAllowed: FhirUnsignedInt.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'expectedSupplyDuration':
        {
          return copyWith(
            expectedSupplyDuration: FhirDuration.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationRequestDispenseRequest clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool initialFill = false,
    bool dispenseInterval = false,
    bool validityPeriod = false,
    bool numberOfRepeatsAllowed = false,
    bool quantity = false,
    bool expectedSupplyDuration = false,
    bool performer = false,
  }) {
    return MedicationRequestDispenseRequest(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      initialFill: initialFill ? null : this.initialFill,
      dispenseInterval: dispenseInterval ? null : this.dispenseInterval,
      validityPeriod: validityPeriod ? null : this.validityPeriod,
      numberOfRepeatsAllowed:
          numberOfRepeatsAllowed ? null : this.numberOfRepeatsAllowed,
      quantity: quantity ? null : this.quantity,
      expectedSupplyDuration:
          expectedSupplyDuration ? null : this.expectedSupplyDuration,
      performer: performer ? null : this.performer,
    );
  }

  @override
  MedicationRequestDispenseRequest clone() => throw UnimplementedError();
  @override
  MedicationRequestDispenseRequest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MedicationRequestInitialFill? initialFill,
    FhirDuration? dispenseInterval,
    Period? validityPeriod,
    FhirUnsignedInt? numberOfRepeatsAllowed,
    Quantity? quantity,
    FhirDuration? expectedSupplyDuration,
    Reference? performer,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationRequestDispenseRequest(
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
      initialFill: initialFill?.copyWith(
            objectPath: '$newObjectPath.initialFill',
          ) ??
          this.initialFill,
      dispenseInterval: dispenseInterval?.copyWith(
            objectPath: '$newObjectPath.dispenseInterval',
          ) ??
          this.dispenseInterval,
      validityPeriod: validityPeriod?.copyWith(
            objectPath: '$newObjectPath.validityPeriod',
          ) ??
          this.validityPeriod,
      numberOfRepeatsAllowed: numberOfRepeatsAllowed?.copyWith(
            objectPath: '$newObjectPath.numberOfRepeatsAllowed',
          ) ??
          this.numberOfRepeatsAllowed,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      expectedSupplyDuration: expectedSupplyDuration?.copyWith(
            objectPath: '$newObjectPath.expectedSupplyDuration',
          ) ??
          this.expectedSupplyDuration,
      performer: performer?.copyWith(
            objectPath: '$newObjectPath.performer',
          ) ??
          this.performer,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequestDispenseRequest) {
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
      initialFill,
      o.initialFill,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dispenseInterval,
      o.dispenseInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validityPeriod,
      o.validityPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfRepeatsAllowed,
      o.numberOfRepeatsAllowed,
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
      expectedSupplyDuration,
      o.expectedSupplyDuration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationRequestInitialFill]
/// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFill extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestInitialFill]

  const MedicationRequestInitialFill({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationRequest.dispenseRequest.initialFill',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationRequestInitialFill.empty() =>
      const MedicationRequestInitialFill();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFill.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.dispenseRequest.initialFill';
    return MedicationRequestInitialFill(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      duration: JsonParser.parseObject<FhirDuration>(
        json,
        'duration',
        FhirDuration.fromJson,
        '$objectPath.duration',
      ),
    );
  }

  /// Deserialize [MedicationRequestInitialFill]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestInitialFill.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestInitialFill.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestInitialFill.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestInitialFill '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestInitialFill]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestInitialFill.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestInitialFill.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  /// [quantity]
  /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;

  /// [duration]
  /// The length of time that the first dispense is expected to last.
  final FhirDuration? duration;
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
      'quantity',
      quantity,
    );
    addField(
      'duration',
      duration,
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
      'quantity',
      'duration',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
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
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'duration':
        {
          if (child is FhirDuration) {
            return copyWith(duration: child);
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
      case 'quantity':
        return ['Quantity'];
      case 'duration':
        return ['FhirDuration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestInitialFill]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationRequestInitialFill createProperty(
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
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'duration':
        {
          return copyWith(
            duration: FhirDuration.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationRequestInitialFill clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool quantity = false,
    bool duration = false,
  }) {
    return MedicationRequestInitialFill(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      quantity: quantity ? null : this.quantity,
      duration: duration ? null : this.duration,
    );
  }

  @override
  MedicationRequestInitialFill clone() => throw UnimplementedError();
  @override
  MedicationRequestInitialFill copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? duration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationRequestInitialFill(
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
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      duration: duration?.copyWith(
            objectPath: '$newObjectPath.duration',
          ) ??
          this.duration,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequestInitialFill) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationRequestSubstitution]
/// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestSubstitution]

  const MedicationRequestSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.allowedX,
    this.reason,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationRequest.substitution',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationRequestSubstitution.empty() =>
      MedicationRequestSubstitution(
        allowedX: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.substitution';
    return MedicationRequestSubstitution(
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
      allowedX:
          JsonParser.parsePolymorphic<AllowedXMedicationRequestSubstitution>(
        json,
        {
          'allowedBoolean': FhirBoolean.fromJson,
          'allowedCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      )!,
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [MedicationRequestSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestSubstitution';

  /// [allowedX]
  /// True if the prescriber allows a different drug to be dispensed from
  /// what was prescribed.
  final AllowedXMedicationRequestSubstitution allowedX;

  /// Getter for [allowedBoolean] as a FhirBoolean
  FhirBoolean? get allowedBoolean => allowedX.isAs<FhirBoolean>();

  /// Getter for [allowedCodeableConcept] as a CodeableConcept
  CodeableConcept? get allowedCodeableConcept =>
      allowedX.isAs<CodeableConcept>();

  /// [reason]
  /// Indicates the reason for the substitution, or why substitution must or
  /// must not be performed.
  final CodeableConcept? reason;
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
    final allowedXFhirType = allowedX.fhirType;
    addField(
      'allowed${allowedXFhirType.capitalize()}',
      allowedX,
    );

    addField(
      'reason',
      reason,
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
      'allowedX',
      'reason',
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
      case 'allowed':
        fields.add(allowedX);
      case 'allowedX':
        fields.add(allowedX);
      case 'allowedBoolean':
        if (allowedX is FhirBoolean) {
          fields.add(allowedX);
        }
      case 'allowedCodeableConcept':
        if (allowedX is CodeableConcept) {
          fields.add(allowedX);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
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
      case 'allowedX':
        {
          if (child is AllowedXMedicationRequestSubstitution) {
            return copyWith(allowedX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(allowedX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(allowedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodeableConcept) {
            return copyWith(reason: child);
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
      case 'allowed':
      case 'allowedX':
        return [
          'FhirBoolean',
          'CodeableConcept',
        ];
      case 'allowedBoolean':
        return ['FhirBoolean'];
      case 'allowedCodeableConcept':
        return ['CodeableConcept'];
      case 'reason':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestSubstitution]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MedicationRequestSubstitution createProperty(
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
      case 'allowed':
      case 'allowedX':
      case 'allowedBoolean':
        {
          return copyWith(
            allowedX: FhirBoolean.empty(),
          );
        }
      case 'allowedCodeableConcept':
        {
          return copyWith(
            allowedX: CodeableConcept.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MedicationRequestSubstitution clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool reason = false,
  }) {
    return MedicationRequestSubstitution(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      allowedX: allowedX,
      reason: reason ? null : this.reason,
    );
  }

  @override
  MedicationRequestSubstitution clone() => throw UnimplementedError();
  @override
  MedicationRequestSubstitution copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AllowedXMedicationRequestSubstitution? allowedX,
    CodeableConcept? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationRequestSubstitution(
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
      allowedX: allowedX?.copyWith(
            objectPath: '$newObjectPath.allowedX',
          ) as AllowedXMedicationRequestSubstitution? ??
          this.allowedX,
      reason: reason?.copyWith(
            objectPath: '$newObjectPath.reason',
          ) ??
          this.reason,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequestSubstitution) {
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
      allowedX,
      o.allowedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}
