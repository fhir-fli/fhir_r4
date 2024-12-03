import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ClaimResponse]
/// This resource provides the adjudication details from the processing of
/// a Claim resource.
class ClaimResponse extends DomainResource {
  /// Primary constructor for
  /// [ClaimResponse]

  ClaimResponse({
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
  factory ClaimResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponse(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
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
      disposition: parseField<FhirString>(
        json['disposition'],
        json['_disposition'],
        FhirString.fromJson,
      ),
      preAuthRef: parseField<FhirString>(
        json['preAuthRef'],
        json['_preAuthRef'],
        FhirString.fromJson,
      ),
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
      item: parseList<ClaimResponseItem>(
        json['item'] as List<dynamic>?,
        json['_item'] as List<dynamic>?,
        ClaimResponseItem.fromJson,
      ),
      addItem: parseList<ClaimResponseAddItem>(
        json['addItem'] as List<dynamic>?,
        json['_addItem'] as List<dynamic>?,
        ClaimResponseAddItem.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      ),
      total: parseList<ClaimResponseTotal>(
        json['total'] as List<dynamic>?,
        json['_total'] as List<dynamic>?,
        ClaimResponseTotal.fromJson,
      ),
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
      processNote: parseList<ClaimResponseProcessNote>(
        json['processNote'] as List<dynamic>?,
        json['_processNote'] as List<dynamic>?,
        ClaimResponseProcessNote.fromJson,
      ),
      communicationRequest: parseList<Reference>(
        json['communicationRequest'] as List<dynamic>?,
        json['_communicationRequest'] as List<dynamic>?,
        Reference.fromJson,
      ),
      insurance: parseList<ClaimResponseInsurance>(
        json['insurance'] as List<dynamic>?,
        json['_insurance'] as List<dynamic>?,
        ClaimResponseInsurance.fromJson,
      ),
      error: parseList<ClaimResponseError>(
        json['error'] as List<dynamic>?,
        json['_error'] as List<dynamic>?,
        ClaimResponseError.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    json['type'] = type.toJson();

    if (subType != null) {
      json['subType'] = subType!.toJson();
    }

    addField('use', use);
    json['patient'] = patient.toJson();

    addField('created', created);
    json['insurer'] = insurer.toJson();

    if (requestor != null) {
      json['requestor'] = requestor!.toJson();
    }

    if (request != null) {
      json['request'] = request!.toJson();
    }

    addField('outcome', outcome);
    addField('disposition', disposition);
    addField('preAuthRef', preAuthRef);
    if (preAuthPeriod != null) {
      json['preAuthPeriod'] = preAuthPeriod!.toJson();
    }

    if (payeeType != null) {
      json['payeeType'] = payeeType!.toJson();
    }

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
    }

    if (addItem != null && addItem!.isNotEmpty) {
      json['addItem'] = addItem!.map((e) => e.toJson()).toList();
    }

    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!.map((e) => e.toJson()).toList();
    }

    if (total != null && total!.isNotEmpty) {
      json['total'] = total!.map((e) => e.toJson()).toList();
    }

    if (payment != null) {
      json['payment'] = payment!.toJson();
    }

    if (fundsReserve != null) {
      json['fundsReserve'] = fundsReserve!.toJson();
    }

    if (formCode != null) {
      json['formCode'] = formCode!.toJson();
    }

    if (form != null) {
      json['form'] = form!.toJson();
    }

    if (processNote != null && processNote!.isNotEmpty) {
      json['processNote'] = processNote!.map((e) => e.toJson()).toList();
    }

    if (communicationRequest != null && communicationRequest!.isNotEmpty) {
      json['communicationRequest'] =
          communicationRequest!.map((e) => e.toJson()).toList();
    }

    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] = insurance!.map((e) => e.toJson()).toList();
    }

