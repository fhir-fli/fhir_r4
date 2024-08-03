// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClaimResponse _$ClaimResponseFromJson(Map<String, dynamic> json) {
  return _ClaimResponse.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponse {
  @JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] A unique identifier assigned to this claim response.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [type] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [subType] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  CodeableConcept? get subType => throw _privateConstructorUsedError;

  /// [use] A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  ///  could be provided in the future.
  FhirCode? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement => throw _privateConstructorUsedError;

  /// [patient] The party to whom the professional services and/or products
  /// have been supplied or are being considered and for whom actual for facast
  ///  reimbursement is sought.
  Reference get patient => throw _privateConstructorUsedError;

  /// [created] The date this resource was created.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] Extensions for created
  @JsonKey(name: '_created')
  PrimitiveElement? get createdElement => throw _privateConstructorUsedError;

  /// [insurer] The party responsible for authorization, adjudication and
  ///  reimbursement.
  Reference get insurer => throw _privateConstructorUsedError;

  /// [requestor] The provider which is responsible for the claim,
  ///  predetermination or preauthorization.
  Reference? get requestor => throw _privateConstructorUsedError;

  /// [request] Original request resource reference.
  Reference? get request => throw _privateConstructorUsedError;

  /// [outcome] The outcome of the claim, predetermination, or preauthorization
  ///  processing.
  FhirCode? get outcome => throw _privateConstructorUsedError;

  /// [outcomeElement] Extensions for outcome
  @JsonKey(name: '_outcome')
  PrimitiveElement? get outcomeElement => throw _privateConstructorUsedError;

  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  String? get disposition => throw _privateConstructorUsedError;

  /// [dispositionElement] Extensions for disposition
  @JsonKey(name: '_disposition')
  PrimitiveElement? get dispositionElement =>
      throw _privateConstructorUsedError;

  /// [preAuthRef] Reference from the Insurer which is used in later
  ///  communications which refers to this adjudication.
  String? get preAuthRef => throw _privateConstructorUsedError;

  /// [preAuthRefElement] Extensions for preAuthRef
  @JsonKey(name: '_preAuthRef')
  PrimitiveElement? get preAuthRefElement => throw _privateConstructorUsedError;

  /// [preAuthPeriod] The time frame during which this authorization is
  ///  effective.
  Period? get preAuthPeriod => throw _privateConstructorUsedError;

  /// [payeeType] Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConcept? get payeeType => throw _privateConstructorUsedError;

  /// [item] A claim line. Either a simple (a product or service) or a 'group'
  ///  of details which can also be a simple items or groups of sub-details.
  List<ClaimResponseItem>? get item => throw _privateConstructorUsedError;

  /// [addItem] The first-tier service adjudications for payor added product or
  ///  service lines.
  List<ClaimResponseAddItem>? get addItem => throw _privateConstructorUsedError;

  /// [adjudication] The adjudication results which are presented at the header
  ///  level rather than at the line-item or add-item levels.
  List<ClaimResponseAdjudication>? get adjudication =>
      throw _privateConstructorUsedError;

  /// [total] Categorized monetary totals for the adjudication.
  List<ClaimResponseTotal>? get total => throw _privateConstructorUsedError;

  /// [payment] Payment details for the adjudication of the claim.
  ClaimResponsePayment? get payment => throw _privateConstructorUsedError;

  /// [fundsReserve] A code, used only on a response to a preauthorization, to
  ///  indicate whether the benefits payable have been reserved and for whom.
  CodeableConcept? get fundsReserve => throw _privateConstructorUsedError;

  /// [formCode] A code for the form to be used for printing the content.
  CodeableConcept? get formCode => throw _privateConstructorUsedError;

  /// [form] The actual form, by reference or inclusion, for printing the
  ///  content or an EOB.
  Attachment? get form => throw _privateConstructorUsedError;

  /// [processNote] A note that describes or explains adjudication results in a
  ///  human readable form.
  List<ClaimResponseProcessNote>? get processNote =>
      throw _privateConstructorUsedError;

  /// [communicationRequest] Request for additional supporting or authorizing
  ///  information.
  List<Reference>? get communicationRequest =>
      throw _privateConstructorUsedError;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services specified on the claim.
  List<ClaimResponseInsurance>? get insurance =>
      throw _privateConstructorUsedError;

  /// [error] Errors encountered during the processing of the adjudication.
  List<ClaimResponseError>? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseCopyWith<ClaimResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseCopyWith<$Res> {
  factory $ClaimResponseCopyWith(
          ClaimResponse value, $Res Function(ClaimResponse) then) =
      _$ClaimResponseCopyWithImpl<$Res, ClaimResponse>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept type,
      CodeableConcept? subType,
      FhirCode? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      Reference patient,
      FhirDateTime? created,
      @JsonKey(name: '_created') PrimitiveElement? createdElement,
      Reference insurer,
      Reference? requestor,
      Reference? request,
      FhirCode? outcome,
      @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,
      String? disposition,
      @JsonKey(name: '_disposition') PrimitiveElement? dispositionElement,
      String? preAuthRef,
      @JsonKey(name: '_preAuthRef') PrimitiveElement? preAuthRefElement,
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
      List<ClaimResponseError>? error});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res> get type;
  $CodeableConceptCopyWith<$Res>? get subType;
  $ReferenceCopyWith<$Res> get patient;
  $ReferenceCopyWith<$Res> get insurer;
  $ReferenceCopyWith<$Res>? get requestor;
  $ReferenceCopyWith<$Res>? get request;
  $PeriodCopyWith<$Res>? get preAuthPeriod;
  $CodeableConceptCopyWith<$Res>? get payeeType;
  $ClaimResponsePaymentCopyWith<$Res>? get payment;
  $CodeableConceptCopyWith<$Res>? get fundsReserve;
  $CodeableConceptCopyWith<$Res>? get formCode;
  $AttachmentCopyWith<$Res>? get form;
}

