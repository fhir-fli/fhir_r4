import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ClaimResponse]
/// This resource provides the adjudication details from the processing of
/// a Claim resource.
class ClaimResponse extends DomainResource {
  /// Primary constructor for
  /// [ClaimResponse]

  const ClaimResponse({
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
    required this.type,
    this.subType,
    required this.use,
    required this.patient,
    required this.created,
    required this.insurer,
    this.requestor,
    this.request,
    required this.outcome,
    this.disposition,
    this.preAuthRef,
    this.preAuthPeriod,
    this.payeeType,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.fundsReserve,
    this.formCode,
    this.form,
    this.processNote,
    this.communicationRequest,
    this.insurance,
    this.error,
  }) : super(
          objectPath: 'ClaimResponse',
          resourceType: R4ResourceType.ClaimResponse,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponse.empty() => ClaimResponse(
        status: FinancialResourceStatusCodes.values.first,
        type: CodeableConcept.empty(),
        use: Use.values.first,
        patient: Reference.empty(),
        created: FhirDateTime.empty(),
        insurer: Reference.empty(),
        outcome: RemittanceOutcome.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse';
    return ClaimResponse(
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
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
        '$objectPath.subType',
      ),
      use: JsonParser.parsePrimitive<Use>(
        json,
        'use',
        Use.fromJson,
        '$objectPath.use',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      )!,
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
        '$objectPath.insurer',
      )!,
      requestor: JsonParser.parseObject<Reference>(
        json,
        'requestor',
        Reference.fromJson,
        '$objectPath.requestor',
      ),
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
        '$objectPath.request',
      ),
      outcome: JsonParser.parsePrimitive<RemittanceOutcome>(
        json,
        'outcome',
        RemittanceOutcome.fromJson,
        '$objectPath.outcome',
      )!,
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
        '$objectPath.disposition',
      ),
      preAuthRef: JsonParser.parsePrimitive<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
        '$objectPath.preAuthRef',
      ),
      preAuthPeriod: JsonParser.parseObject<Period>(
        json,
        'preAuthPeriod',
        Period.fromJson,
        '$objectPath.preAuthPeriod',
      ),
      payeeType: JsonParser.parseObject<CodeableConcept>(
        json,
        'payeeType',
        CodeableConcept.fromJson,
        '$objectPath.payeeType',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ClaimResponseItem>(
            (v) => ClaimResponseItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map<ClaimResponseAddItem>(
            (v) => ClaimResponseAddItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addItem',
              },
            ),
          )
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map<ClaimResponseTotal>(
            (v) => ClaimResponseTotal.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.total',
              },
            ),
          )
          .toList(),
      payment: JsonParser.parseObject<ClaimResponsePayment>(
        json,
        'payment',
        ClaimResponsePayment.fromJson,
        '$objectPath.payment',
      ),
      fundsReserve: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundsReserve',
        CodeableConcept.fromJson,
        '$objectPath.fundsReserve',
      ),
      formCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'formCode',
        CodeableConcept.fromJson,
        '$objectPath.formCode',
      ),
      form: JsonParser.parseObject<Attachment>(
        json,
        'form',
        Attachment.fromJson,
        '$objectPath.form',
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<ClaimResponseProcessNote>(
            (v) => ClaimResponseProcessNote.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
      communicationRequest: (json['communicationRequest'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communicationRequest',
              },
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ClaimResponseInsurance>(
            (v) => ClaimResponseInsurance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      error: (json['error'] as List<dynamic>?)
          ?.map<ClaimResponseError>(
            (v) => ClaimResponseError.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.error',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponse]
  /// from a [String] or [YamlMap] object
  factory ClaimResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponse';

  /// [identifier]
  /// A unique identifier assigned to this claim response.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [type]
  /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  final CodeableConcept type;

  /// [subType]
  /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  final CodeableConcept? subType;

  /// [use]
  /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or
  /// requesting authorization and adjudication for provision in the future;
  /// or requesting the non-binding adjudication of the listed products and
  /// services which could be provided in the future.
  final Use use;

  /// [patient]
  /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for facast
  /// reimbursement is sought.
  final Reference patient;

  /// [created]
  /// The date this resource was created.
  final FhirDateTime created;

  /// [insurer]
  /// The party responsible for authorization, adjudication and
  /// reimbursement.
  final Reference insurer;

  /// [requestor]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  final Reference? requestor;

  /// [request]
  /// Original request resource reference.
  final Reference? request;

  /// [outcome]
  /// The outcome of the claim, predetermination, or preauthorization
  /// processing.
  final RemittanceOutcome outcome;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  final FhirString? disposition;

  /// [preAuthRef]
  /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  final FhirString? preAuthRef;

  /// [preAuthPeriod]
  /// The time frame during which this authorization is effective.
  final Period? preAuthPeriod;

  /// [payeeType]
  /// Type of Party to be reimbursed: subscriber, provider, other.
  final CodeableConcept? payeeType;

  /// [item]
  /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  final List<ClaimResponseItem>? item;

  /// [addItem]
  /// The first-tier service adjudications for payor added product or service
  /// lines.
  final List<ClaimResponseAddItem>? addItem;

  /// [adjudication]
  /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  final List<ClaimResponseAdjudication>? adjudication;

  /// [total]
  /// Categorized monetary totals for the adjudication.
  final List<ClaimResponseTotal>? total;

  /// [payment]
  /// Payment details for the adjudication of the claim.
  final ClaimResponsePayment? payment;

  /// [fundsReserve]
  /// A code, used only on a response to a preauthorization, to indicate
  /// whether the benefits payable have been reserved and for whom.
  final CodeableConcept? fundsReserve;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [form]
  /// The actual form, by reference or inclusion, for printing the content or
  /// an EOB.
  final Attachment? form;

  /// [processNote]
  /// A note that describes or explains adjudication results in a human
  /// readable form.
  final List<ClaimResponseProcessNote>? processNote;

  /// [communicationRequest]
  /// Request for additional supporting or authorizing information.
  final List<Reference>? communicationRequest;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  final List<ClaimResponseInsurance>? insurance;

  /// [error]
  /// Errors encountered during the processing of the adjudication.
  final List<ClaimResponseError>? error;
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
      'type',
      type,
    );
    addField(
      'subType',
      subType,
    );
    addField(
      'use',
      use,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'created',
      created,
    );
    addField(
      'insurer',
      insurer,
    );
    addField(
      'requestor',
      requestor,
    );
    addField(
      'request',
      request,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'disposition',
      disposition,
    );
    addField(
      'preAuthRef',
      preAuthRef,
    );
    addField(
      'preAuthPeriod',
      preAuthPeriod,
    );
    addField(
      'payeeType',
      payeeType,
    );
    addField(
      'item',
      item,
    );
    addField(
      'addItem',
      addItem,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'total',
      total,
    );
    addField(
      'payment',
      payment,
    );
    addField(
      'fundsReserve',
      fundsReserve,
    );
    addField(
      'formCode',
      formCode,
    );
    addField(
      'form',
      form,
    );
    addField(
      'processNote',
      processNote,
    );
    addField(
      'communicationRequest',
      communicationRequest,
    );
    addField(
      'insurance',
      insurance,
    );
    addField(
      'error',
      error,
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
      'type',
      'subType',
      'use',
      'patient',
      'created',
      'insurer',
      'requestor',
      'request',
      'outcome',
      'disposition',
      'preAuthRef',
      'preAuthPeriod',
      'payeeType',
      'item',
      'addItem',
      'adjudication',
      'total',
      'payment',
      'fundsReserve',
      'formCode',
      'form',
      'processNote',
      'communicationRequest',
      'insurance',
      'error',
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
      case 'type':
        fields.add(type);
      case 'subType':
        if (subType != null) {
          fields.add(subType!);
        }
      case 'use':
        fields.add(use);
      case 'patient':
        fields.add(patient);
      case 'created':
        fields.add(created);
      case 'insurer':
        fields.add(insurer);
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'outcome':
        fields.add(outcome);
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.add(preAuthRef!);
        }
      case 'preAuthPeriod':
        if (preAuthPeriod != null) {
          fields.add(preAuthPeriod!);
        }
      case 'payeeType':
        if (payeeType != null) {
          fields.add(payeeType!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      case 'addItem':
        if (addItem != null) {
          fields.addAll(addItem!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'total':
        if (total != null) {
          fields.addAll(total!);
        }
      case 'payment':
        if (payment != null) {
          fields.add(payment!);
        }
      case 'fundsReserve':
        if (fundsReserve != null) {
          fields.add(fundsReserve!);
        }
      case 'formCode':
        if (formCode != null) {
          fields.add(formCode!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'processNote':
        if (processNote != null) {
          fields.addAll(processNote!);
        }
      case 'communicationRequest':
        if (communicationRequest != null) {
          fields.addAll(communicationRequest!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'error':
        if (error != null) {
          fields.addAll(error!);
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
      case 'status':
        {
          if (child is FinancialResourceStatusCodes) {
            return copyWith(status: child);
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
      case 'subType':
        {
          if (child is CodeableConcept) {
            return copyWith(subType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is Use) {
            return copyWith(use: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'created':
        {
          if (child is FhirDateTime) {
            return copyWith(created: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurer':
        {
          if (child is Reference) {
            return copyWith(insurer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requestor':
        {
          if (child is Reference) {
            return copyWith(requestor: child);
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
      case 'outcome':
        {
          if (child is RemittanceOutcome) {
            return copyWith(outcome: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'disposition':
        {
          if (child is FhirString) {
            return copyWith(disposition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRef':
        {
          if (child is FhirString) {
            return copyWith(preAuthRef: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthPeriod':
        {
          if (child is Period) {
            return copyWith(preAuthPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payeeType':
        {
          if (child is CodeableConcept) {
            return copyWith(payeeType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is List<ClaimResponseItem>) {
            // Add all elements from passed list
            final newList = [...?item, ...child];
            return copyWith(item: newList);
          } else if (child is ClaimResponseItem) {
            // Add single element to existing list or create new list
            final newList = [...?item, child];
            return copyWith(item: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addItem':
        {
          if (child is List<ClaimResponseAddItem>) {
            // Add all elements from passed list
            final newList = [...?addItem, ...child];
            return copyWith(addItem: newList);
          } else if (child is ClaimResponseAddItem) {
            // Add single element to existing list or create new list
            final newList = [...?addItem, child];
            return copyWith(addItem: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...?adjudication, child];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'total':
        {
          if (child is List<ClaimResponseTotal>) {
            // Add all elements from passed list
            final newList = [...?total, ...child];
            return copyWith(total: newList);
          } else if (child is ClaimResponseTotal) {
            // Add single element to existing list or create new list
            final newList = [...?total, child];
            return copyWith(total: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payment':
        {
          if (child is ClaimResponsePayment) {
            return copyWith(payment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fundsReserve':
        {
          if (child is CodeableConcept) {
            return copyWith(fundsReserve: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'formCode':
        {
          if (child is CodeableConcept) {
            return copyWith(formCode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'form':
        {
          if (child is Attachment) {
            return copyWith(form: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'processNote':
        {
          if (child is List<ClaimResponseProcessNote>) {
            // Add all elements from passed list
            final newList = [...?processNote, ...child];
            return copyWith(processNote: newList);
          } else if (child is ClaimResponseProcessNote) {
            // Add single element to existing list or create new list
            final newList = [...?processNote, child];
            return copyWith(processNote: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'communicationRequest':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?communicationRequest, ...child];
            return copyWith(communicationRequest: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?communicationRequest, child];
            return copyWith(communicationRequest: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurance':
        {
          if (child is List<ClaimResponseInsurance>) {
            // Add all elements from passed list
            final newList = [...?insurance, ...child];
            return copyWith(insurance: newList);
          } else if (child is ClaimResponseInsurance) {
            // Add single element to existing list or create new list
            final newList = [...?insurance, child];
            return copyWith(insurance: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'error':
        {
          if (child is List<ClaimResponseError>) {
            // Add all elements from passed list
            final newList = [...?error, ...child];
            return copyWith(error: newList);
          } else if (child is ClaimResponseError) {
            // Add single element to existing list or create new list
            final newList = [...?error, child];
            return copyWith(error: newList);
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
      case 'type':
        return ['CodeableConcept'];
      case 'subType':
        return ['CodeableConcept'];
      case 'use':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'created':
        return ['FhirDateTime'];
      case 'insurer':
        return ['Reference'];
      case 'requestor':
        return ['Reference'];
      case 'request':
        return ['Reference'];
      case 'outcome':
        return ['FhirCode'];
      case 'disposition':
        return ['FhirString'];
      case 'preAuthRef':
        return ['FhirString'];
      case 'preAuthPeriod':
        return ['Period'];
      case 'payeeType':
        return ['CodeableConcept'];
      case 'item':
        return ['ClaimResponseItem'];
      case 'addItem':
        return ['ClaimResponseAddItem'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      case 'total':
        return ['ClaimResponseTotal'];
      case 'payment':
        return ['ClaimResponsePayment'];
      case 'fundsReserve':
        return ['CodeableConcept'];
      case 'formCode':
        return ['CodeableConcept'];
      case 'form':
        return ['Attachment'];
      case 'processNote':
        return ['ClaimResponseProcessNote'];
      case 'communicationRequest':
        return ['Reference'];
      case 'insurance':
        return ['ClaimResponseInsurance'];
      case 'error':
        return ['ClaimResponseError'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponse]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponse createProperty(
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
            status: FinancialResourceStatusCodes.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'subType':
        {
          return copyWith(
            subType: CodeableConcept.empty(),
          );
        }
      case 'use':
        {
          return copyWith(
            use: Use.empty(),
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'created':
        {
          return copyWith(
            created: FhirDateTime.empty(),
          );
        }
      case 'insurer':
        {
          return copyWith(
            insurer: Reference.empty(),
          );
        }
      case 'requestor':
        {
          return copyWith(
            requestor: Reference.empty(),
          );
        }
      case 'request':
        {
          return copyWith(
            request: Reference.empty(),
          );
        }
      case 'outcome':
        {
          return copyWith(
            outcome: RemittanceOutcome.empty(),
          );
        }
      case 'disposition':
        {
          return copyWith(
            disposition: FhirString.empty(),
          );
        }
      case 'preAuthRef':
        {
          return copyWith(
            preAuthRef: FhirString.empty(),
          );
        }
      case 'preAuthPeriod':
        {
          return copyWith(
            preAuthPeriod: Period.empty(),
          );
        }
      case 'payeeType':
        {
          return copyWith(
            payeeType: CodeableConcept.empty(),
          );
        }
      case 'item':
        {
          return copyWith(
            item: <ClaimResponseItem>[],
          );
        }
      case 'addItem':
        {
          return copyWith(
            addItem: <ClaimResponseAddItem>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      case 'total':
        {
          return copyWith(
            total: <ClaimResponseTotal>[],
          );
        }
      case 'payment':
        {
          return copyWith(
            payment: ClaimResponsePayment.empty(),
          );
        }
      case 'fundsReserve':
        {
          return copyWith(
            fundsReserve: CodeableConcept.empty(),
          );
        }
      case 'formCode':
        {
          return copyWith(
            formCode: CodeableConcept.empty(),
          );
        }
      case 'form':
        {
          return copyWith(
            form: Attachment.empty(),
          );
        }
      case 'processNote':
        {
          return copyWith(
            processNote: <ClaimResponseProcessNote>[],
          );
        }
      case 'communicationRequest':
        {
          return copyWith(
            communicationRequest: <Reference>[],
          );
        }
      case 'insurance':
        {
          return copyWith(
            insurance: <ClaimResponseInsurance>[],
          );
        }
      case 'error':
        {
          return copyWith(
            error: <ClaimResponseError>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponse clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool subType = false,
    bool requestor = false,
    bool request = false,
    bool disposition = false,
    bool preAuthRef = false,
    bool preAuthPeriod = false,
    bool payeeType = false,
    bool item = false,
    bool addItem = false,
    bool adjudication = false,
    bool total = false,
    bool payment = false,
    bool fundsReserve = false,
    bool formCode = false,
    bool form = false,
    bool processNote = false,
    bool communicationRequest = false,
    bool insurance = false,
    bool error = false,
  }) {
    return ClaimResponse(
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
      type: type,
      subType: subType ? null : this.subType,
      use: use,
      patient: patient,
      created: created,
      insurer: insurer,
      requestor: requestor ? null : this.requestor,
      request: request ? null : this.request,
      outcome: outcome,
      disposition: disposition ? null : this.disposition,
      preAuthRef: preAuthRef ? null : this.preAuthRef,
      preAuthPeriod: preAuthPeriod ? null : this.preAuthPeriod,
      payeeType: payeeType ? null : this.payeeType,
      item: item ? null : this.item,
      addItem: addItem ? null : this.addItem,
      adjudication: adjudication ? null : this.adjudication,
      total: total ? null : this.total,
      payment: payment ? null : this.payment,
      fundsReserve: fundsReserve ? null : this.fundsReserve,
      formCode: formCode ? null : this.formCode,
      form: form ? null : this.form,
      processNote: processNote ? null : this.processNote,
      communicationRequest:
          communicationRequest ? null : this.communicationRequest,
      insurance: insurance ? null : this.insurance,
      error: error ? null : this.error,
    );
  }

  @override
  ClaimResponse clone() => throw UnimplementedError();
  @override
  ClaimResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    CodeableConcept? type,
    CodeableConcept? subType,
    Use? use,
    Reference? patient,
    FhirDateTime? created,
    Reference? insurer,
    Reference? requestor,
    Reference? request,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    FhirString? preAuthRef,
    Period? preAuthPeriod,
    CodeableConcept? payeeType,
    List<ClaimResponseItem>? item,
    List<ClaimResponseAddItem>? addItem,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseTotal>? total,
    ClaimResponsePayment? payment,
    CodeableConcept? fundsReserve,
    CodeableConcept? formCode,
    Attachment? form,
    List<ClaimResponseProcessNote>? processNote,
    List<Reference>? communicationRequest,
    List<ClaimResponseInsurance>? insurance,
    List<ClaimResponseError>? error,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ClaimResponse(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subType: subType?.copyWith(
            objectPath: '$newObjectPath.subType',
          ) ??
          this.subType,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      insurer: insurer?.copyWith(
            objectPath: '$newObjectPath.insurer',
          ) ??
          this.insurer,
      requestor: requestor?.copyWith(
            objectPath: '$newObjectPath.requestor',
          ) ??
          this.requestor,
      request: request?.copyWith(
            objectPath: '$newObjectPath.request',
          ) ??
          this.request,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      disposition: disposition?.copyWith(
            objectPath: '$newObjectPath.disposition',
          ) ??
          this.disposition,
      preAuthRef: preAuthRef?.copyWith(
            objectPath: '$newObjectPath.preAuthRef',
          ) ??
          this.preAuthRef,
      preAuthPeriod: preAuthPeriod?.copyWith(
            objectPath: '$newObjectPath.preAuthPeriod',
          ) ??
          this.preAuthPeriod,
      payeeType: payeeType?.copyWith(
            objectPath: '$newObjectPath.payeeType',
          ) ??
          this.payeeType,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
      addItem: addItem
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.addItem',
                ),
              )
              .toList() ??
          this.addItem,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      total: total
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.total',
                ),
              )
              .toList() ??
          this.total,
      payment: payment?.copyWith(
            objectPath: '$newObjectPath.payment',
          ) ??
          this.payment,
      fundsReserve: fundsReserve?.copyWith(
            objectPath: '$newObjectPath.fundsReserve',
          ) ??
          this.fundsReserve,
      formCode: formCode?.copyWith(
            objectPath: '$newObjectPath.formCode',
          ) ??
          this.formCode,
      form: form?.copyWith(
            objectPath: '$newObjectPath.form',
          ) ??
          this.form,
      processNote: processNote
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.processNote',
                ),
              )
              .toList() ??
          this.processNote,
      communicationRequest: communicationRequest
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.communicationRequest',
                ),
              )
              .toList() ??
          this.communicationRequest,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
      error: error
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.error',
                ),
              )
              .toList() ??
          this.error,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponse) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      use,
      o.use,
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
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      insurer,
      o.insurer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestor,
      o.requestor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthPeriod,
      o.preAuthPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payeeType,
      o.payeeType,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseItem>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAddItem>(
      addItem,
      o.addItem,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseTotal>(
      total,
      o.total,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payment,
      o.payment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundsReserve,
      o.fundsReserve,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      formCode,
      o.formCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseProcessNote>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      communicationRequest,
      o.communicationRequest,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseInsurance>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseError>(
      error,
      o.error,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseItem]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ClaimResponseItem extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseItem]

  const ClaimResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemSequence,
    this.noteNumber,
    required this.adjudication,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseItem.empty() => ClaimResponseItem(
        itemSequence: FhirPositiveInt.empty(),
        adjudication: <ClaimResponseAdjudication>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item';
    return ClaimResponseItem(
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
      itemSequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'itemSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.itemSequence',
      )!,
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimResponseDetail>(
            (v) => ClaimResponseDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseItem]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseItem';

  /// [itemSequence]
  /// A number to uniquely reference the claim item entries.
  final FhirPositiveInt itemSequence;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail]
  /// A claim detail. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  final List<ClaimResponseDetail>? detail;
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
      'itemSequence',
      itemSequence,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'detail',
      detail,
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
      'itemSequence',
      'noteNumber',
      'adjudication',
      'detail',
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
      case 'itemSequence':
        fields.add(itemSequence);
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        fields.addAll(adjudication);
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
      case 'itemSequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(itemSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?noteNumber, child];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...adjudication, child];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ClaimResponseDetail>) {
            // Add all elements from passed list
            final newList = [...?detail, ...child];
            return copyWith(detail: newList);
          } else if (child is ClaimResponseDetail) {
            // Add single element to existing list or create new list
            final newList = [...?detail, child];
            return copyWith(detail: newList);
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
      case 'itemSequence':
        return ['FhirPositiveInt'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      case 'detail':
        return ['ClaimResponseDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseItem createProperty(
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
      case 'itemSequence':
        {
          return copyWith(
            itemSequence: FhirPositiveInt.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: <ClaimResponseDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool noteNumber = false,
    bool detail = false,
  }) {
    return ClaimResponseItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      itemSequence: itemSequence,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication,
      detail: detail ? null : this.detail,
    );
  }

  @override
  ClaimResponseItem clone() => throw UnimplementedError();
  @override
  ClaimResponseItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseItem(
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
      itemSequence: itemSequence?.copyWith(
            objectPath: '$newObjectPath.itemSequence',
          ) ??
          this.itemSequence,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseItem) {
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
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseAdjudication]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ClaimResponseAdjudication extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseAdjudication]

  const ClaimResponseAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.adjudication',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseAdjudication.empty() => ClaimResponseAdjudication(
        category: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAdjudication.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.adjudication';
    return ClaimResponseAdjudication(
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
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
        '$objectPath.reason',
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      ),
      value: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'value',
        FhirDecimal.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [ClaimResponseAdjudication]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseAdjudication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseAdjudication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseAdjudication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseAdjudication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseAdjudication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseAdjudication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseAdjudication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseAdjudication';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that: the
  /// patient is responsible for in aggregate or pertaining to this item;
  /// amounts paid by other coverages; and, the benefit payable for this
  /// item.
  final CodeableConcept category;

  /// [reason]
  /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  final CodeableConcept? reason;

  /// [amount]
  /// Monetary amount associated with the category.
  final Money? amount;

  /// [value]
  /// A non-monetary value associated with the category. Mutually exclusive
  /// to the amount element above.
  final FhirDecimal? value;
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
      'category',
      category,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'value',
      value,
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
      'category',
      'reason',
      'amount',
      'value',
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
      case 'category':
        fields.add(category);
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
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
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirDecimal) {
            return copyWith(value: child);
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
      case 'category':
        return ['CodeableConcept'];
      case 'reason':
        return ['CodeableConcept'];
      case 'amount':
        return ['Money'];
      case 'value':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseAdjudication]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseAdjudication createProperty(
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
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: CodeableConcept.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Money.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirDecimal.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseAdjudication clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool reason = false,
    bool amount = false,
    bool value = false,
  }) {
    return ClaimResponseAdjudication(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      category: category,
      reason: reason ? null : this.reason,
      amount: amount ? null : this.amount,
      value: value ? null : this.value,
    );
  }

  @override
  ClaimResponseAdjudication clone() => throw UnimplementedError();
  @override
  ClaimResponseAdjudication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    FhirDecimal? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseAdjudication(
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
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      reason: reason?.copyWith(
            objectPath: '$newObjectPath.reason',
          ) ??
          this.reason,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseAdjudication) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseDetail]
/// A claim detail. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
class ClaimResponseDetail extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseDetail]

  const ClaimResponseDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.detailSequence,
    this.noteNumber,
    required this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.detail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseDetail.empty() => ClaimResponseDetail(
        detailSequence: FhirPositiveInt.empty(),
        adjudication: <ClaimResponseAdjudication>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.detail';
    return ClaimResponseDetail(
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
      detailSequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'detailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.detailSequence',
      )!,
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimResponseSubDetail>(
            (v) => ClaimResponseSubDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseDetail]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseDetail';

  /// [detailSequence]
  /// A number to uniquely reference the claim detail entry.
  final FhirPositiveInt detailSequence;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [subDetail]
  /// A sub-detail adjudication of a simple product or service.
  final List<ClaimResponseSubDetail>? subDetail;
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
      'detailSequence',
      detailSequence,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'subDetail',
      subDetail,
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
      'detailSequence',
      'noteNumber',
      'adjudication',
      'subDetail',
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
      case 'detailSequence':
        fields.add(detailSequence);
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        fields.addAll(adjudication);
      case 'subDetail':
        if (subDetail != null) {
          fields.addAll(subDetail!);
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
      case 'detailSequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(detailSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?noteNumber, child];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...adjudication, child];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetail':
        {
          if (child is List<ClaimResponseSubDetail>) {
            // Add all elements from passed list
            final newList = [...?subDetail, ...child];
            return copyWith(subDetail: newList);
          } else if (child is ClaimResponseSubDetail) {
            // Add single element to existing list or create new list
            final newList = [...?subDetail, child];
            return copyWith(subDetail: newList);
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
      case 'detailSequence':
        return ['FhirPositiveInt'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      case 'subDetail':
        return ['ClaimResponseSubDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseDetail]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseDetail createProperty(
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
      case 'detailSequence':
        {
          return copyWith(
            detailSequence: FhirPositiveInt.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      case 'subDetail':
        {
          return copyWith(
            subDetail: <ClaimResponseSubDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseDetail clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool noteNumber = false,
    bool subDetail = false,
  }) {
    return ClaimResponseDetail(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      detailSequence: detailSequence,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication,
      subDetail: subDetail ? null : this.subDetail,
    );
  }

  @override
  ClaimResponseDetail clone() => throw UnimplementedError();
  @override
  ClaimResponseDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? detailSequence,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseDetail(
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
      detailSequence: detailSequence?.copyWith(
            objectPath: '$newObjectPath.detailSequence',
          ) ??
          this.detailSequence,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      subDetail: subDetail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subDetail',
                ),
              )
              .toList() ??
          this.subDetail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseDetail) {
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
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseSubDetail>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseSubDetail]
/// A sub-detail adjudication of a simple product or service.
class ClaimResponseSubDetail extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseSubDetail]

  const ClaimResponseSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.subDetailSequence,
    this.noteNumber,
    this.adjudication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.item.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseSubDetail.empty() => ClaimResponseSubDetail(
        subDetailSequence: FhirPositiveInt.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.item.detail.subDetail';
    return ClaimResponseSubDetail(
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
      subDetailSequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'subDetailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.subDetailSequence',
      )!,
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseSubDetail]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseSubDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseSubDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseSubDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseSubDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseSubDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseSubDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseSubDetail';

  /// [subDetailSequence]
  /// A number to uniquely reference the claim sub-detail entry.
  final FhirPositiveInt subDetailSequence;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ClaimResponseAdjudication>? adjudication;
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
      'subDetailSequence',
      subDetailSequence,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
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
      'subDetailSequence',
      'noteNumber',
      'adjudication',
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
      case 'subDetailSequence':
        fields.add(subDetailSequence);
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
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
      case 'subDetailSequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(subDetailSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?noteNumber, child];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...?adjudication, child];
            return copyWith(adjudication: newList);
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
      case 'subDetailSequence':
        return ['FhirPositiveInt'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseSubDetail]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseSubDetail createProperty(
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
      case 'subDetailSequence':
        {
          return copyWith(
            subDetailSequence: FhirPositiveInt.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseSubDetail clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool noteNumber = false,
    bool adjudication = false,
  }) {
    return ClaimResponseSubDetail(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      subDetailSequence: subDetailSequence,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
    );
  }

  @override
  ClaimResponseSubDetail clone() => throw UnimplementedError();
  @override
  ClaimResponseSubDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? subDetailSequence,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseAdjudication>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseSubDetail(
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
      subDetailSequence: subDetailSequence?.copyWith(
            objectPath: '$newObjectPath.subDetailSequence',
          ) ??
          this.subDetailSequence,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseSubDetail) {
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
      subDetailSequence,
      o.subDetailSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseAddItem]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ClaimResponseAddItem extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseAddItem]

  const ClaimResponseAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subdetailSequence,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedX,
    this.locationX,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    required this.adjudication,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.addItem',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseAddItem.empty() => ClaimResponseAddItem(
        productOrService: CodeableConcept.empty(),
        adjudication: <ClaimResponseAdjudication>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem';
    return ClaimResponseAddItem(
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
      itemSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'itemSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.itemSequence',
      ),
      detailSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'detailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.detailSequence',
      ),
      subdetailSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'subdetailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.subdetailSequence',
      ),
      provider: (json['provider'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provider',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      servicedX: JsonParser.parsePolymorphic<ServicedXClaimResponseAddItem>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      locationX: JsonParser.parsePolymorphic<LocationXClaimResponseAddItem>(
        json,
        {
          'locationCodeableConcept': CodeableConcept.fromJson,
          'locationAddress': Address.fromJson,
          'locationReference': Reference.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
        '$objectPath.bodySite',
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subSite',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimResponseDetail>(
            (v) => ClaimResponseDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseAddItem]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseAddItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseAddItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseAddItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseAddItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseAddItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseAddItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseAddItem';

  /// [itemSequence]
  /// Claim items which this service line is intended to replace.
  final List<FhirPositiveInt>? itemSequence;

  /// [detailSequence]
  /// The sequence number of the details within the claim item which this
  /// line is intended to replace.
  final List<FhirPositiveInt>? detailSequence;

  /// [subdetailSequence]
  /// The sequence number of the sub-details within the details within the
  /// claim item which this line is intended to replace.
  final List<FhirPositiveInt>? subdetailSequence;

  /// [provider]
  /// The providers who are authorized for the services rendered to the
  /// patient.
  final List<Reference>? provider;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [servicedX]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final ServicedXClaimResponseAddItem? servicedX;

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXClaimResponseAddItem? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConcept
  CodeableConcept? get locationCodeableConcept =>
      locationX?.isAs<CodeableConcept>();

  /// Getter for [locationAddress] as a Address
  Address? get locationAddress => locationX?.isAs<Address>();

  /// Getter for [locationReference] as a Reference
  Reference? get locationReference => locationX?.isAs<Reference>();

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [bodySite]
  /// Physical service site on the patient (limb, tooth, etc.).
  final CodeableConcept? bodySite;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  final List<CodeableConcept>? subSite;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  final List<ClaimResponseDetail>? detail;
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
      'itemSequence',
      itemSequence,
    );
    addField(
      'detailSequence',
      detailSequence,
    );
    addField(
      'subdetailSequence',
      subdetailSequence,
    );
    addField(
      'provider',
      provider,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'programCode',
      programCode,
    );
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField(
        'serviced${fhirType.capitalize()}',
        servicedX,
      );
    }

    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField(
        'location${fhirType.capitalize()}',
        locationX,
      );
    }

    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'subSite',
      subSite,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'detail',
      detail,
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
      'itemSequence',
      'detailSequence',
      'subdetailSequence',
      'provider',
      'productOrService',
      'modifier',
      'programCode',
      'servicedX',
      'locationX',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'bodySite',
      'subSite',
      'noteNumber',
      'adjudication',
      'detail',
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
      case 'itemSequence':
        if (itemSequence != null) {
          fields.addAll(itemSequence!);
        }
      case 'detailSequence':
        if (detailSequence != null) {
          fields.addAll(detailSequence!);
        }
      case 'subdetailSequence':
        if (subdetailSequence != null) {
          fields.addAll(subdetailSequence!);
        }
      case 'provider':
        if (provider != null) {
          fields.addAll(provider!);
        }
      case 'productOrService':
        fields.add(productOrService);
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'serviced':
        fields.add(servicedX!);
      case 'servicedX':
        fields.add(servicedX!);
      case 'servicedDate':
        if (servicedX is FhirDate) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is Period) {
          fields.add(servicedX!);
        }
      case 'location':
        fields.add(locationX!);
      case 'locationX':
        fields.add(locationX!);
      case 'locationCodeableConcept':
        if (locationX is CodeableConcept) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is Address) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is Reference) {
          fields.add(locationX!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'subSite':
        if (subSite != null) {
          fields.addAll(subSite!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        fields.addAll(adjudication);
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
      case 'itemSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?itemSequence, ...child];
            return copyWith(itemSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?itemSequence, child];
            return copyWith(itemSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?detailSequence, ...child];
            return copyWith(detailSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?detailSequence, child];
            return copyWith(detailSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subdetailSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?subdetailSequence, ...child];
            return copyWith(subdetailSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?subdetailSequence, child];
            return copyWith(subdetailSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?provider, ...child];
            return copyWith(provider: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?provider, child];
            return copyWith(provider: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?modifier, child];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?programCode, ...child];
            return copyWith(programCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?programCode, child];
            return copyWith(programCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXClaimResponseAddItem) {
            return copyWith(servicedX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(servicedX: child);
            }
            if (child is Period) {
              return copyWith(servicedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is Period) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXClaimResponseAddItem) {
            return copyWith(locationX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(locationX: child);
            }
            if (child is Address) {
              return copyWith(locationX: child);
            }
            if (child is Reference) {
              return copyWith(locationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationAddress':
        {
          if (child is Address) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is Reference) {
            return copyWith(locationX: child);
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
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConcept) {
            return copyWith(bodySite: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subSite':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?subSite, ...child];
            return copyWith(subSite: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?subSite, child];
            return copyWith(subSite: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?noteNumber, child];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...adjudication, child];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ClaimResponseDetail>) {
            // Add all elements from passed list
            final newList = [...?detail, ...child];
            return copyWith(detail: newList);
          } else if (child is ClaimResponseDetail) {
            // Add single element to existing list or create new list
            final newList = [...?detail, child];
            return copyWith(detail: newList);
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
      case 'itemSequence':
        return ['FhirPositiveInt'];
      case 'detailSequence':
        return ['FhirPositiveInt'];
      case 'subdetailSequence':
        return ['FhirPositiveInt'];
      case 'provider':
        return ['Reference'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'programCode':
        return ['CodeableConcept'];
      case 'serviced':
      case 'servicedX':
        return ['FhirDate', 'Period'];
      case 'servicedDate':
        return ['FhirDate'];
      case 'servicedPeriod':
        return ['Period'];
      case 'location':
      case 'locationX':
        return ['CodeableConcept', 'Address', 'Reference'];
      case 'locationCodeableConcept':
        return ['CodeableConcept'];
      case 'locationAddress':
        return ['Address'];
      case 'locationReference':
        return ['Reference'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'subSite':
        return ['CodeableConcept'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      case 'detail':
        return ['ClaimResponseDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseAddItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseAddItem createProperty(
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
      case 'itemSequence':
        {
          return copyWith(
            itemSequence: <FhirPositiveInt>[],
          );
        }
      case 'detailSequence':
        {
          return copyWith(
            detailSequence: <FhirPositiveInt>[],
          );
        }
      case 'subdetailSequence':
        {
          return copyWith(
            subdetailSequence: <FhirPositiveInt>[],
          );
        }
      case 'provider':
        {
          return copyWith(
            provider: <Reference>[],
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'programCode':
        {
          return copyWith(
            programCode: <CodeableConcept>[],
          );
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          return copyWith(
            servicedX: FhirDate.empty(),
          );
        }
      case 'servicedPeriod':
        {
          return copyWith(
            servicedX: Period.empty(),
          );
        }
      case 'location':
      case 'locationX':
      case 'locationCodeableConcept':
        {
          return copyWith(
            locationX: CodeableConcept.empty(),
          );
        }
      case 'locationAddress':
        {
          return copyWith(
            locationX: Address.empty(),
          );
        }
      case 'locationReference':
        {
          return copyWith(
            locationX: Reference.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'bodySite':
        {
          return copyWith(
            bodySite: CodeableConcept.empty(),
          );
        }
      case 'subSite':
        {
          return copyWith(
            subSite: <CodeableConcept>[],
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: <ClaimResponseDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseAddItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool itemSequence = false,
    bool detailSequence = false,
    bool subdetailSequence = false,
    bool provider = false,
    bool modifier = false,
    bool programCode = false,
    bool serviced = false,
    bool location = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool bodySite = false,
    bool subSite = false,
    bool noteNumber = false,
    bool detail = false,
  }) {
    return ClaimResponseAddItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      itemSequence: itemSequence ? null : this.itemSequence,
      detailSequence: detailSequence ? null : this.detailSequence,
      subdetailSequence: subdetailSequence ? null : this.subdetailSequence,
      provider: provider ? null : this.provider,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      programCode: programCode ? null : this.programCode,
      servicedX: serviced ? null : servicedX,
      locationX: location ? null : locationX,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      bodySite: bodySite ? null : this.bodySite,
      subSite: subSite ? null : this.subSite,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication,
      detail: detail ? null : this.detail,
    );
  }

  @override
  ClaimResponseAddItem clone() => throw UnimplementedError();
  @override
  ClaimResponseAddItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? itemSequence,
    List<FhirPositiveInt>? detailSequence,
    List<FhirPositiveInt>? subdetailSequence,
    List<Reference>? provider,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    ServicedXClaimResponseAddItem? servicedX,
    LocationXClaimResponseAddItem? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseAddItem(
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
      itemSequence: itemSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.itemSequence',
                ),
              )
              .toList() ??
          this.itemSequence,
      detailSequence: detailSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detailSequence',
                ),
              )
              .toList() ??
          this.detailSequence,
      subdetailSequence: subdetailSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subdetailSequence',
                ),
              )
              .toList() ??
          this.subdetailSequence,
      provider: provider
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.provider',
                ),
              )
              .toList() ??
          this.provider,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      programCode: programCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.programCode',
                ),
              )
              .toList() ??
          this.programCode,
      servicedX: servicedX?.copyWith(
            objectPath: '$newObjectPath.servicedX',
          ) as ServicedXClaimResponseAddItem? ??
          this.servicedX,
      locationX: locationX?.copyWith(
            objectPath: '$newObjectPath.locationX',
          ) as LocationXClaimResponseAddItem? ??
          this.locationX,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      subSite: subSite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subSite',
                ),
              )
              .toList() ??
          this.subSite,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseAddItem) {
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
    if (!listEquals<FhirPositiveInt>(
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      subdetailSequence,
      o.subdetailSequence,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      servicedX,
      o.servicedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      locationX,
      o.locationX,
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
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseDetail1]
/// The second-tier service adjudications for payor added services.
class ClaimResponseDetail1 extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseDetail1]

  const ClaimResponseDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    required this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.addItem.detail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseDetail1.empty() => ClaimResponseDetail1(
        productOrService: CodeableConcept.empty(),
        adjudication: <ClaimResponseAdjudication>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem.detail';
    return ClaimResponseDetail1(
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
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
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
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimResponseSubDetail>(
            (v) => ClaimResponseSubDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseDetail1]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseDetail1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseDetail1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseDetail1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseDetail1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseDetail1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseDetail1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseDetail1';

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  final List<ClaimResponseSubDetail>? subDetail;
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
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'subDetail',
      subDetail,
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
      'productOrService',
      'modifier',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'noteNumber',
      'adjudication',
      'subDetail',
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
      case 'productOrService':
        fields.add(productOrService);
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        fields.addAll(adjudication);
      case 'subDetail':
        if (subDetail != null) {
          fields.addAll(subDetail!);
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
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?modifier, child];
            return copyWith(modifier: newList);
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
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?noteNumber, child];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...adjudication, child];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetail':
        {
          if (child is List<ClaimResponseSubDetail>) {
            // Add all elements from passed list
            final newList = [...?subDetail, ...child];
            return copyWith(subDetail: newList);
          } else if (child is ClaimResponseSubDetail) {
            // Add single element to existing list or create new list
            final newList = [...?subDetail, child];
            return copyWith(subDetail: newList);
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
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      case 'subDetail':
        return ['ClaimResponseSubDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseDetail1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseDetail1 createProperty(
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
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      case 'subDetail':
        {
          return copyWith(
            subDetail: <ClaimResponseSubDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseDetail1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool modifier = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool noteNumber = false,
    bool subDetail = false,
  }) {
    return ClaimResponseDetail1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication,
      subDetail: subDetail ? null : this.subDetail,
    );
  }

  @override
  ClaimResponseDetail1 clone() => throw UnimplementedError();
  @override
  ClaimResponseDetail1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseDetail1(
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
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      subDetail: subDetail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subDetail',
                ),
              )
              .toList() ??
          this.subDetail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseDetail1) {
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
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
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
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseSubDetail>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseSubDetail1]
/// The third-tier service adjudications for payor added services.
class ClaimResponseSubDetail1 extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseSubDetail1]

  const ClaimResponseSubDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    required this.adjudication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.addItem.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseSubDetail1.empty() => ClaimResponseSubDetail1(
        productOrService: CodeableConcept.empty(),
        adjudication: <ClaimResponseAdjudication>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.addItem.detail.subDetail';
    return ClaimResponseSubDetail1(
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
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
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
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimResponseSubDetail1]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseSubDetail1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseSubDetail1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseSubDetail1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseSubDetail1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseSubDetail1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseSubDetail1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseSubDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseSubDetail1';

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;
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
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
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
      'productOrService',
      'modifier',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'noteNumber',
      'adjudication',
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
      case 'productOrService':
        fields.add(productOrService);
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        fields.addAll(adjudication);
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
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?modifier, child];
            return copyWith(modifier: newList);
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
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [...?noteNumber, child];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ClaimResponseAdjudication>) {
            // Add all elements from passed list
            final newList = [...adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ClaimResponseAdjudication) {
            // Add single element to existing list or create new list
            final newList = [...adjudication, child];
            return copyWith(adjudication: newList);
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
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ClaimResponseAdjudication'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseSubDetail1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseSubDetail1 createProperty(
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
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ClaimResponseAdjudication>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseSubDetail1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool modifier = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool noteNumber = false,
  }) {
    return ClaimResponseSubDetail1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication,
    );
  }

  @override
  ClaimResponseSubDetail1 clone() => throw UnimplementedError();
  @override
  ClaimResponseSubDetail1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseAdjudication>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseSubDetail1(
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
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseSubDetail1) {
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
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
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
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ClaimResponseAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseTotal]
/// Categorized monetary totals for the adjudication.
class ClaimResponseTotal extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseTotal]

  const ClaimResponseTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.total',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseTotal.empty() => ClaimResponseTotal(
        category: CodeableConcept.empty(),
        amount: Money.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseTotal.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.total';
    return ClaimResponseTotal(
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
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      )!,
    );
  }

  /// Deserialize [ClaimResponseTotal]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseTotal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseTotal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseTotal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseTotal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseTotal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseTotal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseTotal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseTotal';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts
  /// paid by other coverages, and the benefit payable for this item.
  final CodeableConcept category;

  /// [amount]
  /// Monetary total amount associated with the category.
  final Money amount;
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
      'category',
      category,
    );
    addField(
      'amount',
      amount,
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
      'category',
      'amount',
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
      case 'category':
        fields.add(category);
      case 'amount':
        fields.add(amount);
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
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
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
      case 'category':
        return ['CodeableConcept'];
      case 'amount':
        return ['Money'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseTotal]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseTotal createProperty(
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
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Money.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseTotal clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ClaimResponseTotal(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      category: category,
      amount: amount,
    );
  }

  @override
  ClaimResponseTotal clone() => throw UnimplementedError();
  @override
  ClaimResponseTotal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseTotal(
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
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseTotal) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponsePayment]
/// Payment details for the adjudication of the claim.
class ClaimResponsePayment extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponsePayment]

  const ClaimResponsePayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    required this.amount,
    this.identifier,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.payment',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponsePayment.empty() => ClaimResponsePayment(
        type: CodeableConcept.empty(),
        amount: Money.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponsePayment.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.payment';
    return ClaimResponsePayment(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      adjustment: JsonParser.parseObject<Money>(
        json,
        'adjustment',
        Money.fromJson,
        '$objectPath.adjustment',
      ),
      adjustmentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'adjustmentReason',
        CodeableConcept.fromJson,
        '$objectPath.adjustmentReason',
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
        '$objectPath.date',
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      )!,
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
    );
  }

  /// Deserialize [ClaimResponsePayment]
  /// from a [String] or [YamlMap] object
  factory ClaimResponsePayment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponsePayment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponsePayment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponsePayment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponsePayment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponsePayment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponsePayment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponsePayment';

  /// [type]
  /// Whether this represents partial or complete payment of the benefits
  /// payable.
  final CodeableConcept type;

  /// [adjustment]
  /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  final Money? adjustment;

  /// [adjustmentReason]
  /// Reason for the payment adjustment.
  final CodeableConcept? adjustmentReason;

  /// [date]
  /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  final FhirDate? date;

  /// [amount]
  /// Benefits payable less any payment adjustment.
  final Money amount;

  /// [identifier]
  /// Issuer's unique identifier for the payment instrument.
  final Identifier? identifier;
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
      'type',
      type,
    );
    addField(
      'adjustment',
      adjustment,
    );
    addField(
      'adjustmentReason',
      adjustmentReason,
    );
    addField(
      'date',
      date,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'identifier',
      identifier,
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
      'type',
      'adjustment',
      'adjustmentReason',
      'date',
      'amount',
      'identifier',
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
      case 'type':
        fields.add(type);
      case 'adjustment':
        if (adjustment != null) {
          fields.add(adjustment!);
        }
      case 'adjustmentReason':
        if (adjustmentReason != null) {
          fields.add(adjustmentReason!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'amount':
        fields.add(amount);
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
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
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjustment':
        {
          if (child is Money) {
            return copyWith(adjustment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjustmentReason':
        {
          if (child is CodeableConcept) {
            return copyWith(adjustmentReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDate) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
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
      case 'type':
        return ['CodeableConcept'];
      case 'adjustment':
        return ['Money'];
      case 'adjustmentReason':
        return ['CodeableConcept'];
      case 'date':
        return ['FhirDate'];
      case 'amount':
        return ['Money'];
      case 'identifier':
        return ['Identifier'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponsePayment]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponsePayment createProperty(
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
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'adjustment':
        {
          return copyWith(
            adjustment: Money.empty(),
          );
        }
      case 'adjustmentReason':
        {
          return copyWith(
            adjustmentReason: CodeableConcept.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDate.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Money.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponsePayment clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool adjustment = false,
    bool adjustmentReason = false,
    bool date = false,
    bool identifier = false,
  }) {
    return ClaimResponsePayment(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      adjustment: adjustment ? null : this.adjustment,
      adjustmentReason: adjustmentReason ? null : this.adjustmentReason,
      date: date ? null : this.date,
      amount: amount,
      identifier: identifier ? null : this.identifier,
    );
  }

  @override
  ClaimResponsePayment clone() => throw UnimplementedError();
  @override
  ClaimResponsePayment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    FhirDate? date,
    Money? amount,
    Identifier? identifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponsePayment(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      adjustment: adjustment?.copyWith(
            objectPath: '$newObjectPath.adjustment',
          ) ??
          this.adjustment,
      adjustmentReason: adjustmentReason?.copyWith(
            objectPath: '$newObjectPath.adjustmentReason',
          ) ??
          this.adjustmentReason,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponsePayment) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adjustment,
      o.adjustment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adjustmentReason,
      o.adjustmentReason,
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
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseProcessNote]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ClaimResponseProcessNote extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseProcessNote]

  const ClaimResponseProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.type,
    required this.text,
    this.language,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.processNote',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseProcessNote.empty() => ClaimResponseProcessNote(
        text: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseProcessNote.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.processNote';
    return ClaimResponseProcessNote(
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
      number: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'number',
        FhirPositiveInt.fromJson,
        '$objectPath.number',
      ),
      type: JsonParser.parsePrimitive<NoteType>(
        json,
        'type',
        NoteType.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      )!,
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
        '$objectPath.language',
      ),
    );
  }

  /// Deserialize [ClaimResponseProcessNote]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseProcessNote.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseProcessNote.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseProcessNote.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseProcessNote '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseProcessNote]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseProcessNote.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseProcessNote';

  /// [number]
  /// A number to uniquely identify a note entry.
  final FhirPositiveInt? number;

  /// [type]
  /// The business purpose of the note text.
  final NoteType? type;

  /// [text]
  /// The explanation or description associated with the processing.
  final FhirString text;

  /// [language]
  /// A code to define the language used in the text of the note.
  final CodeableConcept? language;
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
      'number',
      number,
    );
    addField(
      'type',
      type,
    );
    addField(
      'text',
      text,
    );
    addField(
      'language',
      language,
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
      'number',
      'type',
      'text',
      'language',
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
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'text':
        fields.add(text);
      case 'language':
        if (language != null) {
          fields.add(language!);
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
      case 'number':
        {
          if (child is FhirPositiveInt) {
            return copyWith(number: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is NoteType) {
            return copyWith(type: child);
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
      case 'language':
        {
          if (child is CodeableConcept) {
            return copyWith(language: child);
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
      case 'number':
        return ['FhirPositiveInt'];
      case 'type':
        return ['FhirCode'];
      case 'text':
        return ['FhirString'];
      case 'language':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseProcessNote]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseProcessNote createProperty(
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
      case 'number':
        {
          return copyWith(
            number: FhirPositiveInt.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: NoteType.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseProcessNote clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool number = false,
    bool type = false,
    bool language = false,
  }) {
    return ClaimResponseProcessNote(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      number: number ? null : this.number,
      type: type ? null : this.type,
      text: text,
      language: language ? null : this.language,
    );
  }

  @override
  ClaimResponseProcessNote clone() => throw UnimplementedError();
  @override
  ClaimResponseProcessNote copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    NoteType? type,
    FhirString? text,
    CodeableConcept? language,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseProcessNote(
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
      number: number?.copyWith(
            objectPath: '$newObjectPath.number',
          ) ??
          this.number,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseProcessNote) {
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
      number,
      o.number,
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
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ClaimResponseInsurance extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseInsurance]

  const ClaimResponseInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.focal,
    required this.coverage,
    this.businessArrangement,
    this.claimResponse,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.insurance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseInsurance.empty() => ClaimResponseInsurance(
        sequence: FhirPositiveInt.empty(),
        focal: FhirBoolean.empty(),
        coverage: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.insurance';
    return ClaimResponseInsurance(
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
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      focal: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'focal',
        FhirBoolean.fromJson,
        '$objectPath.focal',
      )!,
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
        '$objectPath.coverage',
      )!,
      businessArrangement: JsonParser.parsePrimitive<FhirString>(
        json,
        'businessArrangement',
        FhirString.fromJson,
        '$objectPath.businessArrangement',
      ),
      claimResponse: JsonParser.parseObject<Reference>(
        json,
        'claimResponse',
        Reference.fromJson,
        '$objectPath.claimResponse',
      ),
    );
  }

  /// Deserialize [ClaimResponseInsurance]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseInsurance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseInsurance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseInsurance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseInsurance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseInsurance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseInsurance';

  /// [sequence]
  /// A number to uniquely identify insurance entries and provide a sequence
  /// of coverages to convey coordination of benefit order.
  final FhirPositiveInt sequence;

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  final FhirBoolean focal;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  final Reference coverage;

  /// [businessArrangement]
  /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  final FhirString? businessArrangement;

  /// [claimResponse]
  /// The result of the adjudication of the line items for the Coverage
  /// specified in this insurance.
  final Reference? claimResponse;
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
      'sequence',
      sequence,
    );
    addField(
      'focal',
      focal,
    );
    addField(
      'coverage',
      coverage,
    );
    addField(
      'businessArrangement',
      businessArrangement,
    );
    addField(
      'claimResponse',
      claimResponse,
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
      'sequence',
      'focal',
      'coverage',
      'businessArrangement',
      'claimResponse',
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
      case 'sequence':
        fields.add(sequence);
      case 'focal':
        fields.add(focal);
      case 'coverage':
        fields.add(coverage);
      case 'businessArrangement':
        if (businessArrangement != null) {
          fields.add(businessArrangement!);
        }
      case 'claimResponse':
        if (claimResponse != null) {
          fields.add(claimResponse!);
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
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focal':
        {
          if (child is FhirBoolean) {
            return copyWith(focal: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverage':
        {
          if (child is Reference) {
            return copyWith(coverage: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'businessArrangement':
        {
          if (child is FhirString) {
            return copyWith(businessArrangement: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claimResponse':
        {
          if (child is Reference) {
            return copyWith(claimResponse: child);
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
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'focal':
        return ['FhirBoolean'];
      case 'coverage':
        return ['Reference'];
      case 'businessArrangement':
        return ['FhirString'];
      case 'claimResponse':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseInsurance]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseInsurance createProperty(
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
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'focal':
        {
          return copyWith(
            focal: FhirBoolean.empty(),
          );
        }
      case 'coverage':
        {
          return copyWith(
            coverage: Reference.empty(),
          );
        }
      case 'businessArrangement':
        {
          return copyWith(
            businessArrangement: FhirString.empty(),
          );
        }
      case 'claimResponse':
        {
          return copyWith(
            claimResponse: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseInsurance clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool businessArrangement = false,
    bool claimResponse = false,
  }) {
    return ClaimResponseInsurance(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      focal: focal,
      coverage: coverage,
      businessArrangement:
          businessArrangement ? null : this.businessArrangement,
      claimResponse: claimResponse ? null : this.claimResponse,
    );
  }

  @override
  ClaimResponseInsurance clone() => throw UnimplementedError();
  @override
  ClaimResponseInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    FhirBoolean? focal,
    Reference? coverage,
    FhirString? businessArrangement,
    Reference? claimResponse,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseInsurance(
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
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      focal: focal?.copyWith(
            objectPath: '$newObjectPath.focal',
          ) ??
          this.focal,
      coverage: coverage?.copyWith(
            objectPath: '$newObjectPath.coverage',
          ) ??
          this.coverage,
      businessArrangement: businessArrangement?.copyWith(
            objectPath: '$newObjectPath.businessArrangement',
          ) ??
          this.businessArrangement,
      claimResponse: claimResponse?.copyWith(
            objectPath: '$newObjectPath.claimResponse',
          ) ??
          this.claimResponse,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseInsurance) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      focal,
      o.focal,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      businessArrangement,
      o.businessArrangement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claimResponse,
      o.claimResponse,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimResponseError]
/// Errors encountered during the processing of the adjudication.
class ClaimResponseError extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseError]

  const ClaimResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    required this.code,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClaimResponse.error',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ClaimResponseError.empty() => ClaimResponseError(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseError.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClaimResponse.error';
    return ClaimResponseError(
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
      itemSequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'itemSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.itemSequence',
      ),
      detailSequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'detailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.detailSequence',
      ),
      subDetailSequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'subDetailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.subDetailSequence',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
    );
  }

  /// Deserialize [ClaimResponseError]
  /// from a [String] or [YamlMap] object
  factory ClaimResponseError.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimResponseError.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimResponseError.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimResponseError '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimResponseError]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseError.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimResponseError.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseError';

  /// [itemSequence]
  /// The sequence number of the line item submitted which contains the
  /// error. This value is omitted when the error occurs outside of the item
  /// structure.
  final FhirPositiveInt? itemSequence;

  /// [detailSequence]
  /// The sequence number of the detail within the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside
  /// of the item structure.
  final FhirPositiveInt? detailSequence;

  /// [subDetailSequence]
  /// The sequence number of the sub-detail within the detail within the line
  /// item submitted which contains the error. This value is omitted when the
  /// error occurs outside of the item structure.
  final FhirPositiveInt? subDetailSequence;

  /// [code]
  /// An error code, from a specified code system, which details why the
  /// claim could not be adjudicated.
  final CodeableConcept code;
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
      'itemSequence',
      itemSequence,
    );
    addField(
      'detailSequence',
      detailSequence,
    );
    addField(
      'subDetailSequence',
      subDetailSequence,
    );
    addField(
      'code',
      code,
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
      'itemSequence',
      'detailSequence',
      'subDetailSequence',
      'code',
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
      case 'itemSequence':
        if (itemSequence != null) {
          fields.add(itemSequence!);
        }
      case 'detailSequence':
        if (detailSequence != null) {
          fields.add(detailSequence!);
        }
      case 'subDetailSequence':
        if (subDetailSequence != null) {
          fields.add(subDetailSequence!);
        }
      case 'code':
        fields.add(code);
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
      case 'itemSequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(itemSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailSequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(detailSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetailSequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(subDetailSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
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
      case 'itemSequence':
        return ['FhirPositiveInt'];
      case 'detailSequence':
        return ['FhirPositiveInt'];
      case 'subDetailSequence':
        return ['FhirPositiveInt'];
      case 'code':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimResponseError]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ClaimResponseError createProperty(
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
      case 'itemSequence':
        {
          return copyWith(
            itemSequence: FhirPositiveInt.empty(),
          );
        }
      case 'detailSequence':
        {
          return copyWith(
            detailSequence: FhirPositiveInt.empty(),
          );
        }
      case 'subDetailSequence':
        {
          return copyWith(
            subDetailSequence: FhirPositiveInt.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ClaimResponseError clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool itemSequence = false,
    bool detailSequence = false,
    bool subDetailSequence = false,
  }) {
    return ClaimResponseError(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      itemSequence: itemSequence ? null : this.itemSequence,
      detailSequence: detailSequence ? null : this.detailSequence,
      subDetailSequence: subDetailSequence ? null : this.subDetailSequence,
      code: code,
    );
  }

  @override
  ClaimResponseError clone() => throw UnimplementedError();
  @override
  ClaimResponseError copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    FhirPositiveInt? detailSequence,
    FhirPositiveInt? subDetailSequence,
    CodeableConcept? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ClaimResponseError(
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
      itemSequence: itemSequence?.copyWith(
            objectPath: '$newObjectPath.itemSequence',
          ) ??
          this.itemSequence,
      detailSequence: detailSequence?.copyWith(
            objectPath: '$newObjectPath.detailSequence',
          ) ??
          this.detailSequence,
      subDetailSequence: subDetailSequence?.copyWith(
            objectPath: '$newObjectPath.subDetailSequence',
          ) ??
          this.subDetailSequence,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimResponseError) {
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
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subDetailSequence,
      o.subDetailSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
  }
}
