import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ClaimResponse]
/// This resource provides the adjudication details from the processing of
/// a Claim resource.
class ClaimResponse extends DomainResource {
  /// Primary constructor for [ClaimResponse]

  ClaimResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    this.total,
    this.payment,
    this.fundsReserve,
    this.formCode,
    this.form,
    this.processNote,
    this.communicationRequest,
    this.insurance,
    this.error,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ClaimResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponse.fromJson(Map<String, dynamic> json) {
    return ClaimResponse(
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
      status: FinancialResourceStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              json['subType'] as Map<String, dynamic>,
            )
          : null,
      use: Use.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      created: FhirDateTime.fromJson({
        'value': json['created'],
        '_value': json['_created'],
      }),
      insurer: Reference.fromJson(
        json['insurer'] as Map<String, dynamic>,
      ),
      requestor: json['requestor'] != null
          ? Reference.fromJson(
              json['requestor'] as Map<String, dynamic>,
            )
          : null,
      request: json['request'] != null
          ? Reference.fromJson(
              json['request'] as Map<String, dynamic>,
            )
          : null,
      outcome: RemittanceOutcome.fromJson({
        'value': json['outcome'],
        '_value': json['_outcome'],
      }),
      disposition: json['disposition'] != null
          ? FhirString.fromJson({
              'value': json['disposition'],
              '_value': json['_disposition'],
            })
          : null,
      preAuthRef: json['preAuthRef'] != null
          ? FhirString.fromJson({
              'value': json['preAuthRef'],
              '_value': json['_preAuthRef'],
            })
          : null,
      preAuthPeriod: json['preAuthPeriod'] != null
          ? Period.fromJson(
              json['preAuthPeriod'] as Map<String, dynamic>,
            )
          : null,
      payeeType: json['payeeType'] != null
          ? CodeableConcept.fromJson(
              json['payeeType'] as Map<String, dynamic>,
            )
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<ClaimResponseItem>(
                (v) => ClaimResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      addItem: json['addItem'] != null
          ? (json['addItem'] as List<dynamic>)
              .map<ClaimResponseAddItem>(
                (v) => ClaimResponseAddItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      total: json['total'] != null
          ? (json['total'] as List<dynamic>)
              .map<ClaimResponseTotal>(
                (v) => ClaimResponseTotal.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      payment: json['payment'] != null
          ? ClaimResponsePayment.fromJson(
              json['payment'] as Map<String, dynamic>,
            )
          : null,
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>,
            )
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(
              json['formCode'] as Map<String, dynamic>,
            )
          : null,
      form: json['form'] != null
          ? Attachment.fromJson(
              json['form'] as Map<String, dynamic>,
            )
          : null,
      processNote: json['processNote'] != null
          ? (json['processNote'] as List<dynamic>)
              .map<ClaimResponseProcessNote>(
                (v) => ClaimResponseProcessNote.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      communicationRequest: json['communicationRequest'] != null
          ? (json['communicationRequest'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<ClaimResponseInsurance>(
                (v) => ClaimResponseInsurance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      error: json['error'] != null
          ? (json['error'] as List<dynamic>)
              .map<ClaimResponseError>(
                (v) => ClaimResponseError.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimResponse] from a [String]
  /// or [YamlMap] object
  factory ClaimResponse.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimResponse cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponse';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    final fieldJson10 = type.toJson();
    json['type'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_type'] = fieldJson10['_value'];
    }

    if (subType != null) {
      final fieldJson11 = subType!.toJson();
      json['subType'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_subType'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = use.toJson();
    json['use'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_use'] = fieldJson12['_value'];
    }

    final fieldJson13 = patient.toJson();
    json['patient'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_patient'] = fieldJson13['_value'];
    }

    final fieldJson14 = created.toJson();
    json['created'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_created'] = fieldJson14['_value'];
    }

    final fieldJson15 = insurer.toJson();
    json['insurer'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_insurer'] = fieldJson15['_value'];
    }

    if (requestor != null) {
      final fieldJson16 = requestor!.toJson();
      json['requestor'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_requestor'] = fieldJson16['_value'];
      }
    }

    if (request != null) {
      final fieldJson17 = request!.toJson();
      json['request'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_request'] = fieldJson17['_value'];
      }
    }

    final fieldJson18 = outcome.toJson();
    json['outcome'] = fieldJson18['value'];
    if (fieldJson18['_value'] != null) {
      json['_outcome'] = fieldJson18['_value'];
    }

    if (disposition != null) {
      final fieldJson19 = disposition!.toJson();
      json['disposition'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_disposition'] = fieldJson19['_value'];
      }
    }

    if (preAuthRef != null) {
      final fieldJson20 = preAuthRef!.toJson();
      json['preAuthRef'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_preAuthRef'] = fieldJson20['_value'];
      }
    }

    if (preAuthPeriod != null) {
      final fieldJson21 = preAuthPeriod!.toJson();
      json['preAuthPeriod'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_preAuthPeriod'] = fieldJson21['_value'];
      }
    }

    if (payeeType != null) {
      final fieldJson22 = payeeType!.toJson();
      json['payeeType'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_payeeType'] = fieldJson22['_value'];
      }
    }

    if (item != null && item!.isNotEmpty) {
      final fieldJson23 = item!.map((e) => e.toJson()).toList();
      json['item'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_item'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (addItem != null && addItem!.isNotEmpty) {
      final fieldJson24 = addItem!.map((e) => e.toJson()).toList();
      json['addItem'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_addItem'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (total != null && total!.isNotEmpty) {
      final fieldJson25 = total!.map((e) => e.toJson()).toList();
      json['total'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_total'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (payment != null) {
      final fieldJson26 = payment!.toJson();
      json['payment'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_payment'] = fieldJson26['_value'];
      }
    }

    if (fundsReserve != null) {
      final fieldJson27 = fundsReserve!.toJson();
      json['fundsReserve'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_fundsReserve'] = fieldJson27['_value'];
      }
    }

    if (formCode != null) {
      final fieldJson28 = formCode!.toJson();
      json['formCode'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_formCode'] = fieldJson28['_value'];
      }
    }

    if (form != null) {
      final fieldJson29 = form!.toJson();
      json['form'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_form'] = fieldJson29['_value'];
      }
    }

    if (processNote != null && processNote!.isNotEmpty) {
      final fieldJson30 = processNote!.map((e) => e.toJson()).toList();
      json['processNote'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_processNote'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (communicationRequest != null && communicationRequest!.isNotEmpty) {
      final fieldJson31 = communicationRequest!.map((e) => e.toJson()).toList();
      json['communicationRequest'] =
          fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_communicationRequest'] =
            fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (insurance != null && insurance!.isNotEmpty) {
      final fieldJson32 = insurance!.map((e) => e.toJson()).toList();
      json['insurance'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_insurance'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (error != null && error!.isNotEmpty) {
      final fieldJson33 = error!.map((e) => e.toJson()).toList();
      json['error'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_error'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    List<ClaimResponseTotal>? total,
    ClaimResponsePayment? payment,
    CodeableConcept? fundsReserve,
    CodeableConcept? formCode,
    Attachment? form,
    List<ClaimResponseProcessNote>? processNote,
    List<Reference>? communicationRequest,
    List<ClaimResponseInsurance>? insurance,
    List<ClaimResponseError>? error,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponse(
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
      type: type ?? this.type,
      subType: subType ?? this.subType,
      use: use ?? this.use,
      patient: patient ?? this.patient,
      created: created ?? this.created,
      insurer: insurer ?? this.insurer,
      requestor: requestor ?? this.requestor,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthPeriod: preAuthPeriod ?? this.preAuthPeriod,
      payeeType: payeeType ?? this.payeeType,
      item: item ?? this.item,
      addItem: addItem ?? this.addItem,
      total: total ?? this.total,
      payment: payment ?? this.payment,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      formCode: formCode ?? this.formCode,
      form: form ?? this.form,
      processNote: processNote ?? this.processNote,
      communicationRequest: communicationRequest ?? this.communicationRequest,
      insurance: insurance ?? this.insurance,
      error: error ?? this.error,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseItem]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ClaimResponseItem extends BackboneElement {
  /// Primary constructor for [ClaimResponseItem]

  ClaimResponseItem({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.itemSequence,
    this.noteNumber,
    required this.adjudication,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseItem.fromJson(Map<String, dynamic> json) {
    return ClaimResponseItem(
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
      itemSequence: FhirPositiveInt.fromJson({
        'value': json['itemSequence'],
        '_value': json['_itemSequence'],
      }),
      noteNumber: parsePrimitiveList<FhirPositiveInt>(
          json['noteNumber'] as List<dynamic>?,
          json['_noteNumber'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      adjudication: ensureNonNullList((json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>(
            (v) => ClaimResponseAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ClaimResponseDetail>(
                (v) => ClaimResponseDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimResponseItem] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimResponseItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseItem';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = itemSequence.toJson();
    json['itemSequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_itemSequence'] = fieldJson3['_value'];
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson4 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    final fieldJson5 = adjudication.map((e) => e.toJson()).toList();
    json['adjudication'] = fieldJson5.map((e) => e['value']).toList();
    if (fieldJson5.any((e) => e['_value'] != null)) {
      json['_adjudication'] = fieldJson5.map((e) => e['_value']).toList();
    }

    if (detail != null && detail!.isNotEmpty) {
      final fieldJson6 = detail!.map((e) => e.toJson()).toList();
      json['detail'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_detail'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseAdjudication]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ClaimResponseAdjudication extends BackboneElement {
  /// Primary constructor for [ClaimResponseAdjudication]

  ClaimResponseAdjudication({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAdjudication.fromJson(Map<String, dynamic> json) {
    return ClaimResponseAdjudication(
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
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
      value: json['value'] != null
          ? FhirDecimal.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
    );
  }

  /// Deserialize [ClaimResponseAdjudication] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseAdjudication.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseAdjudication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseAdjudication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseAdjudication cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseAdjudication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseAdjudication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseAdjudication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseAdjudication';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = category.toJson();
    json['category'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_category'] = fieldJson3['_value'];
    }

    if (reason != null) {
      final fieldJson4 = reason!.toJson();
      json['reason'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_reason'] = fieldJson4['_value'];
      }
    }

    if (amount != null) {
      final fieldJson5 = amount!.toJson();
      json['amount'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_amount'] = fieldJson5['_value'];
      }
    }

    if (value != null) {
      final fieldJson6 = value!.toJson();
      json['value'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_value'] = fieldJson6['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseAdjudication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseDetail]
/// A claim detail. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
class ClaimResponseDetail extends BackboneElement {
  /// Primary constructor for [ClaimResponseDetail]

  ClaimResponseDetail({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.detailSequence,
    this.noteNumber,
    this.subDetail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail.fromJson(Map<String, dynamic> json) {
    return ClaimResponseDetail(
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
      detailSequence: FhirPositiveInt.fromJson({
        'value': json['detailSequence'],
        '_value': json['_detailSequence'],
      }),
      noteNumber: parsePrimitiveList<FhirPositiveInt>(
          json['noteNumber'] as List<dynamic>?,
          json['_noteNumber'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ClaimResponseSubDetail>(
                (v) => ClaimResponseSubDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimResponseDetail] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseDetail cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseDetail';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [detailSequence]
  /// A number to uniquely reference the claim detail entry.
  final FhirPositiveInt detailSequence;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [subDetail]
  /// A sub-detail adjudication of a simple product or service.
  final List<ClaimResponseSubDetail>? subDetail;
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

    final fieldJson3 = detailSequence.toJson();
    json['detailSequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_detailSequence'] = fieldJson3['_value'];
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson4 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (subDetail != null && subDetail!.isNotEmpty) {
      final fieldJson5 = subDetail!.map((e) => e.toJson()).toList();
      json['subDetail'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_subDetail'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    List<ClaimResponseSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      detailSequence: detailSequence ?? this.detailSequence,
      noteNumber: noteNumber ?? this.noteNumber,
      subDetail: subDetail ?? this.subDetail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseSubDetail]
/// A sub-detail adjudication of a simple product or service.
class ClaimResponseSubDetail extends BackboneElement {
  /// Primary constructor for [ClaimResponseSubDetail]

  ClaimResponseSubDetail({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.subDetailSequence,
    this.noteNumber,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail.fromJson(Map<String, dynamic> json) {
    return ClaimResponseSubDetail(
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
      subDetailSequence: FhirPositiveInt.fromJson({
        'value': json['subDetailSequence'],
        '_value': json['_subDetailSequence'],
      }),
      noteNumber: parsePrimitiveList<FhirPositiveInt>(
          json['noteNumber'] as List<dynamic>?,
          json['_noteNumber'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
    );
  }

  /// Deserialize [ClaimResponseSubDetail] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseSubDetail cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseSubDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseSubDetail';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [subDetailSequence]
  /// A number to uniquely reference the claim sub-detail entry.
  final FhirPositiveInt subDetailSequence;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;
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

    final fieldJson3 = subDetailSequence.toJson();
    json['subDetailSequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_subDetailSequence'] = fieldJson3['_value'];
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson4 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseSubDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      noteNumber: noteNumber ?? this.noteNumber,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseAddItem]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ClaimResponseAddItem extends BackboneElement {
  /// Primary constructor for [ClaimResponseAddItem]

  ClaimResponseAddItem({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subdetailSequence,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAddItem.fromJson(Map<String, dynamic> json) {
    return ClaimResponseAddItem(
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
      itemSequence: parsePrimitiveList<FhirPositiveInt>(
          json['itemSequence'] as List<dynamic>?,
          json['_itemSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      detailSequence: parsePrimitiveList<FhirPositiveInt>(
          json['detailSequence'] as List<dynamic>?,
          json['_detailSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      subdetailSequence: parsePrimitiveList<FhirPositiveInt>(
          json['subdetailSequence'] as List<dynamic>?,
          json['_subdetailSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      provider: json['provider'] != null
          ? (json['provider'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      servicedDate: json['servicedDate'] != null
          ? FhirDate.fromJson({
              'value': json['servicedDate'],
              '_value': json['_servicedDate'],
            })
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              json['servicedPeriod'] as Map<String, dynamic>,
            )
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(
              json['locationAddress'] as Map<String, dynamic>,
            )
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      subSite: json['subSite'] != null
          ? (json['subSite'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      noteNumber: parsePrimitiveList<FhirPositiveInt>(
          json['noteNumber'] as List<dynamic>?,
          json['_noteNumber'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ClaimResponseDetail>(
                (v) => ClaimResponseDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimResponseAddItem] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseAddItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseAddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseAddItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseAddItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseAddItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseAddItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseAddItem';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [servicedDate]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final FhirDate? servicedDate;

  /// [servicedPeriod]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final Period? servicedPeriod;

  /// [locationCodeableConcept]
  /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress]
  /// Where the product or service was provided.
  final Address? locationAddress;

  /// [locationReference]
  /// Where the product or service was provided.
  final Reference? locationReference;

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

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  final List<ClaimResponseDetail>? detail;
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

    if (itemSequence != null && itemSequence!.isNotEmpty) {
      final fieldJson3 = itemSequence!.map((e) => e.toJson()).toList();
      json['itemSequence'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_itemSequence'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (detailSequence != null && detailSequence!.isNotEmpty) {
      final fieldJson4 = detailSequence!.map((e) => e.toJson()).toList();
      json['detailSequence'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_detailSequence'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (subdetailSequence != null && subdetailSequence!.isNotEmpty) {
      final fieldJson5 = subdetailSequence!.map((e) => e.toJson()).toList();
      json['subdetailSequence'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_subdetailSequence'] =
            fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (provider != null && provider!.isNotEmpty) {
      final fieldJson6 = provider!.map((e) => e.toJson()).toList();
      json['provider'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_provider'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    final fieldJson7 = productOrService.toJson();
    json['productOrService'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_productOrService'] = fieldJson7['_value'];
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson8 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (programCode != null && programCode!.isNotEmpty) {
      final fieldJson9 = programCode!.map((e) => e.toJson()).toList();
      json['programCode'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_programCode'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (servicedDate != null) {
      final fieldJson10 = servicedDate!.toJson();
      json['servicedDate'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_servicedDate'] = fieldJson10['_value'];
      }
    }

    if (servicedPeriod != null) {
      final fieldJson11 = servicedPeriod!.toJson();
      json['servicedPeriod'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_servicedPeriod'] = fieldJson11['_value'];
      }
    }

    if (locationCodeableConcept != null) {
      final fieldJson12 = locationCodeableConcept!.toJson();
      json['locationCodeableConcept'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_locationCodeableConcept'] = fieldJson12['_value'];
      }
    }

    if (locationAddress != null) {
      final fieldJson13 = locationAddress!.toJson();
      json['locationAddress'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_locationAddress'] = fieldJson13['_value'];
      }
    }

    if (locationReference != null) {
      final fieldJson14 = locationReference!.toJson();
      json['locationReference'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_locationReference'] = fieldJson14['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson15 = quantity!.toJson();
      json['quantity'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_quantity'] = fieldJson15['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson16 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_unitPrice'] = fieldJson16['_value'];
      }
    }

    if (factor != null) {
      final fieldJson17 = factor!.toJson();
      json['factor'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_factor'] = fieldJson17['_value'];
      }
    }

    if (net != null) {
      final fieldJson18 = net!.toJson();
      json['net'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_net'] = fieldJson18['_value'];
      }
    }

    if (bodySite != null) {
      final fieldJson19 = bodySite!.toJson();
      json['bodySite'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_bodySite'] = fieldJson19['_value'];
      }
    }

    if (subSite != null && subSite!.isNotEmpty) {
      final fieldJson20 = subSite!.map((e) => e.toJson()).toList();
      json['subSite'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_subSite'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson21 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (detail != null && detail!.isNotEmpty) {
      final fieldJson22 = detail!.map((e) => e.toJson()).toList();
      json['detail'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_detail'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    FhirDate? servicedDate,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<ClaimResponseDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseAddItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      detailSequence: detailSequence ?? this.detailSequence,
      subdetailSequence: subdetailSequence ?? this.subdetailSequence,
      provider: provider ?? this.provider,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      noteNumber: noteNumber ?? this.noteNumber,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseDetail1]
/// The second-tier service adjudications for payor added services.
class ClaimResponseDetail1 extends BackboneElement {
  /// Primary constructor for [ClaimResponseDetail1]

  ClaimResponseDetail1({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    this.subDetail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail1.fromJson(Map<String, dynamic> json) {
    return ClaimResponseDetail1(
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
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      noteNumber: parsePrimitiveList<FhirPositiveInt>(
          json['noteNumber'] as List<dynamic>?,
          json['_noteNumber'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ClaimResponseSubDetail>(
                (v) => ClaimResponseSubDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimResponseDetail1] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseDetail1 cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseDetail1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseDetail1';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  final List<ClaimResponseSubDetail>? subDetail;
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

    final fieldJson3 = productOrService.toJson();
    json['productOrService'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_productOrService'] = fieldJson3['_value'];
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson4 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson5 = quantity!.toJson();
      json['quantity'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_quantity'] = fieldJson5['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson6 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_unitPrice'] = fieldJson6['_value'];
      }
    }

    if (factor != null) {
      final fieldJson7 = factor!.toJson();
      json['factor'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_factor'] = fieldJson7['_value'];
      }
    }

    if (net != null) {
      final fieldJson8 = net!.toJson();
      json['net'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_net'] = fieldJson8['_value'];
      }
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson9 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (subDetail != null && subDetail!.isNotEmpty) {
      final fieldJson10 = subDetail!.map((e) => e.toJson()).toList();
      json['subDetail'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_subDetail'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    List<ClaimResponseSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      subDetail: subDetail ?? this.subDetail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseSubDetail1]
/// The third-tier service adjudications for payor added services.
class ClaimResponseSubDetail1 extends BackboneElement {
  /// Primary constructor for [ClaimResponseSubDetail1]

  ClaimResponseSubDetail1({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail1.fromJson(Map<String, dynamic> json) {
    return ClaimResponseSubDetail1(
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
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      noteNumber: parsePrimitiveList<FhirPositiveInt>(
          json['noteNumber'] as List<dynamic>?,
          json['_noteNumber'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
    );
  }

  /// Deserialize [ClaimResponseSubDetail1] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseSubDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseSubDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseSubDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseSubDetail1 cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseSubDetail1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseSubDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseSubDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseSubDetail1';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = productOrService.toJson();
    json['productOrService'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_productOrService'] = fieldJson3['_value'];
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson4 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson5 = quantity!.toJson();
      json['quantity'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_quantity'] = fieldJson5['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson6 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_unitPrice'] = fieldJson6['_value'];
      }
    }

    if (factor != null) {
      final fieldJson7 = factor!.toJson();
      json['factor'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_factor'] = fieldJson7['_value'];
      }
    }

    if (net != null) {
      final fieldJson8 = net!.toJson();
      json['net'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_net'] = fieldJson8['_value'];
      }
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson9 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseSubDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseTotal]
/// Categorized monetary totals for the adjudication.
class ClaimResponseTotal extends BackboneElement {
  /// Primary constructor for [ClaimResponseTotal]

  ClaimResponseTotal({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseTotal.fromJson(Map<String, dynamic> json) {
    return ClaimResponseTotal(
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
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      amount: Money.fromJson(
        json['amount'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ClaimResponseTotal] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseTotal.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseTotal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseTotal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimResponseTotal cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseTotal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseTotal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseTotal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseTotal';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = category.toJson();
    json['category'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_category'] = fieldJson3['_value'];
    }

    final fieldJson4 = amount.toJson();
    json['amount'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_amount'] = fieldJson4['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseTotal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponsePayment]
/// Payment details for the adjudication of the claim.
class ClaimResponsePayment extends BackboneElement {
  /// Primary constructor for [ClaimResponsePayment]

  ClaimResponsePayment({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    required this.amount,
    this.identifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponsePayment.fromJson(Map<String, dynamic> json) {
    return ClaimResponsePayment(
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
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      adjustment: json['adjustment'] != null
          ? Money.fromJson(
              json['adjustment'] as Map<String, dynamic>,
            )
          : null,
      adjustmentReason: json['adjustmentReason'] != null
          ? CodeableConcept.fromJson(
              json['adjustmentReason'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDate.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      amount: Money.fromJson(
        json['amount'] as Map<String, dynamic>,
      ),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClaimResponsePayment] from a [String]
  /// or [YamlMap] object
  factory ClaimResponsePayment.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponsePayment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponsePayment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponsePayment cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponsePayment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponsePayment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponsePayment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponsePayment';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (adjustment != null) {
      final fieldJson4 = adjustment!.toJson();
      json['adjustment'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_adjustment'] = fieldJson4['_value'];
      }
    }

    if (adjustmentReason != null) {
      final fieldJson5 = adjustmentReason!.toJson();
      json['adjustmentReason'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_adjustmentReason'] = fieldJson5['_value'];
      }
    }

    if (date != null) {
      final fieldJson6 = date!.toJson();
      json['date'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_date'] = fieldJson6['_value'];
      }
    }

    final fieldJson7 = amount.toJson();
    json['amount'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_amount'] = fieldJson7['_value'];
    }

    if (identifier != null) {
      final fieldJson8 = identifier!.toJson();
      json['identifier'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_identifier'] = fieldJson8['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponsePayment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseProcessNote]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ClaimResponseProcessNote extends BackboneElement {
  /// Primary constructor for [ClaimResponseProcessNote]

  ClaimResponseProcessNote({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.number,
    this.type,
    required this.text,
    this.language,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseProcessNote.fromJson(Map<String, dynamic> json) {
    return ClaimResponseProcessNote(
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
      number: json['number'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['number'],
              '_value': json['_number'],
            })
          : null,
      type: json['type'] != null
          ? NoteType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      text: FhirString.fromJson({
        'value': json['text'],
        '_value': json['_text'],
      }),
      language: json['language'] != null
          ? CodeableConcept.fromJson(
              json['language'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClaimResponseProcessNote] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseProcessNote.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseProcessNote cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseProcessNote]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseProcessNote';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (number != null) {
      final fieldJson3 = number!.toJson();
      json['number'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_number'] = fieldJson3['_value'];
      }
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = text.toJson();
    json['text'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_text'] = fieldJson5['_value'];
    }

    if (language != null) {
      final fieldJson6 = language!.toJson();
      json['language'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_language'] = fieldJson6['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      type: type ?? this.type,
      text: text ?? this.text,
      language: language ?? this.language,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ClaimResponseInsurance extends BackboneElement {
  /// Primary constructor for [ClaimResponseInsurance]

  ClaimResponseInsurance({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.focal,
    required this.coverage,
    this.businessArrangement,
    this.claimResponse,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseInsurance.fromJson(Map<String, dynamic> json) {
    return ClaimResponseInsurance(
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
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
      focal: FhirBoolean.fromJson({
        'value': json['focal'],
        '_value': json['_focal'],
      }),
      coverage: Reference.fromJson(
        json['coverage'] as Map<String, dynamic>,
      ),
      businessArrangement: json['businessArrangement'] != null
          ? FhirString.fromJson({
              'value': json['businessArrangement'],
              '_value': json['_businessArrangement'],
            })
          : null,
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(
              json['claimResponse'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClaimResponseInsurance] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimResponseInsurance cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseInsurance';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    final fieldJson4 = focal.toJson();
    json['focal'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_focal'] = fieldJson4['_value'];
    }

    final fieldJson5 = coverage.toJson();
    json['coverage'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_coverage'] = fieldJson5['_value'];
    }

    if (businessArrangement != null) {
      final fieldJson6 = businessArrangement!.toJson();
      json['businessArrangement'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_businessArrangement'] = fieldJson6['_value'];
      }
    }

    if (claimResponse != null) {
      final fieldJson7 = claimResponse!.toJson();
      json['claimResponse'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_claimResponse'] = fieldJson7['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      focal: focal ?? this.focal,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      claimResponse: claimResponse ?? this.claimResponse,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimResponseError]
/// Errors encountered during the processing of the adjudication.
class ClaimResponseError extends BackboneElement {
  /// Primary constructor for [ClaimResponseError]

  ClaimResponseError({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    required this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseError.fromJson(Map<String, dynamic> json) {
    return ClaimResponseError(
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
      itemSequence: json['itemSequence'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['itemSequence'],
              '_value': json['_itemSequence'],
            })
          : null,
      detailSequence: json['detailSequence'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['detailSequence'],
              '_value': json['_detailSequence'],
            })
          : null,
      subDetailSequence: json['subDetailSequence'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['subDetailSequence'],
              '_value': json['_subDetailSequence'],
            })
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ClaimResponseError] from a [String]
  /// or [YamlMap] object
  factory ClaimResponseError.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseError.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimResponseError.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimResponseError cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimResponseError]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimResponseError.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseError.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ClaimResponseError';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (itemSequence != null) {
      final fieldJson3 = itemSequence!.toJson();
      json['itemSequence'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_itemSequence'] = fieldJson3['_value'];
      }
    }

    if (detailSequence != null) {
      final fieldJson4 = detailSequence!.toJson();
      json['detailSequence'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_detailSequence'] = fieldJson4['_value'];
      }
    }

    if (subDetailSequence != null) {
      final fieldJson5 = subDetailSequence!.toJson();
      json['subDetailSequence'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_subDetailSequence'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = code.toJson();
    json['code'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_code'] = fieldJson6['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseError(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      detailSequence: detailSequence ?? this.detailSequence,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
