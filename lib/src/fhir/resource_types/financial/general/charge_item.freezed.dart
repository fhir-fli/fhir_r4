// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChargeItem _$ChargeItemFromJson(Map<String, dynamic> json) {
  return _ChargeItem.fromJson(json);
}

/// @nodoc
mixin _$ChargeItem {
  @JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
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

  /// [identifier] Identifiers assigned to this event performer or other
  ///  systems.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [definitionUri] References the (external) source of pricing information,
  ///  rules of application for the code this ChargeItem uses.
  List<FhirUri>? get definitionUri => throw _privateConstructorUsedError;

  /// [definitionUriElement] Extensions for definitionUri
  @JsonKey(name: '_definitionUri')
  List<PrimitiveElement>? get definitionUriElement =>
      throw _privateConstructorUsedError;

  /// [definitionCanonical] References the source of pricing information, rules
  ///  of application for the code this ChargeItem uses.
  List<FhirCanonical>? get definitionCanonical =>
      throw _privateConstructorUsedError;

  /// [status] The current state of the ChargeItem.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [partOf] ChargeItems can be grouped to larger ChargeItems covering the
  ///  whole set.
  List<Reference>? get partOf => throw _privateConstructorUsedError;

  /// [code] A code that identifies the charge, like a billing code.
  CodeableConcept get code => throw _privateConstructorUsedError;

  /// [subject] The individual or set of individuals the action is being or was
  ///  performed on.
  Reference get subject => throw _privateConstructorUsedError;

  /// [context] The encounter or episode of care that establishes the context
  ///  for this event.
  Reference? get context => throw _privateConstructorUsedError;

  /// [occurrenceDateTime] Date/time(s) or duration when the charged service
  ///  was applied.
  FhirDateTime? get occurrenceDateTime => throw _privateConstructorUsedError;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @JsonKey(name: '_occurrenceDateTime')
  PrimitiveElement? get occurrenceDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [occurrencePeriod] Date/time(s) or duration when the charged service was
  ///  applied.
  Period? get occurrencePeriod => throw _privateConstructorUsedError;

  /// [occurrenceTiming] Date/time(s) or duration when the charged service was
  ///  applied.
  Timing? get occurrenceTiming => throw _privateConstructorUsedError;

  /// [performer] Indicates who or what performed or participated in the
  ///  charged service.
  List<ChargeItemPerformer>? get performer =>
      throw _privateConstructorUsedError;

  /// [performingOrganization] The organization requesting the service.
  Reference? get performingOrganization => throw _privateConstructorUsedError;

  /// [requestingOrganization] The organization performing the service.
  Reference? get requestingOrganization => throw _privateConstructorUsedError;

  /// [costCenter] The financial cost center permits the tracking of charge
  ///  attribution.
  Reference? get costCenter => throw _privateConstructorUsedError;

  /// [quantity] Quantity of which the charge item has been serviced.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [bodysite] The anatomical location where the related service has been
  ///  applied.
  List<CodeableConcept>? get bodysite => throw _privateConstructorUsedError;

  /// [factorOverride] Factor overriding the factor determined by the rules
  ///  associated with the code.
  FhirDecimal? get factorOverride => throw _privateConstructorUsedError;

  /// [factorOverrideElement] Extensions for factorOverride
  @JsonKey(name: '_factorOverride')
  PrimitiveElement? get factorOverrideElement =>
      throw _privateConstructorUsedError;

  /// [priceOverride] Total price of the charge overriding the list price
  ///  associated with the code.
  Money? get priceOverride => throw _privateConstructorUsedError;

  /// [overrideReason] If the list price or the rule-based factor associated
  /// with the code is overridden, this attribute can capture a text to indicate
  ///  the  reason for this action.
  String? get overrideReason => throw _privateConstructorUsedError;

  /// [overrideReasonElement] Extensions for overrideReason
  @JsonKey(name: '_overrideReason')
  PrimitiveElement? get overrideReasonElement =>
      throw _privateConstructorUsedError;

  /// [enterer] The device, practitioner, etc. who entered the charge item.
  Reference? get enterer => throw _privateConstructorUsedError;

  /// [enteredDate] Date the charge item was entered.
  FhirDateTime? get enteredDate => throw _privateConstructorUsedError;

  /// [enteredDateElement] Extensions for enteredDate
  @JsonKey(name: '_enteredDate')
  PrimitiveElement? get enteredDateElement =>
      throw _privateConstructorUsedError;

  /// [reason] Describes why the event occurred in coded or textual form.
  List<CodeableConcept>? get reason => throw _privateConstructorUsedError;

  /// [service] Indicated the rendered service that caused this charge.
  List<Reference>? get service => throw _privateConstructorUsedError;

  /// [productReference] Identifies the device, food, drug or other product
  ///  being charged either by type code or reference to an instance.
  Reference? get productReference => throw _privateConstructorUsedError;

  /// [productCodeableConcept] Identifies the device, food, drug or other
  ///  product being charged either by type code or reference to an instance.
  CodeableConcept? get productCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [account] Account into which this ChargeItems belongs.
  List<Reference>? get account => throw _privateConstructorUsedError;

  /// [note] Comments made about the event by the performer, subject or other
  ///  participants.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [supportingInformation] Further information supporting this charge.
  List<Reference>? get supportingInformation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargeItemCopyWith<ChargeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeItemCopyWith<$Res> {
  factory $ChargeItemCopyWith(
          ChargeItem value, $Res Function(ChargeItem) then) =
      _$ChargeItemCopyWithImpl<$Res, ChargeItem>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
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
      List<FhirUri>? definitionUri,
      @JsonKey(name: '_definitionUri')
      List<PrimitiveElement>? definitionUriElement,
      List<FhirCanonical>? definitionCanonical,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<Reference>? partOf,
      CodeableConcept code,
      Reference subject,
      Reference? context,
      FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      PrimitiveElement? occurrenceDateTimeElement,
      Period? occurrencePeriod,
      Timing? occurrenceTiming,
      List<ChargeItemPerformer>? performer,
      Reference? performingOrganization,
      Reference? requestingOrganization,
      Reference? costCenter,
      Quantity? quantity,
      List<CodeableConcept>? bodysite,
      FhirDecimal? factorOverride,
      @JsonKey(name: '_factorOverride') PrimitiveElement? factorOverrideElement,
      Money? priceOverride,
      String? overrideReason,
      @JsonKey(name: '_overrideReason') PrimitiveElement? overrideReasonElement,
      Reference? enterer,
      FhirDateTime? enteredDate,
      @JsonKey(name: '_enteredDate') PrimitiveElement? enteredDateElement,
      List<CodeableConcept>? reason,
      List<Reference>? service,
      Reference? productReference,
      CodeableConcept? productCodeableConcept,
      List<Reference>? account,
      List<Annotation>? note,
      List<Reference>? supportingInformation});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res> get code;
  $ReferenceCopyWith<$Res> get subject;
  $ReferenceCopyWith<$Res>? get context;
  $PeriodCopyWith<$Res>? get occurrencePeriod;
  $TimingCopyWith<$Res>? get occurrenceTiming;
  $ReferenceCopyWith<$Res>? get performingOrganization;
  $ReferenceCopyWith<$Res>? get requestingOrganization;
  $ReferenceCopyWith<$Res>? get costCenter;
  $QuantityCopyWith<$Res>? get quantity;
  $MoneyCopyWith<$Res>? get priceOverride;
  $ReferenceCopyWith<$Res>? get enterer;
  $ReferenceCopyWith<$Res>? get productReference;
  $CodeableConceptCopyWith<$Res>? get productCodeableConcept;
}