    if (error != null && error!.isNotEmpty) {
      json['error'] = error!.map((e) => e.toJson()).toList();
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
      adjudication: adjudication ?? this.adjudication,
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
  /// Primary constructor for
  /// [ClaimResponseItem]

  ClaimResponseItem({
    super.id,
    super.extension_,
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
  factory ClaimResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseItem(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      itemSequence: FhirPositiveInt.fromJson({
        'value': json['itemSequence'],
        '_value': json['_itemSequence'],
      }),
      noteNumber: parseList<FhirPositiveInt>(
        json['noteNumber'] as List<dynamic>?,
        json['_noteNumber'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      )!,
      detail: parseList<ClaimResponseDetail>(
        json['detail'] as List<dynamic>?,
        json['_detail'] as List<dynamic>?,
        ClaimResponseDetail.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('itemSequence', itemSequence);
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson0 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (adjudication.isNotEmpty) {
      json['adjudication'] = adjudication.map((e) => e.toJson()).toList();
    }

    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [ClaimResponseAdjudication]

  ClaimResponseAdjudication({
    super.id,
    super.extension_,
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
  factory ClaimResponseAdjudication.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseAdjudication(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
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
      value: parseField<FhirDecimal>(
        json['value'],
        json['_value'],
        FhirDecimal.fromJson,
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
    if (json is Map<String, Object?>) {
      return ClaimResponseAdjudication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['category'] = category.toJson();

    if (reason != null) {
      json['reason'] = reason!.toJson();
    }

    if (amount != null) {
      json['amount'] = amount!.toJson();
    }

    addField('value', value);
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
  /// Primary constructor for
  /// [ClaimResponseDetail]

  ClaimResponseDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.detailSequence,
    this.noteNumber,
    required this.adjudication,
    this.subDetail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseDetail(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      detailSequence: FhirPositiveInt.fromJson({
        'value': json['detailSequence'],
        '_value': json['_detailSequence'],
      }),
      noteNumber: parseList<FhirPositiveInt>(
        json['noteNumber'] as List<dynamic>?,
        json['_noteNumber'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      )!,
      subDetail: parseList<ClaimResponseSubDetail>(
        json['subDetail'] as List<dynamic>?,
        json['_subDetail'] as List<dynamic>?,
        ClaimResponseSubDetail.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('detailSequence', detailSequence);
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson0 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (adjudication.isNotEmpty) {
      json['adjudication'] = adjudication.map((e) => e.toJson()).toList();
    }

    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!.map((e) => e.toJson()).toList();
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
    List<ClaimResponseAdjudication>? adjudication,
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
      adjudication: adjudication ?? this.adjudication,
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
  /// Primary constructor for
  /// [ClaimResponseSubDetail]

  ClaimResponseSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.subDetailSequence,
    this.noteNumber,
    this.adjudication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseSubDetail(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      subDetailSequence: FhirPositiveInt.fromJson({
        'value': json['subDetailSequence'],
        '_value': json['_subDetailSequence'],
      }),
      noteNumber: parseList<FhirPositiveInt>(
        json['noteNumber'] as List<dynamic>?,
        json['_noteNumber'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('subDetailSequence', subDetailSequence);
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson0 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!.map((e) => e.toJson()).toList();
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
    List<ClaimResponseAdjudication>? adjudication,
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
      adjudication: adjudication ?? this.adjudication,
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
  /// Primary constructor for
  /// [ClaimResponseAddItem]

  ClaimResponseAddItem({
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
  factory ClaimResponseAddItem.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseAddItem(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      itemSequence: parseList<FhirPositiveInt>(
        json['itemSequence'] as List<dynamic>?,
        json['_itemSequence'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      detailSequence: parseList<FhirPositiveInt>(
        json['detailSequence'] as List<dynamic>?,
        json['_detailSequence'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      subdetailSequence: parseList<FhirPositiveInt>(
        json['subdetailSequence'] as List<dynamic>?,
        json['_subdetailSequence'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      provider: parseList<Reference>(
        json['provider'] as List<dynamic>?,
        json['_provider'] as List<dynamic>?,
        Reference.fromJson,
      ),
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: parseList<CodeableConcept>(
        json['modifier'] as List<dynamic>?,
        json['_modifier'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      programCode: parseList<CodeableConcept>(
        json['programCode'] as List<dynamic>?,
        json['_programCode'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      servicedDate: parseField<FhirDate>(
        json['servicedDate'],
        json['_servicedDate'],
        FhirDate.fromJson,
      ),
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
      factor: parseField<FhirDecimal>(
        json['factor'],
        json['_factor'],
        FhirDecimal.fromJson,
      ),
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
      subSite: parseList<CodeableConcept>(
        json['subSite'] as List<dynamic>?,
        json['_subSite'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      noteNumber: parseList<FhirPositiveInt>(
        json['noteNumber'] as List<dynamic>?,
        json['_noteNumber'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      )!,
      detail: parseList<ClaimResponseDetail>(
        json['detail'] as List<dynamic>?,
        json['_detail'] as List<dynamic>?,
        ClaimResponseDetail.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  /// [adjudication]
  /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  final List<ClaimResponseDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (itemSequence != null && itemSequence!.isNotEmpty) {
      final fieldJson0 = itemSequence!.map((e) => e.toJson()).toList();
      json['itemSequence'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_itemSequence'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (detailSequence != null && detailSequence!.isNotEmpty) {
      final fieldJson1 = detailSequence!.map((e) => e.toJson()).toList();
      json['detailSequence'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_detailSequence'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (subdetailSequence != null && subdetailSequence!.isNotEmpty) {
      final fieldJson2 = subdetailSequence!.map((e) => e.toJson()).toList();
      json['subdetailSequence'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_subdetailSequence'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (provider != null && provider!.isNotEmpty) {
      json['provider'] = provider!.map((e) => e.toJson()).toList();
    }

    json['productOrService'] = productOrService.toJson();

    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] = modifier!.map((e) => e.toJson()).toList();
    }

    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] = programCode!.map((e) => e.toJson()).toList();
    }

    addField('servicedDate', servicedDate);
    if (servicedPeriod != null) {
      json['servicedPeriod'] = servicedPeriod!.toJson();
    }

    if (locationCodeableConcept != null) {
      json['locationCodeableConcept'] = locationCodeableConcept!.toJson();
    }

    if (locationAddress != null) {
      json['locationAddress'] = locationAddress!.toJson();
    }

    if (locationReference != null) {
      json['locationReference'] = locationReference!.toJson();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }

    addField('factor', factor);
    if (net != null) {
      json['net'] = net!.toJson();
    }

    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }

    if (subSite != null && subSite!.isNotEmpty) {
      json['subSite'] = subSite!.map((e) => e.toJson()).toList();
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson3 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (adjudication.isNotEmpty) {
      json['adjudication'] = adjudication.map((e) => e.toJson()).toList();
    }

    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((e) => e.toJson()).toList();
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
    List<ClaimResponseAdjudication>? adjudication,
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

/// [ClaimResponseDetail1]
/// The second-tier service adjudications for payor added services.
class ClaimResponseDetail1 extends BackboneElement {
  /// Primary constructor for
  /// [ClaimResponseDetail1]

  ClaimResponseDetail1({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseDetail1(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: parseList<CodeableConcept>(
        json['modifier'] as List<dynamic>?,
        json['_modifier'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
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
      factor: parseField<FhirDecimal>(
        json['factor'],
        json['_factor'],
        FhirDecimal.fromJson,
      ),
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      noteNumber: parseList<FhirPositiveInt>(
        json['noteNumber'] as List<dynamic>?,
        json['_noteNumber'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      )!,
      subDetail: parseList<ClaimResponseSubDetail>(
        json['subDetail'] as List<dynamic>?,
        json['_subDetail'] as List<dynamic>?,
        ClaimResponseSubDetail.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['productOrService'] = productOrService.toJson();

    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] = modifier!.map((e) => e.toJson()).toList();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }

    addField('factor', factor);
    if (net != null) {
      json['net'] = net!.toJson();
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson0 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (adjudication.isNotEmpty) {
      json['adjudication'] = adjudication.map((e) => e.toJson()).toList();
    }

    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!.map((e) => e.toJson()).toList();
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
    List<ClaimResponseAdjudication>? adjudication,
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
      adjudication: adjudication ?? this.adjudication,
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
  /// Primary constructor for
  /// [ClaimResponseSubDetail1]

  ClaimResponseSubDetail1({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseSubDetail1(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: parseList<CodeableConcept>(
        json['modifier'] as List<dynamic>?,
        json['_modifier'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
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
      factor: parseField<FhirDecimal>(
        json['factor'],
        json['_factor'],
        FhirDecimal.fromJson,
      ),
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      noteNumber: parseList<FhirPositiveInt>(
        json['noteNumber'] as List<dynamic>?,
        json['_noteNumber'] as List<dynamic>?,
        FhirPositiveInt.fromJson,
      ),
      adjudication: parseList<ClaimResponseAdjudication>(
        json['adjudication'] as List<dynamic>?,
        json['_adjudication'] as List<dynamic>?,
        ClaimResponseAdjudication.fromJson,
      )!,
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
    if (json is Map<String, Object?>) {
      return ClaimResponseSubDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['productOrService'] = productOrService.toJson();

    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] = modifier!.map((e) => e.toJson()).toList();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }

    addField('factor', factor);
    if (net != null) {
      json['net'] = net!.toJson();
    }

    if (noteNumber != null && noteNumber!.isNotEmpty) {
      final fieldJson0 = noteNumber!.map((e) => e.toJson()).toList();
      json['noteNumber'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_noteNumber'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (adjudication.isNotEmpty) {
      json['adjudication'] = adjudication.map((e) => e.toJson()).toList();
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
    List<ClaimResponseAdjudication>? adjudication,
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
      adjudication: adjudication ?? this.adjudication,
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
  /// Primary constructor for
  /// [ClaimResponseTotal]

  ClaimResponseTotal({
    super.id,
    super.extension_,
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
  factory ClaimResponseTotal.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseTotal(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      amount: Money.fromJson(
        json['amount'] as Map<String, dynamic>,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseTotal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['category'] = category.toJson();

    json['amount'] = amount.toJson();

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
  /// Primary constructor for
  /// [ClaimResponsePayment]

  ClaimResponsePayment({
    super.id,
    super.extension_,
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
  factory ClaimResponsePayment.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponsePayment(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
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
      date: parseField<FhirDate>(
        json['date'],
        json['_date'],
        FhirDate.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponsePayment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (adjustment != null) {
      json['adjustment'] = adjustment!.toJson();
    }

    if (adjustmentReason != null) {
      json['adjustmentReason'] = adjustmentReason!.toJson();
    }

    addField('date', date);
    json['amount'] = amount.toJson();

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
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
  /// Primary constructor for
  /// [ClaimResponseProcessNote]

  ClaimResponseProcessNote({
    super.id,
    super.extension_,
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
  factory ClaimResponseProcessNote.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseProcessNote(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      number: parseField<FhirPositiveInt>(
        json['number'],
        json['_number'],
        FhirPositiveInt.fromJson,
      ),
      type: parseField<NoteType>(
        json['type'],
        json['_type'],
        NoteType.fromJson,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('number', number);
    addField('type', type);
    addField('text', text);
    if (language != null) {
      json['language'] = language!.toJson();
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
  /// Primary constructor for
  /// [ClaimResponseInsurance]

  ClaimResponseInsurance({
    super.id,
    super.extension_,
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
  factory ClaimResponseInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseInsurance(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
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
      businessArrangement: parseField<FhirString>(
        json['businessArrangement'],
        json['_businessArrangement'],
        FhirString.fromJson,
      ),
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(
              json['claimResponse'] as Map<String, dynamic>,
            )
          : null,
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
    if (json is Map<String, Object?>) {
      return ClaimResponseInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('sequence', sequence);
    addField('focal', focal);
    json['coverage'] = coverage.toJson();

    addField('businessArrangement', businessArrangement);
    if (claimResponse != null) {
      json['claimResponse'] = claimResponse!.toJson();
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
  /// Primary constructor for
  /// [ClaimResponseError]

  ClaimResponseError({
    super.id,
    super.extension_,
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
  factory ClaimResponseError.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ClaimResponseError(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      itemSequence: parseField<FhirPositiveInt>(
        json['itemSequence'],
        json['_itemSequence'],
        FhirPositiveInt.fromJson,
      ),
      detailSequence: parseField<FhirPositiveInt>(
        json['detailSequence'],
        json['_detailSequence'],
        FhirPositiveInt.fromJson,
      ),
      subDetailSequence: parseField<FhirPositiveInt>(
        json['subDetailSequence'],
        json['_subDetailSequence'],
        FhirPositiveInt.fromJson,
      ),
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
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
    if (json is Map<String, Object?>) {
      return ClaimResponseError.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('itemSequence', itemSequence);
    addField('detailSequence', detailSequence);
    addField('subDetailSequence', subDetailSequence);
    json['code'] = code.toJson();

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
