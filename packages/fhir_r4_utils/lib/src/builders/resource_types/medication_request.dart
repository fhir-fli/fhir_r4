import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        MedicationRequest,
        MedicationRequestDispenseRequest,
        MedicationRequestInitialFill,
        MedicationRequestSubstitution,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [MedicationRequestBuilder]
/// An order or request for both supply of the medication and the
/// instructions for administration of the medication to a patient. The
/// resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use
/// across inpatient and outpatient settings, including care plans, etc.,
/// and to harmonize with workflow patterns.
class MedicationRequestBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationRequestBuilder]

  MedicationRequestBuilder({
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
    this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.reportedX,
    this.medicationX,
    this.subject,
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
  /// For Builder classes, no fields are required
  factory MedicationRequestBuilder.empty() => MedicationRequestBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest';
    return MedicationRequestBuilder(
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
      status: JsonParser.parsePrimitive<MedicationrequestStatusBuilder>(
        json,
        'status',
        MedicationrequestStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      intent: JsonParser.parsePrimitive<MedicationRequestIntentBuilder>(
        json,
        'intent',
        MedicationRequestIntentBuilder.fromJson,
        '$objectPath.intent',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'doNotPerform',
        FhirBooleanBuilder.fromJson,
        '$objectPath.doNotPerform',
      ),
      reportedX: JsonParser.parsePolymorphic<ReportedXMedicationRequestBuilder>(
        json,
        {
          'reportedBoolean': FhirBooleanBuilder.fromJson,
          'reportedReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      medicationX:
          JsonParser.parsePolymorphic<MedicationXMedicationRequestBuilder>(
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
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
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
      authoredOn: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'authoredOn',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requester',
        ReferenceBuilder.fromJson,
        '$objectPath.requester',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
      performerType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'performerType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.performerType',
      ),
      recorder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recorder',
        ReferenceBuilder.fromJson,
        '$objectPath.recorder',
      ),
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
      instantiatesCanonical:
          JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'instantiatesCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'instantiatesUri',
        FhirUriBuilder.fromJson,
        '$objectPath.instantiatesUri',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'groupIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.groupIdentifier',
      ),
      courseOfTherapyType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'courseOfTherapyType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.courseOfTherapyType',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
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
      dispenseRequest:
          JsonParser.parseObject<MedicationRequestDispenseRequestBuilder>(
        json,
        'dispenseRequest',
        MedicationRequestDispenseRequestBuilder.fromJson,
        '$objectPath.dispenseRequest',
      ),
      substitution:
          JsonParser.parseObject<MedicationRequestSubstitutionBuilder>(
        json,
        'substitution',
        MedicationRequestSubstitutionBuilder.fromJson,
        '$objectPath.substitution',
      ),
      priorPrescription: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'priorPrescription',
        ReferenceBuilder.fromJson,
        '$objectPath.priorPrescription',
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

  /// Deserialize [MedicationRequestBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// A code specifying the current state of the order. Generally, this will
  /// be active or completed state.
  MedicationrequestStatusBuilder? status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationRequest.
  CodeableConceptBuilder? statusReason;

  /// [intent]
  /// Whether the request is a proposal, plan, or an original order.
  MedicationRequestIntentBuilder? intent;

  /// [category]
  /// Indicates the type of medication request (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient
  /// or outpatient)).
  List<CodeableConceptBuilder>? category;

  /// [priority]
  /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  RequestPriorityBuilder? priority;

  /// [doNotPerform]
  /// If true indicates that the provider is asking for the medication
  /// request not to occur.
  FhirBooleanBuilder? doNotPerform;

  /// [reportedX]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  ReportedXMedicationRequestBuilder? reportedX;

  /// Getter for [reportedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get reportedBoolean =>
      reportedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [reportedReference] as a ReferenceBuilder
  ReferenceBuilder? get reportedReference =>
      reportedX?.isAs<ReferenceBuilder>();

  /// [medicationX]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  MedicationXMedicationRequestBuilder? medicationX;

  /// Getter for [medicationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get medicationCodeableConcept =>
      medicationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [medicationReference] as a ReferenceBuilder
  ReferenceBuilder? get medicationReference =>
      medicationX?.isAs<ReferenceBuilder>();

  /// [subject]
  /// A link to a resource representing the person or set of individuals to
  /// whom the medication will be given.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The Encounter during which this [x] was created or to which the
  /// creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [supportingInformation]
  /// Include additional information (for example, patient height and weight)
  /// that supports the ordering of the medication.
  List<ReferenceBuilder>? supportingInformation;

  /// [authoredOn]
  /// The date (and perhaps time) when the prescription was initially written
  /// or authored on.
  FhirDateTimeBuilder? authoredOn;

  /// [requester]
  /// The individual, organization, or device that initiated the request and
  /// has responsibility for its activation.
  ReferenceBuilder? requester;

  /// [performer]
  /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration).
  ReferenceBuilder? performer;

  /// [performerType]
  /// Indicates the type of performer of the administration of the
  /// medication.
  CodeableConceptBuilder? performerType;

  /// [recorder]
  /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  ReferenceBuilder? recorder;

  /// [reasonCode]
  /// The reason or the indication for ordering or not ordering the
  /// medication.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication was ordered.
  List<ReferenceBuilder>? reasonReference;

  /// [instantiatesCanonical]
  /// The URL pointing to a protocol, guideline, orderset, or other
  /// definition that is adhered to in whole or in part by this
  /// MedicationRequest.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this MedicationRequest.
  List<FhirUriBuilder>? instantiatesUri;

  /// [basedOn]
  /// A plan or request that is fulfilled in whole or in part by this
  /// medication request.
  List<ReferenceBuilder>? basedOn;

  /// [groupIdentifier]
  /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of
  /// the requisition or prescription.
  IdentifierBuilder? groupIdentifier;

  /// [courseOfTherapyType]
  /// The description of the overall patte3rn of the administration of the
  /// medication to the patient.
  CodeableConceptBuilder? courseOfTherapyType;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  List<ReferenceBuilder>? insurance;

  /// [note]
  /// Extra information about the prescription that could not be conveyed by
  /// the other attributes.
  List<AnnotationBuilder>? note;

  /// [dosageInstruction]
  /// Indicates how the medication is to be used by the patient.
  List<DosageBuilder>? dosageInstruction;

  /// [dispenseRequest]
  /// Indicates the specific details for the dispense or medication supply
  /// part of a medication request (also known as a Medication Prescription
  /// or Medication Order). Note that this information is not always sent
  /// with the order. There may be in some settings (e.g. hospitals)
  /// institutional or system support for completing the dispense details in
  /// the pharmacy department.
  MedicationRequestDispenseRequestBuilder? dispenseRequest;

  /// [substitution]
  /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's
  /// intent. If nothing is specified substitution may be done.
  MedicationRequestSubstitutionBuilder? substitution;

  /// [priorPrescription]
  /// A link to a resource representing an earlier order related order or
  /// prescription.
  ReferenceBuilder? priorPrescription;

  /// [detectedIssue]
  /// Indicates an actual or potential clinical issue with or between one or
  /// more active or proposed clinical actions for a patient; e.g. Drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  List<ReferenceBuilder>? detectedIssue;

  /// [eventHistory]
  /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the resource.
  List<ReferenceBuilder>? eventHistory;

  /// Converts a [MedicationRequestBuilder]
  /// to [MedicationRequest]
  @override
  MedicationRequest build() => MedicationRequest.fromJson(toJson());

  /// Converts a [MedicationRequestBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('intent', intent);
    addField('category', category);
    addField('priority', priority);
    addField('doNotPerform', doNotPerform);
    if (reportedX != null) {
      final fhirType = reportedX!.fhirType;
      addField('reported${fhirType.capitalize()}', reportedX);
    }

    if (medicationX != null) {
      final fhirType = medicationX!.fhirType;
      addField('medication${fhirType.capitalize()}', medicationX);
    }

    addField('subject', subject);
    addField('encounter', encounter);
    addField('supportingInformation', supportingInformation);
    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('performer', performer);
    addField('performerType', performerType);
    addField('recorder', recorder);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('groupIdentifier', groupIdentifier);
    addField('courseOfTherapyType', courseOfTherapyType);
    addField('insurance', insurance);
    addField('note', note);
    addField('dosageInstruction', dosageInstruction);
    addField('dispenseRequest', dispenseRequest);
    addField('substitution', substitution);
    addField('priorPrescription', priorPrescription);
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
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
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
        if (reportedX != null) {
          fields.add(reportedX!);
        }
      case 'reportedX':
        if (reportedX != null) {
          fields.add(reportedX!);
        }
      case 'reportedBoolean':
        if (reportedX is FhirBooleanBuilder) {
          fields.add(reportedX!);
        }
      case 'reportedReference':
        if (reportedX is ReferenceBuilder) {
          fields.add(reportedX!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is MedicationrequestStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MedicationrequestStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusReason':
        {
          if (child is CodeableConceptBuilder) {
            statusReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intent':
        {
          if (child is MedicationRequestIntentBuilder) {
            intent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MedicationRequestIntentBuilder(stringValue);
                intent = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is RequestPriorityBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestPriorityBuilder(stringValue);
                priority = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doNotPerform':
        {
          if (child is FhirBooleanBuilder) {
            doNotPerform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                doNotPerform = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reported':
      case 'reportedX':
        {
          if (child is ReportedXMedicationRequestBuilder) {
            reportedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              reportedX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              reportedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            reportedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reportedReference':
        {
          if (child is ReferenceBuilder) {
            reportedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'medication':
      case 'medicationX':
        {
          if (child is MedicationXMedicationRequestBuilder) {
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
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInformation = [
              ...(supportingInformation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authoredOn':
        {
          if (child is FhirDateTimeBuilder) {
            authoredOn = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                authoredOn = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requester':
        {
          if (child is ReferenceBuilder) {
            requester = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerType':
        {
          if (child is CodeableConceptBuilder) {
            performerType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorder':
        {
          if (child is ReferenceBuilder) {
            recorder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reasonCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reasonCode = [
              ...(reasonCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reasonReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reasonReference = [
              ...(reasonReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            instantiatesCanonical = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            instantiatesCanonical = [
              ...(instantiatesCanonical ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesCanonical = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesCanonical = [
                  ...(instantiatesCanonical ?? []),
                  converted
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            instantiatesUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            instantiatesUri = [
              ...(instantiatesUri ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesUri = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesUri = [...(instantiatesUri ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'groupIdentifier':
        {
          if (child is IdentifierBuilder) {
            groupIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'courseOfTherapyType':
        {
          if (child is CodeableConceptBuilder) {
            courseOfTherapyType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'insurance':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            insurance = [
              ...(insurance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosageInstruction':
        {
          if (child is List<DosageBuilder>) {
            // Replace or create new list
            dosageInstruction = child;
            return;
          } else if (child is DosageBuilder) {
            // Add single element to existing list or create new list
            dosageInstruction = [
              ...(dosageInstruction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dispenseRequest':
        {
          if (child is MedicationRequestDispenseRequestBuilder) {
            dispenseRequest = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substitution':
        {
          if (child is MedicationRequestSubstitutionBuilder) {
            substitution = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priorPrescription':
        {
          if (child is ReferenceBuilder) {
            priorPrescription = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detectedIssue':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            detectedIssue = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            detectedIssue = [
              ...(detectedIssue ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eventHistory':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            eventHistory = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            eventHistory = [
              ...(eventHistory ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'intent':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'doNotPerform':
        return ['FhirBooleanBuilder'];
      case 'reported':
      case 'reportedX':
        return [
          'FhirBooleanBuilder',
          'ReferenceBuilder',
        ];
      case 'reportedBoolean':
        return ['FhirBooleanBuilder'];
      case 'reportedReference':
        return ['ReferenceBuilder'];
      case 'medication':
      case 'medicationX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'medicationCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'medicationReference':
        return ['ReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'authoredOn':
        return ['FhirDateTimeBuilder'];
      case 'requester':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'performerType':
        return ['CodeableConceptBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'instantiatesCanonical':
        return ['FhirCanonicalBuilder'];
      case 'instantiatesUri':
        return ['FhirUriBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'groupIdentifier':
        return ['IdentifierBuilder'];
      case 'courseOfTherapyType':
        return ['CodeableConceptBuilder'];
      case 'insurance':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'dosageInstruction':
        return ['DosageBuilder'];
      case 'dispenseRequest':
        return ['MedicationRequestDispenseRequestBuilder'];
      case 'substitution':
        return ['MedicationRequestSubstitutionBuilder'];
      case 'priorPrescription':
        return ['ReferenceBuilder'];
      case 'detectedIssue':
        return ['ReferenceBuilder'];
      case 'eventHistory':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestBuilder]
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
          status = MedicationrequestStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'intent':
        {
          intent = MedicationRequestIntentBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
          return;
        }
      case 'doNotPerform':
        {
          doNotPerform = FhirBooleanBuilder.empty();
          return;
        }
      case 'reported':
      case 'reportedX':
      case 'reportedBoolean':
        {
          reportedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'reportedReference':
        {
          reportedX = ReferenceBuilder.empty();
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
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'supportingInformation':
        {
          supportingInformation = <ReferenceBuilder>[];
          return;
        }
      case 'authoredOn':
        {
          authoredOn = FhirDateTimeBuilder.empty();
          return;
        }
      case 'requester':
        {
          requester = ReferenceBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
          return;
        }
      case 'performerType':
        {
          performerType = CodeableConceptBuilder.empty();
          return;
        }
      case 'recorder':
        {
          recorder = ReferenceBuilder.empty();
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
      case 'instantiatesCanonical':
        {
          instantiatesCanonical = <FhirCanonicalBuilder>[];
          return;
        }
      case 'instantiatesUri':
        {
          instantiatesUri = <FhirUriBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'groupIdentifier':
        {
          groupIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'courseOfTherapyType':
        {
          courseOfTherapyType = CodeableConceptBuilder.empty();
          return;
        }
      case 'insurance':
        {
          insurance = <ReferenceBuilder>[];
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
      case 'dispenseRequest':
        {
          dispenseRequest = MedicationRequestDispenseRequestBuilder.empty();
          return;
        }
      case 'substitution':
        {
          substitution = MedicationRequestSubstitutionBuilder.empty();
          return;
        }
      case 'priorPrescription':
        {
          priorPrescription = ReferenceBuilder.empty();
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
    bool status = false,
    bool statusReason = false,
    bool intent = false,
    bool category = false,
    bool priority = false,
    bool doNotPerform = false,
    bool reported = false,
    bool medication = false,
    bool subject = false,
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
    if (intent) this.intent = null;
    if (category) this.category = null;
    if (priority) this.priority = null;
    if (doNotPerform) this.doNotPerform = null;
    if (reported) this.reportedX = null;
    if (medication) this.medicationX = null;
    if (subject) this.subject = null;
    if (encounter) this.encounter = null;
    if (supportingInformation) this.supportingInformation = null;
    if (authoredOn) this.authoredOn = null;
    if (requester) this.requester = null;
    if (performer) this.performer = null;
    if (performerType) this.performerType = null;
    if (recorder) this.recorder = null;
    if (reasonCode) this.reasonCode = null;
    if (reasonReference) this.reasonReference = null;
    if (instantiatesCanonical) this.instantiatesCanonical = null;
    if (instantiatesUri) this.instantiatesUri = null;
    if (basedOn) this.basedOn = null;
    if (groupIdentifier) this.groupIdentifier = null;
    if (courseOfTherapyType) this.courseOfTherapyType = null;
    if (insurance) this.insurance = null;
    if (note) this.note = null;
    if (dosageInstruction) this.dosageInstruction = null;
    if (dispenseRequest) this.dispenseRequest = null;
    if (substitution) this.substitution = null;
    if (priorPrescription) this.priorPrescription = null;
    if (detectedIssue) this.detectedIssue = null;
    if (eventHistory) this.eventHistory = null;
  }

  @override
  MedicationRequestBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    MedicationrequestStatusBuilder? status,
    CodeableConceptBuilder? statusReason,
    MedicationRequestIntentBuilder? intent,
    List<CodeableConceptBuilder>? category,
    RequestPriorityBuilder? priority,
    FhirBooleanBuilder? doNotPerform,
    ReportedXMedicationRequestBuilder? reportedX,
    MedicationXMedicationRequestBuilder? medicationX,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    List<ReferenceBuilder>? supportingInformation,
    FhirDateTimeBuilder? authoredOn,
    ReferenceBuilder? requester,
    ReferenceBuilder? performer,
    CodeableConceptBuilder? performerType,
    ReferenceBuilder? recorder,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    List<FhirCanonicalBuilder>? instantiatesCanonical,
    List<FhirUriBuilder>? instantiatesUri,
    List<ReferenceBuilder>? basedOn,
    IdentifierBuilder? groupIdentifier,
    CodeableConceptBuilder? courseOfTherapyType,
    List<ReferenceBuilder>? insurance,
    List<AnnotationBuilder>? note,
    List<DosageBuilder>? dosageInstruction,
    MedicationRequestDispenseRequestBuilder? dispenseRequest,
    MedicationRequestSubstitutionBuilder? substitution,
    ReferenceBuilder? priorPrescription,
    List<ReferenceBuilder>? detectedIssue,
    List<ReferenceBuilder>? eventHistory,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationRequestBuilder(
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
      intent: intent ?? this.intent,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      reportedX: reportedX ?? this.reportedX,
      medicationX: medicationX ?? this.medicationX,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      performer: performer ?? this.performer,
      performerType: performerType ?? this.performerType,
      recorder: recorder ?? this.recorder,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      courseOfTherapyType: courseOfTherapyType ?? this.courseOfTherapyType,
      insurance: insurance ?? this.insurance,
      note: note ?? this.note,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      dispenseRequest: dispenseRequest ?? this.dispenseRequest,
      substitution: substitution ?? this.substitution,
      priorPrescription: priorPrescription ?? this.priorPrescription,
      detectedIssue: detectedIssue ?? this.detectedIssue,
      eventHistory: eventHistory ?? this.eventHistory,
    )..objectPath = newObjectPath;
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
    if (o is! MedicationRequestBuilder) {
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
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<FhirCanonicalBuilder>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      insurance,
      o.insurance,
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

/// [MedicationRequestDispenseRequestBuilder]
/// Indicates the specific details for the dispense or medication supply
/// part of a medication request (also known as a Medication Prescription
/// or Medication Order). Note that this information is not always sent
/// with the order. There may be in some settings (e.g. hospitals)
/// institutional or system support for completing the dispense details in
/// the pharmacy department.
class MedicationRequestDispenseRequestBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationRequestDispenseRequestBuilder]

  MedicationRequestDispenseRequestBuilder({
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
  /// For Builder classes, no fields are required
  factory MedicationRequestDispenseRequestBuilder.empty() =>
      MedicationRequestDispenseRequestBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestDispenseRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.dispenseRequest';
    return MedicationRequestDispenseRequestBuilder(
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
      initialFill: JsonParser.parseObject<MedicationRequestInitialFillBuilder>(
        json,
        'initialFill',
        MedicationRequestInitialFillBuilder.fromJson,
        '$objectPath.initialFill',
      ),
      dispenseInterval: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'dispenseInterval',
        FhirDurationBuilder.fromJson,
        '$objectPath.dispenseInterval',
      ),
      validityPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'validityPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.validityPeriod',
      ),
      numberOfRepeatsAllowed: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'numberOfRepeatsAllowed',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.numberOfRepeatsAllowed',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      expectedSupplyDuration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'expectedSupplyDuration',
        FhirDurationBuilder.fromJson,
        '$objectPath.expectedSupplyDuration',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
    );
  }

  /// Deserialize [MedicationRequestDispenseRequestBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestDispenseRequestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestDispenseRequestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestDispenseRequestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestDispenseRequestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestDispenseRequestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestDispenseRequestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestDispenseRequestBuilder.fromJson(json);
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
  MedicationRequestInitialFillBuilder? initialFill;

  /// [dispenseInterval]
  /// The minimum period of time that must occur between dispenses of the
  /// medication.
  FhirDurationBuilder? dispenseInterval;

  /// [validityPeriod]
  /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  PeriodBuilder? validityPeriod;

  /// [numberOfRepeatsAllowed]
  /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense
  /// 30 tablets plus "3 repeats", then the order can be dispensed a total of
  /// 4 times and the patient can receive a total of 120 tablets. A
  /// prescriber may explicitly say that zero refills are permitted after the
  /// initial dispense.
  FhirUnsignedIntBuilder? numberOfRepeatsAllowed;

  /// [quantity]
  /// The amount that is to be dispensed for one fill.
  QuantityBuilder? quantity;

  /// [expectedSupplyDuration]
  /// Identifies the period time over which the supplied product is expected
  /// to be used, or the length of time the dispense is expected to last.
  FhirDurationBuilder? expectedSupplyDuration;

  /// [performer]
  /// Indicates the intended dispensing Organization specified by the
  /// prescriber.
  ReferenceBuilder? performer;

  /// Converts a [MedicationRequestDispenseRequestBuilder]
  /// to [MedicationRequestDispenseRequest]
  @override
  MedicationRequestDispenseRequest build() =>
      MedicationRequestDispenseRequest.fromJson(toJson());

  /// Converts a [MedicationRequestDispenseRequestBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('initialFill', initialFill);
    addField('dispenseInterval', dispenseInterval);
    addField('validityPeriod', validityPeriod);
    addField('numberOfRepeatsAllowed', numberOfRepeatsAllowed);
    addField('quantity', quantity);
    addField('expectedSupplyDuration', expectedSupplyDuration);
    addField('performer', performer);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'initialFill':
        {
          if (child is MedicationRequestInitialFillBuilder) {
            initialFill = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dispenseInterval':
        {
          if (child is FhirDurationBuilder) {
            dispenseInterval = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validityPeriod':
        {
          if (child is PeriodBuilder) {
            validityPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberOfRepeatsAllowed':
        {
          if (child is FhirUnsignedIntBuilder) {
            numberOfRepeatsAllowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  numberOfRepeatsAllowed = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expectedSupplyDuration':
        {
          if (child is FhirDurationBuilder) {
            expectedSupplyDuration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'initialFill':
        return ['MedicationRequestInitialFillBuilder'];
      case 'dispenseInterval':
        return ['FhirDurationBuilder'];
      case 'validityPeriod':
        return ['PeriodBuilder'];
      case 'numberOfRepeatsAllowed':
        return ['FhirUnsignedIntBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'expectedSupplyDuration':
        return ['FhirDurationBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestDispenseRequestBuilder]
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
      case 'initialFill':
        {
          initialFill = MedicationRequestInitialFillBuilder.empty();
          return;
        }
      case 'dispenseInterval':
        {
          dispenseInterval = FhirDurationBuilder.empty();
          return;
        }
      case 'validityPeriod':
        {
          validityPeriod = PeriodBuilder.empty();
          return;
        }
      case 'numberOfRepeatsAllowed':
        {
          numberOfRepeatsAllowed = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'expectedSupplyDuration':
        {
          expectedSupplyDuration = FhirDurationBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
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
    bool initialFill = false,
    bool dispenseInterval = false,
    bool validityPeriod = false,
    bool numberOfRepeatsAllowed = false,
    bool quantity = false,
    bool expectedSupplyDuration = false,
    bool performer = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (initialFill) this.initialFill = null;
    if (dispenseInterval) this.dispenseInterval = null;
    if (validityPeriod) this.validityPeriod = null;
    if (numberOfRepeatsAllowed) this.numberOfRepeatsAllowed = null;
    if (quantity) this.quantity = null;
    if (expectedSupplyDuration) this.expectedSupplyDuration = null;
    if (performer) this.performer = null;
  }

  @override
  MedicationRequestDispenseRequestBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestDispenseRequestBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MedicationRequestInitialFillBuilder? initialFill,
    FhirDurationBuilder? dispenseInterval,
    PeriodBuilder? validityPeriod,
    FhirUnsignedIntBuilder? numberOfRepeatsAllowed,
    QuantityBuilder? quantity,
    FhirDurationBuilder? expectedSupplyDuration,
    ReferenceBuilder? performer,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationRequestDispenseRequestBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      initialFill: initialFill ?? this.initialFill,
      dispenseInterval: dispenseInterval ?? this.dispenseInterval,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      numberOfRepeatsAllowed:
          numberOfRepeatsAllowed ?? this.numberOfRepeatsAllowed,
      quantity: quantity ?? this.quantity,
      expectedSupplyDuration:
          expectedSupplyDuration ?? this.expectedSupplyDuration,
      performer: performer ?? this.performer,
    )..objectPath = newObjectPath;
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
    if (o is! MedicationRequestDispenseRequestBuilder) {
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

/// [MedicationRequestInitialFillBuilder]
/// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFillBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationRequestInitialFillBuilder]

  MedicationRequestInitialFillBuilder({
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
  /// For Builder classes, no fields are required
  factory MedicationRequestInitialFillBuilder.empty() =>
      MedicationRequestInitialFillBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFillBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.dispenseRequest.initialFill';
    return MedicationRequestInitialFillBuilder(
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
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      duration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'duration',
        FhirDurationBuilder.fromJson,
        '$objectPath.duration',
      ),
    );
  }

  /// Deserialize [MedicationRequestInitialFillBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestInitialFillBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestInitialFillBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestInitialFillBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestInitialFillBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestInitialFillBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestInitialFillBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestInitialFillBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  /// [quantity]
  /// The amount or quantity to provide as part of the first dispense.
  QuantityBuilder? quantity;

  /// [duration]
  /// The length of time that the first dispense is expected to last.
  FhirDurationBuilder? duration;

  /// Converts a [MedicationRequestInitialFillBuilder]
  /// to [MedicationRequestInitialFill]
  @override
  MedicationRequestInitialFill build() =>
      MedicationRequestInitialFill.fromJson(toJson());

  /// Converts a [MedicationRequestInitialFillBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('quantity', quantity);
    addField('duration', duration);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'duration':
        {
          if (child is FhirDurationBuilder) {
            duration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'quantity':
        return ['QuantityBuilder'];
      case 'duration':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestInitialFillBuilder]
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
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = FhirDurationBuilder.empty();
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
    bool quantity = false,
    bool duration = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (quantity) this.quantity = null;
    if (duration) this.duration = null;
  }

  @override
  MedicationRequestInitialFillBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestInitialFillBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QuantityBuilder? quantity,
    FhirDurationBuilder? duration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationRequestInitialFillBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      duration: duration ?? this.duration,
    )..objectPath = newObjectPath;
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
    if (o is! MedicationRequestInitialFillBuilder) {
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

/// [MedicationRequestSubstitutionBuilder]
/// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitutionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationRequestSubstitutionBuilder]

  MedicationRequestSubstitutionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.allowedX,
    this.reason,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationRequest.substitution',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationRequestSubstitutionBuilder.empty() =>
      MedicationRequestSubstitutionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitutionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.substitution';
    return MedicationRequestSubstitutionBuilder(
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
      allowedX: JsonParser.parsePolymorphic<
          AllowedXMedicationRequestSubstitutionBuilder>(
        json,
        {
          'allowedBoolean': FhirBooleanBuilder.fromJson,
          'allowedCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [MedicationRequestSubstitutionBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestSubstitutionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestSubstitutionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestSubstitutionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestSubstitutionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestSubstitutionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestSubstitutionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestSubstitutionBuilder.fromJson(json);
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
  AllowedXMedicationRequestSubstitutionBuilder? allowedX;

  /// Getter for [allowedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get allowedBoolean =>
      allowedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [allowedCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get allowedCodeableConcept =>
      allowedX?.isAs<CodeableConceptBuilder>();

  /// [reason]
  /// Indicates the reason for the substitution, or why substitution must or
  /// must not be performed.
  CodeableConceptBuilder? reason;

  /// Converts a [MedicationRequestSubstitutionBuilder]
  /// to [MedicationRequestSubstitution]
  @override
  MedicationRequestSubstitution build() =>
      MedicationRequestSubstitution.fromJson(toJson());

  /// Converts a [MedicationRequestSubstitutionBuilder]
  /// to a [Map<String, dynamic>]
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
    if (allowedX != null) {
      final fhirType = allowedX!.fhirType;
      addField('allowed${fhirType.capitalize()}', allowedX);
    }

    addField('reason', reason);
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
      case 'allowed':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedX':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedBoolean':
        if (allowedX is FhirBooleanBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedCodeableConcept':
        if (allowedX is CodeableConceptBuilder) {
          fields.add(allowedX!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowed':
      case 'allowedX':
        {
          if (child is AllowedXMedicationRequestSubstitutionBuilder) {
            allowedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              allowedX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              allowedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'allowed':
      case 'allowedX':
        return [
          'FhirBooleanBuilder',
          'CodeableConceptBuilder',
        ];
      case 'allowedBoolean':
        return ['FhirBooleanBuilder'];
      case 'allowedCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestSubstitutionBuilder]
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
      case 'allowed':
      case 'allowedX':
      case 'allowedBoolean':
        {
          allowedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'allowedCodeableConcept':
        {
          allowedX = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
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
    bool allowed = false,
    bool reason = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (allowed) this.allowedX = null;
    if (reason) this.reason = null;
  }

  @override
  MedicationRequestSubstitutionBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestSubstitutionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AllowedXMedicationRequestSubstitutionBuilder? allowedX,
    CodeableConceptBuilder? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationRequestSubstitutionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      allowedX: allowedX ?? this.allowedX,
      reason: reason ?? this.reason,
    )..objectPath = newObjectPath;
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
    if (o is! MedicationRequestSubstitutionBuilder) {
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