/// @nodoc
class _$ChargeItemCopyWithImpl<$Res, $Val extends ChargeItem>
    implements $ChargeItemCopyWith<$Res> {
  _$ChargeItemCopyWithImpl(this._value, this._then);

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
    Object? definitionUri = freezed,
    Object? definitionUriElement = freezed,
    Object? definitionCanonical = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? partOf = freezed,
    Object? code = null,
    Object? subject = null,
    Object? context = freezed,
    Object? occurrenceDateTime = freezed,
    Object? occurrenceDateTimeElement = freezed,
    Object? occurrencePeriod = freezed,
    Object? occurrenceTiming = freezed,
    Object? performer = freezed,
    Object? performingOrganization = freezed,
    Object? requestingOrganization = freezed,
    Object? costCenter = freezed,
    Object? quantity = freezed,
    Object? bodysite = freezed,
    Object? factorOverride = freezed,
    Object? factorOverrideElement = freezed,
    Object? priceOverride = freezed,
    Object? overrideReason = freezed,
    Object? overrideReasonElement = freezed,
    Object? enterer = freezed,
    Object? enteredDate = freezed,
    Object? enteredDateElement = freezed,
    Object? reason = freezed,
    Object? service = freezed,
    Object? productReference = freezed,
    Object? productCodeableConcept = freezed,
    Object? account = freezed,
    Object? note = freezed,
    Object? supportingInformation = freezed,
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
      definitionUri: freezed == definitionUri
          ? _value.definitionUri
          : definitionUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      definitionUriElement: freezed == definitionUriElement
          ? _value.definitionUriElement
          : definitionUriElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      definitionCanonical: freezed == definitionCanonical
          ? _value.definitionCanonical
          : definitionCanonical // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Reference?,
      occurrenceDateTime: freezed == occurrenceDateTime
          ? _value.occurrenceDateTime
          : occurrenceDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      occurrenceDateTimeElement: freezed == occurrenceDateTimeElement
          ? _value.occurrenceDateTimeElement
          : occurrenceDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      occurrencePeriod: freezed == occurrencePeriod
          ? _value.occurrencePeriod
          : occurrencePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      occurrenceTiming: freezed == occurrenceTiming
          ? _value.occurrenceTiming
          : occurrenceTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<ChargeItemPerformer>?,
      performingOrganization: freezed == performingOrganization
          ? _value.performingOrganization
          : performingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      requestingOrganization: freezed == requestingOrganization
          ? _value.requestingOrganization
          : requestingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      bodysite: freezed == bodysite
          ? _value.bodysite
          : bodysite // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      factorOverride: freezed == factorOverride
          ? _value.factorOverride
          : factorOverride // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorOverrideElement: freezed == factorOverrideElement
          ? _value.factorOverrideElement
          : factorOverrideElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      priceOverride: freezed == priceOverride
          ? _value.priceOverride
          : priceOverride // ignore: cast_nullable_to_non_nullable
              as Money?,
      overrideReason: freezed == overrideReason
          ? _value.overrideReason
          : overrideReason // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideReasonElement: freezed == overrideReasonElement
          ? _value.overrideReasonElement
          : overrideReasonElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      enterer: freezed == enterer
          ? _value.enterer
          : enterer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      enteredDate: freezed == enteredDate
          ? _value.enteredDate
          : enteredDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      enteredDateElement: freezed == enteredDateElement
          ? _value.enteredDateElement
          : enteredDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productReference: freezed == productReference
          ? _value.productReference
          : productReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      productCodeableConcept: freezed == productCodeableConcept
          ? _value.productCodeableConcept
          : productCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      supportingInformation: freezed == supportingInformation
          ? _value.supportingInformation
          : supportingInformation // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get subject {
    return $ReferenceCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get occurrencePeriod {
    if (_value.occurrencePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.occurrencePeriod!, (value) {
      return _then(_value.copyWith(occurrencePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get occurrenceTiming {
    if (_value.occurrenceTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.occurrenceTiming!, (value) {
      return _then(_value.copyWith(occurrenceTiming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get performingOrganization {
    if (_value.performingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.performingOrganization!, (value) {
      return _then(_value.copyWith(performingOrganization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get requestingOrganization {
    if (_value.requestingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.requestingOrganization!, (value) {
      return _then(_value.copyWith(requestingOrganization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get costCenter {
    if (_value.costCenter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.costCenter!, (value) {
      return _then(_value.copyWith(costCenter: value) as $Val);
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
  $MoneyCopyWith<$Res>? get priceOverride {
    if (_value.priceOverride == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.priceOverride!, (value) {
      return _then(_value.copyWith(priceOverride: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get enterer {
    if (_value.enterer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.enterer!, (value) {
      return _then(_value.copyWith(enterer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get productReference {
    if (_value.productReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.productReference!, (value) {
      return _then(_value.copyWith(productReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get productCodeableConcept {
    if (_value.productCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.productCodeableConcept!,
        (value) {
      return _then(_value.copyWith(productCodeableConcept: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChargeItemImplCopyWith<$Res>
    implements $ChargeItemCopyWith<$Res> {
  factory _$$ChargeItemImplCopyWith(
          _$ChargeItemImpl value, $Res Function(_$ChargeItemImpl) then) =
      __$$ChargeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
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
      List<FhirUri>? definitionUri,
      @JsonKey(name: '_definitionUri')
      List<PrimitiveElement>? definitionUriElement,
      List<FhirCanonical>? definitionCanonical,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<Reference>? partOf,
      CodeableConcept code,
      Reference subject,
      Reference? context,
      FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      PrimitiveElement? occurrenceDateTimeElement,
      Period? occurrencePeriod,
      Timing? occurrenceTiming,
      List<ChargeItemPerformer>? performer,
      Reference? performingOrganization,
      Reference? requestingOrganization,
      Reference? costCenter,
      Quantity? quantity,
      List<CodeableConcept>? bodysite,
      FhirDecimal? factorOverride,
      @JsonKey(name: '_factorOverride') PrimitiveElement? factorOverrideElement,
      Money? priceOverride,
      String? overrideReason,
      @JsonKey(name: '_overrideReason') PrimitiveElement? overrideReasonElement,
      Reference? enterer,
      FhirDateTime? enteredDate,
      @JsonKey(name: '_enteredDate') PrimitiveElement? enteredDateElement,
      List<CodeableConcept>? reason,
      List<Reference>? service,
      Reference? productReference,
      CodeableConcept? productCodeableConcept,
      List<Reference>? account,
      List<Annotation>? note,
      List<Reference>? supportingInformation});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $ReferenceCopyWith<$Res> get subject;
  @override
  $ReferenceCopyWith<$Res>? get context;
  @override
  $PeriodCopyWith<$Res>? get occurrencePeriod;
  @override
  $TimingCopyWith<$Res>? get occurrenceTiming;
  @override
  $ReferenceCopyWith<$Res>? get performingOrganization;
  @override
  $ReferenceCopyWith<$Res>? get requestingOrganization;
  @override
  $ReferenceCopyWith<$Res>? get costCenter;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MoneyCopyWith<$Res>? get priceOverride;
  @override
  $ReferenceCopyWith<$Res>? get enterer;
  @override
  $ReferenceCopyWith<$Res>? get productReference;
  @override
  $CodeableConceptCopyWith<$Res>? get productCodeableConcept;
}

/// @nodoc
class __$$ChargeItemImplCopyWithImpl<$Res>
    extends _$ChargeItemCopyWithImpl<$Res, _$ChargeItemImpl>
    implements _$$ChargeItemImplCopyWith<$Res> {
  __$$ChargeItemImplCopyWithImpl(
      _$ChargeItemImpl _value, $Res Function(_$ChargeItemImpl) _then)
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
    Object? definitionUri = freezed,
    Object? definitionUriElement = freezed,
    Object? definitionCanonical = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? partOf = freezed,
    Object? code = null,
    Object? subject = null,
    Object? context = freezed,
    Object? occurrenceDateTime = freezed,
    Object? occurrenceDateTimeElement = freezed,
    Object? occurrencePeriod = freezed,
    Object? occurrenceTiming = freezed,
    Object? performer = freezed,
    Object? performingOrganization = freezed,
    Object? requestingOrganization = freezed,
    Object? costCenter = freezed,
    Object? quantity = freezed,
    Object? bodysite = freezed,
    Object? factorOverride = freezed,
    Object? factorOverrideElement = freezed,
    Object? priceOverride = freezed,
    Object? overrideReason = freezed,
    Object? overrideReasonElement = freezed,
    Object? enterer = freezed,
    Object? enteredDate = freezed,
    Object? enteredDateElement = freezed,
    Object? reason = freezed,
    Object? service = freezed,
    Object? productReference = freezed,
    Object? productCodeableConcept = freezed,
    Object? account = freezed,
    Object? note = freezed,
    Object? supportingInformation = freezed,
  }) {
    return _then(_$ChargeItemImpl(
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
      definitionUri: freezed == definitionUri
          ? _value._definitionUri
          : definitionUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      definitionUriElement: freezed == definitionUriElement
          ? _value._definitionUriElement
          : definitionUriElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      definitionCanonical: freezed == definitionCanonical
          ? _value._definitionCanonical
          : definitionCanonical // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      partOf: freezed == partOf
          ? _value._partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Reference?,
      occurrenceDateTime: freezed == occurrenceDateTime
          ? _value.occurrenceDateTime
          : occurrenceDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      occurrenceDateTimeElement: freezed == occurrenceDateTimeElement
          ? _value.occurrenceDateTimeElement
          : occurrenceDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      occurrencePeriod: freezed == occurrencePeriod
          ? _value.occurrencePeriod
          : occurrencePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      occurrenceTiming: freezed == occurrenceTiming
          ? _value.occurrenceTiming
          : occurrenceTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<ChargeItemPerformer>?,
      performingOrganization: freezed == performingOrganization
          ? _value.performingOrganization
          : performingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      requestingOrganization: freezed == requestingOrganization
          ? _value.requestingOrganization
          : requestingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      bodysite: freezed == bodysite
          ? _value._bodysite
          : bodysite // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      factorOverride: freezed == factorOverride
          ? _value.factorOverride
          : factorOverride // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorOverrideElement: freezed == factorOverrideElement
          ? _value.factorOverrideElement
          : factorOverrideElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      priceOverride: freezed == priceOverride
          ? _value.priceOverride
          : priceOverride // ignore: cast_nullable_to_non_nullable
              as Money?,
      overrideReason: freezed == overrideReason
          ? _value.overrideReason
          : overrideReason // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideReasonElement: freezed == overrideReasonElement
          ? _value.overrideReasonElement
          : overrideReasonElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      enterer: freezed == enterer
          ? _value.enterer
          : enterer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      enteredDate: freezed == enteredDate
          ? _value.enteredDate
          : enteredDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      enteredDateElement: freezed == enteredDateElement
          ? _value.enteredDateElement
          : enteredDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reason: freezed == reason
          ? _value._reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      service: freezed == service
          ? _value._service
          : service // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productReference: freezed == productReference
          ? _value.productReference
          : productReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      productCodeableConcept: freezed == productCodeableConcept
          ? _value.productCodeableConcept
          : productCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      account: freezed == account
          ? _value._account
          : account // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      supportingInformation: freezed == supportingInformation
          ? _value._supportingInformation
          : supportingInformation // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargeItemImpl extends _ChargeItem {
  const _$ChargeItemImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
      this.resourceType = R4ResourceType.ChargeItem,
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
      final List<FhirUri>? definitionUri,
      @JsonKey(name: '_definitionUri')
      final List<PrimitiveElement>? definitionUriElement,
      final List<FhirCanonical>? definitionCanonical,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      final List<Reference>? partOf,
      required this.code,
      required this.subject,
      this.context,
      this.occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime') this.occurrenceDateTimeElement,
      this.occurrencePeriod,
      this.occurrenceTiming,
      final List<ChargeItemPerformer>? performer,
      this.performingOrganization,
      this.requestingOrganization,
      this.costCenter,
      this.quantity,
      final List<CodeableConcept>? bodysite,
      this.factorOverride,
      @JsonKey(name: '_factorOverride') this.factorOverrideElement,
      this.priceOverride,
      this.overrideReason,
      @JsonKey(name: '_overrideReason') this.overrideReasonElement,
      this.enterer,
      this.enteredDate,
      @JsonKey(name: '_enteredDate') this.enteredDateElement,
      final List<CodeableConcept>? reason,
      final List<Reference>? service,
      this.productReference,
      this.productCodeableConcept,
      final List<Reference>? account,
      final List<Annotation>? note,
      final List<Reference>? supportingInformation})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _definitionUri = definitionUri,
        _definitionUriElement = definitionUriElement,
        _definitionCanonical = definitionCanonical,
        _partOf = partOf,
        _performer = performer,
        _bodysite = bodysite,
        _reason = reason,
        _service = service,
        _account = account,
        _note = note,
        _supportingInformation = supportingInformation,
        super._();

  factory _$ChargeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargeItemImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
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

  /// [identifier] Identifiers assigned to this event performer or other
  ///  systems.
  final List<Identifier>? _identifier;

  /// [identifier] Identifiers assigned to this event performer or other
  ///  systems.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [definitionUri] References the (external) source of pricing information,
  ///  rules of application for the code this ChargeItem uses.
  final List<FhirUri>? _definitionUri;

  /// [definitionUri] References the (external) source of pricing information,
  ///  rules of application for the code this ChargeItem uses.
  @override
  List<FhirUri>? get definitionUri {
    final value = _definitionUri;
    if (value == null) return null;
    if (_definitionUri is EqualUnmodifiableListView) return _definitionUri;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [definitionUriElement] Extensions for definitionUri
  final List<PrimitiveElement>? _definitionUriElement;

  /// [definitionUriElement] Extensions for definitionUri
  @override
  @JsonKey(name: '_definitionUri')
  List<PrimitiveElement>? get definitionUriElement {
    final value = _definitionUriElement;
    if (value == null) return null;
    if (_definitionUriElement is EqualUnmodifiableListView)
      return _definitionUriElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [definitionCanonical] References the source of pricing information, rules
  ///  of application for the code this ChargeItem uses.
  final List<FhirCanonical>? _definitionCanonical;

  /// [definitionCanonical] References the source of pricing information, rules
  ///  of application for the code this ChargeItem uses.
  @override
  List<FhirCanonical>? get definitionCanonical {
    final value = _definitionCanonical;
    if (value == null) return null;
    if (_definitionCanonical is EqualUnmodifiableListView)
      return _definitionCanonical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The current state of the ChargeItem.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [partOf] ChargeItems can be grouped to larger ChargeItems covering the
  ///  whole set.
  final List<Reference>? _partOf;

  /// [partOf] ChargeItems can be grouped to larger ChargeItems covering the
  ///  whole set.
  @override
  List<Reference>? get partOf {
    final value = _partOf;
    if (value == null) return null;
    if (_partOf is EqualUnmodifiableListView) return _partOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] A code that identifies the charge, like a billing code.
  @override
  final CodeableConcept code;

  /// [subject] The individual or set of individuals the action is being or was
  ///  performed on.
  @override
  final Reference subject;

  /// [context] The encounter or episode of care that establishes the context
  ///  for this event.
  @override
  final Reference? context;

  /// [occurrenceDateTime] Date/time(s) or duration when the charged service
  ///  was applied.
  @override
  final FhirDateTime? occurrenceDateTime;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @override
  @JsonKey(name: '_occurrenceDateTime')
  final PrimitiveElement? occurrenceDateTimeElement;

  /// [occurrencePeriod] Date/time(s) or duration when the charged service was
  ///  applied.
  @override
  final Period? occurrencePeriod;

  /// [occurrenceTiming] Date/time(s) or duration when the charged service was
  ///  applied.
  @override
  final Timing? occurrenceTiming;

  /// [performer] Indicates who or what performed or participated in the
  ///  charged service.
  final List<ChargeItemPerformer>? _performer;

  /// [performer] Indicates who or what performed or participated in the
  ///  charged service.
  @override
  List<ChargeItemPerformer>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [performingOrganization] The organization requesting the service.
  @override
  final Reference? performingOrganization;

  /// [requestingOrganization] The organization performing the service.
  @override
  final Reference? requestingOrganization;

  /// [costCenter] The financial cost center permits the tracking of charge
  ///  attribution.
  @override
  final Reference? costCenter;

  /// [quantity] Quantity of which the charge item has been serviced.
  @override
  final Quantity? quantity;

  /// [bodysite] The anatomical location where the related service has been
  ///  applied.
  final List<CodeableConcept>? _bodysite;

  /// [bodysite] The anatomical location where the related service has been
  ///  applied.
  @override
  List<CodeableConcept>? get bodysite {
    final value = _bodysite;
    if (value == null) return null;
    if (_bodysite is EqualUnmodifiableListView) return _bodysite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [factorOverride] Factor overriding the factor determined by the rules
  ///  associated with the code.
  @override
  final FhirDecimal? factorOverride;

  /// [factorOverrideElement] Extensions for factorOverride
  @override
  @JsonKey(name: '_factorOverride')
  final PrimitiveElement? factorOverrideElement;

  /// [priceOverride] Total price of the charge overriding the list price
  ///  associated with the code.
  @override
  final Money? priceOverride;

  /// [overrideReason] If the list price or the rule-based factor associated
  /// with the code is overridden, this attribute can capture a text to indicate
  ///  the  reason for this action.
  @override
  final String? overrideReason;

  /// [overrideReasonElement] Extensions for overrideReason
  @override
  @JsonKey(name: '_overrideReason')
  final PrimitiveElement? overrideReasonElement;

  /// [enterer] The device, practitioner, etc. who entered the charge item.
  @override
  final Reference? enterer;

  /// [enteredDate] Date the charge item was entered.
  @override
  final FhirDateTime? enteredDate;

  /// [enteredDateElement] Extensions for enteredDate
  @override
  @JsonKey(name: '_enteredDate')
  final PrimitiveElement? enteredDateElement;

  /// [reason] Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? _reason;

  /// [reason] Describes why the event occurred in coded or textual form.
  @override
  List<CodeableConcept>? get reason {
    final value = _reason;
    if (value == null) return null;
    if (_reason is EqualUnmodifiableListView) return _reason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [service] Indicated the rendered service that caused this charge.
  final List<Reference>? _service;

  /// [service] Indicated the rendered service that caused this charge.
  @override
  List<Reference>? get service {
    final value = _service;
    if (value == null) return null;
    if (_service is EqualUnmodifiableListView) return _service;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productReference] Identifies the device, food, drug or other product
  ///  being charged either by type code or reference to an instance.
  @override
  final Reference? productReference;

  /// [productCodeableConcept] Identifies the device, food, drug or other
  ///  product being charged either by type code or reference to an instance.
  @override
  final CodeableConcept? productCodeableConcept;

  /// [account] Account into which this ChargeItems belongs.
  final List<Reference>? _account;

  /// [account] Account into which this ChargeItems belongs.
  @override
  List<Reference>? get account {
    final value = _account;
    if (value == null) return null;
    if (_account is EqualUnmodifiableListView) return _account;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [note] Comments made about the event by the performer, subject or other
  ///  participants.
  final List<Annotation>? _note;

  /// [note] Comments made about the event by the performer, subject or other
  ///  participants.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [supportingInformation] Further information supporting this charge.
  final List<Reference>? _supportingInformation;

  /// [supportingInformation] Further information supporting this charge.
  @override
  List<Reference>? get supportingInformation {
    final value = _supportingInformation;
    if (value == null) return null;
    if (_supportingInformation is EqualUnmodifiableListView)
      return _supportingInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargeItemImpl &&
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
            const DeepCollectionEquality()
                .equals(other._definitionUri, _definitionUri) &&
            const DeepCollectionEquality()
                .equals(other._definitionUriElement, _definitionUriElement) &&
            const DeepCollectionEquality()
                .equals(other._definitionCanonical, _definitionCanonical) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality().equals(other._partOf, _partOf) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.occurrenceDateTime, occurrenceDateTime) ||
                other.occurrenceDateTime == occurrenceDateTime) &&
            (identical(other.occurrenceDateTimeElement,
                    occurrenceDateTimeElement) ||
                other.occurrenceDateTimeElement == occurrenceDateTimeElement) &&
            (identical(other.occurrencePeriod, occurrencePeriod) ||
                other.occurrencePeriod == occurrencePeriod) &&
            (identical(other.occurrenceTiming, occurrenceTiming) ||
                other.occurrenceTiming == occurrenceTiming) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            (identical(other.performingOrganization, performingOrganization) ||
                other.performingOrganization == performingOrganization) &&
            (identical(other.requestingOrganization, requestingOrganization) ||
                other.requestingOrganization == requestingOrganization) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._bodysite, _bodysite) &&
            (identical(other.factorOverride, factorOverride) ||
                other.factorOverride == factorOverride) &&
            (identical(other.factorOverrideElement, factorOverrideElement) ||
                other.factorOverrideElement == factorOverrideElement) &&
            (identical(other.priceOverride, priceOverride) ||
                other.priceOverride == priceOverride) &&
            (identical(other.overrideReason, overrideReason) ||
                other.overrideReason == overrideReason) &&
            (identical(other.overrideReasonElement, overrideReasonElement) ||
                other.overrideReasonElement == overrideReasonElement) &&
            (identical(other.enterer, enterer) || other.enterer == enterer) &&
            (identical(other.enteredDate, enteredDate) ||
                other.enteredDate == enteredDate) &&
            (identical(other.enteredDateElement, enteredDateElement) ||
                other.enteredDateElement == enteredDateElement) &&
            const DeepCollectionEquality().equals(other._reason, _reason) &&
            const DeepCollectionEquality().equals(other._service, _service) &&
            (identical(other.productReference, productReference) ||
                other.productReference == productReference) &&
            (identical(other.productCodeableConcept, productCodeableConcept) ||
                other.productCodeableConcept == productCodeableConcept) &&
            const DeepCollectionEquality().equals(other._account, _account) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._supportingInformation, _supportingInformation));
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
        const DeepCollectionEquality().hash(_definitionUri),
        const DeepCollectionEquality().hash(_definitionUriElement),
        const DeepCollectionEquality().hash(_definitionCanonical),
        status,
        statusElement,
        const DeepCollectionEquality().hash(_partOf),
        code,
        subject,
        context,
        occurrenceDateTime,
        occurrenceDateTimeElement,
        occurrencePeriod,
        occurrenceTiming,
        const DeepCollectionEquality().hash(_performer),
        performingOrganization,
        requestingOrganization,
        costCenter,
        quantity,
        const DeepCollectionEquality().hash(_bodysite),
        factorOverride,
        factorOverrideElement,
        priceOverride,
        overrideReason,
        overrideReasonElement,
        enterer,
        enteredDate,
        enteredDateElement,
        const DeepCollectionEquality().hash(_reason),
        const DeepCollectionEquality().hash(_service),
        productReference,
        productCodeableConcept,
        const DeepCollectionEquality().hash(_account),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_supportingInformation)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeItemImplCopyWith<_$ChargeItemImpl> get copyWith =>
      __$$ChargeItemImplCopyWithImpl<_$ChargeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargeItemImplToJson(
      this,
    );
  }
}

abstract class _ChargeItem extends ChargeItem {
  const factory _ChargeItem(
      {@JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
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
      final List<FhirUri>? definitionUri,
      @JsonKey(name: '_definitionUri')
      final List<PrimitiveElement>? definitionUriElement,
      final List<FhirCanonical>? definitionCanonical,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final List<Reference>? partOf,
      required final CodeableConcept code,
      required final Reference subject,
      final Reference? context,
      final FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      final PrimitiveElement? occurrenceDateTimeElement,
      final Period? occurrencePeriod,
      final Timing? occurrenceTiming,
      final List<ChargeItemPerformer>? performer,
      final Reference? performingOrganization,
      final Reference? requestingOrganization,
      final Reference? costCenter,
      final Quantity? quantity,
      final List<CodeableConcept>? bodysite,
      final FhirDecimal? factorOverride,
      @JsonKey(name: '_factorOverride')
      final PrimitiveElement? factorOverrideElement,
      final Money? priceOverride,
      final String? overrideReason,
      @JsonKey(name: '_overrideReason')
      final PrimitiveElement? overrideReasonElement,
      final Reference? enterer,
      final FhirDateTime? enteredDate,
      @JsonKey(name: '_enteredDate') final PrimitiveElement? enteredDateElement,
      final List<CodeableConcept>? reason,
      final List<Reference>? service,
      final Reference? productReference,
      final CodeableConcept? productCodeableConcept,
      final List<Reference>? account,
      final List<Annotation>? note,
      final List<Reference>? supportingInformation}) = _$ChargeItemImpl;
  const _ChargeItem._() : super._();

  factory _ChargeItem.fromJson(Map<String, dynamic> json) =
      _$ChargeItemImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ChargeItem)
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

  /// [identifier] Identifiers assigned to this event performer or other
  ///  systems.
  List<Identifier>? get identifier;
  @override

  /// [definitionUri] References the (external) source of pricing information,
  ///  rules of application for the code this ChargeItem uses.
  List<FhirUri>? get definitionUri;
  @override

  /// [definitionUriElement] Extensions for definitionUri
  @JsonKey(name: '_definitionUri')
  List<PrimitiveElement>? get definitionUriElement;
  @override

  /// [definitionCanonical] References the source of pricing information, rules
  ///  of application for the code this ChargeItem uses.
  List<FhirCanonical>? get definitionCanonical;
  @override

  /// [status] The current state of the ChargeItem.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [partOf] ChargeItems can be grouped to larger ChargeItems covering the
  ///  whole set.
  List<Reference>? get partOf;
  @override

  /// [code] A code that identifies the charge, like a billing code.
  CodeableConcept get code;
  @override

  /// [subject] The individual or set of individuals the action is being or was
  ///  performed on.
  Reference get subject;
  @override

  /// [context] The encounter or episode of care that establishes the context
  ///  for this event.
  Reference? get context;
  @override

  /// [occurrenceDateTime] Date/time(s) or duration when the charged service
  ///  was applied.
  FhirDateTime? get occurrenceDateTime;
  @override

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @JsonKey(name: '_occurrenceDateTime')
  PrimitiveElement? get occurrenceDateTimeElement;
  @override

  /// [occurrencePeriod] Date/time(s) or duration when the charged service was
  ///  applied.
  Period? get occurrencePeriod;
  @override

  /// [occurrenceTiming] Date/time(s) or duration when the charged service was
  ///  applied.
  Timing? get occurrenceTiming;
  @override

  /// [performer] Indicates who or what performed or participated in the
  ///  charged service.
  List<ChargeItemPerformer>? get performer;
  @override

  /// [performingOrganization] The organization requesting the service.
  Reference? get performingOrganization;
  @override

  /// [requestingOrganization] The organization performing the service.
  Reference? get requestingOrganization;
  @override

  /// [costCenter] The financial cost center permits the tracking of charge
  ///  attribution.
  Reference? get costCenter;
  @override

  /// [quantity] Quantity of which the charge item has been serviced.
  Quantity? get quantity;
  @override

  /// [bodysite] The anatomical location where the related service has been
  ///  applied.
  List<CodeableConcept>? get bodysite;
  @override

  /// [factorOverride] Factor overriding the factor determined by the rules
  ///  associated with the code.
  FhirDecimal? get factorOverride;
  @override

  /// [factorOverrideElement] Extensions for factorOverride
  @JsonKey(name: '_factorOverride')
  PrimitiveElement? get factorOverrideElement;
  @override

  /// [priceOverride] Total price of the charge overriding the list price
  ///  associated with the code.
  Money? get priceOverride;
  @override

  /// [overrideReason] If the list price or the rule-based factor associated
  /// with the code is overridden, this attribute can capture a text to indicate
  ///  the  reason for this action.
  String? get overrideReason;
  @override

  /// [overrideReasonElement] Extensions for overrideReason
  @JsonKey(name: '_overrideReason')
  PrimitiveElement? get overrideReasonElement;
  @override

  /// [enterer] The device, practitioner, etc. who entered the charge item.
  Reference? get enterer;
  @override

  /// [enteredDate] Date the charge item was entered.
  FhirDateTime? get enteredDate;
  @override

  /// [enteredDateElement] Extensions for enteredDate
  @JsonKey(name: '_enteredDate')
  PrimitiveElement? get enteredDateElement;
  @override

  /// [reason] Describes why the event occurred in coded or textual form.
  List<CodeableConcept>? get reason;
  @override

  /// [service] Indicated the rendered service that caused this charge.
  List<Reference>? get service;
  @override

  /// [productReference] Identifies the device, food, drug or other product
  ///  being charged either by type code or reference to an instance.
  Reference? get productReference;
  @override

  /// [productCodeableConcept] Identifies the device, food, drug or other
  ///  product being charged either by type code or reference to an instance.
  CodeableConcept? get productCodeableConcept;
  @override

  /// [account] Account into which this ChargeItems belongs.
  List<Reference>? get account;
  @override

  /// [note] Comments made about the event by the performer, subject or other
  ///  participants.
  List<Annotation>? get note;
  @override

  /// [supportingInformation] Further information supporting this charge.
  List<Reference>? get supportingInformation;
  @override
  @JsonKey(ignore: true)
  _$$ChargeItemImplCopyWith<_$ChargeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChargeItemPerformer _$ChargeItemPerformerFromJson(Map<String, dynamic> json) {
  return _ChargeItemPerformer.fromJson(json);
}

/// @nodoc
mixin _$ChargeItemPerformer {
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

  /// [function] Describes the type of performance or participation(e.g.
  ///  primary surgeon, anesthesiologiest, etc.).
  CodeableConcept? get function => throw _privateConstructorUsedError;

  /// [actor] The device, practitioner, etc. who performed or participated in
  ///  the service.
  Reference get actor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargeItemPerformerCopyWith<ChargeItemPerformer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeItemPerformerCopyWith<$Res> {
  factory $ChargeItemPerformerCopyWith(
          ChargeItemPerformer value, $Res Function(ChargeItemPerformer) then) =
      _$ChargeItemPerformerCopyWithImpl<$Res, ChargeItemPerformer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? function,
      Reference actor});

  $CodeableConceptCopyWith<$Res>? get function;
  $ReferenceCopyWith<$Res> get actor;
}

/// @nodoc
class _$ChargeItemPerformerCopyWithImpl<$Res, $Val extends ChargeItemPerformer>
    implements $ChargeItemPerformerCopyWith<$Res> {
  _$ChargeItemPerformerCopyWithImpl(this._value, this._then);

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
    Object? function = freezed,
    Object? actor = null,
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
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Reference,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get function {
    if (_value.function == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.function!, (value) {
      return _then(_value.copyWith(function: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get actor {
    return $ReferenceCopyWith<$Res>(_value.actor, (value) {
      return _then(_value.copyWith(actor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChargeItemPerformerImplCopyWith<$Res>
    implements $ChargeItemPerformerCopyWith<$Res> {
  factory _$$ChargeItemPerformerImplCopyWith(_$ChargeItemPerformerImpl value,
          $Res Function(_$ChargeItemPerformerImpl) then) =
      __$$ChargeItemPerformerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? function,
      Reference actor});

  @override
  $CodeableConceptCopyWith<$Res>? get function;
  @override
  $ReferenceCopyWith<$Res> get actor;
}

/// @nodoc
class __$$ChargeItemPerformerImplCopyWithImpl<$Res>
    extends _$ChargeItemPerformerCopyWithImpl<$Res, _$ChargeItemPerformerImpl>
    implements _$$ChargeItemPerformerImplCopyWith<$Res> {
  __$$ChargeItemPerformerImplCopyWithImpl(_$ChargeItemPerformerImpl _value,
      $Res Function(_$ChargeItemPerformerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? function = freezed,
    Object? actor = null,
  }) {
    return _then(_$ChargeItemPerformerImpl(
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
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Reference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargeItemPerformerImpl extends _ChargeItemPerformer {
  const _$ChargeItemPerformerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.function,
      required this.actor})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ChargeItemPerformerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargeItemPerformerImplFromJson(json);

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

  /// [function] Describes the type of performance or participation(e.g.
  ///  primary surgeon, anesthesiologiest, etc.).
  @override
  final CodeableConcept? function;

  /// [actor] The device, practitioner, etc. who performed or participated in
  ///  the service.
  @override
  final Reference actor;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargeItemPerformerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.function, function) ||
                other.function == function) &&
            (identical(other.actor, actor) || other.actor == actor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      function,
      actor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeItemPerformerImplCopyWith<_$ChargeItemPerformerImpl> get copyWith =>
      __$$ChargeItemPerformerImplCopyWithImpl<_$ChargeItemPerformerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargeItemPerformerImplToJson(
      this,
    );
  }
}

abstract class _ChargeItemPerformer extends ChargeItemPerformer {
  const factory _ChargeItemPerformer(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? function,
      required final Reference actor}) = _$ChargeItemPerformerImpl;
  const _ChargeItemPerformer._() : super._();

  factory _ChargeItemPerformer.fromJson(Map<String, dynamic> json) =
      _$ChargeItemPerformerImpl.fromJson;

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

  /// [function] Describes the type of performance or participation(e.g.
  ///  primary surgeon, anesthesiologiest, etc.).
  CodeableConcept? get function;
  @override

  /// [actor] The device, practitioner, etc. who performed or participated in
  ///  the service.
  Reference get actor;
  @override
  @JsonKey(ignore: true)
  _$$ChargeItemPerformerImplCopyWith<_$ChargeItemPerformerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