/// @nodoc
class _$ClaimResponseCopyWithImpl<$Res, $Val extends ClaimResponse>
    implements $ClaimResponseCopyWith<$Res> {
  _$ClaimResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? type = null,
    Object? subType = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? patient = null,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? insurer = null,
    Object? requestor = freezed,
    Object? request = freezed,
    Object? outcome = freezed,
    Object? outcomeElement = freezed,
    Object? disposition = freezed,
    Object? dispositionElement = freezed,
    Object? preAuthRef = freezed,
    Object? preAuthRefElement = freezed,
    Object? preAuthPeriod = freezed,
    Object? payeeType = freezed,
    Object? item = freezed,
    Object? addItem = freezed,
    Object? adjudication = freezed,
    Object? total = freezed,
    Object? payment = freezed,
    Object? fundsReserve = freezed,
    Object? formCode = freezed,
    Object? form = freezed,
    Object? processNote = freezed,
    Object? communicationRequest = freezed,
    Object? insurance = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      insurer: null == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference,
      requestor: freezed == requestor
          ? _value.requestor
          : requestor // ignore: cast_nullable_to_non_nullable
              as Reference?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference?,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      outcomeElement: freezed == outcomeElement
          ? _value.outcomeElement
          : outcomeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      disposition: freezed == disposition
          ? _value.disposition
          : disposition // ignore: cast_nullable_to_non_nullable
              as String?,
      dispositionElement: freezed == dispositionElement
          ? _value.dispositionElement
          : dispositionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      preAuthRef: freezed == preAuthRef
          ? _value.preAuthRef
          : preAuthRef // ignore: cast_nullable_to_non_nullable
              as String?,
      preAuthRefElement: freezed == preAuthRefElement
          ? _value.preAuthRefElement
          : preAuthRefElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      preAuthPeriod: freezed == preAuthPeriod
          ? _value.preAuthPeriod
          : preAuthPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      payeeType: freezed == payeeType
          ? _value.payeeType
          : payeeType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseItem>?,
      addItem: freezed == addItem
          ? _value.addItem
          : addItem // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAddItem>?,
      adjudication: freezed == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseTotal>?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as ClaimResponsePayment?,
      fundsReserve: freezed == fundsReserve
          ? _value.fundsReserve
          : fundsReserve // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      formCode: freezed == formCode
          ? _value.formCode
          : formCode // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      processNote: freezed == processNote
          ? _value.processNote
          : processNote // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseProcessNote>?,
      communicationRequest: freezed == communicationRequest
          ? _value.communicationRequest
          : communicationRequest // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseInsurance>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseError>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get subType {
    if (_value.subType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.subType!, (value) {
      return _then(_value.copyWith(subType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get insurer {
    return $ReferenceCopyWith<$Res>(_value.insurer, (value) {
      return _then(_value.copyWith(insurer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get requestor {
    if (_value.requestor == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.requestor!, (value) {
      return _then(_value.copyWith(requestor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get preAuthPeriod {
    if (_value.preAuthPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.preAuthPeriod!, (value) {
      return _then(_value.copyWith(preAuthPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get payeeType {
    if (_value.payeeType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.payeeType!, (value) {
      return _then(_value.copyWith(payeeType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClaimResponsePaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $ClaimResponsePaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get fundsReserve {
    if (_value.fundsReserve == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.fundsReserve!, (value) {
      return _then(_value.copyWith(fundsReserve: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get formCode {
    if (_value.formCode == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.formCode!, (value) {
      return _then(_value.copyWith(formCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get form {
    if (_value.form == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.form!, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseImplCopyWith<$Res>
    implements $ClaimResponseCopyWith<$Res> {
  factory _$$ClaimResponseImplCopyWith(
          _$ClaimResponseImpl value, $Res Function(_$ClaimResponseImpl) then) =
      __$$ClaimResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept type,
      CodeableConcept? subType,
      FhirCode? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      Reference patient,
      FhirDateTime? created,
      @JsonKey(name: '_created') PrimitiveElement? createdElement,
      Reference insurer,
      Reference? requestor,
      Reference? request,
      FhirCode? outcome,
      @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,
      String? disposition,
      @JsonKey(name: '_disposition') PrimitiveElement? dispositionElement,
      String? preAuthRef,
      @JsonKey(name: '_preAuthRef') PrimitiveElement? preAuthRefElement,
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
      List<ClaimResponseError>? error});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $CodeableConceptCopyWith<$Res>? get subType;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $ReferenceCopyWith<$Res> get insurer;
  @override
  $ReferenceCopyWith<$Res>? get requestor;
  @override
  $ReferenceCopyWith<$Res>? get request;
  @override
  $PeriodCopyWith<$Res>? get preAuthPeriod;
  @override
  $CodeableConceptCopyWith<$Res>? get payeeType;
  @override
  $ClaimResponsePaymentCopyWith<$Res>? get payment;
  @override
  $CodeableConceptCopyWith<$Res>? get fundsReserve;
  @override
  $CodeableConceptCopyWith<$Res>? get formCode;
  @override
  $AttachmentCopyWith<$Res>? get form;
}

/// @nodoc
class __$$ClaimResponseImplCopyWithImpl<$Res>
    extends _$ClaimResponseCopyWithImpl<$Res, _$ClaimResponseImpl>
    implements _$$ClaimResponseImplCopyWith<$Res> {
  __$$ClaimResponseImplCopyWithImpl(
      _$ClaimResponseImpl _value, $Res Function(_$ClaimResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? type = null,
    Object? subType = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? patient = null,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? insurer = null,
    Object? requestor = freezed,
    Object? request = freezed,
    Object? outcome = freezed,
    Object? outcomeElement = freezed,
    Object? disposition = freezed,
    Object? dispositionElement = freezed,
    Object? preAuthRef = freezed,
    Object? preAuthRefElement = freezed,
    Object? preAuthPeriod = freezed,
    Object? payeeType = freezed,
    Object? item = freezed,
    Object? addItem = freezed,
    Object? adjudication = freezed,
    Object? total = freezed,
    Object? payment = freezed,
    Object? fundsReserve = freezed,
    Object? formCode = freezed,
    Object? form = freezed,
    Object? processNote = freezed,
    Object? communicationRequest = freezed,
    Object? insurance = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ClaimResponseImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      insurer: null == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference,
      requestor: freezed == requestor
          ? _value.requestor
          : requestor // ignore: cast_nullable_to_non_nullable
              as Reference?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference?,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      outcomeElement: freezed == outcomeElement
          ? _value.outcomeElement
          : outcomeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      disposition: freezed == disposition
          ? _value.disposition
          : disposition // ignore: cast_nullable_to_non_nullable
              as String?,
      dispositionElement: freezed == dispositionElement
          ? _value.dispositionElement
          : dispositionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      preAuthRef: freezed == preAuthRef
          ? _value.preAuthRef
          : preAuthRef // ignore: cast_nullable_to_non_nullable
              as String?,
      preAuthRefElement: freezed == preAuthRefElement
          ? _value.preAuthRefElement
          : preAuthRefElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      preAuthPeriod: freezed == preAuthPeriod
          ? _value.preAuthPeriod
          : preAuthPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      payeeType: freezed == payeeType
          ? _value.payeeType
          : payeeType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseItem>?,
      addItem: freezed == addItem
          ? _value._addItem
          : addItem // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAddItem>?,
      adjudication: freezed == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>?,
      total: freezed == total
          ? _value._total
          : total // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseTotal>?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as ClaimResponsePayment?,
      fundsReserve: freezed == fundsReserve
          ? _value.fundsReserve
          : fundsReserve // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      formCode: freezed == formCode
          ? _value.formCode
          : formCode // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      processNote: freezed == processNote
          ? _value._processNote
          : processNote // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseProcessNote>?,
      communicationRequest: freezed == communicationRequest
          ? _value._communicationRequest
          : communicationRequest // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      insurance: freezed == insurance
          ? _value._insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseInsurance>?,
      error: freezed == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseError>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseImpl extends _ClaimResponse {
  const _$ClaimResponseImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
      this.resourceType = R4ResourceType.ClaimResponse,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      required this.type,
      this.subType,
      this.use,
      @JsonKey(name: '_use') this.useElement,
      required this.patient,
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      required this.insurer,
      this.requestor,
      this.request,
      this.outcome,
      @JsonKey(name: '_outcome') this.outcomeElement,
      this.disposition,
      @JsonKey(name: '_disposition') this.dispositionElement,
      this.preAuthRef,
      @JsonKey(name: '_preAuthRef') this.preAuthRefElement,
      this.preAuthPeriod,
      this.payeeType,
      final List<ClaimResponseItem>? item,
      final List<ClaimResponseAddItem>? addItem,
      final List<ClaimResponseAdjudication>? adjudication,
      final List<ClaimResponseTotal>? total,
      this.payment,
      this.fundsReserve,
      this.formCode,
      this.form,
      final List<ClaimResponseProcessNote>? processNote,
      final List<Reference>? communicationRequest,
      final List<ClaimResponseInsurance>? insurance,
      final List<ClaimResponseError>? error})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _item = item,
        _addItem = addItem,
        _adjudication = adjudication,
        _total = total,
        _processNote = processNote,
        _communicationRequest = communicationRequest,
        _insurance = insurance,
        _error = error,
        super._();

  factory _$ClaimResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] A unique identifier assigned to this claim response.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this claim response.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [type] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  @override
  final CodeableConcept type;

  /// [subType] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  @override
  final CodeableConcept? subType;

  /// [use] A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  ///  could be provided in the future.
  @override
  final FhirCode? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final PrimitiveElement? useElement;

  /// [patient] The party to whom the professional services and/or products
  /// have been supplied or are being considered and for whom actual for facast
  ///  reimbursement is sought.
  @override
  final Reference patient;

  /// [created] The date this resource was created.
  @override
  final FhirDateTime? created;

  /// [createdElement] Extensions for created
  @override
  @JsonKey(name: '_created')
  final PrimitiveElement? createdElement;

  /// [insurer] The party responsible for authorization, adjudication and
  ///  reimbursement.
  @override
  final Reference insurer;

  /// [requestor] The provider which is responsible for the claim,
  ///  predetermination or preauthorization.
  @override
  final Reference? requestor;

  /// [request] Original request resource reference.
  @override
  final Reference? request;

  /// [outcome] The outcome of the claim, predetermination, or preauthorization
  ///  processing.
  @override
  final FhirCode? outcome;

  /// [outcomeElement] Extensions for outcome
  @override
  @JsonKey(name: '_outcome')
  final PrimitiveElement? outcomeElement;

  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  @override
  final String? disposition;

  /// [dispositionElement] Extensions for disposition
  @override
  @JsonKey(name: '_disposition')
  final PrimitiveElement? dispositionElement;

  /// [preAuthRef] Reference from the Insurer which is used in later
  ///  communications which refers to this adjudication.
  @override
  final String? preAuthRef;

  /// [preAuthRefElement] Extensions for preAuthRef
  @override
  @JsonKey(name: '_preAuthRef')
  final PrimitiveElement? preAuthRefElement;

  /// [preAuthPeriod] The time frame during which this authorization is
  ///  effective.
  @override
  final Period? preAuthPeriod;

  /// [payeeType] Type of Party to be reimbursed: subscriber, provider, other.
  @override
  final CodeableConcept? payeeType;

  /// [item] A claim line. Either a simple (a product or service) or a 'group'
  ///  of details which can also be a simple items or groups of sub-details.
  final List<ClaimResponseItem>? _item;

  /// [item] A claim line. Either a simple (a product or service) or a 'group'
  ///  of details which can also be a simple items or groups of sub-details.
  @override
  List<ClaimResponseItem>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [addItem] The first-tier service adjudications for payor added product or
  ///  service lines.
  final List<ClaimResponseAddItem>? _addItem;

  /// [addItem] The first-tier service adjudications for payor added product or
  ///  service lines.
  @override
  List<ClaimResponseAddItem>? get addItem {
    final value = _addItem;
    if (value == null) return null;
    if (_addItem is EqualUnmodifiableListView) return _addItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] The adjudication results which are presented at the header
  ///  level rather than at the line-item or add-item levels.
  final List<ClaimResponseAdjudication>? _adjudication;

  /// [adjudication] The adjudication results which are presented at the header
  ///  level rather than at the line-item or add-item levels.
  @override
  List<ClaimResponseAdjudication>? get adjudication {
    final value = _adjudication;
    if (value == null) return null;
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [total] Categorized monetary totals for the adjudication.
  final List<ClaimResponseTotal>? _total;

  /// [total] Categorized monetary totals for the adjudication.
  @override
  List<ClaimResponseTotal>? get total {
    final value = _total;
    if (value == null) return null;
    if (_total is EqualUnmodifiableListView) return _total;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [payment] Payment details for the adjudication of the claim.
  @override
  final ClaimResponsePayment? payment;

  /// [fundsReserve] A code, used only on a response to a preauthorization, to
  ///  indicate whether the benefits payable have been reserved and for whom.
  @override
  final CodeableConcept? fundsReserve;

  /// [formCode] A code for the form to be used for printing the content.
  @override
  final CodeableConcept? formCode;

  /// [form] The actual form, by reference or inclusion, for printing the
  ///  content or an EOB.
  @override
  final Attachment? form;

  /// [processNote] A note that describes or explains adjudication results in a
  ///  human readable form.
  final List<ClaimResponseProcessNote>? _processNote;

  /// [processNote] A note that describes or explains adjudication results in a
  ///  human readable form.
  @override
  List<ClaimResponseProcessNote>? get processNote {
    final value = _processNote;
    if (value == null) return null;
    if (_processNote is EqualUnmodifiableListView) return _processNote;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [communicationRequest] Request for additional supporting or authorizing
  ///  information.
  final List<Reference>? _communicationRequest;

  /// [communicationRequest] Request for additional supporting or authorizing
  ///  information.
  @override
  List<Reference>? get communicationRequest {
    final value = _communicationRequest;
    if (value == null) return null;
    if (_communicationRequest is EqualUnmodifiableListView)
      return _communicationRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services specified on the claim.
  final List<ClaimResponseInsurance>? _insurance;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services specified on the claim.
  @override
  List<ClaimResponseInsurance>? get insurance {
    final value = _insurance;
    if (value == null) return null;
    if (_insurance is EqualUnmodifiableListView) return _insurance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [error] Errors encountered during the processing of the adjudication.
  final List<ClaimResponseError>? _error;

  /// [error] Errors encountered during the processing of the adjudication.
  @override
  List<ClaimResponseError>? get error {
    final value = _error;
    if (value == null) return null;
    if (_error is EqualUnmodifiableListView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.insurer, insurer) || other.insurer == insurer) &&
            (identical(other.requestor, requestor) ||
                other.requestor == requestor) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.outcomeElement, outcomeElement) ||
                other.outcomeElement == outcomeElement) &&
            (identical(other.disposition, disposition) ||
                other.disposition == disposition) &&
            (identical(other.dispositionElement, dispositionElement) ||
                other.dispositionElement == dispositionElement) &&
            (identical(other.preAuthRef, preAuthRef) ||
                other.preAuthRef == preAuthRef) &&
            (identical(other.preAuthRefElement, preAuthRefElement) ||
                other.preAuthRefElement == preAuthRefElement) &&
            (identical(other.preAuthPeriod, preAuthPeriod) ||
                other.preAuthPeriod == preAuthPeriod) &&
            (identical(other.payeeType, payeeType) ||
                other.payeeType == payeeType) &&
            const DeepCollectionEquality().equals(other._item, _item) &&
            const DeepCollectionEquality().equals(other._addItem, _addItem) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication) &&
            const DeepCollectionEquality().equals(other._total, _total) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.fundsReserve, fundsReserve) ||
                other.fundsReserve == fundsReserve) &&
            (identical(other.formCode, formCode) ||
                other.formCode == formCode) &&
            (identical(other.form, form) || other.form == form) &&
            const DeepCollectionEquality()
                .equals(other._processNote, _processNote) &&
            const DeepCollectionEquality()
                .equals(other._communicationRequest, _communicationRequest) &&
            const DeepCollectionEquality()
                .equals(other._insurance, _insurance) &&
            const DeepCollectionEquality().equals(other._error, _error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        type,
        subType,
        use,
        useElement,
        patient,
        created,
        createdElement,
        insurer,
        requestor,
        request,
        outcome,
        outcomeElement,
        disposition,
        dispositionElement,
        preAuthRef,
        preAuthRefElement,
        preAuthPeriod,
        payeeType,
        const DeepCollectionEquality().hash(_item),
        const DeepCollectionEquality().hash(_addItem),
        const DeepCollectionEquality().hash(_adjudication),
        const DeepCollectionEquality().hash(_total),
        payment,
        fundsReserve,
        formCode,
        form,
        const DeepCollectionEquality().hash(_processNote),
        const DeepCollectionEquality().hash(_communicationRequest),
        const DeepCollectionEquality().hash(_insurance),
        const DeepCollectionEquality().hash(_error)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseImplCopyWith<_$ClaimResponseImpl> get copyWith =>
      __$$ClaimResponseImplCopyWithImpl<_$ClaimResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponse extends ClaimResponse {
  const factory _ClaimResponse(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      required final CodeableConcept type,
      final CodeableConcept? subType,
      final FhirCode? use,
      @JsonKey(name: '_use') final PrimitiveElement? useElement,
      required final Reference patient,
      final FhirDateTime? created,
      @JsonKey(name: '_created') final PrimitiveElement? createdElement,
      required final Reference insurer,
      final Reference? requestor,
      final Reference? request,
      final FhirCode? outcome,
      @JsonKey(name: '_outcome') final PrimitiveElement? outcomeElement,
      final String? disposition,
      @JsonKey(name: '_disposition') final PrimitiveElement? dispositionElement,
      final String? preAuthRef,
      @JsonKey(name: '_preAuthRef') final PrimitiveElement? preAuthRefElement,
      final Period? preAuthPeriod,
      final CodeableConcept? payeeType,
      final List<ClaimResponseItem>? item,
      final List<ClaimResponseAddItem>? addItem,
      final List<ClaimResponseAdjudication>? adjudication,
      final List<ClaimResponseTotal>? total,
      final ClaimResponsePayment? payment,
      final CodeableConcept? fundsReserve,
      final CodeableConcept? formCode,
      final Attachment? form,
      final List<ClaimResponseProcessNote>? processNote,
      final List<Reference>? communicationRequest,
      final List<ClaimResponseInsurance>? insurance,
      final List<ClaimResponseError>? error}) = _$ClaimResponseImpl;
  const _ClaimResponse._() : super._();

  factory _ClaimResponse.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] A unique identifier assigned to this claim response.
  List<Identifier>? get identifier;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [type] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  CodeableConcept get type;
  @override

  /// [subType] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  CodeableConcept? get subType;
  @override

  /// [use] A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  ///  could be provided in the future.
  FhirCode? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement;
  @override

  /// [patient] The party to whom the professional services and/or products
  /// have been supplied or are being considered and for whom actual for facast
  ///  reimbursement is sought.
  Reference get patient;
  @override

  /// [created] The date this resource was created.
  FhirDateTime? get created;
  @override

  /// [createdElement] Extensions for created
  @JsonKey(name: '_created')
  PrimitiveElement? get createdElement;
  @override

  /// [insurer] The party responsible for authorization, adjudication and
  ///  reimbursement.
  Reference get insurer;
  @override

  /// [requestor] The provider which is responsible for the claim,
  ///  predetermination or preauthorization.
  Reference? get requestor;
  @override

  /// [request] Original request resource reference.
  Reference? get request;
  @override

  /// [outcome] The outcome of the claim, predetermination, or preauthorization
  ///  processing.
  FhirCode? get outcome;
  @override

  /// [outcomeElement] Extensions for outcome
  @JsonKey(name: '_outcome')
  PrimitiveElement? get outcomeElement;
  @override

  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  String? get disposition;
  @override

  /// [dispositionElement] Extensions for disposition
  @JsonKey(name: '_disposition')
  PrimitiveElement? get dispositionElement;
  @override

  /// [preAuthRef] Reference from the Insurer which is used in later
  ///  communications which refers to this adjudication.
  String? get preAuthRef;
  @override

  /// [preAuthRefElement] Extensions for preAuthRef
  @JsonKey(name: '_preAuthRef')
  PrimitiveElement? get preAuthRefElement;
  @override

  /// [preAuthPeriod] The time frame during which this authorization is
  ///  effective.
  Period? get preAuthPeriod;
  @override

  /// [payeeType] Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConcept? get payeeType;
  @override

  /// [item] A claim line. Either a simple (a product or service) or a 'group'
  ///  of details which can also be a simple items or groups of sub-details.
  List<ClaimResponseItem>? get item;
  @override

  /// [addItem] The first-tier service adjudications for payor added product or
  ///  service lines.
  List<ClaimResponseAddItem>? get addItem;
  @override

  /// [adjudication] The adjudication results which are presented at the header
  ///  level rather than at the line-item or add-item levels.
  List<ClaimResponseAdjudication>? get adjudication;
  @override

  /// [total] Categorized monetary totals for the adjudication.
  List<ClaimResponseTotal>? get total;
  @override

  /// [payment] Payment details for the adjudication of the claim.
  ClaimResponsePayment? get payment;
  @override

  /// [fundsReserve] A code, used only on a response to a preauthorization, to
  ///  indicate whether the benefits payable have been reserved and for whom.
  CodeableConcept? get fundsReserve;
  @override

  /// [formCode] A code for the form to be used for printing the content.
  CodeableConcept? get formCode;
  @override

  /// [form] The actual form, by reference or inclusion, for printing the
  ///  content or an EOB.
  Attachment? get form;
  @override

  /// [processNote] A note that describes or explains adjudication results in a
  ///  human readable form.
  List<ClaimResponseProcessNote>? get processNote;
  @override

  /// [communicationRequest] Request for additional supporting or authorizing
  ///  information.
  List<Reference>? get communicationRequest;
  @override

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services specified on the claim.
  List<ClaimResponseInsurance>? get insurance;
  @override

  /// [error] Errors encountered during the processing of the adjudication.
  List<ClaimResponseError>? get error;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseImplCopyWith<_$ClaimResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClaimResponseItem _$ClaimResponseItemFromJson(Map<String, dynamic> json) {
  return _ClaimResponseItem.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseItem {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [itemSequence] A number to uniquely reference the claim item entries.
  FhirPositiveInt? get itemSequence => throw _privateConstructorUsedError;

  /// [itemSequenceElement] Extensions for itemSequence
  @JsonKey(name: '_itemSequence')
  PrimitiveElement? get itemSequenceElement =>
      throw _privateConstructorUsedError;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber => throw _privateConstructorUsedError;

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement =>
      throw _privateConstructorUsedError;

  /// [adjudication] If this item is a group then the values here are a summary
  /// of the adjudication of the detail items. If this item is a simple product
  ///  or service then this is the result of the adjudication of this item.
  List<ClaimResponseAdjudication> get adjudication =>
      throw _privateConstructorUsedError;

  /// [detail] A claim detail. Either a simple (a product or service) or a
  ///  'group' of sub-details which are simple items.
  List<ClaimResponseDetail>? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseItemCopyWith<ClaimResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseItemCopyWith<$Res> {
  factory $ClaimResponseItemCopyWith(
          ClaimResponseItem value, $Res Function(ClaimResponseItem) then) =
      _$ClaimResponseItemCopyWithImpl<$Res, ClaimResponseItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? itemSequence,
      @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseDetail>? detail});
}

/// @nodoc
class _$ClaimResponseItemCopyWithImpl<$Res, $Val extends ClaimResponseItem>
    implements $ClaimResponseItemCopyWith<$Res> {
  _$ClaimResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemSequence = freezed,
    Object? itemSequenceElement = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      itemSequence: freezed == itemSequence
          ? _value.itemSequence
          : itemSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      itemSequenceElement: freezed == itemSequenceElement
          ? _value.itemSequenceElement
          : itemSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      noteNumber: freezed == noteNumber
          ? _value.noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value.noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimResponseItemImplCopyWith<$Res>
    implements $ClaimResponseItemCopyWith<$Res> {
  factory _$$ClaimResponseItemImplCopyWith(_$ClaimResponseItemImpl value,
          $Res Function(_$ClaimResponseItemImpl) then) =
      __$$ClaimResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? itemSequence,
      @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseDetail>? detail});
}

/// @nodoc
class __$$ClaimResponseItemImplCopyWithImpl<$Res>
    extends _$ClaimResponseItemCopyWithImpl<$Res, _$ClaimResponseItemImpl>
    implements _$$ClaimResponseItemImplCopyWith<$Res> {
  __$$ClaimResponseItemImplCopyWithImpl(_$ClaimResponseItemImpl _value,
      $Res Function(_$ClaimResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemSequence = freezed,
    Object? itemSequenceElement = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? detail = freezed,
  }) {
    return _then(_$ClaimResponseItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      itemSequence: freezed == itemSequence
          ? _value.itemSequence
          : itemSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      itemSequenceElement: freezed == itemSequenceElement
          ? _value.itemSequenceElement
          : itemSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      noteNumber: freezed == noteNumber
          ? _value._noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value._noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseItemImpl extends _ClaimResponseItem {
  const _$ClaimResponseItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.itemSequence,
      @JsonKey(name: '_itemSequence') this.itemSequenceElement,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication,
      final List<ClaimResponseDetail>? detail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _noteNumber = noteNumber,
        _noteNumberElement = noteNumberElement,
        _adjudication = adjudication,
        _detail = detail,
        super._();

  factory _$ClaimResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseItemImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [itemSequence] A number to uniquely reference the claim item entries.
  @override
  final FhirPositiveInt? itemSequence;

  /// [itemSequenceElement] Extensions for itemSequence
  @override
  @JsonKey(name: '_itemSequence')
  final PrimitiveElement? itemSequenceElement;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  final List<FhirPositiveInt>? _noteNumber;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  @override
  List<FhirPositiveInt>? get noteNumber {
    final value = _noteNumber;
    if (value == null) return null;
    if (_noteNumber is EqualUnmodifiableListView) return _noteNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumberElement] Extensions for noteNumber
  final List<PrimitiveElement>? _noteNumberElement;

  /// [noteNumberElement] Extensions for noteNumber
  @override
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement {
    final value = _noteNumberElement;
    if (value == null) return null;
    if (_noteNumberElement is EqualUnmodifiableListView)
      return _noteNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] If this item is a group then the values here are a summary
  /// of the adjudication of the detail items. If this item is a simple product
  ///  or service then this is the result of the adjudication of this item.
  final List<ClaimResponseAdjudication> _adjudication;

  /// [adjudication] If this item is a group then the values here are a summary
  /// of the adjudication of the detail items. If this item is a simple product
  ///  or service then this is the result of the adjudication of this item.
  @override
  List<ClaimResponseAdjudication> get adjudication {
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjudication);
  }

  /// [detail] A claim detail. Either a simple (a product or service) or a
  ///  'group' of sub-details which are simple items.
  final List<ClaimResponseDetail>? _detail;

  /// [detail] A claim detail. Either a simple (a product or service) or a
  ///  'group' of sub-details which are simple items.
  @override
  List<ClaimResponseDetail>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.itemSequence, itemSequence) ||
                other.itemSequence == itemSequence) &&
            (identical(other.itemSequenceElement, itemSequenceElement) ||
                other.itemSequenceElement == itemSequenceElement) &&
            const DeepCollectionEquality()
                .equals(other._noteNumber, _noteNumber) &&
            const DeepCollectionEquality()
                .equals(other._noteNumberElement, _noteNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      itemSequence,
      itemSequenceElement,
      const DeepCollectionEquality().hash(_noteNumber),
      const DeepCollectionEquality().hash(_noteNumberElement),
      const DeepCollectionEquality().hash(_adjudication),
      const DeepCollectionEquality().hash(_detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseItemImplCopyWith<_$ClaimResponseItemImpl> get copyWith =>
      __$$ClaimResponseItemImplCopyWithImpl<_$ClaimResponseItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseItemImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseItem extends ClaimResponseItem {
  const factory _ClaimResponseItem(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirPositiveInt? itemSequence,
      @JsonKey(name: '_itemSequence')
      final PrimitiveElement? itemSequenceElement,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication,
      final List<ClaimResponseDetail>? detail}) = _$ClaimResponseItemImpl;
  const _ClaimResponseItem._() : super._();

  factory _ClaimResponseItem.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseItemImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [itemSequence] A number to uniquely reference the claim item entries.
  FhirPositiveInt? get itemSequence;
  @override

  /// [itemSequenceElement] Extensions for itemSequence
  @JsonKey(name: '_itemSequence')
  PrimitiveElement? get itemSequenceElement;
  @override

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber;
  @override

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement;
  @override

  /// [adjudication] If this item is a group then the values here are a summary
  /// of the adjudication of the detail items. If this item is a simple product
  ///  or service then this is the result of the adjudication of this item.
  List<ClaimResponseAdjudication> get adjudication;
  @override

  /// [detail] A claim detail. Either a simple (a product or service) or a
  ///  'group' of sub-details which are simple items.
  List<ClaimResponseDetail>? get detail;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseItemImplCopyWith<_$ClaimResponseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClaimResponseAdjudication _$ClaimResponseAdjudicationFromJson(
    Map<String, dynamic> json) {
  return _ClaimResponseAdjudication.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseAdjudication {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that: the
  /// patient is responsible for in aggregate or pertaining to this item;
  ///  amounts paid by other coverages; and, the benefit payable for this item.
  CodeableConcept get category => throw _privateConstructorUsedError;

  /// [reason] A code supporting the understanding of the adjudication result
  ///  and explaining variance from expected amount.
  CodeableConcept? get reason => throw _privateConstructorUsedError;

  /// [amount] Monetary amount associated with the category.
  Money? get amount => throw _privateConstructorUsedError;

  /// [value] A non-monetary value associated with the category. Mutually
  ///  exclusive to the amount element above.
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseAdjudicationCopyWith<ClaimResponseAdjudication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseAdjudicationCopyWith<$Res> {
  factory $ClaimResponseAdjudicationCopyWith(ClaimResponseAdjudication value,
          $Res Function(ClaimResponseAdjudication) then) =
      _$ClaimResponseAdjudicationCopyWithImpl<$Res, ClaimResponseAdjudication>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept category,
      CodeableConcept? reason,
      Money? amount,
      FhirDecimal? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  $CodeableConceptCopyWith<$Res> get category;
  $CodeableConceptCopyWith<$Res>? get reason;
  $MoneyCopyWith<$Res>? get amount;
}

/// @nodoc
class _$ClaimResponseAdjudicationCopyWithImpl<$Res,
        $Val extends ClaimResponseAdjudication>
    implements $ClaimResponseAdjudicationCopyWith<$Res> {
  _$ClaimResponseAdjudicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = null,
    Object? reason = freezed,
    Object? amount = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get category {
    return $CodeableConceptCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get reason {
    if (_value.reason == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.reason!, (value) {
      return _then(_value.copyWith(reason: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseAdjudicationImplCopyWith<$Res>
    implements $ClaimResponseAdjudicationCopyWith<$Res> {
  factory _$$ClaimResponseAdjudicationImplCopyWith(
          _$ClaimResponseAdjudicationImpl value,
          $Res Function(_$ClaimResponseAdjudicationImpl) then) =
      __$$ClaimResponseAdjudicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept category,
      CodeableConcept? reason,
      Money? amount,
      FhirDecimal? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  @override
  $CodeableConceptCopyWith<$Res> get category;
  @override
  $CodeableConceptCopyWith<$Res>? get reason;
  @override
  $MoneyCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$ClaimResponseAdjudicationImplCopyWithImpl<$Res>
    extends _$ClaimResponseAdjudicationCopyWithImpl<$Res,
        _$ClaimResponseAdjudicationImpl>
    implements _$$ClaimResponseAdjudicationImplCopyWith<$Res> {
  __$$ClaimResponseAdjudicationImplCopyWithImpl(
      _$ClaimResponseAdjudicationImpl _value,
      $Res Function(_$ClaimResponseAdjudicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = null,
    Object? reason = freezed,
    Object? amount = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$ClaimResponseAdjudicationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseAdjudicationImpl extends _ClaimResponseAdjudication {
  const _$ClaimResponseAdjudicationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.category,
      this.reason,
      this.amount,
      this.value,
      @JsonKey(name: '_value') this.valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClaimResponseAdjudicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseAdjudicationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that: the
  /// patient is responsible for in aggregate or pertaining to this item;
  ///  amounts paid by other coverages; and, the benefit payable for this item.
  @override
  final CodeableConcept category;

  /// [reason] A code supporting the understanding of the adjudication result
  ///  and explaining variance from expected amount.
  @override
  final CodeableConcept? reason;

  /// [amount] Monetary amount associated with the category.
  @override
  final Money? amount;

  /// [value] A non-monetary value associated with the category. Mutually
  ///  exclusive to the amount element above.
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseAdjudicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      category,
      reason,
      amount,
      value,
      valueElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseAdjudicationImplCopyWith<_$ClaimResponseAdjudicationImpl>
      get copyWith => __$$ClaimResponseAdjudicationImplCopyWithImpl<
          _$ClaimResponseAdjudicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseAdjudicationImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseAdjudication extends ClaimResponseAdjudication {
  const factory _ClaimResponseAdjudication(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept category,
          final CodeableConcept? reason,
          final Money? amount,
          final FhirDecimal? value,
          @JsonKey(name: '_value') final PrimitiveElement? valueElement}) =
      _$ClaimResponseAdjudicationImpl;
  const _ClaimResponseAdjudication._() : super._();

  factory _ClaimResponseAdjudication.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseAdjudicationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that: the
  /// patient is responsible for in aggregate or pertaining to this item;
  ///  amounts paid by other coverages; and, the benefit payable for this item.
  CodeableConcept get category;
  @override

  /// [reason] A code supporting the understanding of the adjudication result
  ///  and explaining variance from expected amount.
  CodeableConcept? get reason;
  @override

  /// [amount] Monetary amount associated with the category.
  Money? get amount;
  @override

  /// [value] A non-monetary value associated with the category. Mutually
  ///  exclusive to the amount element above.
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseAdjudicationImplCopyWith<_$ClaimResponseAdjudicationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseDetail _$ClaimResponseDetailFromJson(Map<String, dynamic> json) {
  return _ClaimResponseDetail.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseDetail {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [detailSequence] A number to uniquely reference the claim detail entry.
  FhirPositiveInt? get detailSequence => throw _privateConstructorUsedError;

  /// [detailSequenceElement] Extensions for detailSequence
  @JsonKey(name: '_detailSequence')
  PrimitiveElement? get detailSequenceElement =>
      throw _privateConstructorUsedError;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber => throw _privateConstructorUsedError;

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement =>
      throw _privateConstructorUsedError;

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication =>
      throw _privateConstructorUsedError;

  /// [subDetail] A sub-detail adjudication of a simple product or service.
  List<ClaimResponseSubDetail>? get subDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseDetailCopyWith<ClaimResponseDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseDetailCopyWith<$Res> {
  factory $ClaimResponseDetailCopyWith(
          ClaimResponseDetail value, $Res Function(ClaimResponseDetail) then) =
      _$ClaimResponseDetailCopyWithImpl<$Res, ClaimResponseDetail>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? detailSequence,
      @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseSubDetail>? subDetail});
}

/// @nodoc
class _$ClaimResponseDetailCopyWithImpl<$Res, $Val extends ClaimResponseDetail>
    implements $ClaimResponseDetailCopyWith<$Res> {
  _$ClaimResponseDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? detailSequence = freezed,
    Object? detailSequenceElement = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? subDetail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      detailSequence: freezed == detailSequence
          ? _value.detailSequence
          : detailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      detailSequenceElement: freezed == detailSequenceElement
          ? _value.detailSequenceElement
          : detailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      noteNumber: freezed == noteNumber
          ? _value.noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value.noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      subDetail: freezed == subDetail
          ? _value.subDetail
          : subDetail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseSubDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimResponseDetailImplCopyWith<$Res>
    implements $ClaimResponseDetailCopyWith<$Res> {
  factory _$$ClaimResponseDetailImplCopyWith(_$ClaimResponseDetailImpl value,
          $Res Function(_$ClaimResponseDetailImpl) then) =
      __$$ClaimResponseDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? detailSequence,
      @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseSubDetail>? subDetail});
}

/// @nodoc
class __$$ClaimResponseDetailImplCopyWithImpl<$Res>
    extends _$ClaimResponseDetailCopyWithImpl<$Res, _$ClaimResponseDetailImpl>
    implements _$$ClaimResponseDetailImplCopyWith<$Res> {
  __$$ClaimResponseDetailImplCopyWithImpl(_$ClaimResponseDetailImpl _value,
      $Res Function(_$ClaimResponseDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? detailSequence = freezed,
    Object? detailSequenceElement = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? subDetail = freezed,
  }) {
    return _then(_$ClaimResponseDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      detailSequence: freezed == detailSequence
          ? _value.detailSequence
          : detailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      detailSequenceElement: freezed == detailSequenceElement
          ? _value.detailSequenceElement
          : detailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      noteNumber: freezed == noteNumber
          ? _value._noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value._noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      subDetail: freezed == subDetail
          ? _value._subDetail
          : subDetail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseSubDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseDetailImpl extends _ClaimResponseDetail {
  const _$ClaimResponseDetailImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.detailSequence,
      @JsonKey(name: '_detailSequence') this.detailSequenceElement,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication,
      final List<ClaimResponseSubDetail>? subDetail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _noteNumber = noteNumber,
        _noteNumberElement = noteNumberElement,
        _adjudication = adjudication,
        _subDetail = subDetail,
        super._();

  factory _$ClaimResponseDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseDetailImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [detailSequence] A number to uniquely reference the claim detail entry.
  @override
  final FhirPositiveInt? detailSequence;

  /// [detailSequenceElement] Extensions for detailSequence
  @override
  @JsonKey(name: '_detailSequence')
  final PrimitiveElement? detailSequenceElement;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  final List<FhirPositiveInt>? _noteNumber;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  @override
  List<FhirPositiveInt>? get noteNumber {
    final value = _noteNumber;
    if (value == null) return null;
    if (_noteNumber is EqualUnmodifiableListView) return _noteNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumberElement] Extensions for noteNumber
  final List<PrimitiveElement>? _noteNumberElement;

  /// [noteNumberElement] Extensions for noteNumber
  @override
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement {
    final value = _noteNumberElement;
    if (value == null) return null;
    if (_noteNumberElement is EqualUnmodifiableListView)
      return _noteNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] The adjudication results.
  final List<ClaimResponseAdjudication> _adjudication;

  /// [adjudication] The adjudication results.
  @override
  List<ClaimResponseAdjudication> get adjudication {
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjudication);
  }

  /// [subDetail] A sub-detail adjudication of a simple product or service.
  final List<ClaimResponseSubDetail>? _subDetail;

  /// [subDetail] A sub-detail adjudication of a simple product or service.
  @override
  List<ClaimResponseSubDetail>? get subDetail {
    final value = _subDetail;
    if (value == null) return null;
    if (_subDetail is EqualUnmodifiableListView) return _subDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.detailSequence, detailSequence) ||
                other.detailSequence == detailSequence) &&
            (identical(other.detailSequenceElement, detailSequenceElement) ||
                other.detailSequenceElement == detailSequenceElement) &&
            const DeepCollectionEquality()
                .equals(other._noteNumber, _noteNumber) &&
            const DeepCollectionEquality()
                .equals(other._noteNumberElement, _noteNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication) &&
            const DeepCollectionEquality()
                .equals(other._subDetail, _subDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      detailSequence,
      detailSequenceElement,
      const DeepCollectionEquality().hash(_noteNumber),
      const DeepCollectionEquality().hash(_noteNumberElement),
      const DeepCollectionEquality().hash(_adjudication),
      const DeepCollectionEquality().hash(_subDetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseDetailImplCopyWith<_$ClaimResponseDetailImpl> get copyWith =>
      __$$ClaimResponseDetailImplCopyWithImpl<_$ClaimResponseDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseDetailImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseDetail extends ClaimResponseDetail {
  const factory _ClaimResponseDetail(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirPositiveInt? detailSequence,
          @JsonKey(name: '_detailSequence')
          final PrimitiveElement? detailSequenceElement,
          final List<FhirPositiveInt>? noteNumber,
          @JsonKey(name: '_noteNumber')
          final List<PrimitiveElement>? noteNumberElement,
          required final List<ClaimResponseAdjudication> adjudication,
          final List<ClaimResponseSubDetail>? subDetail}) =
      _$ClaimResponseDetailImpl;
  const _ClaimResponseDetail._() : super._();

  factory _ClaimResponseDetail.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseDetailImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [detailSequence] A number to uniquely reference the claim detail entry.
  FhirPositiveInt? get detailSequence;
  @override

  /// [detailSequenceElement] Extensions for detailSequence
  @JsonKey(name: '_detailSequence')
  PrimitiveElement? get detailSequenceElement;
  @override

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber;
  @override

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement;
  @override

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication;
  @override

  /// [subDetail] A sub-detail adjudication of a simple product or service.
  List<ClaimResponseSubDetail>? get subDetail;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseDetailImplCopyWith<_$ClaimResponseDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClaimResponseSubDetail _$ClaimResponseSubDetailFromJson(
    Map<String, dynamic> json) {
  return _ClaimResponseSubDetail.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseSubDetail {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [subDetailSequence] A number to uniquely reference the claim sub-detail
  ///  entry.
  FhirPositiveInt? get subDetailSequence => throw _privateConstructorUsedError;

  /// [subDetailSequenceElement] Extensions for subDetailSequence
  @JsonKey(name: '_subDetailSequence')
  PrimitiveElement? get subDetailSequenceElement =>
      throw _privateConstructorUsedError;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber => throw _privateConstructorUsedError;

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement =>
      throw _privateConstructorUsedError;

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication>? get adjudication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseSubDetailCopyWith<ClaimResponseSubDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseSubDetailCopyWith<$Res> {
  factory $ClaimResponseSubDetailCopyWith(ClaimResponseSubDetail value,
          $Res Function(ClaimResponseSubDetail) then) =
      _$ClaimResponseSubDetailCopyWithImpl<$Res, ClaimResponseSubDetail>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? subDetailSequence,
      @JsonKey(name: '_subDetailSequence')
      PrimitiveElement? subDetailSequenceElement,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication>? adjudication});
}

/// @nodoc
class _$ClaimResponseSubDetailCopyWithImpl<$Res,
        $Val extends ClaimResponseSubDetail>
    implements $ClaimResponseSubDetailCopyWith<$Res> {
  _$ClaimResponseSubDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? subDetailSequence = freezed,
    Object? subDetailSequenceElement = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      subDetailSequence: freezed == subDetailSequence
          ? _value.subDetailSequence
          : subDetailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      subDetailSequenceElement: freezed == subDetailSequenceElement
          ? _value.subDetailSequenceElement
          : subDetailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      noteNumber: freezed == noteNumber
          ? _value.noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value.noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: freezed == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimResponseSubDetailImplCopyWith<$Res>
    implements $ClaimResponseSubDetailCopyWith<$Res> {
  factory _$$ClaimResponseSubDetailImplCopyWith(
          _$ClaimResponseSubDetailImpl value,
          $Res Function(_$ClaimResponseSubDetailImpl) then) =
      __$$ClaimResponseSubDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? subDetailSequence,
      @JsonKey(name: '_subDetailSequence')
      PrimitiveElement? subDetailSequenceElement,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication>? adjudication});
}

/// @nodoc
class __$$ClaimResponseSubDetailImplCopyWithImpl<$Res>
    extends _$ClaimResponseSubDetailCopyWithImpl<$Res,
        _$ClaimResponseSubDetailImpl>
    implements _$$ClaimResponseSubDetailImplCopyWith<$Res> {
  __$$ClaimResponseSubDetailImplCopyWithImpl(
      _$ClaimResponseSubDetailImpl _value,
      $Res Function(_$ClaimResponseSubDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? subDetailSequence = freezed,
    Object? subDetailSequenceElement = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = freezed,
  }) {
    return _then(_$ClaimResponseSubDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      subDetailSequence: freezed == subDetailSequence
          ? _value.subDetailSequence
          : subDetailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      subDetailSequenceElement: freezed == subDetailSequenceElement
          ? _value.subDetailSequenceElement
          : subDetailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      noteNumber: freezed == noteNumber
          ? _value._noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value._noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: freezed == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseSubDetailImpl extends _ClaimResponseSubDetail {
  const _$ClaimResponseSubDetailImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.subDetailSequence,
      @JsonKey(name: '_subDetailSequence') this.subDetailSequenceElement,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      final List<ClaimResponseAdjudication>? adjudication})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _noteNumber = noteNumber,
        _noteNumberElement = noteNumberElement,
        _adjudication = adjudication,
        super._();

  factory _$ClaimResponseSubDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseSubDetailImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subDetailSequence] A number to uniquely reference the claim sub-detail
  ///  entry.
  @override
  final FhirPositiveInt? subDetailSequence;

  /// [subDetailSequenceElement] Extensions for subDetailSequence
  @override
  @JsonKey(name: '_subDetailSequence')
  final PrimitiveElement? subDetailSequenceElement;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  final List<FhirPositiveInt>? _noteNumber;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  @override
  List<FhirPositiveInt>? get noteNumber {
    final value = _noteNumber;
    if (value == null) return null;
    if (_noteNumber is EqualUnmodifiableListView) return _noteNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumberElement] Extensions for noteNumber
  final List<PrimitiveElement>? _noteNumberElement;

  /// [noteNumberElement] Extensions for noteNumber
  @override
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement {
    final value = _noteNumberElement;
    if (value == null) return null;
    if (_noteNumberElement is EqualUnmodifiableListView)
      return _noteNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] The adjudication results.
  final List<ClaimResponseAdjudication>? _adjudication;

  /// [adjudication] The adjudication results.
  @override
  List<ClaimResponseAdjudication>? get adjudication {
    final value = _adjudication;
    if (value == null) return null;
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseSubDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.subDetailSequence, subDetailSequence) ||
                other.subDetailSequence == subDetailSequence) &&
            (identical(
                    other.subDetailSequenceElement, subDetailSequenceElement) ||
                other.subDetailSequenceElement == subDetailSequenceElement) &&
            const DeepCollectionEquality()
                .equals(other._noteNumber, _noteNumber) &&
            const DeepCollectionEquality()
                .equals(other._noteNumberElement, _noteNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      subDetailSequence,
      subDetailSequenceElement,
      const DeepCollectionEquality().hash(_noteNumber),
      const DeepCollectionEquality().hash(_noteNumberElement),
      const DeepCollectionEquality().hash(_adjudication));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseSubDetailImplCopyWith<_$ClaimResponseSubDetailImpl>
      get copyWith => __$$ClaimResponseSubDetailImplCopyWithImpl<
          _$ClaimResponseSubDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseSubDetailImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseSubDetail extends ClaimResponseSubDetail {
  const factory _ClaimResponseSubDetail(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirPositiveInt? subDetailSequence,
          @JsonKey(name: '_subDetailSequence')
          final PrimitiveElement? subDetailSequenceElement,
          final List<FhirPositiveInt>? noteNumber,
          @JsonKey(name: '_noteNumber')
          final List<PrimitiveElement>? noteNumberElement,
          final List<ClaimResponseAdjudication>? adjudication}) =
      _$ClaimResponseSubDetailImpl;
  const _ClaimResponseSubDetail._() : super._();

  factory _ClaimResponseSubDetail.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseSubDetailImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [subDetailSequence] A number to uniquely reference the claim sub-detail
  ///  entry.
  FhirPositiveInt? get subDetailSequence;
  @override

  /// [subDetailSequenceElement] Extensions for subDetailSequence
  @JsonKey(name: '_subDetailSequence')
  PrimitiveElement? get subDetailSequenceElement;
  @override

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber;
  @override

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement;
  @override

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication>? get adjudication;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseSubDetailImplCopyWith<_$ClaimResponseSubDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseAddItem _$ClaimResponseAddItemFromJson(Map<String, dynamic> json) {
  return _ClaimResponseAddItem.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseAddItem {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [itemSequence] Claim items which this service line is intended to
  ///  replace.
  List<FhirPositiveInt>? get itemSequence => throw _privateConstructorUsedError;

  /// [itemSequenceElement] Extensions for itemSequence
  @JsonKey(name: '_itemSequence')
  List<PrimitiveElement>? get itemSequenceElement =>
      throw _privateConstructorUsedError;

  /// [detailSequence] The sequence number of the details within the claim item
  ///  which this line is intended to replace.
  List<FhirPositiveInt>? get detailSequence =>
      throw _privateConstructorUsedError;

  /// [detailSequenceElement] Extensions for detailSequence
  @JsonKey(name: '_detailSequence')
  List<PrimitiveElement>? get detailSequenceElement =>
      throw _privateConstructorUsedError;

  /// [subdetailSequence] The sequence number of the sub-details within the
  ///  details within the claim item which this line is intended to replace.
  List<FhirPositiveInt>? get subdetailSequence =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_subdetailSequence')
  List<PrimitiveElement>? get subdetailSequenceElement =>
      throw _privateConstructorUsedError;

  /// [provider] The providers who are authorized for the services rendered to
  ///  the patient.
  List<Reference>? get provider => throw _privateConstructorUsedError;

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  CodeableConcept get productOrService => throw _privateConstructorUsedError;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier => throw _privateConstructorUsedError;

  /// [programCode] Identifies the program under which this may be recovered.
  List<CodeableConcept>? get programCode => throw _privateConstructorUsedError;

  /// [servicedDate] The date or dates when the service or product was
  ///  supplied, performed or completed.
  FhirDate? get servicedDate => throw _privateConstructorUsedError;

  /// [servicedDateElement] Extensions for servicedDate
  @JsonKey(name: '_servicedDate')
  PrimitiveElement? get servicedDateElement =>
      throw _privateConstructorUsedError;

  /// [servicedPeriod] The date or dates when the service or product was
  ///  supplied, performed or completed.
  Period? get servicedPeriod => throw _privateConstructorUsedError;

  /// [locationCodeableConcept] Where the product or service was provided.
  CodeableConcept? get locationCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [locationAddress] Where the product or service was provided.
  Address? get locationAddress => throw _privateConstructorUsedError;

  /// [locationReference] Where the product or service was provided.
  Reference? get locationReference => throw _privateConstructorUsedError;

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  Money? get unitPrice => throw _privateConstructorUsedError;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  FhirDecimal? get factor => throw _privateConstructorUsedError;

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement => throw _privateConstructorUsedError;

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  Money? get net => throw _privateConstructorUsedError;

  /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
  CodeableConcept? get bodySite => throw _privateConstructorUsedError;

  /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
  ///  surface(s).
  List<CodeableConcept>? get subSite => throw _privateConstructorUsedError;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber => throw _privateConstructorUsedError;

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement =>
      throw _privateConstructorUsedError;

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication =>
      throw _privateConstructorUsedError;

  /// [detail] The second-tier service adjudications for payor added services.
  List<ClaimResponseDetail1>? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseAddItemCopyWith<ClaimResponseAddItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseAddItemCopyWith<$Res> {
  factory $ClaimResponseAddItemCopyWith(ClaimResponseAddItem value,
          $Res Function(ClaimResponseAddItem) then) =
      _$ClaimResponseAddItemCopyWithImpl<$Res, ClaimResponseAddItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirPositiveInt>? itemSequence,
      @JsonKey(name: '_itemSequence')
      List<PrimitiveElement>? itemSequenceElement,
      List<FhirPositiveInt>? detailSequence,
      @JsonKey(name: '_detailSequence')
      List<PrimitiveElement>? detailSequenceElement,
      List<FhirPositiveInt>? subdetailSequence,
      @JsonKey(name: '_subdetailSequence')
      List<PrimitiveElement>? subdetailSequenceElement,
      List<Reference>? provider,
      CodeableConcept productOrService,
      List<CodeableConcept>? modifier,
      List<CodeableConcept>? programCode,
      FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate') PrimitiveElement? servicedDateElement,
      Period? servicedPeriod,
      CodeableConcept? locationCodeableConcept,
      Address? locationAddress,
      Reference? locationReference,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      Money? net,
      CodeableConcept? bodySite,
      List<CodeableConcept>? subSite,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseDetail1>? detail});

  $CodeableConceptCopyWith<$Res> get productOrService;
  $PeriodCopyWith<$Res>? get servicedPeriod;
  $CodeableConceptCopyWith<$Res>? get locationCodeableConcept;
  $AddressCopyWith<$Res>? get locationAddress;
  $ReferenceCopyWith<$Res>? get locationReference;
  $QuantityCopyWith<$Res>? get quantity;
  $MoneyCopyWith<$Res>? get unitPrice;
  $MoneyCopyWith<$Res>? get net;
  $CodeableConceptCopyWith<$Res>? get bodySite;
}

/// @nodoc
class _$ClaimResponseAddItemCopyWithImpl<$Res,
        $Val extends ClaimResponseAddItem>
    implements $ClaimResponseAddItemCopyWith<$Res> {
  _$ClaimResponseAddItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemSequence = freezed,
    Object? itemSequenceElement = freezed,
    Object? detailSequence = freezed,
    Object? detailSequenceElement = freezed,
    Object? subdetailSequence = freezed,
    Object? subdetailSequenceElement = freezed,
    Object? provider = freezed,
    Object? productOrService = null,
    Object? modifier = freezed,
    Object? programCode = freezed,
    Object? servicedDate = freezed,
    Object? servicedDateElement = freezed,
    Object? servicedPeriod = freezed,
    Object? locationCodeableConcept = freezed,
    Object? locationAddress = freezed,
    Object? locationReference = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? net = freezed,
    Object? bodySite = freezed,
    Object? subSite = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      itemSequence: freezed == itemSequence
          ? _value.itemSequence
          : itemSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      itemSequenceElement: freezed == itemSequenceElement
          ? _value.itemSequenceElement
          : itemSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      detailSequence: freezed == detailSequence
          ? _value.detailSequence
          : detailSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      detailSequenceElement: freezed == detailSequenceElement
          ? _value.detailSequenceElement
          : detailSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      subdetailSequence: freezed == subdetailSequence
          ? _value.subdetailSequence
          : subdetailSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      subdetailSequenceElement: freezed == subdetailSequenceElement
          ? _value.subdetailSequenceElement
          : subdetailSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productOrService: null == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      programCode: freezed == programCode
          ? _value.programCode
          : programCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      servicedDate: freezed == servicedDate
          ? _value.servicedDate
          : servicedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      servicedDateElement: freezed == servicedDateElement
          ? _value.servicedDateElement
          : servicedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      servicedPeriod: freezed == servicedPeriod
          ? _value.servicedPeriod
          : servicedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      locationCodeableConcept: freezed == locationCodeableConcept
          ? _value.locationCodeableConcept
          : locationCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      locationAddress: freezed == locationAddress
          ? _value.locationAddress
          : locationAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      locationReference: freezed == locationReference
          ? _value.locationReference
          : locationReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subSite: freezed == subSite
          ? _value.subSite
          : subSite // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      noteNumber: freezed == noteNumber
          ? _value.noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value.noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseDetail1>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get productOrService {
    return $CodeableConceptCopyWith<$Res>(_value.productOrService, (value) {
      return _then(_value.copyWith(productOrService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get servicedPeriod {
    if (_value.servicedPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.servicedPeriod!, (value) {
      return _then(_value.copyWith(servicedPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get locationCodeableConcept {
    if (_value.locationCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.locationCodeableConcept!,
        (value) {
      return _then(_value.copyWith(locationCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get locationAddress {
    if (_value.locationAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.locationAddress!, (value) {
      return _then(_value.copyWith(locationAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get locationReference {
    if (_value.locationReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.locationReference!, (value) {
      return _then(_value.copyWith(locationReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get net {
    if (_value.net == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.net!, (value) {
      return _then(_value.copyWith(net: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get bodySite {
    if (_value.bodySite == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.bodySite!, (value) {
      return _then(_value.copyWith(bodySite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseAddItemImplCopyWith<$Res>
    implements $ClaimResponseAddItemCopyWith<$Res> {
  factory _$$ClaimResponseAddItemImplCopyWith(_$ClaimResponseAddItemImpl value,
          $Res Function(_$ClaimResponseAddItemImpl) then) =
      __$$ClaimResponseAddItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirPositiveInt>? itemSequence,
      @JsonKey(name: '_itemSequence')
      List<PrimitiveElement>? itemSequenceElement,
      List<FhirPositiveInt>? detailSequence,
      @JsonKey(name: '_detailSequence')
      List<PrimitiveElement>? detailSequenceElement,
      List<FhirPositiveInt>? subdetailSequence,
      @JsonKey(name: '_subdetailSequence')
      List<PrimitiveElement>? subdetailSequenceElement,
      List<Reference>? provider,
      CodeableConcept productOrService,
      List<CodeableConcept>? modifier,
      List<CodeableConcept>? programCode,
      FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate') PrimitiveElement? servicedDateElement,
      Period? servicedPeriod,
      CodeableConcept? locationCodeableConcept,
      Address? locationAddress,
      Reference? locationReference,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      Money? net,
      CodeableConcept? bodySite,
      List<CodeableConcept>? subSite,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseDetail1>? detail});

  @override
  $CodeableConceptCopyWith<$Res> get productOrService;
  @override
  $PeriodCopyWith<$Res>? get servicedPeriod;
  @override
  $CodeableConceptCopyWith<$Res>? get locationCodeableConcept;
  @override
  $AddressCopyWith<$Res>? get locationAddress;
  @override
  $ReferenceCopyWith<$Res>? get locationReference;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MoneyCopyWith<$Res>? get unitPrice;
  @override
  $MoneyCopyWith<$Res>? get net;
  @override
  $CodeableConceptCopyWith<$Res>? get bodySite;
}

/// @nodoc
class __$$ClaimResponseAddItemImplCopyWithImpl<$Res>
    extends _$ClaimResponseAddItemCopyWithImpl<$Res, _$ClaimResponseAddItemImpl>
    implements _$$ClaimResponseAddItemImplCopyWith<$Res> {
  __$$ClaimResponseAddItemImplCopyWithImpl(_$ClaimResponseAddItemImpl _value,
      $Res Function(_$ClaimResponseAddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemSequence = freezed,
    Object? itemSequenceElement = freezed,
    Object? detailSequence = freezed,
    Object? detailSequenceElement = freezed,
    Object? subdetailSequence = freezed,
    Object? subdetailSequenceElement = freezed,
    Object? provider = freezed,
    Object? productOrService = null,
    Object? modifier = freezed,
    Object? programCode = freezed,
    Object? servicedDate = freezed,
    Object? servicedDateElement = freezed,
    Object? servicedPeriod = freezed,
    Object? locationCodeableConcept = freezed,
    Object? locationAddress = freezed,
    Object? locationReference = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? net = freezed,
    Object? bodySite = freezed,
    Object? subSite = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? detail = freezed,
  }) {
    return _then(_$ClaimResponseAddItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      itemSequence: freezed == itemSequence
          ? _value._itemSequence
          : itemSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      itemSequenceElement: freezed == itemSequenceElement
          ? _value._itemSequenceElement
          : itemSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      detailSequence: freezed == detailSequence
          ? _value._detailSequence
          : detailSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      detailSequenceElement: freezed == detailSequenceElement
          ? _value._detailSequenceElement
          : detailSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      subdetailSequence: freezed == subdetailSequence
          ? _value._subdetailSequence
          : subdetailSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      subdetailSequenceElement: freezed == subdetailSequenceElement
          ? _value._subdetailSequenceElement
          : subdetailSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      provider: freezed == provider
          ? _value._provider
          : provider // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productOrService: null == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      programCode: freezed == programCode
          ? _value._programCode
          : programCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      servicedDate: freezed == servicedDate
          ? _value.servicedDate
          : servicedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      servicedDateElement: freezed == servicedDateElement
          ? _value.servicedDateElement
          : servicedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      servicedPeriod: freezed == servicedPeriod
          ? _value.servicedPeriod
          : servicedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      locationCodeableConcept: freezed == locationCodeableConcept
          ? _value.locationCodeableConcept
          : locationCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      locationAddress: freezed == locationAddress
          ? _value.locationAddress
          : locationAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      locationReference: freezed == locationReference
          ? _value.locationReference
          : locationReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subSite: freezed == subSite
          ? _value._subSite
          : subSite // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      noteNumber: freezed == noteNumber
          ? _value._noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value._noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseDetail1>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseAddItemImpl extends _ClaimResponseAddItem {
  const _$ClaimResponseAddItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirPositiveInt>? itemSequence,
      @JsonKey(name: '_itemSequence')
      final List<PrimitiveElement>? itemSequenceElement,
      final List<FhirPositiveInt>? detailSequence,
      @JsonKey(name: '_detailSequence')
      final List<PrimitiveElement>? detailSequenceElement,
      final List<FhirPositiveInt>? subdetailSequence,
      @JsonKey(name: '_subdetailSequence')
      final List<PrimitiveElement>? subdetailSequenceElement,
      final List<Reference>? provider,
      required this.productOrService,
      final List<CodeableConcept>? modifier,
      final List<CodeableConcept>? programCode,
      this.servicedDate,
      @JsonKey(name: '_servicedDate') this.servicedDateElement,
      this.servicedPeriod,
      this.locationCodeableConcept,
      this.locationAddress,
      this.locationReference,
      this.quantity,
      this.unitPrice,
      this.factor,
      @JsonKey(name: '_factor') this.factorElement,
      this.net,
      this.bodySite,
      final List<CodeableConcept>? subSite,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication,
      final List<ClaimResponseDetail1>? detail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _itemSequence = itemSequence,
        _itemSequenceElement = itemSequenceElement,
        _detailSequence = detailSequence,
        _detailSequenceElement = detailSequenceElement,
        _subdetailSequence = subdetailSequence,
        _subdetailSequenceElement = subdetailSequenceElement,
        _provider = provider,
        _modifier = modifier,
        _programCode = programCode,
        _subSite = subSite,
        _noteNumber = noteNumber,
        _noteNumberElement = noteNumberElement,
        _adjudication = adjudication,
        _detail = detail,
        super._();

  factory _$ClaimResponseAddItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseAddItemImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [itemSequence] Claim items which this service line is intended to
  ///  replace.
  final List<FhirPositiveInt>? _itemSequence;

  /// [itemSequence] Claim items which this service line is intended to
  ///  replace.
  @override
  List<FhirPositiveInt>? get itemSequence {
    final value = _itemSequence;
    if (value == null) return null;
    if (_itemSequence is EqualUnmodifiableListView) return _itemSequence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [itemSequenceElement] Extensions for itemSequence
  final List<PrimitiveElement>? _itemSequenceElement;

  /// [itemSequenceElement] Extensions for itemSequence
  @override
  @JsonKey(name: '_itemSequence')
  List<PrimitiveElement>? get itemSequenceElement {
    final value = _itemSequenceElement;
    if (value == null) return null;
    if (_itemSequenceElement is EqualUnmodifiableListView)
      return _itemSequenceElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [detailSequence] The sequence number of the details within the claim item
  ///  which this line is intended to replace.
  final List<FhirPositiveInt>? _detailSequence;

  /// [detailSequence] The sequence number of the details within the claim item
  ///  which this line is intended to replace.
  @override
  List<FhirPositiveInt>? get detailSequence {
    final value = _detailSequence;
    if (value == null) return null;
    if (_detailSequence is EqualUnmodifiableListView) return _detailSequence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [detailSequenceElement] Extensions for detailSequence
  final List<PrimitiveElement>? _detailSequenceElement;

  /// [detailSequenceElement] Extensions for detailSequence
  @override
  @JsonKey(name: '_detailSequence')
  List<PrimitiveElement>? get detailSequenceElement {
    final value = _detailSequenceElement;
    if (value == null) return null;
    if (_detailSequenceElement is EqualUnmodifiableListView)
      return _detailSequenceElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subdetailSequence] The sequence number of the sub-details within the
  ///  details within the claim item which this line is intended to replace.
  final List<FhirPositiveInt>? _subdetailSequence;

  /// [subdetailSequence] The sequence number of the sub-details within the
  ///  details within the claim item which this line is intended to replace.
  @override
  List<FhirPositiveInt>? get subdetailSequence {
    final value = _subdetailSequence;
    if (value == null) return null;
    if (_subdetailSequence is EqualUnmodifiableListView)
      return _subdetailSequence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _subdetailSequenceElement;
  @override
  @JsonKey(name: '_subdetailSequence')
  List<PrimitiveElement>? get subdetailSequenceElement {
    final value = _subdetailSequenceElement;
    if (value == null) return null;
    if (_subdetailSequenceElement is EqualUnmodifiableListView)
      return _subdetailSequenceElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [provider] The providers who are authorized for the services rendered to
  ///  the patient.
  final List<Reference>? _provider;

  /// [provider] The providers who are authorized for the services rendered to
  ///  the patient.
  @override
  List<Reference>? get provider {
    final value = _provider;
    if (value == null) return null;
    if (_provider is EqualUnmodifiableListView) return _provider;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  @override
  final CodeableConcept productOrService;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  final List<CodeableConcept>? _modifier;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  @override
  List<CodeableConcept>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [programCode] Identifies the program under which this may be recovered.
  final List<CodeableConcept>? _programCode;

  /// [programCode] Identifies the program under which this may be recovered.
  @override
  List<CodeableConcept>? get programCode {
    final value = _programCode;
    if (value == null) return null;
    if (_programCode is EqualUnmodifiableListView) return _programCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [servicedDate] The date or dates when the service or product was
  ///  supplied, performed or completed.
  @override
  final FhirDate? servicedDate;

  /// [servicedDateElement] Extensions for servicedDate
  @override
  @JsonKey(name: '_servicedDate')
  final PrimitiveElement? servicedDateElement;

  /// [servicedPeriod] The date or dates when the service or product was
  ///  supplied, performed or completed.
  @override
  final Period? servicedPeriod;

  /// [locationCodeableConcept] Where the product or service was provided.
  @override
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] Where the product or service was provided.
  @override
  final Address? locationAddress;

  /// [locationReference] Where the product or service was provided.
  @override
  final Reference? locationReference;

  /// [quantity] The number of repetitions of a service or product.
  @override
  final Quantity? quantity;

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  @override
  final Money? unitPrice;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  @override
  final FhirDecimal? factor;

  /// [factorElement] Extensions for factor
  @override
  @JsonKey(name: '_factor')
  final PrimitiveElement? factorElement;

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  @override
  final Money? net;

  /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
  @override
  final CodeableConcept? bodySite;

  /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
  ///  surface(s).
  final List<CodeableConcept>? _subSite;

  /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
  ///  surface(s).
  @override
  List<CodeableConcept>? get subSite {
    final value = _subSite;
    if (value == null) return null;
    if (_subSite is EqualUnmodifiableListView) return _subSite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  final List<FhirPositiveInt>? _noteNumber;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  @override
  List<FhirPositiveInt>? get noteNumber {
    final value = _noteNumber;
    if (value == null) return null;
    if (_noteNumber is EqualUnmodifiableListView) return _noteNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumberElement] Extensions for noteNumber
  final List<PrimitiveElement>? _noteNumberElement;

  /// [noteNumberElement] Extensions for noteNumber
  @override
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement {
    final value = _noteNumberElement;
    if (value == null) return null;
    if (_noteNumberElement is EqualUnmodifiableListView)
      return _noteNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] The adjudication results.
  final List<ClaimResponseAdjudication> _adjudication;

  /// [adjudication] The adjudication results.
  @override
  List<ClaimResponseAdjudication> get adjudication {
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjudication);
  }

  /// [detail] The second-tier service adjudications for payor added services.
  final List<ClaimResponseDetail1>? _detail;

  /// [detail] The second-tier service adjudications for payor added services.
  @override
  List<ClaimResponseDetail1>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseAddItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._itemSequence, _itemSequence) &&
            const DeepCollectionEquality()
                .equals(other._itemSequenceElement, _itemSequenceElement) &&
            const DeepCollectionEquality()
                .equals(other._detailSequence, _detailSequence) &&
            const DeepCollectionEquality()
                .equals(other._detailSequenceElement, _detailSequenceElement) &&
            const DeepCollectionEquality()
                .equals(other._subdetailSequence, _subdetailSequence) &&
            const DeepCollectionEquality().equals(
                other._subdetailSequenceElement, _subdetailSequenceElement) &&
            const DeepCollectionEquality().equals(other._provider, _provider) &&
            (identical(other.productOrService, productOrService) ||
                other.productOrService == productOrService) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            const DeepCollectionEquality()
                .equals(other._programCode, _programCode) &&
            (identical(other.servicedDate, servicedDate) ||
                other.servicedDate == servicedDate) &&
            (identical(other.servicedDateElement, servicedDateElement) ||
                other.servicedDateElement == servicedDateElement) &&
            (identical(other.servicedPeriod, servicedPeriod) ||
                other.servicedPeriod == servicedPeriod) &&
            (identical(
                    other.locationCodeableConcept, locationCodeableConcept) ||
                other.locationCodeableConcept == locationCodeableConcept) &&
            (identical(other.locationAddress, locationAddress) ||
                other.locationAddress == locationAddress) &&
            (identical(other.locationReference, locationReference) ||
                other.locationReference == locationReference) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.factorElement, factorElement) ||
                other.factorElement == factorElement) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            const DeepCollectionEquality().equals(other._subSite, _subSite) &&
            const DeepCollectionEquality()
                .equals(other._noteNumber, _noteNumber) &&
            const DeepCollectionEquality()
                .equals(other._noteNumberElement, _noteNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_itemSequence),
        const DeepCollectionEquality().hash(_itemSequenceElement),
        const DeepCollectionEquality().hash(_detailSequence),
        const DeepCollectionEquality().hash(_detailSequenceElement),
        const DeepCollectionEquality().hash(_subdetailSequence),
        const DeepCollectionEquality().hash(_subdetailSequenceElement),
        const DeepCollectionEquality().hash(_provider),
        productOrService,
        const DeepCollectionEquality().hash(_modifier),
        const DeepCollectionEquality().hash(_programCode),
        servicedDate,
        servicedDateElement,
        servicedPeriod,
        locationCodeableConcept,
        locationAddress,
        locationReference,
        quantity,
        unitPrice,
        factor,
        factorElement,
        net,
        bodySite,
        const DeepCollectionEquality().hash(_subSite),
        const DeepCollectionEquality().hash(_noteNumber),
        const DeepCollectionEquality().hash(_noteNumberElement),
        const DeepCollectionEquality().hash(_adjudication),
        const DeepCollectionEquality().hash(_detail)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseAddItemImplCopyWith<_$ClaimResponseAddItemImpl>
      get copyWith =>
          __$$ClaimResponseAddItemImplCopyWithImpl<_$ClaimResponseAddItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseAddItemImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseAddItem extends ClaimResponseAddItem {
  const factory _ClaimResponseAddItem(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirPositiveInt>? itemSequence,
      @JsonKey(name: '_itemSequence')
      final List<PrimitiveElement>? itemSequenceElement,
      final List<FhirPositiveInt>? detailSequence,
      @JsonKey(name: '_detailSequence')
      final List<PrimitiveElement>? detailSequenceElement,
      final List<FhirPositiveInt>? subdetailSequence,
      @JsonKey(name: '_subdetailSequence')
      final List<PrimitiveElement>? subdetailSequenceElement,
      final List<Reference>? provider,
      required final CodeableConcept productOrService,
      final List<CodeableConcept>? modifier,
      final List<CodeableConcept>? programCode,
      final FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate')
      final PrimitiveElement? servicedDateElement,
      final Period? servicedPeriod,
      final CodeableConcept? locationCodeableConcept,
      final Address? locationAddress,
      final Reference? locationReference,
      final Quantity? quantity,
      final Money? unitPrice,
      final FhirDecimal? factor,
      @JsonKey(name: '_factor') final PrimitiveElement? factorElement,
      final Money? net,
      final CodeableConcept? bodySite,
      final List<CodeableConcept>? subSite,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication,
      final List<ClaimResponseDetail1>? detail}) = _$ClaimResponseAddItemImpl;
  const _ClaimResponseAddItem._() : super._();

  factory _ClaimResponseAddItem.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseAddItemImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [itemSequence] Claim items which this service line is intended to
  ///  replace.
  List<FhirPositiveInt>? get itemSequence;
  @override

  /// [itemSequenceElement] Extensions for itemSequence
  @JsonKey(name: '_itemSequence')
  List<PrimitiveElement>? get itemSequenceElement;
  @override

  /// [detailSequence] The sequence number of the details within the claim item
  ///  which this line is intended to replace.
  List<FhirPositiveInt>? get detailSequence;
  @override

  /// [detailSequenceElement] Extensions for detailSequence
  @JsonKey(name: '_detailSequence')
  List<PrimitiveElement>? get detailSequenceElement;
  @override

  /// [subdetailSequence] The sequence number of the sub-details within the
  ///  details within the claim item which this line is intended to replace.
  List<FhirPositiveInt>? get subdetailSequence;
  @override
  @JsonKey(name: '_subdetailSequence')
  List<PrimitiveElement>? get subdetailSequenceElement;
  @override

  /// [provider] The providers who are authorized for the services rendered to
  ///  the patient.
  List<Reference>? get provider;
  @override

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  CodeableConcept get productOrService;
  @override

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier;
  @override

  /// [programCode] Identifies the program under which this may be recovered.
  List<CodeableConcept>? get programCode;
  @override

  /// [servicedDate] The date or dates when the service or product was
  ///  supplied, performed or completed.
  FhirDate? get servicedDate;
  @override

  /// [servicedDateElement] Extensions for servicedDate
  @JsonKey(name: '_servicedDate')
  PrimitiveElement? get servicedDateElement;
  @override

  /// [servicedPeriod] The date or dates when the service or product was
  ///  supplied, performed or completed.
  Period? get servicedPeriod;
  @override

  /// [locationCodeableConcept] Where the product or service was provided.
  CodeableConcept? get locationCodeableConcept;
  @override

  /// [locationAddress] Where the product or service was provided.
  Address? get locationAddress;
  @override

  /// [locationReference] Where the product or service was provided.
  Reference? get locationReference;
  @override

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity;
  @override

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  Money? get unitPrice;
  @override

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  FhirDecimal? get factor;
  @override

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement;
  @override

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  Money? get net;
  @override

  /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
  CodeableConcept? get bodySite;
  @override

  /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
  ///  surface(s).
  List<CodeableConcept>? get subSite;
  @override

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber;
  @override

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement;
  @override

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication;
  @override

  /// [detail] The second-tier service adjudications for payor added services.
  List<ClaimResponseDetail1>? get detail;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseAddItemImplCopyWith<_$ClaimResponseAddItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseDetail1 _$ClaimResponseDetail1FromJson(Map<String, dynamic> json) {
  return _ClaimResponseDetail1.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseDetail1 {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  CodeableConcept get productOrService => throw _privateConstructorUsedError;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier => throw _privateConstructorUsedError;

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  Money? get unitPrice => throw _privateConstructorUsedError;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  FhirDecimal? get factor => throw _privateConstructorUsedError;

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement => throw _privateConstructorUsedError;

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  Money? get net => throw _privateConstructorUsedError;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber => throw _privateConstructorUsedError;

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement =>
      throw _privateConstructorUsedError;

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication =>
      throw _privateConstructorUsedError;

  /// [subDetail] The third-tier service adjudications for payor added
  ///  services.
  List<ClaimResponseSubDetail1>? get subDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseDetail1CopyWith<ClaimResponseDetail1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseDetail1CopyWith<$Res> {
  factory $ClaimResponseDetail1CopyWith(ClaimResponseDetail1 value,
          $Res Function(ClaimResponseDetail1) then) =
      _$ClaimResponseDetail1CopyWithImpl<$Res, ClaimResponseDetail1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept productOrService,
      List<CodeableConcept>? modifier,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      Money? net,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseSubDetail1>? subDetail});

  $CodeableConceptCopyWith<$Res> get productOrService;
  $QuantityCopyWith<$Res>? get quantity;
  $MoneyCopyWith<$Res>? get unitPrice;
  $MoneyCopyWith<$Res>? get net;
}

/// @nodoc
class _$ClaimResponseDetail1CopyWithImpl<$Res,
        $Val extends ClaimResponseDetail1>
    implements $ClaimResponseDetail1CopyWith<$Res> {
  _$ClaimResponseDetail1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? productOrService = null,
    Object? modifier = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? net = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? subDetail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      productOrService: null == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      noteNumber: freezed == noteNumber
          ? _value.noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value.noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      subDetail: freezed == subDetail
          ? _value.subDetail
          : subDetail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseSubDetail1>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get productOrService {
    return $CodeableConceptCopyWith<$Res>(_value.productOrService, (value) {
      return _then(_value.copyWith(productOrService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get net {
    if (_value.net == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.net!, (value) {
      return _then(_value.copyWith(net: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseDetail1ImplCopyWith<$Res>
    implements $ClaimResponseDetail1CopyWith<$Res> {
  factory _$$ClaimResponseDetail1ImplCopyWith(_$ClaimResponseDetail1Impl value,
          $Res Function(_$ClaimResponseDetail1Impl) then) =
      __$$ClaimResponseDetail1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept productOrService,
      List<CodeableConcept>? modifier,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      Money? net,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication,
      List<ClaimResponseSubDetail1>? subDetail});

  @override
  $CodeableConceptCopyWith<$Res> get productOrService;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MoneyCopyWith<$Res>? get unitPrice;
  @override
  $MoneyCopyWith<$Res>? get net;
}

/// @nodoc
class __$$ClaimResponseDetail1ImplCopyWithImpl<$Res>
    extends _$ClaimResponseDetail1CopyWithImpl<$Res, _$ClaimResponseDetail1Impl>
    implements _$$ClaimResponseDetail1ImplCopyWith<$Res> {
  __$$ClaimResponseDetail1ImplCopyWithImpl(_$ClaimResponseDetail1Impl _value,
      $Res Function(_$ClaimResponseDetail1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? productOrService = null,
    Object? modifier = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? net = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
    Object? subDetail = freezed,
  }) {
    return _then(_$ClaimResponseDetail1Impl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      productOrService: null == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      noteNumber: freezed == noteNumber
          ? _value._noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value._noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
      subDetail: freezed == subDetail
          ? _value._subDetail
          : subDetail // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseSubDetail1>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseDetail1Impl extends _ClaimResponseDetail1 {
  const _$ClaimResponseDetail1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.productOrService,
      final List<CodeableConcept>? modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      @JsonKey(name: '_factor') this.factorElement,
      this.net,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication,
      final List<ClaimResponseSubDetail1>? subDetail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _modifier = modifier,
        _noteNumber = noteNumber,
        _noteNumberElement = noteNumberElement,
        _adjudication = adjudication,
        _subDetail = subDetail,
        super._();

  factory _$ClaimResponseDetail1Impl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseDetail1ImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  @override
  final CodeableConcept productOrService;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  final List<CodeableConcept>? _modifier;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  @override
  List<CodeableConcept>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [quantity] The number of repetitions of a service or product.
  @override
  final Quantity? quantity;

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  @override
  final Money? unitPrice;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  @override
  final FhirDecimal? factor;

  /// [factorElement] Extensions for factor
  @override
  @JsonKey(name: '_factor')
  final PrimitiveElement? factorElement;

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  @override
  final Money? net;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  final List<FhirPositiveInt>? _noteNumber;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  @override
  List<FhirPositiveInt>? get noteNumber {
    final value = _noteNumber;
    if (value == null) return null;
    if (_noteNumber is EqualUnmodifiableListView) return _noteNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumberElement] Extensions for noteNumber
  final List<PrimitiveElement>? _noteNumberElement;

  /// [noteNumberElement] Extensions for noteNumber
  @override
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement {
    final value = _noteNumberElement;
    if (value == null) return null;
    if (_noteNumberElement is EqualUnmodifiableListView)
      return _noteNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] The adjudication results.
  final List<ClaimResponseAdjudication> _adjudication;

  /// [adjudication] The adjudication results.
  @override
  List<ClaimResponseAdjudication> get adjudication {
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjudication);
  }

  /// [subDetail] The third-tier service adjudications for payor added
  ///  services.
  final List<ClaimResponseSubDetail1>? _subDetail;

  /// [subDetail] The third-tier service adjudications for payor added
  ///  services.
  @override
  List<ClaimResponseSubDetail1>? get subDetail {
    final value = _subDetail;
    if (value == null) return null;
    if (_subDetail is EqualUnmodifiableListView) return _subDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseDetail1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.productOrService, productOrService) ||
                other.productOrService == productOrService) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.factorElement, factorElement) ||
                other.factorElement == factorElement) &&
            (identical(other.net, net) || other.net == net) &&
            const DeepCollectionEquality()
                .equals(other._noteNumber, _noteNumber) &&
            const DeepCollectionEquality()
                .equals(other._noteNumberElement, _noteNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication) &&
            const DeepCollectionEquality()
                .equals(other._subDetail, _subDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      productOrService,
      const DeepCollectionEquality().hash(_modifier),
      quantity,
      unitPrice,
      factor,
      factorElement,
      net,
      const DeepCollectionEquality().hash(_noteNumber),
      const DeepCollectionEquality().hash(_noteNumberElement),
      const DeepCollectionEquality().hash(_adjudication),
      const DeepCollectionEquality().hash(_subDetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseDetail1ImplCopyWith<_$ClaimResponseDetail1Impl>
      get copyWith =>
          __$$ClaimResponseDetail1ImplCopyWithImpl<_$ClaimResponseDetail1Impl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseDetail1ImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseDetail1 extends ClaimResponseDetail1 {
  const factory _ClaimResponseDetail1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept productOrService,
          final List<CodeableConcept>? modifier,
          final Quantity? quantity,
          final Money? unitPrice,
          final FhirDecimal? factor,
          @JsonKey(name: '_factor') final PrimitiveElement? factorElement,
          final Money? net,
          final List<FhirPositiveInt>? noteNumber,
          @JsonKey(name: '_noteNumber')
          final List<PrimitiveElement>? noteNumberElement,
          required final List<ClaimResponseAdjudication> adjudication,
          final List<ClaimResponseSubDetail1>? subDetail}) =
      _$ClaimResponseDetail1Impl;
  const _ClaimResponseDetail1._() : super._();

  factory _ClaimResponseDetail1.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseDetail1Impl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  CodeableConcept get productOrService;
  @override

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier;
  @override

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity;
  @override

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  Money? get unitPrice;
  @override

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  FhirDecimal? get factor;
  @override

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement;
  @override

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  Money? get net;
  @override

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber;
  @override

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement;
  @override

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication;
  @override

  /// [subDetail] The third-tier service adjudications for payor added
  ///  services.
  List<ClaimResponseSubDetail1>? get subDetail;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseDetail1ImplCopyWith<_$ClaimResponseDetail1Impl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseSubDetail1 _$ClaimResponseSubDetail1FromJson(
    Map<String, dynamic> json) {
  return _ClaimResponseSubDetail1.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseSubDetail1 {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  CodeableConcept get productOrService => throw _privateConstructorUsedError;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier => throw _privateConstructorUsedError;

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  Money? get unitPrice => throw _privateConstructorUsedError;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  FhirDecimal? get factor => throw _privateConstructorUsedError;

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement => throw _privateConstructorUsedError;

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  Money? get net => throw _privateConstructorUsedError;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber => throw _privateConstructorUsedError;

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement =>
      throw _privateConstructorUsedError;

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseSubDetail1CopyWith<ClaimResponseSubDetail1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseSubDetail1CopyWith<$Res> {
  factory $ClaimResponseSubDetail1CopyWith(ClaimResponseSubDetail1 value,
          $Res Function(ClaimResponseSubDetail1) then) =
      _$ClaimResponseSubDetail1CopyWithImpl<$Res, ClaimResponseSubDetail1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept productOrService,
      List<CodeableConcept>? modifier,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      Money? net,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication});

  $CodeableConceptCopyWith<$Res> get productOrService;
  $QuantityCopyWith<$Res>? get quantity;
  $MoneyCopyWith<$Res>? get unitPrice;
  $MoneyCopyWith<$Res>? get net;
}

/// @nodoc
class _$ClaimResponseSubDetail1CopyWithImpl<$Res,
        $Val extends ClaimResponseSubDetail1>
    implements $ClaimResponseSubDetail1CopyWith<$Res> {
  _$ClaimResponseSubDetail1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? productOrService = null,
    Object? modifier = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? net = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      productOrService: null == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      noteNumber: freezed == noteNumber
          ? _value.noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value.noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value.adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get productOrService {
    return $CodeableConceptCopyWith<$Res>(_value.productOrService, (value) {
      return _then(_value.copyWith(productOrService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get net {
    if (_value.net == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.net!, (value) {
      return _then(_value.copyWith(net: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseSubDetail1ImplCopyWith<$Res>
    implements $ClaimResponseSubDetail1CopyWith<$Res> {
  factory _$$ClaimResponseSubDetail1ImplCopyWith(
          _$ClaimResponseSubDetail1Impl value,
          $Res Function(_$ClaimResponseSubDetail1Impl) then) =
      __$$ClaimResponseSubDetail1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept productOrService,
      List<CodeableConcept>? modifier,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      Money? net,
      List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
      List<ClaimResponseAdjudication> adjudication});

  @override
  $CodeableConceptCopyWith<$Res> get productOrService;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MoneyCopyWith<$Res>? get unitPrice;
  @override
  $MoneyCopyWith<$Res>? get net;
}

/// @nodoc
class __$$ClaimResponseSubDetail1ImplCopyWithImpl<$Res>
    extends _$ClaimResponseSubDetail1CopyWithImpl<$Res,
        _$ClaimResponseSubDetail1Impl>
    implements _$$ClaimResponseSubDetail1ImplCopyWith<$Res> {
  __$$ClaimResponseSubDetail1ImplCopyWithImpl(
      _$ClaimResponseSubDetail1Impl _value,
      $Res Function(_$ClaimResponseSubDetail1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? productOrService = null,
    Object? modifier = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? net = freezed,
    Object? noteNumber = freezed,
    Object? noteNumberElement = freezed,
    Object? adjudication = null,
  }) {
    return _then(_$ClaimResponseSubDetail1Impl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      productOrService: null == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      noteNumber: freezed == noteNumber
          ? _value._noteNumber
          : noteNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      noteNumberElement: freezed == noteNumberElement
          ? _value._noteNumberElement
          : noteNumberElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      adjudication: null == adjudication
          ? _value._adjudication
          : adjudication // ignore: cast_nullable_to_non_nullable
              as List<ClaimResponseAdjudication>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseSubDetail1Impl extends _ClaimResponseSubDetail1 {
  const _$ClaimResponseSubDetail1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.productOrService,
      final List<CodeableConcept>? modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      @JsonKey(name: '_factor') this.factorElement,
      this.net,
      final List<FhirPositiveInt>? noteNumber,
      @JsonKey(name: '_noteNumber')
      final List<PrimitiveElement>? noteNumberElement,
      required final List<ClaimResponseAdjudication> adjudication})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _modifier = modifier,
        _noteNumber = noteNumber,
        _noteNumberElement = noteNumberElement,
        _adjudication = adjudication,
        super._();

  factory _$ClaimResponseSubDetail1Impl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseSubDetail1ImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  @override
  final CodeableConcept productOrService;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  final List<CodeableConcept>? _modifier;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  @override
  List<CodeableConcept>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [quantity] The number of repetitions of a service or product.
  @override
  final Quantity? quantity;

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  @override
  final Money? unitPrice;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  @override
  final FhirDecimal? factor;

  /// [factorElement] Extensions for factor
  @override
  @JsonKey(name: '_factor')
  final PrimitiveElement? factorElement;

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  @override
  final Money? net;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  final List<FhirPositiveInt>? _noteNumber;

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  @override
  List<FhirPositiveInt>? get noteNumber {
    final value = _noteNumber;
    if (value == null) return null;
    if (_noteNumber is EqualUnmodifiableListView) return _noteNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [noteNumberElement] Extensions for noteNumber
  final List<PrimitiveElement>? _noteNumberElement;

  /// [noteNumberElement] Extensions for noteNumber
  @override
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement {
    final value = _noteNumberElement;
    if (value == null) return null;
    if (_noteNumberElement is EqualUnmodifiableListView)
      return _noteNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [adjudication] The adjudication results.
  final List<ClaimResponseAdjudication> _adjudication;

  /// [adjudication] The adjudication results.
  @override
  List<ClaimResponseAdjudication> get adjudication {
    if (_adjudication is EqualUnmodifiableListView) return _adjudication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjudication);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseSubDetail1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.productOrService, productOrService) ||
                other.productOrService == productOrService) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.factorElement, factorElement) ||
                other.factorElement == factorElement) &&
            (identical(other.net, net) || other.net == net) &&
            const DeepCollectionEquality()
                .equals(other._noteNumber, _noteNumber) &&
            const DeepCollectionEquality()
                .equals(other._noteNumberElement, _noteNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._adjudication, _adjudication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      productOrService,
      const DeepCollectionEquality().hash(_modifier),
      quantity,
      unitPrice,
      factor,
      factorElement,
      net,
      const DeepCollectionEquality().hash(_noteNumber),
      const DeepCollectionEquality().hash(_noteNumberElement),
      const DeepCollectionEquality().hash(_adjudication));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseSubDetail1ImplCopyWith<_$ClaimResponseSubDetail1Impl>
      get copyWith => __$$ClaimResponseSubDetail1ImplCopyWithImpl<
          _$ClaimResponseSubDetail1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseSubDetail1ImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseSubDetail1 extends ClaimResponseSubDetail1 {
  const factory _ClaimResponseSubDetail1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept productOrService,
          final List<CodeableConcept>? modifier,
          final Quantity? quantity,
          final Money? unitPrice,
          final FhirDecimal? factor,
          @JsonKey(name: '_factor') final PrimitiveElement? factorElement,
          final Money? net,
          final List<FhirPositiveInt>? noteNumber,
          @JsonKey(name: '_noteNumber')
          final List<PrimitiveElement>? noteNumberElement,
          required final List<ClaimResponseAdjudication> adjudication}) =
      _$ClaimResponseSubDetail1Impl;
  const _ClaimResponseSubDetail1._() : super._();

  factory _ClaimResponseSubDetail1.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseSubDetail1Impl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  CodeableConcept get productOrService;
  @override

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier;
  @override

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity;
  @override

  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  Money? get unitPrice;
  @override

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  FhirDecimal? get factor;
  @override

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement;
  @override

  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  Money? get net;
  @override

  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  List<FhirPositiveInt>? get noteNumber;
  @override

  /// [noteNumberElement] Extensions for noteNumber
  @JsonKey(name: '_noteNumber')
  List<PrimitiveElement>? get noteNumberElement;
  @override

  /// [adjudication] The adjudication results.
  List<ClaimResponseAdjudication> get adjudication;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseSubDetail1ImplCopyWith<_$ClaimResponseSubDetail1Impl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseTotal _$ClaimResponseTotalFromJson(Map<String, dynamic> json) {
  return _ClaimResponseTotal.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseTotal {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include: the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts paid
  ///  by other coverages, and the benefit payable for this item.
  CodeableConcept get category => throw _privateConstructorUsedError;

  /// [amount] Monetary total amount associated with the category.
  Money get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseTotalCopyWith<ClaimResponseTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseTotalCopyWith<$Res> {
  factory $ClaimResponseTotalCopyWith(
          ClaimResponseTotal value, $Res Function(ClaimResponseTotal) then) =
      _$ClaimResponseTotalCopyWithImpl<$Res, ClaimResponseTotal>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept category,
      Money amount});

  $CodeableConceptCopyWith<$Res> get category;
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class _$ClaimResponseTotalCopyWithImpl<$Res, $Val extends ClaimResponseTotal>
    implements $ClaimResponseTotalCopyWith<$Res> {
  _$ClaimResponseTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get category {
    return $CodeableConceptCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseTotalImplCopyWith<$Res>
    implements $ClaimResponseTotalCopyWith<$Res> {
  factory _$$ClaimResponseTotalImplCopyWith(_$ClaimResponseTotalImpl value,
          $Res Function(_$ClaimResponseTotalImpl) then) =
      __$$ClaimResponseTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept category,
      Money amount});

  @override
  $CodeableConceptCopyWith<$Res> get category;
  @override
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$ClaimResponseTotalImplCopyWithImpl<$Res>
    extends _$ClaimResponseTotalCopyWithImpl<$Res, _$ClaimResponseTotalImpl>
    implements _$$ClaimResponseTotalImplCopyWith<$Res> {
  __$$ClaimResponseTotalImplCopyWithImpl(_$ClaimResponseTotalImpl _value,
      $Res Function(_$ClaimResponseTotalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_$ClaimResponseTotalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseTotalImpl extends _ClaimResponseTotal {
  const _$ClaimResponseTotalImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.category,
      required this.amount})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClaimResponseTotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseTotalImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include: the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts paid
  ///  by other coverages, and the benefit payable for this item.
  @override
  final CodeableConcept category;

  /// [amount] Monetary total amount associated with the category.
  @override
  final Money amount;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseTotalImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      category,
      amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseTotalImplCopyWith<_$ClaimResponseTotalImpl> get copyWith =>
      __$$ClaimResponseTotalImplCopyWithImpl<_$ClaimResponseTotalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseTotalImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseTotal extends ClaimResponseTotal {
  const factory _ClaimResponseTotal(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept category,
      required final Money amount}) = _$ClaimResponseTotalImpl;
  const _ClaimResponseTotal._() : super._();

  factory _ClaimResponseTotal.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseTotalImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include: the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts paid
  ///  by other coverages, and the benefit payable for this item.
  CodeableConcept get category;
  @override

  /// [amount] Monetary total amount associated with the category.
  Money get amount;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseTotalImplCopyWith<_$ClaimResponseTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClaimResponsePayment _$ClaimResponsePaymentFromJson(Map<String, dynamic> json) {
  return _ClaimResponsePayment.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponsePayment {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Whether this represents partial or complete payment of the
  ///  benefits payable.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [adjustment] Total amount of all adjustments to this payment included in
  ///  this transaction which are not related to this claim's adjudication.
  Money? get adjustment => throw _privateConstructorUsedError;

  /// [adjustmentReason] Reason for the payment adjustment.
  CodeableConcept? get adjustmentReason => throw _privateConstructorUsedError;

  /// [date] Estimated date the payment will be issued or the actual issue date
  ///  of payment.
  FhirDate? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [amount] Benefits payable less any payment adjustment.
  Money get amount => throw _privateConstructorUsedError;

  /// [identifier] Issuer's unique identifier for the payment instrument.
  Identifier? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponsePaymentCopyWith<ClaimResponsePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponsePaymentCopyWith<$Res> {
  factory $ClaimResponsePaymentCopyWith(ClaimResponsePayment value,
          $Res Function(ClaimResponsePayment) then) =
      _$ClaimResponsePaymentCopyWithImpl<$Res, ClaimResponsePayment>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      Money? adjustment,
      CodeableConcept? adjustmentReason,
      FhirDate? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Money amount,
      Identifier? identifier});

  $CodeableConceptCopyWith<$Res> get type;
  $MoneyCopyWith<$Res>? get adjustment;
  $CodeableConceptCopyWith<$Res>? get adjustmentReason;
  $MoneyCopyWith<$Res> get amount;
  $IdentifierCopyWith<$Res>? get identifier;
}

/// @nodoc
class _$ClaimResponsePaymentCopyWithImpl<$Res,
        $Val extends ClaimResponsePayment>
    implements $ClaimResponsePaymentCopyWith<$Res> {
  _$ClaimResponsePaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? adjustment = freezed,
    Object? adjustmentReason = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? amount = null,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      adjustment: freezed == adjustment
          ? _value.adjustment
          : adjustment // ignore: cast_nullable_to_non_nullable
              as Money?,
      adjustmentReason: freezed == adjustmentReason
          ? _value.adjustmentReason
          : adjustmentReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get adjustment {
    if (_value.adjustment == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.adjustment!, (value) {
      return _then(_value.copyWith(adjustment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get adjustmentReason {
    if (_value.adjustmentReason == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.adjustmentReason!, (value) {
      return _then(_value.copyWith(adjustmentReason: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponsePaymentImplCopyWith<$Res>
    implements $ClaimResponsePaymentCopyWith<$Res> {
  factory _$$ClaimResponsePaymentImplCopyWith(_$ClaimResponsePaymentImpl value,
          $Res Function(_$ClaimResponsePaymentImpl) then) =
      __$$ClaimResponsePaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      Money? adjustment,
      CodeableConcept? adjustmentReason,
      FhirDate? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Money amount,
      Identifier? identifier});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $MoneyCopyWith<$Res>? get adjustment;
  @override
  $CodeableConceptCopyWith<$Res>? get adjustmentReason;
  @override
  $MoneyCopyWith<$Res> get amount;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
}

/// @nodoc
class __$$ClaimResponsePaymentImplCopyWithImpl<$Res>
    extends _$ClaimResponsePaymentCopyWithImpl<$Res, _$ClaimResponsePaymentImpl>
    implements _$$ClaimResponsePaymentImplCopyWith<$Res> {
  __$$ClaimResponsePaymentImplCopyWithImpl(_$ClaimResponsePaymentImpl _value,
      $Res Function(_$ClaimResponsePaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? adjustment = freezed,
    Object? adjustmentReason = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? amount = null,
    Object? identifier = freezed,
  }) {
    return _then(_$ClaimResponsePaymentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      adjustment: freezed == adjustment
          ? _value.adjustment
          : adjustment // ignore: cast_nullable_to_non_nullable
              as Money?,
      adjustmentReason: freezed == adjustmentReason
          ? _value.adjustmentReason
          : adjustmentReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponsePaymentImpl extends _ClaimResponsePayment {
  const _$ClaimResponsePaymentImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.adjustment,
      this.adjustmentReason,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      required this.amount,
      this.identifier})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClaimResponsePaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponsePaymentImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Whether this represents partial or complete payment of the
  ///  benefits payable.
  @override
  final CodeableConcept type;

  /// [adjustment] Total amount of all adjustments to this payment included in
  ///  this transaction which are not related to this claim's adjudication.
  @override
  final Money? adjustment;

  /// [adjustmentReason] Reason for the payment adjustment.
  @override
  final CodeableConcept? adjustmentReason;

  /// [date] Estimated date the payment will be issued or the actual issue date
  ///  of payment.
  @override
  final FhirDate? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [amount] Benefits payable less any payment adjustment.
  @override
  final Money amount;

  /// [identifier] Issuer's unique identifier for the payment instrument.
  @override
  final Identifier? identifier;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponsePaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.adjustment, adjustment) ||
                other.adjustment == adjustment) &&
            (identical(other.adjustmentReason, adjustmentReason) ||
                other.adjustmentReason == adjustmentReason) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      adjustment,
      adjustmentReason,
      date,
      dateElement,
      amount,
      identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponsePaymentImplCopyWith<_$ClaimResponsePaymentImpl>
      get copyWith =>
          __$$ClaimResponsePaymentImplCopyWithImpl<_$ClaimResponsePaymentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponsePaymentImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponsePayment extends ClaimResponsePayment {
  const factory _ClaimResponsePayment(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final Money? adjustment,
      final CodeableConcept? adjustmentReason,
      final FhirDate? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      required final Money amount,
      final Identifier? identifier}) = _$ClaimResponsePaymentImpl;
  const _ClaimResponsePayment._() : super._();

  factory _ClaimResponsePayment.fromJson(Map<String, dynamic> json) =
      _$ClaimResponsePaymentImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Whether this represents partial or complete payment of the
  ///  benefits payable.
  CodeableConcept get type;
  @override

  /// [adjustment] Total amount of all adjustments to this payment included in
  ///  this transaction which are not related to this claim's adjudication.
  Money? get adjustment;
  @override

  /// [adjustmentReason] Reason for the payment adjustment.
  CodeableConcept? get adjustmentReason;
  @override

  /// [date] Estimated date the payment will be issued or the actual issue date
  ///  of payment.
  FhirDate? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [amount] Benefits payable less any payment adjustment.
  Money get amount;
  @override

  /// [identifier] Issuer's unique identifier for the payment instrument.
  Identifier? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponsePaymentImplCopyWith<_$ClaimResponsePaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseProcessNote _$ClaimResponseProcessNoteFromJson(
    Map<String, dynamic> json) {
  return _ClaimResponseProcessNote.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseProcessNote {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [number] A number to uniquely identify a note entry.
  FhirPositiveInt? get number => throw _privateConstructorUsedError;

  /// [numberElement] Extensions for number
  @JsonKey(name: '_number')
  PrimitiveElement? get numberElement => throw _privateConstructorUsedError;

  /// [type] The business purpose of the note text.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [text] The explanation or description associated with the processing.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [language] A code to define the language used in the text of the note.
  CodeableConcept? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseProcessNoteCopyWith<ClaimResponseProcessNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseProcessNoteCopyWith<$Res> {
  factory $ClaimResponseProcessNoteCopyWith(ClaimResponseProcessNote value,
          $Res Function(ClaimResponseProcessNote) then) =
      _$ClaimResponseProcessNoteCopyWithImpl<$Res, ClaimResponseProcessNote>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? number,
      @JsonKey(name: '_number') PrimitiveElement? numberElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      CodeableConcept? language});

  $CodeableConceptCopyWith<$Res>? get language;
}

/// @nodoc
class _$ClaimResponseProcessNoteCopyWithImpl<$Res,
        $Val extends ClaimResponseProcessNote>
    implements $ClaimResponseProcessNoteCopyWith<$Res> {
  _$ClaimResponseProcessNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? number = freezed,
    Object? numberElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      numberElement: freezed == numberElement
          ? _value.numberElement
          : numberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseProcessNoteImplCopyWith<$Res>
    implements $ClaimResponseProcessNoteCopyWith<$Res> {
  factory _$$ClaimResponseProcessNoteImplCopyWith(
          _$ClaimResponseProcessNoteImpl value,
          $Res Function(_$ClaimResponseProcessNoteImpl) then) =
      __$$ClaimResponseProcessNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? number,
      @JsonKey(name: '_number') PrimitiveElement? numberElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      CodeableConcept? language});

  @override
  $CodeableConceptCopyWith<$Res>? get language;
}

/// @nodoc
class __$$ClaimResponseProcessNoteImplCopyWithImpl<$Res>
    extends _$ClaimResponseProcessNoteCopyWithImpl<$Res,
        _$ClaimResponseProcessNoteImpl>
    implements _$$ClaimResponseProcessNoteImplCopyWith<$Res> {
  __$$ClaimResponseProcessNoteImplCopyWithImpl(
      _$ClaimResponseProcessNoteImpl _value,
      $Res Function(_$ClaimResponseProcessNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? number = freezed,
    Object? numberElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? language = freezed,
  }) {
    return _then(_$ClaimResponseProcessNoteImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      numberElement: freezed == numberElement
          ? _value.numberElement
          : numberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseProcessNoteImpl extends _ClaimResponseProcessNote {
  const _$ClaimResponseProcessNoteImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.number,
      @JsonKey(name: '_number') this.numberElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      this.language})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClaimResponseProcessNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseProcessNoteImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [number] A number to uniquely identify a note entry.
  @override
  final FhirPositiveInt? number;

  /// [numberElement] Extensions for number
  @override
  @JsonKey(name: '_number')
  final PrimitiveElement? numberElement;

  /// [type] The business purpose of the note text.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [text] The explanation or description associated with the processing.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [language] A code to define the language used in the text of the note.
  @override
  final CodeableConcept? language;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseProcessNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberElement, numberElement) ||
                other.numberElement == numberElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      number,
      numberElement,
      type,
      typeElement,
      text,
      textElement,
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseProcessNoteImplCopyWith<_$ClaimResponseProcessNoteImpl>
      get copyWith => __$$ClaimResponseProcessNoteImplCopyWithImpl<
          _$ClaimResponseProcessNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseProcessNoteImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseProcessNote extends ClaimResponseProcessNote {
  const factory _ClaimResponseProcessNote(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirPositiveInt? number,
      @JsonKey(name: '_number') final PrimitiveElement? numberElement,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final CodeableConcept? language}) = _$ClaimResponseProcessNoteImpl;
  const _ClaimResponseProcessNote._() : super._();

  factory _ClaimResponseProcessNote.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseProcessNoteImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [number] A number to uniquely identify a note entry.
  FhirPositiveInt? get number;
  @override

  /// [numberElement] Extensions for number
  @JsonKey(name: '_number')
  PrimitiveElement? get numberElement;
  @override

  /// [type] The business purpose of the note text.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [text] The explanation or description associated with the processing.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [language] A code to define the language used in the text of the note.
  CodeableConcept? get language;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseProcessNoteImplCopyWith<_$ClaimResponseProcessNoteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseInsurance _$ClaimResponseInsuranceFromJson(
    Map<String, dynamic> json) {
  return _ClaimResponseInsurance.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseInsurance {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [sequence] A number to uniquely identify insurance entries and provide a
  ///  sequence of coverages to convey coordination of benefit order.
  FhirPositiveInt? get sequence => throw _privateConstructorUsedError;

  /// [sequenceElement] Extensions for sequence
  @JsonKey(name: '_sequence')
  PrimitiveElement? get sequenceElement => throw _privateConstructorUsedError;

  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  adjudication of this claim when set to true.
  FhirBoolean? get focal => throw _privateConstructorUsedError;

  /// [focalElement] Extensions for focal
  @JsonKey(name: '_focal')
  PrimitiveElement? get focalElement => throw _privateConstructorUsedError;

  /// [coverage] Reference to the insurance card level information contained in
  /// the Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's information
  ///  system.
  Reference get coverage => throw _privateConstructorUsedError;

  /// [businessArrangement] A business agreement number established between the
  ///  provider and the insurer for special business processing purposes.
  String? get businessArrangement => throw _privateConstructorUsedError;

  /// [businessArrangementElement] Extensions for businessArrangement
  @JsonKey(name: '_businessArrangement')
  PrimitiveElement? get businessArrangementElement =>
      throw _privateConstructorUsedError;

  /// [claimResponse] The result of the adjudication of the line items for the
  ///  Coverage specified in this insurance.
  Reference? get claimResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseInsuranceCopyWith<ClaimResponseInsurance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseInsuranceCopyWith<$Res> {
  factory $ClaimResponseInsuranceCopyWith(ClaimResponseInsurance value,
          $Res Function(ClaimResponseInsurance) then) =
      _$ClaimResponseInsuranceCopyWithImpl<$Res, ClaimResponseInsurance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? sequence,
      @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
      FhirBoolean? focal,
      @JsonKey(name: '_focal') PrimitiveElement? focalElement,
      Reference coverage,
      String? businessArrangement,
      @JsonKey(name: '_businessArrangement')
      PrimitiveElement? businessArrangementElement,
      Reference? claimResponse});

  $ReferenceCopyWith<$Res> get coverage;
  $ReferenceCopyWith<$Res>? get claimResponse;
}

/// @nodoc
class _$ClaimResponseInsuranceCopyWithImpl<$Res,
        $Val extends ClaimResponseInsurance>
    implements $ClaimResponseInsuranceCopyWith<$Res> {
  _$ClaimResponseInsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? sequence = freezed,
    Object? sequenceElement = freezed,
    Object? focal = freezed,
    Object? focalElement = freezed,
    Object? coverage = null,
    Object? businessArrangement = freezed,
    Object? businessArrangementElement = freezed,
    Object? claimResponse = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      sequenceElement: freezed == sequenceElement
          ? _value.sequenceElement
          : sequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      focalElement: freezed == focalElement
          ? _value.focalElement
          : focalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference,
      businessArrangement: freezed == businessArrangement
          ? _value.businessArrangement
          : businessArrangement // ignore: cast_nullable_to_non_nullable
              as String?,
      businessArrangementElement: freezed == businessArrangementElement
          ? _value.businessArrangementElement
          : businessArrangementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      claimResponse: freezed == claimResponse
          ? _value.claimResponse
          : claimResponse // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get coverage {
    return $ReferenceCopyWith<$Res>(_value.coverage, (value) {
      return _then(_value.copyWith(coverage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get claimResponse {
    if (_value.claimResponse == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.claimResponse!, (value) {
      return _then(_value.copyWith(claimResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseInsuranceImplCopyWith<$Res>
    implements $ClaimResponseInsuranceCopyWith<$Res> {
  factory _$$ClaimResponseInsuranceImplCopyWith(
          _$ClaimResponseInsuranceImpl value,
          $Res Function(_$ClaimResponseInsuranceImpl) then) =
      __$$ClaimResponseInsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? sequence,
      @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
      FhirBoolean? focal,
      @JsonKey(name: '_focal') PrimitiveElement? focalElement,
      Reference coverage,
      String? businessArrangement,
      @JsonKey(name: '_businessArrangement')
      PrimitiveElement? businessArrangementElement,
      Reference? claimResponse});

  @override
  $ReferenceCopyWith<$Res> get coverage;
  @override
  $ReferenceCopyWith<$Res>? get claimResponse;
}

/// @nodoc
class __$$ClaimResponseInsuranceImplCopyWithImpl<$Res>
    extends _$ClaimResponseInsuranceCopyWithImpl<$Res,
        _$ClaimResponseInsuranceImpl>
    implements _$$ClaimResponseInsuranceImplCopyWith<$Res> {
  __$$ClaimResponseInsuranceImplCopyWithImpl(
      _$ClaimResponseInsuranceImpl _value,
      $Res Function(_$ClaimResponseInsuranceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? sequence = freezed,
    Object? sequenceElement = freezed,
    Object? focal = freezed,
    Object? focalElement = freezed,
    Object? coverage = null,
    Object? businessArrangement = freezed,
    Object? businessArrangementElement = freezed,
    Object? claimResponse = freezed,
  }) {
    return _then(_$ClaimResponseInsuranceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      sequenceElement: freezed == sequenceElement
          ? _value.sequenceElement
          : sequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      focalElement: freezed == focalElement
          ? _value.focalElement
          : focalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference,
      businessArrangement: freezed == businessArrangement
          ? _value.businessArrangement
          : businessArrangement // ignore: cast_nullable_to_non_nullable
              as String?,
      businessArrangementElement: freezed == businessArrangementElement
          ? _value.businessArrangementElement
          : businessArrangementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      claimResponse: freezed == claimResponse
          ? _value.claimResponse
          : claimResponse // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseInsuranceImpl extends _ClaimResponseInsurance {
  const _$ClaimResponseInsuranceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.sequence,
      @JsonKey(name: '_sequence') this.sequenceElement,
      this.focal,
      @JsonKey(name: '_focal') this.focalElement,
      required this.coverage,
      this.businessArrangement,
      @JsonKey(name: '_businessArrangement') this.businessArrangementElement,
      this.claimResponse})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClaimResponseInsuranceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseInsuranceImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sequence] A number to uniquely identify insurance entries and provide a
  ///  sequence of coverages to convey coordination of benefit order.
  @override
  final FhirPositiveInt? sequence;

  /// [sequenceElement] Extensions for sequence
  @override
  @JsonKey(name: '_sequence')
  final PrimitiveElement? sequenceElement;

  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  adjudication of this claim when set to true.
  @override
  final FhirBoolean? focal;

  /// [focalElement] Extensions for focal
  @override
  @JsonKey(name: '_focal')
  final PrimitiveElement? focalElement;

  /// [coverage] Reference to the insurance card level information contained in
  /// the Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's information
  ///  system.
  @override
  final Reference coverage;

  /// [businessArrangement] A business agreement number established between the
  ///  provider and the insurer for special business processing purposes.
  @override
  final String? businessArrangement;

  /// [businessArrangementElement] Extensions for businessArrangement
  @override
  @JsonKey(name: '_businessArrangement')
  final PrimitiveElement? businessArrangementElement;

  /// [claimResponse] The result of the adjudication of the line items for the
  ///  Coverage specified in this insurance.
  @override
  final Reference? claimResponse;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseInsuranceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.sequenceElement, sequenceElement) ||
                other.sequenceElement == sequenceElement) &&
            (identical(other.focal, focal) || other.focal == focal) &&
            (identical(other.focalElement, focalElement) ||
                other.focalElement == focalElement) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.businessArrangement, businessArrangement) ||
                other.businessArrangement == businessArrangement) &&
            (identical(other.businessArrangementElement,
                    businessArrangementElement) ||
                other.businessArrangementElement ==
                    businessArrangementElement) &&
            (identical(other.claimResponse, claimResponse) ||
                other.claimResponse == claimResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      sequence,
      sequenceElement,
      focal,
      focalElement,
      coverage,
      businessArrangement,
      businessArrangementElement,
      claimResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseInsuranceImplCopyWith<_$ClaimResponseInsuranceImpl>
      get copyWith => __$$ClaimResponseInsuranceImplCopyWithImpl<
          _$ClaimResponseInsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseInsuranceImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseInsurance extends ClaimResponseInsurance {
  const factory _ClaimResponseInsurance(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirPositiveInt? sequence,
      @JsonKey(name: '_sequence') final PrimitiveElement? sequenceElement,
      final FhirBoolean? focal,
      @JsonKey(name: '_focal') final PrimitiveElement? focalElement,
      required final Reference coverage,
      final String? businessArrangement,
      @JsonKey(name: '_businessArrangement')
      final PrimitiveElement? businessArrangementElement,
      final Reference? claimResponse}) = _$ClaimResponseInsuranceImpl;
  const _ClaimResponseInsurance._() : super._();

  factory _ClaimResponseInsurance.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseInsuranceImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [sequence] A number to uniquely identify insurance entries and provide a
  ///  sequence of coverages to convey coordination of benefit order.
  FhirPositiveInt? get sequence;
  @override

  /// [sequenceElement] Extensions for sequence
  @JsonKey(name: '_sequence')
  PrimitiveElement? get sequenceElement;
  @override

  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  adjudication of this claim when set to true.
  FhirBoolean? get focal;
  @override

  /// [focalElement] Extensions for focal
  @JsonKey(name: '_focal')
  PrimitiveElement? get focalElement;
  @override

  /// [coverage] Reference to the insurance card level information contained in
  /// the Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's information
  ///  system.
  Reference get coverage;
  @override

  /// [businessArrangement] A business agreement number established between the
  ///  provider and the insurer for special business processing purposes.
  String? get businessArrangement;
  @override

  /// [businessArrangementElement] Extensions for businessArrangement
  @JsonKey(name: '_businessArrangement')
  PrimitiveElement? get businessArrangementElement;
  @override

  /// [claimResponse] The result of the adjudication of the line items for the
  ///  Coverage specified in this insurance.
  Reference? get claimResponse;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseInsuranceImplCopyWith<_$ClaimResponseInsuranceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimResponseError _$ClaimResponseErrorFromJson(Map<String, dynamic> json) {
  return _ClaimResponseError.fromJson(json);
}

/// @nodoc
mixin _$ClaimResponseError {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [itemSequence] The sequence number of the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside of
  ///  the item structure.
  FhirPositiveInt? get itemSequence => throw _privateConstructorUsedError;

  /// [itemSequenceElement] Extensions for itemSequence
  @JsonKey(name: '_itemSequence')
  PrimitiveElement? get itemSequenceElement =>
      throw _privateConstructorUsedError;

  /// [detailSequence] The sequence number of the detail within the line item
  /// submitted which contains the error. This value is omitted when the error
  ///  occurs outside of the item structure.
  FhirPositiveInt? get detailSequence => throw _privateConstructorUsedError;

  /// [detailSequenceElement] Extensions for detailSequence
  @JsonKey(name: '_detailSequence')
  PrimitiveElement? get detailSequenceElement =>
      throw _privateConstructorUsedError;

  /// [subDetailSequence] The sequence number of the sub-detail within the
  /// detail within the line item submitted which contains the error. This value
  ///  is omitted when the error occurs outside of the item structure.
  FhirPositiveInt? get subDetailSequence => throw _privateConstructorUsedError;

  /// [subDetailSequenceElement] Extensions for subDetailSequence
  @JsonKey(name: '_subDetailSequence')
  PrimitiveElement? get subDetailSequenceElement =>
      throw _privateConstructorUsedError;

  /// [code] An error code, from a specified code system, which details why the
  ///  claim could not be adjudicated.
  CodeableConcept get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimResponseErrorCopyWith<ClaimResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimResponseErrorCopyWith<$Res> {
  factory $ClaimResponseErrorCopyWith(
          ClaimResponseError value, $Res Function(ClaimResponseError) then) =
      _$ClaimResponseErrorCopyWithImpl<$Res, ClaimResponseError>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? itemSequence,
      @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,
      FhirPositiveInt? detailSequence,
      @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,
      FhirPositiveInt? subDetailSequence,
      @JsonKey(name: '_subDetailSequence')
      PrimitiveElement? subDetailSequenceElement,
      CodeableConcept code});

  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class _$ClaimResponseErrorCopyWithImpl<$Res, $Val extends ClaimResponseError>
    implements $ClaimResponseErrorCopyWith<$Res> {
  _$ClaimResponseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemSequence = freezed,
    Object? itemSequenceElement = freezed,
    Object? detailSequence = freezed,
    Object? detailSequenceElement = freezed,
    Object? subDetailSequence = freezed,
    Object? subDetailSequenceElement = freezed,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      itemSequence: freezed == itemSequence
          ? _value.itemSequence
          : itemSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      itemSequenceElement: freezed == itemSequenceElement
          ? _value.itemSequenceElement
          : itemSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detailSequence: freezed == detailSequence
          ? _value.detailSequence
          : detailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      detailSequenceElement: freezed == detailSequenceElement
          ? _value.detailSequenceElement
          : detailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subDetailSequence: freezed == subDetailSequence
          ? _value.subDetailSequence
          : subDetailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      subDetailSequenceElement: freezed == subDetailSequenceElement
          ? _value.subDetailSequenceElement
          : subDetailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClaimResponseErrorImplCopyWith<$Res>
    implements $ClaimResponseErrorCopyWith<$Res> {
  factory _$$ClaimResponseErrorImplCopyWith(_$ClaimResponseErrorImpl value,
          $Res Function(_$ClaimResponseErrorImpl) then) =
      __$$ClaimResponseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? itemSequence,
      @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,
      FhirPositiveInt? detailSequence,
      @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,
      FhirPositiveInt? subDetailSequence,
      @JsonKey(name: '_subDetailSequence')
      PrimitiveElement? subDetailSequenceElement,
      CodeableConcept code});

  @override
  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class __$$ClaimResponseErrorImplCopyWithImpl<$Res>
    extends _$ClaimResponseErrorCopyWithImpl<$Res, _$ClaimResponseErrorImpl>
    implements _$$ClaimResponseErrorImplCopyWith<$Res> {
  __$$ClaimResponseErrorImplCopyWithImpl(_$ClaimResponseErrorImpl _value,
      $Res Function(_$ClaimResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemSequence = freezed,
    Object? itemSequenceElement = freezed,
    Object? detailSequence = freezed,
    Object? detailSequenceElement = freezed,
    Object? subDetailSequence = freezed,
    Object? subDetailSequenceElement = freezed,
    Object? code = null,
  }) {
    return _then(_$ClaimResponseErrorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      itemSequence: freezed == itemSequence
          ? _value.itemSequence
          : itemSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      itemSequenceElement: freezed == itemSequenceElement
          ? _value.itemSequenceElement
          : itemSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detailSequence: freezed == detailSequence
          ? _value.detailSequence
          : detailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      detailSequenceElement: freezed == detailSequenceElement
          ? _value.detailSequenceElement
          : detailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subDetailSequence: freezed == subDetailSequence
          ? _value.subDetailSequence
          : subDetailSequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      subDetailSequenceElement: freezed == subDetailSequenceElement
          ? _value.subDetailSequenceElement
          : subDetailSequenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimResponseErrorImpl extends _ClaimResponseError {
  const _$ClaimResponseErrorImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.itemSequence,
      @JsonKey(name: '_itemSequence') this.itemSequenceElement,
      this.detailSequence,
      @JsonKey(name: '_detailSequence') this.detailSequenceElement,
      this.subDetailSequence,
      @JsonKey(name: '_subDetailSequence') this.subDetailSequenceElement,
      required this.code})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClaimResponseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimResponseErrorImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [itemSequence] The sequence number of the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside of
  ///  the item structure.
  @override
  final FhirPositiveInt? itemSequence;

  /// [itemSequenceElement] Extensions for itemSequence
  @override
  @JsonKey(name: '_itemSequence')
  final PrimitiveElement? itemSequenceElement;

  /// [detailSequence] The sequence number of the detail within the line item
  /// submitted which contains the error. This value is omitted when the error
  ///  occurs outside of the item structure.
  @override
  final FhirPositiveInt? detailSequence;

  /// [detailSequenceElement] Extensions for detailSequence
  @override
  @JsonKey(name: '_detailSequence')
  final PrimitiveElement? detailSequenceElement;

  /// [subDetailSequence] The sequence number of the sub-detail within the
  /// detail within the line item submitted which contains the error. This value
  ///  is omitted when the error occurs outside of the item structure.
  @override
  final FhirPositiveInt? subDetailSequence;

  /// [subDetailSequenceElement] Extensions for subDetailSequence
  @override
  @JsonKey(name: '_subDetailSequence')
  final PrimitiveElement? subDetailSequenceElement;

  /// [code] An error code, from a specified code system, which details why the
  ///  claim could not be adjudicated.
  @override
  final CodeableConcept code;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimResponseErrorImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.itemSequence, itemSequence) ||
                other.itemSequence == itemSequence) &&
            (identical(other.itemSequenceElement, itemSequenceElement) ||
                other.itemSequenceElement == itemSequenceElement) &&
            (identical(other.detailSequence, detailSequence) ||
                other.detailSequence == detailSequence) &&
            (identical(other.detailSequenceElement, detailSequenceElement) ||
                other.detailSequenceElement == detailSequenceElement) &&
            (identical(other.subDetailSequence, subDetailSequence) ||
                other.subDetailSequence == subDetailSequence) &&
            (identical(
                    other.subDetailSequenceElement, subDetailSequenceElement) ||
                other.subDetailSequenceElement == subDetailSequenceElement) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      itemSequence,
      itemSequenceElement,
      detailSequence,
      detailSequenceElement,
      subDetailSequence,
      subDetailSequenceElement,
      code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimResponseErrorImplCopyWith<_$ClaimResponseErrorImpl> get copyWith =>
      __$$ClaimResponseErrorImplCopyWithImpl<_$ClaimResponseErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimResponseErrorImplToJson(
      this,
    );
  }
}

abstract class _ClaimResponseError extends ClaimResponseError {
  const factory _ClaimResponseError(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirPositiveInt? itemSequence,
      @JsonKey(name: '_itemSequence')
      final PrimitiveElement? itemSequenceElement,
      final FhirPositiveInt? detailSequence,
      @JsonKey(name: '_detailSequence')
      final PrimitiveElement? detailSequenceElement,
      final FhirPositiveInt? subDetailSequence,
      @JsonKey(name: '_subDetailSequence')
      final PrimitiveElement? subDetailSequenceElement,
      required final CodeableConcept code}) = _$ClaimResponseErrorImpl;
  const _ClaimResponseError._() : super._();

  factory _ClaimResponseError.fromJson(Map<String, dynamic> json) =
      _$ClaimResponseErrorImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [itemSequence] The sequence number of the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside of
  ///  the item structure.
  FhirPositiveInt? get itemSequence;
  @override

  /// [itemSequenceElement] Extensions for itemSequence
  @JsonKey(name: '_itemSequence')
  PrimitiveElement? get itemSequenceElement;
  @override

  /// [detailSequence] The sequence number of the detail within the line item
  /// submitted which contains the error. This value is omitted when the error
  ///  occurs outside of the item structure.
  FhirPositiveInt? get detailSequence;
  @override

  /// [detailSequenceElement] Extensions for detailSequence
  @JsonKey(name: '_detailSequence')
  PrimitiveElement? get detailSequenceElement;
  @override

  /// [subDetailSequence] The sequence number of the sub-detail within the
  /// detail within the line item submitted which contains the error. This value
  ///  is omitted when the error occurs outside of the item structure.
  FhirPositiveInt? get subDetailSequence;
  @override

  /// [subDetailSequenceElement] Extensions for subDetailSequence
  @JsonKey(name: '_subDetailSequence')
  PrimitiveElement? get subDetailSequenceElement;
  @override

  /// [code] An error code, from a specified code system, which details why the
  ///  claim could not be adjudicated.
  CodeableConcept get code;
  @override
  @JsonKey(ignore: true)
  _$$ClaimResponseErrorImplCopyWith<_$ClaimResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
