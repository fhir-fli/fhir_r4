// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsurancePlan _$InsurancePlanFromJson(Map<String, dynamic> json) {
  return _InsurancePlan.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlan {
  @JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
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

  /// [identifier] Business identifiers assigned to this health insurance
  /// product which remain constant as the resource is updated and propagates
  ///  from server to server.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The current state of the health insurance product.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [type] The kind of health insurance product.
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [name] Official name of the health insurance product as designated by the
  ///  owner.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [alias] A list of alternate names that the product is known as, or was
  ///  known as in the past.
  List<String>? get alias => throw _privateConstructorUsedError;

  /// [aliasElement] Extensions for alias
  @JsonKey(name: '_alias')
  List<PrimitiveElement>? get aliasElement =>
      throw _privateConstructorUsedError;

  /// [period] The period of time that the health insurance product is
  ///  available.
  Period? get period => throw _privateConstructorUsedError;

  /// [ownedBy] The entity that is providing  the health insurance product and
  /// underwriting the risk.  This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  ///  'payers'.
  Reference? get ownedBy => throw _privateConstructorUsedError;

  /// [administeredBy] An organization which administer other services such as
  /// underwriting, customer service and/or claims processing on behalf of the
  ///  health insurance product owner.
  Reference? get administeredBy => throw _privateConstructorUsedError;

  /// [coverageArea] The geographic region in which a health insurance
  ///  product's benefits apply.
  List<Reference>? get coverageArea => throw _privateConstructorUsedError;

  /// [contact] The contact for the health insurance product for a certain
  ///  purpose.
  List<InsurancePlanContact>? get contact => throw _privateConstructorUsedError;

  /// [endpoint] The technical endpoints providing access to services operated
  ///  for the health insurance product.
  List<Reference>? get endpoint => throw _privateConstructorUsedError;

  /// [network] Reference to the network included in the health insurance
  ///  product.
  List<Reference>? get network => throw _privateConstructorUsedError;

  /// [coverage] Details about the coverage offered by the insurance product.
  List<InsurancePlanCoverage>? get coverage =>
      throw _privateConstructorUsedError;

  /// [plan] Details about an insurance plan.
  List<InsurancePlanPlan>? get plan => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanCopyWith<InsurancePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanCopyWith<$Res> {
  factory $InsurancePlanCopyWith(
          InsurancePlan value, $Res Function(InsurancePlan) then) =
      _$InsurancePlanCopyWithImpl<$Res, InsurancePlan>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
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
      List<CodeableConcept>? type,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
      Period? period,
      Reference? ownedBy,
      Reference? administeredBy,
      List<Reference>? coverageArea,
      List<InsurancePlanContact>? contact,
      List<Reference>? endpoint,
      List<Reference>? network,
      List<InsurancePlanCoverage>? coverage,
      List<InsurancePlanPlan>? plan});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get ownedBy;
  $ReferenceCopyWith<$Res>? get administeredBy;
}

/// @nodoc
class _$InsurancePlanCopyWithImpl<$Res, $Val extends InsurancePlan>
    implements $InsurancePlanCopyWith<$Res> {
  _$InsurancePlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
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
    Object? type = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? period = freezed,
    Object? ownedBy = freezed,
    Object? administeredBy = freezed,
    Object? coverageArea = freezed,
    Object? contact = freezed,
    Object? endpoint = freezed,
    Object? network = freezed,
    Object? coverage = freezed,
    Object? plan = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      ownedBy: freezed == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as Reference?,
      administeredBy: freezed == administeredBy
          ? _value.administeredBy
          : administeredBy // ignore: cast_nullable_to_non_nullable
              as Reference?,
      coverageArea: freezed == coverageArea
          ? _value.coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanContact>?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanCoverage>?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanPlan>?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get ownedBy {
    if (_value.ownedBy == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.ownedBy!, (value) {
      return _then(_value.copyWith(ownedBy: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get administeredBy {
    if (_value.administeredBy == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.administeredBy!, (value) {
      return _then(_value.copyWith(administeredBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanImplCopyWith<$Res>
    implements $InsurancePlanCopyWith<$Res> {
  factory _$$InsurancePlanImplCopyWith(
          _$InsurancePlanImpl value, $Res Function(_$InsurancePlanImpl) then) =
      __$$InsurancePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
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
      List<CodeableConcept>? type,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
      Period? period,
      Reference? ownedBy,
      Reference? administeredBy,
      List<Reference>? coverageArea,
      List<InsurancePlanContact>? contact,
      List<Reference>? endpoint,
      List<Reference>? network,
      List<InsurancePlanCoverage>? coverage,
      List<InsurancePlanPlan>? plan});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get ownedBy;
  @override
  $ReferenceCopyWith<$Res>? get administeredBy;
}

/// @nodoc
class __$$InsurancePlanImplCopyWithImpl<$Res>
    extends _$InsurancePlanCopyWithImpl<$Res, _$InsurancePlanImpl>
    implements _$$InsurancePlanImplCopyWith<$Res> {
  __$$InsurancePlanImplCopyWithImpl(
      _$InsurancePlanImpl _value, $Res Function(_$InsurancePlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
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
    Object? type = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? period = freezed,
    Object? ownedBy = freezed,
    Object? administeredBy = freezed,
    Object? coverageArea = freezed,
    Object? contact = freezed,
    Object? endpoint = freezed,
    Object? network = freezed,
    Object? coverage = freezed,
    Object? plan = freezed,
  }) {
    return _then(_$InsurancePlanImpl(
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
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value._alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value._aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      ownedBy: freezed == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as Reference?,
      administeredBy: freezed == administeredBy
          ? _value.administeredBy
          : administeredBy // ignore: cast_nullable_to_non_nullable
              as Reference?,
      coverageArea: freezed == coverageArea
          ? _value._coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanContact>?,
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      network: freezed == network
          ? _value._network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      coverage: freezed == coverage
          ? _value._coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanCoverage>?,
      plan: freezed == plan
          ? _value._plan
          : plan // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanPlan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanImpl extends _InsurancePlan {
  const _$InsurancePlanImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
      this.resourceType = R4ResourceType.InsurancePlan,
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
      final List<CodeableConcept>? type,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<PrimitiveElement>? aliasElement,
      this.period,
      this.ownedBy,
      this.administeredBy,
      final List<Reference>? coverageArea,
      final List<InsurancePlanContact>? contact,
      final List<Reference>? endpoint,
      final List<Reference>? network,
      final List<InsurancePlanCoverage>? coverage,
      final List<InsurancePlanPlan>? plan})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _type = type,
        _alias = alias,
        _aliasElement = aliasElement,
        _coverageArea = coverageArea,
        _contact = contact,
        _endpoint = endpoint,
        _network = network,
        _coverage = coverage,
        _plan = plan,
        super._();

  factory _$InsurancePlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
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

  /// [identifier] Business identifiers assigned to this health insurance
  /// product which remain constant as the resource is updated and propagates
  ///  from server to server.
  final List<Identifier>? _identifier;

  /// [identifier] Business identifiers assigned to this health insurance
  /// product which remain constant as the resource is updated and propagates
  ///  from server to server.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The current state of the health insurance product.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [type] The kind of health insurance product.
  final List<CodeableConcept>? _type;

  /// [type] The kind of health insurance product.
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] Official name of the health insurance product as designated by the
  ///  owner.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [alias] A list of alternate names that the product is known as, or was
  ///  known as in the past.
  final List<String>? _alias;

  /// [alias] A list of alternate names that the product is known as, or was
  ///  known as in the past.
  @override
  List<String>? get alias {
    final value = _alias;
    if (value == null) return null;
    if (_alias is EqualUnmodifiableListView) return _alias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aliasElement] Extensions for alias
  final List<PrimitiveElement>? _aliasElement;

  /// [aliasElement] Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<PrimitiveElement>? get aliasElement {
    final value = _aliasElement;
    if (value == null) return null;
    if (_aliasElement is EqualUnmodifiableListView) return _aliasElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [period] The period of time that the health insurance product is
  ///  available.
  @override
  final Period? period;

  /// [ownedBy] The entity that is providing  the health insurance product and
  /// underwriting the risk.  This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  ///  'payers'.
  @override
  final Reference? ownedBy;

  /// [administeredBy] An organization which administer other services such as
  /// underwriting, customer service and/or claims processing on behalf of the
  ///  health insurance product owner.
  @override
  final Reference? administeredBy;

  /// [coverageArea] The geographic region in which a health insurance
  ///  product's benefits apply.
  final List<Reference>? _coverageArea;

  /// [coverageArea] The geographic region in which a health insurance
  ///  product's benefits apply.
  @override
  List<Reference>? get coverageArea {
    final value = _coverageArea;
    if (value == null) return null;
    if (_coverageArea is EqualUnmodifiableListView) return _coverageArea;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contact] The contact for the health insurance product for a certain
  ///  purpose.
  final List<InsurancePlanContact>? _contact;

  /// [contact] The contact for the health insurance product for a certain
  ///  purpose.
  @override
  List<InsurancePlanContact>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [endpoint] The technical endpoints providing access to services operated
  ///  for the health insurance product.
  final List<Reference>? _endpoint;

  /// [endpoint] The technical endpoints providing access to services operated
  ///  for the health insurance product.
  @override
  List<Reference>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [network] Reference to the network included in the health insurance
  ///  product.
  final List<Reference>? _network;

  /// [network] Reference to the network included in the health insurance
  ///  product.
  @override
  List<Reference>? get network {
    final value = _network;
    if (value == null) return null;
    if (_network is EqualUnmodifiableListView) return _network;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [coverage] Details about the coverage offered by the insurance product.
  final List<InsurancePlanCoverage>? _coverage;

  /// [coverage] Details about the coverage offered by the insurance product.
  @override
  List<InsurancePlanCoverage>? get coverage {
    final value = _coverage;
    if (value == null) return null;
    if (_coverage is EqualUnmodifiableListView) return _coverage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [plan] Details about an insurance plan.
  final List<InsurancePlanPlan>? _plan;

  /// [plan] Details about an insurance plan.
  @override
  List<InsurancePlanPlan>? get plan {
    final value = _plan;
    if (value == null) return null;
    if (_plan is EqualUnmodifiableListView) return _plan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InsurancePlan(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, type: $type, name: $name, nameElement: $nameElement, alias: $alias, aliasElement: $aliasElement, period: $period, ownedBy: $ownedBy, administeredBy: $administeredBy, coverageArea: $coverageArea, contact: $contact, endpoint: $endpoint, network: $network, coverage: $coverage, plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanImpl &&
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
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            const DeepCollectionEquality().equals(other._alias, _alias) &&
            const DeepCollectionEquality()
                .equals(other._aliasElement, _aliasElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.ownedBy, ownedBy) || other.ownedBy == ownedBy) &&
            (identical(other.administeredBy, administeredBy) ||
                other.administeredBy == administeredBy) &&
            const DeepCollectionEquality()
                .equals(other._coverageArea, _coverageArea) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint) &&
            const DeepCollectionEquality().equals(other._network, _network) &&
            const DeepCollectionEquality().equals(other._coverage, _coverage) &&
            const DeepCollectionEquality().equals(other._plan, _plan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(_type),
        name,
        nameElement,
        const DeepCollectionEquality().hash(_alias),
        const DeepCollectionEquality().hash(_aliasElement),
        period,
        ownedBy,
        administeredBy,
        const DeepCollectionEquality().hash(_coverageArea),
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_endpoint),
        const DeepCollectionEquality().hash(_network),
        const DeepCollectionEquality().hash(_coverage),
        const DeepCollectionEquality().hash(_plan)
      ]);

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanImplCopyWith<_$InsurancePlanImpl> get copyWith =>
      __$$InsurancePlanImplCopyWithImpl<_$InsurancePlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlan extends InsurancePlan {
  const factory _InsurancePlan(
      {@JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
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
      final List<CodeableConcept>? type,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<PrimitiveElement>? aliasElement,
      final Period? period,
      final Reference? ownedBy,
      final Reference? administeredBy,
      final List<Reference>? coverageArea,
      final List<InsurancePlanContact>? contact,
      final List<Reference>? endpoint,
      final List<Reference>? network,
      final List<InsurancePlanCoverage>? coverage,
      final List<InsurancePlanPlan>? plan}) = _$InsurancePlanImpl;
  const _InsurancePlan._() : super._();

  factory _InsurancePlan.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.InsurancePlan)
  R4ResourceType get resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  String? get id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  FhirMeta? get meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  FhirUri? get implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  FhirCode? get language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  Narrative? get text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [identifier] Business identifiers assigned to this health insurance
  /// product which remain constant as the resource is updated and propagates
  ///  from server to server.
  @override
  List<Identifier>? get identifier;

  /// [status] The current state of the health insurance product.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [type] The kind of health insurance product.
  @override
  List<CodeableConcept>? get type;

  /// [name] Official name of the health insurance product as designated by the
  ///  owner.
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [alias] A list of alternate names that the product is known as, or was
  ///  known as in the past.
  @override
  List<String>? get alias;

  /// [aliasElement] Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<PrimitiveElement>? get aliasElement;

  /// [period] The period of time that the health insurance product is
  ///  available.
  @override
  Period? get period;

  /// [ownedBy] The entity that is providing  the health insurance product and
  /// underwriting the risk.  This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  ///  'payers'.
  @override
  Reference? get ownedBy;

  /// [administeredBy] An organization which administer other services such as
  /// underwriting, customer service and/or claims processing on behalf of the
  ///  health insurance product owner.
  @override
  Reference? get administeredBy;

  /// [coverageArea] The geographic region in which a health insurance
  ///  product's benefits apply.
  @override
  List<Reference>? get coverageArea;

  /// [contact] The contact for the health insurance product for a certain
  ///  purpose.
  @override
  List<InsurancePlanContact>? get contact;

  /// [endpoint] The technical endpoints providing access to services operated
  ///  for the health insurance product.
  @override
  List<Reference>? get endpoint;

  /// [network] Reference to the network included in the health insurance
  ///  product.
  @override
  List<Reference>? get network;

  /// [coverage] Details about the coverage offered by the insurance product.
  @override
  List<InsurancePlanCoverage>? get coverage;

  /// [plan] Details about an insurance plan.
  @override
  List<InsurancePlanPlan>? get plan;

  /// Create a copy of InsurancePlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanImplCopyWith<_$InsurancePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsurancePlanContact _$InsurancePlanContactFromJson(Map<String, dynamic> json) {
  return _InsurancePlanContact.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanContact {
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

  /// [purpose] Indicates a purpose for which the contact can be reached.
  CodeableConcept? get purpose => throw _privateConstructorUsedError;

  /// [name] A name associated with the contact.
  HumanName? get name => throw _privateConstructorUsedError;

  /// [telecom] A contact detail (e.g. a telephone number or an email address)
  ///  by which the party may be contacted.
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;

  /// [address] Visiting or postal addresses for the contact.
  Address? get address => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanContactCopyWith<InsurancePlanContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanContactCopyWith<$Res> {
  factory $InsurancePlanContactCopyWith(InsurancePlanContact value,
          $Res Function(InsurancePlanContact) then) =
      _$InsurancePlanContactCopyWithImpl<$Res, InsurancePlanContact>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? purpose,
      HumanName? name,
      List<ContactPoint>? telecom,
      Address? address});

  $CodeableConceptCopyWith<$Res>? get purpose;
  $HumanNameCopyWith<$Res>? get name;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$InsurancePlanContactCopyWithImpl<$Res,
        $Val extends InsurancePlanContact>
    implements $InsurancePlanContactCopyWith<$Res> {
  _$InsurancePlanContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? purpose = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? address = freezed,
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
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get purpose {
    if (_value.purpose == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.purpose!, (value) {
      return _then(_value.copyWith(purpose: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanContactImplCopyWith<$Res>
    implements $InsurancePlanContactCopyWith<$Res> {
  factory _$$InsurancePlanContactImplCopyWith(_$InsurancePlanContactImpl value,
          $Res Function(_$InsurancePlanContactImpl) then) =
      __$$InsurancePlanContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? purpose,
      HumanName? name,
      List<ContactPoint>? telecom,
      Address? address});

  @override
  $CodeableConceptCopyWith<$Res>? get purpose;
  @override
  $HumanNameCopyWith<$Res>? get name;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$InsurancePlanContactImplCopyWithImpl<$Res>
    extends _$InsurancePlanContactCopyWithImpl<$Res, _$InsurancePlanContactImpl>
    implements _$$InsurancePlanContactImplCopyWith<$Res> {
  __$$InsurancePlanContactImplCopyWithImpl(_$InsurancePlanContactImpl _value,
      $Res Function(_$InsurancePlanContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? purpose = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? address = freezed,
  }) {
    return _then(_$InsurancePlanContactImpl(
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
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      telecom: freezed == telecom
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanContactImpl extends _InsurancePlanContact {
  const _$InsurancePlanContactImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.purpose,
      this.name,
      final List<ContactPoint>? telecom,
      this.address})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _telecom = telecom,
        super._();

  factory _$InsurancePlanContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanContactImplFromJson(json);

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

  /// [purpose] Indicates a purpose for which the contact can be reached.
  @override
  final CodeableConcept? purpose;

  /// [name] A name associated with the contact.
  @override
  final HumanName? name;

  /// [telecom] A contact detail (e.g. a telephone number or an email address)
  ///  by which the party may be contacted.
  final List<ContactPoint>? _telecom;

  /// [telecom] A contact detail (e.g. a telephone number or an email address)
  ///  by which the party may be contacted.
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    if (_telecom is EqualUnmodifiableListView) return _telecom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [address] Visiting or postal addresses for the contact.
  @override
  final Address? address;

  @override
  String toString() {
    return 'InsurancePlanContact(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, purpose: $purpose, name: $name, telecom: $telecom, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      purpose,
      name,
      const DeepCollectionEquality().hash(_telecom),
      address);

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanContactImplCopyWith<_$InsurancePlanContactImpl>
      get copyWith =>
          __$$InsurancePlanContactImplCopyWithImpl<_$InsurancePlanContactImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanContactImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanContact extends InsurancePlanContact {
  const factory _InsurancePlanContact(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? purpose,
      final HumanName? name,
      final List<ContactPoint>? telecom,
      final Address? address}) = _$InsurancePlanContactImpl;
  const _InsurancePlanContact._() : super._();

  factory _InsurancePlanContact.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanContactImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [purpose] Indicates a purpose for which the contact can be reached.
  @override
  CodeableConcept? get purpose;

  /// [name] A name associated with the contact.
  @override
  HumanName? get name;

  /// [telecom] A contact detail (e.g. a telephone number or an email address)
  ///  by which the party may be contacted.
  @override
  List<ContactPoint>? get telecom;

  /// [address] Visiting or postal addresses for the contact.
  @override
  Address? get address;

  /// Create a copy of InsurancePlanContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanContactImplCopyWith<_$InsurancePlanContactImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsurancePlanCoverage _$InsurancePlanCoverageFromJson(
    Map<String, dynamic> json) {
  return _InsurancePlanCoverage.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanCoverage {
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

  /// [type] Type of coverage  (Medical; Dental; Mental Health; Substance
  ///  Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [network] Reference to the network that providing the type of coverage.
  List<Reference>? get network => throw _privateConstructorUsedError;

  /// [benefit] Specific benefits under this type of coverage.
  List<InsurancePlanBenefit> get benefit => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanCoverage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanCoverage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanCoverageCopyWith<InsurancePlanCoverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanCoverageCopyWith<$Res> {
  factory $InsurancePlanCoverageCopyWith(InsurancePlanCoverage value,
          $Res Function(InsurancePlanCoverage) then) =
      _$InsurancePlanCoverageCopyWithImpl<$Res, InsurancePlanCoverage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Reference>? network,
      List<InsurancePlanBenefit> benefit});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$InsurancePlanCoverageCopyWithImpl<$Res,
        $Val extends InsurancePlanCoverage>
    implements $InsurancePlanCoverageCopyWith<$Res> {
  _$InsurancePlanCoverageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanCoverage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? network = freezed,
    Object? benefit = null,
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
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      benefit: null == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanBenefit>,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanCoverage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanCoverageImplCopyWith<$Res>
    implements $InsurancePlanCoverageCopyWith<$Res> {
  factory _$$InsurancePlanCoverageImplCopyWith(
          _$InsurancePlanCoverageImpl value,
          $Res Function(_$InsurancePlanCoverageImpl) then) =
      __$$InsurancePlanCoverageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Reference>? network,
      List<InsurancePlanBenefit> benefit});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$InsurancePlanCoverageImplCopyWithImpl<$Res>
    extends _$InsurancePlanCoverageCopyWithImpl<$Res,
        _$InsurancePlanCoverageImpl>
    implements _$$InsurancePlanCoverageImplCopyWith<$Res> {
  __$$InsurancePlanCoverageImplCopyWithImpl(_$InsurancePlanCoverageImpl _value,
      $Res Function(_$InsurancePlanCoverageImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanCoverage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? network = freezed,
    Object? benefit = null,
  }) {
    return _then(_$InsurancePlanCoverageImpl(
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
      network: freezed == network
          ? _value._network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      benefit: null == benefit
          ? _value._benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanBenefit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanCoverageImpl extends _InsurancePlanCoverage {
  const _$InsurancePlanCoverageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      final List<Reference>? network,
      required final List<InsurancePlanBenefit> benefit})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _network = network,
        _benefit = benefit,
        super._();

  factory _$InsurancePlanCoverageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanCoverageImplFromJson(json);

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

  /// [type] Type of coverage  (Medical; Dental; Mental Health; Substance
  ///  Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  @override
  final CodeableConcept type;

  /// [network] Reference to the network that providing the type of coverage.
  final List<Reference>? _network;

  /// [network] Reference to the network that providing the type of coverage.
  @override
  List<Reference>? get network {
    final value = _network;
    if (value == null) return null;
    if (_network is EqualUnmodifiableListView) return _network;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [benefit] Specific benefits under this type of coverage.
  final List<InsurancePlanBenefit> _benefit;

  /// [benefit] Specific benefits under this type of coverage.
  @override
  List<InsurancePlanBenefit> get benefit {
    if (_benefit is EqualUnmodifiableListView) return _benefit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefit);
  }

  @override
  String toString() {
    return 'InsurancePlanCoverage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, network: $network, benefit: $benefit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanCoverageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._network, _network) &&
            const DeepCollectionEquality().equals(other._benefit, _benefit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_network),
      const DeepCollectionEquality().hash(_benefit));

  /// Create a copy of InsurancePlanCoverage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanCoverageImplCopyWith<_$InsurancePlanCoverageImpl>
      get copyWith => __$$InsurancePlanCoverageImplCopyWithImpl<
          _$InsurancePlanCoverageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanCoverageImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanCoverage extends InsurancePlanCoverage {
  const factory _InsurancePlanCoverage(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final List<Reference>? network,
          required final List<InsurancePlanBenefit> benefit}) =
      _$InsurancePlanCoverageImpl;
  const _InsurancePlanCoverage._() : super._();

  factory _InsurancePlanCoverage.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanCoverageImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [type] Type of coverage  (Medical; Dental; Mental Health; Substance
  ///  Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  @override
  CodeableConcept get type;

  /// [network] Reference to the network that providing the type of coverage.
  @override
  List<Reference>? get network;

  /// [benefit] Specific benefits under this type of coverage.
  @override
  List<InsurancePlanBenefit> get benefit;

  /// Create a copy of InsurancePlanCoverage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanCoverageImplCopyWith<_$InsurancePlanCoverageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsurancePlanBenefit _$InsurancePlanBenefitFromJson(Map<String, dynamic> json) {
  return _InsurancePlanBenefit.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanBenefit {
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

  /// [type] Type of benefit (primary care; speciality care; inpatient;
  ///  outpatient).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [requirement] The referral requirements to have access/coverage for this
  ///  benefit.
  String? get requirement => throw _privateConstructorUsedError;

  /// [requirementElement] Extensions for requirement
  @JsonKey(name: '_requirement')
  PrimitiveElement? get requirementElement =>
      throw _privateConstructorUsedError;

  /// [limit] The specific limits on the benefit.
  List<InsurancePlanLimit>? get limit => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanBenefit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanBenefit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanBenefitCopyWith<InsurancePlanBenefit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanBenefitCopyWith<$Res> {
  factory $InsurancePlanBenefitCopyWith(InsurancePlanBenefit value,
          $Res Function(InsurancePlanBenefit) then) =
      _$InsurancePlanBenefitCopyWithImpl<$Res, InsurancePlanBenefit>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      String? requirement,
      @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,
      List<InsurancePlanLimit>? limit});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$InsurancePlanBenefitCopyWithImpl<$Res,
        $Val extends InsurancePlanBenefit>
    implements $InsurancePlanBenefitCopyWith<$Res> {
  _$InsurancePlanBenefitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanBenefit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? requirement = freezed,
    Object? requirementElement = freezed,
    Object? limit = freezed,
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
      requirement: freezed == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as String?,
      requirementElement: freezed == requirementElement
          ? _value.requirementElement
          : requirementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanLimit>?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanBenefit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanBenefitImplCopyWith<$Res>
    implements $InsurancePlanBenefitCopyWith<$Res> {
  factory _$$InsurancePlanBenefitImplCopyWith(_$InsurancePlanBenefitImpl value,
          $Res Function(_$InsurancePlanBenefitImpl) then) =
      __$$InsurancePlanBenefitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      String? requirement,
      @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,
      List<InsurancePlanLimit>? limit});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$InsurancePlanBenefitImplCopyWithImpl<$Res>
    extends _$InsurancePlanBenefitCopyWithImpl<$Res, _$InsurancePlanBenefitImpl>
    implements _$$InsurancePlanBenefitImplCopyWith<$Res> {
  __$$InsurancePlanBenefitImplCopyWithImpl(_$InsurancePlanBenefitImpl _value,
      $Res Function(_$InsurancePlanBenefitImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanBenefit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? requirement = freezed,
    Object? requirementElement = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$InsurancePlanBenefitImpl(
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
      requirement: freezed == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as String?,
      requirementElement: freezed == requirementElement
          ? _value.requirementElement
          : requirementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      limit: freezed == limit
          ? _value._limit
          : limit // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanLimit>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanBenefitImpl extends _InsurancePlanBenefit {
  const _$InsurancePlanBenefitImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.requirement,
      @JsonKey(name: '_requirement') this.requirementElement,
      final List<InsurancePlanLimit>? limit})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _limit = limit,
        super._();

  factory _$InsurancePlanBenefitImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanBenefitImplFromJson(json);

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

  /// [type] Type of benefit (primary care; speciality care; inpatient;
  ///  outpatient).
  @override
  final CodeableConcept type;

  /// [requirement] The referral requirements to have access/coverage for this
  ///  benefit.
  @override
  final String? requirement;

  /// [requirementElement] Extensions for requirement
  @override
  @JsonKey(name: '_requirement')
  final PrimitiveElement? requirementElement;

  /// [limit] The specific limits on the benefit.
  final List<InsurancePlanLimit>? _limit;

  /// [limit] The specific limits on the benefit.
  @override
  List<InsurancePlanLimit>? get limit {
    final value = _limit;
    if (value == null) return null;
    if (_limit is EqualUnmodifiableListView) return _limit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InsurancePlanBenefit(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, requirement: $requirement, requirementElement: $requirementElement, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanBenefitImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.requirement, requirement) ||
                other.requirement == requirement) &&
            (identical(other.requirementElement, requirementElement) ||
                other.requirementElement == requirementElement) &&
            const DeepCollectionEquality().equals(other._limit, _limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      requirement,
      requirementElement,
      const DeepCollectionEquality().hash(_limit));

  /// Create a copy of InsurancePlanBenefit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanBenefitImplCopyWith<_$InsurancePlanBenefitImpl>
      get copyWith =>
          __$$InsurancePlanBenefitImplCopyWithImpl<_$InsurancePlanBenefitImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanBenefitImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanBenefit extends InsurancePlanBenefit {
  const factory _InsurancePlanBenefit(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final String? requirement,
      @JsonKey(name: '_requirement') final PrimitiveElement? requirementElement,
      final List<InsurancePlanLimit>? limit}) = _$InsurancePlanBenefitImpl;
  const _InsurancePlanBenefit._() : super._();

  factory _InsurancePlanBenefit.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanBenefitImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [type] Type of benefit (primary care; speciality care; inpatient;
  ///  outpatient).
  @override
  CodeableConcept get type;

  /// [requirement] The referral requirements to have access/coverage for this
  ///  benefit.
  @override
  String? get requirement;

  /// [requirementElement] Extensions for requirement
  @override
  @JsonKey(name: '_requirement')
  PrimitiveElement? get requirementElement;

  /// [limit] The specific limits on the benefit.
  @override
  List<InsurancePlanLimit>? get limit;

  /// Create a copy of InsurancePlanBenefit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanBenefitImplCopyWith<_$InsurancePlanBenefitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsurancePlanLimit _$InsurancePlanLimitFromJson(Map<String, dynamic> json) {
  return _InsurancePlanLimit.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanLimit {
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

  /// [value] The maximum amount of a service item a plan will pay for a
  ///  covered benefit.  For examples. wellness visits, or eyeglasses.
  Quantity? get value => throw _privateConstructorUsedError;

  /// [code] The specific limit on the benefit.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanLimit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanLimitCopyWith<InsurancePlanLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanLimitCopyWith<$Res> {
  factory $InsurancePlanLimitCopyWith(
          InsurancePlanLimit value, $Res Function(InsurancePlanLimit) then) =
      _$InsurancePlanLimitCopyWithImpl<$Res, InsurancePlanLimit>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Quantity? value,
      CodeableConcept? code});

  $QuantityCopyWith<$Res>? get value;
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class _$InsurancePlanLimitCopyWithImpl<$Res, $Val extends InsurancePlanLimit>
    implements $InsurancePlanLimitCopyWith<$Res> {
  _$InsurancePlanLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? value = freezed,
    Object? code = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanLimitImplCopyWith<$Res>
    implements $InsurancePlanLimitCopyWith<$Res> {
  factory _$$InsurancePlanLimitImplCopyWith(_$InsurancePlanLimitImpl value,
          $Res Function(_$InsurancePlanLimitImpl) then) =
      __$$InsurancePlanLimitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Quantity? value,
      CodeableConcept? code});

  @override
  $QuantityCopyWith<$Res>? get value;
  @override
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class __$$InsurancePlanLimitImplCopyWithImpl<$Res>
    extends _$InsurancePlanLimitCopyWithImpl<$Res, _$InsurancePlanLimitImpl>
    implements _$$InsurancePlanLimitImplCopyWith<$Res> {
  __$$InsurancePlanLimitImplCopyWithImpl(_$InsurancePlanLimitImpl _value,
      $Res Function(_$InsurancePlanLimitImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? value = freezed,
    Object? code = freezed,
  }) {
    return _then(_$InsurancePlanLimitImpl(
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanLimitImpl extends _InsurancePlanLimit {
  const _$InsurancePlanLimitImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.value,
      this.code})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$InsurancePlanLimitImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanLimitImplFromJson(json);

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

  /// [value] The maximum amount of a service item a plan will pay for a
  ///  covered benefit.  For examples. wellness visits, or eyeglasses.
  @override
  final Quantity? value;

  /// [code] The specific limit on the benefit.
  @override
  final CodeableConcept? code;

  @override
  String toString() {
    return 'InsurancePlanLimit(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, value: $value, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanLimitImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      value,
      code);

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanLimitImplCopyWith<_$InsurancePlanLimitImpl> get copyWith =>
      __$$InsurancePlanLimitImplCopyWithImpl<_$InsurancePlanLimitImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanLimitImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanLimit extends InsurancePlanLimit {
  const factory _InsurancePlanLimit(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Quantity? value,
      final CodeableConcept? code}) = _$InsurancePlanLimitImpl;
  const _InsurancePlanLimit._() : super._();

  factory _InsurancePlanLimit.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanLimitImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [value] The maximum amount of a service item a plan will pay for a
  ///  covered benefit.  For examples. wellness visits, or eyeglasses.
  @override
  Quantity? get value;

  /// [code] The specific limit on the benefit.
  @override
  CodeableConcept? get code;

  /// Create a copy of InsurancePlanLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanLimitImplCopyWith<_$InsurancePlanLimitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsurancePlanPlan _$InsurancePlanPlanFromJson(Map<String, dynamic> json) {
  return _InsurancePlanPlan.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanPlan {
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

  /// [identifier] Business identifiers assigned to this health insurance plan
  /// which remain constant as the resource is updated and propagates from
  ///  server to server.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [type] Type of plan. For example, "Platinum" or "High Deductable".
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [coverageArea] The geographic region in which a health insurance plan's
  ///  benefits apply.
  List<Reference>? get coverageArea => throw _privateConstructorUsedError;

  /// [network] Reference to the network that providing the type of coverage.
  List<Reference>? get network => throw _privateConstructorUsedError;

  /// [generalCost] Overall costs associated with the plan.
  List<InsurancePlanGeneralCost>? get generalCost =>
      throw _privateConstructorUsedError;

  /// [specificCost] Costs associated with the coverage provided by the
  ///  product.
  List<InsurancePlanSpecificCost>? get specificCost =>
      throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanPlanCopyWith<InsurancePlanPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanPlanCopyWith<$Res> {
  factory $InsurancePlanPlanCopyWith(
          InsurancePlanPlan value, $Res Function(InsurancePlanPlan) then) =
      _$InsurancePlanPlanCopyWithImpl<$Res, InsurancePlanPlan>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept? type,
      List<Reference>? coverageArea,
      List<Reference>? network,
      List<InsurancePlanGeneralCost>? generalCost,
      List<InsurancePlanSpecificCost>? specificCost});

  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class _$InsurancePlanPlanCopyWithImpl<$Res, $Val extends InsurancePlanPlan>
    implements $InsurancePlanPlanCopyWith<$Res> {
  _$InsurancePlanPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? coverageArea = freezed,
    Object? network = freezed,
    Object? generalCost = freezed,
    Object? specificCost = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      coverageArea: freezed == coverageArea
          ? _value.coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      generalCost: freezed == generalCost
          ? _value.generalCost
          : generalCost // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanGeneralCost>?,
      specificCost: freezed == specificCost
          ? _value.specificCost
          : specificCost // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanSpecificCost>?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanPlanImplCopyWith<$Res>
    implements $InsurancePlanPlanCopyWith<$Res> {
  factory _$$InsurancePlanPlanImplCopyWith(_$InsurancePlanPlanImpl value,
          $Res Function(_$InsurancePlanPlanImpl) then) =
      __$$InsurancePlanPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept? type,
      List<Reference>? coverageArea,
      List<Reference>? network,
      List<InsurancePlanGeneralCost>? generalCost,
      List<InsurancePlanSpecificCost>? specificCost});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class __$$InsurancePlanPlanImplCopyWithImpl<$Res>
    extends _$InsurancePlanPlanCopyWithImpl<$Res, _$InsurancePlanPlanImpl>
    implements _$$InsurancePlanPlanImplCopyWith<$Res> {
  __$$InsurancePlanPlanImplCopyWithImpl(_$InsurancePlanPlanImpl _value,
      $Res Function(_$InsurancePlanPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? coverageArea = freezed,
    Object? network = freezed,
    Object? generalCost = freezed,
    Object? specificCost = freezed,
  }) {
    return _then(_$InsurancePlanPlanImpl(
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
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      coverageArea: freezed == coverageArea
          ? _value._coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      network: freezed == network
          ? _value._network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      generalCost: freezed == generalCost
          ? _value._generalCost
          : generalCost // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanGeneralCost>?,
      specificCost: freezed == specificCost
          ? _value._specificCost
          : specificCost // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanSpecificCost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanPlanImpl extends _InsurancePlanPlan {
  const _$InsurancePlanPlanImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.type,
      final List<Reference>? coverageArea,
      final List<Reference>? network,
      final List<InsurancePlanGeneralCost>? generalCost,
      final List<InsurancePlanSpecificCost>? specificCost})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _coverageArea = coverageArea,
        _network = network,
        _generalCost = generalCost,
        _specificCost = specificCost,
        super._();

  factory _$InsurancePlanPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanPlanImplFromJson(json);

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

  /// [identifier] Business identifiers assigned to this health insurance plan
  /// which remain constant as the resource is updated and propagates from
  ///  server to server.
  final List<Identifier>? _identifier;

  /// [identifier] Business identifiers assigned to this health insurance plan
  /// which remain constant as the resource is updated and propagates from
  ///  server to server.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Type of plan. For example, "Platinum" or "High Deductable".
  @override
  final CodeableConcept? type;

  /// [coverageArea] The geographic region in which a health insurance plan's
  ///  benefits apply.
  final List<Reference>? _coverageArea;

  /// [coverageArea] The geographic region in which a health insurance plan's
  ///  benefits apply.
  @override
  List<Reference>? get coverageArea {
    final value = _coverageArea;
    if (value == null) return null;
    if (_coverageArea is EqualUnmodifiableListView) return _coverageArea;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [network] Reference to the network that providing the type of coverage.
  final List<Reference>? _network;

  /// [network] Reference to the network that providing the type of coverage.
  @override
  List<Reference>? get network {
    final value = _network;
    if (value == null) return null;
    if (_network is EqualUnmodifiableListView) return _network;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [generalCost] Overall costs associated with the plan.
  final List<InsurancePlanGeneralCost>? _generalCost;

  /// [generalCost] Overall costs associated with the plan.
  @override
  List<InsurancePlanGeneralCost>? get generalCost {
    final value = _generalCost;
    if (value == null) return null;
    if (_generalCost is EqualUnmodifiableListView) return _generalCost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [specificCost] Costs associated with the coverage provided by the
  ///  product.
  final List<InsurancePlanSpecificCost>? _specificCost;

  /// [specificCost] Costs associated with the coverage provided by the
  ///  product.
  @override
  List<InsurancePlanSpecificCost>? get specificCost {
    final value = _specificCost;
    if (value == null) return null;
    if (_specificCost is EqualUnmodifiableListView) return _specificCost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InsurancePlanPlan(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, type: $type, coverageArea: $coverageArea, network: $network, generalCost: $generalCost, specificCost: $specificCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coverageArea, _coverageArea) &&
            const DeepCollectionEquality().equals(other._network, _network) &&
            const DeepCollectionEquality()
                .equals(other._generalCost, _generalCost) &&
            const DeepCollectionEquality()
                .equals(other._specificCost, _specificCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_identifier),
      type,
      const DeepCollectionEquality().hash(_coverageArea),
      const DeepCollectionEquality().hash(_network),
      const DeepCollectionEquality().hash(_generalCost),
      const DeepCollectionEquality().hash(_specificCost));

  /// Create a copy of InsurancePlanPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanPlanImplCopyWith<_$InsurancePlanPlanImpl> get copyWith =>
      __$$InsurancePlanPlanImplCopyWithImpl<_$InsurancePlanPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanPlanImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanPlan extends InsurancePlanPlan {
  const factory _InsurancePlanPlan(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<Identifier>? identifier,
          final CodeableConcept? type,
          final List<Reference>? coverageArea,
          final List<Reference>? network,
          final List<InsurancePlanGeneralCost>? generalCost,
          final List<InsurancePlanSpecificCost>? specificCost}) =
      _$InsurancePlanPlanImpl;
  const _InsurancePlanPlan._() : super._();

  factory _InsurancePlanPlan.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanPlanImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [identifier] Business identifiers assigned to this health insurance plan
  /// which remain constant as the resource is updated and propagates from
  ///  server to server.
  @override
  List<Identifier>? get identifier;

  /// [type] Type of plan. For example, "Platinum" or "High Deductable".
  @override
  CodeableConcept? get type;

  /// [coverageArea] The geographic region in which a health insurance plan's
  ///  benefits apply.
  @override
  List<Reference>? get coverageArea;

  /// [network] Reference to the network that providing the type of coverage.
  @override
  List<Reference>? get network;

  /// [generalCost] Overall costs associated with the plan.
  @override
  List<InsurancePlanGeneralCost>? get generalCost;

  /// [specificCost] Costs associated with the coverage provided by the
  ///  product.
  @override
  List<InsurancePlanSpecificCost>? get specificCost;

  /// Create a copy of InsurancePlanPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanPlanImplCopyWith<_$InsurancePlanPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsurancePlanGeneralCost _$InsurancePlanGeneralCostFromJson(
    Map<String, dynamic> json) {
  return _InsurancePlanGeneralCost.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanGeneralCost {
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

  /// [type] Type of cost.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [groupSize] Number of participants enrolled in the plan.
  FhirPositiveInt? get groupSize => throw _privateConstructorUsedError;

  /// [groupSizeElement] Extensions for groupSize
  @JsonKey(name: '_groupSize')
  PrimitiveElement? get groupSizeElement => throw _privateConstructorUsedError;

  /// [cost] Value of the cost.
  Money? get cost => throw _privateConstructorUsedError;

  /// [comment] Additional information about the general costs associated with
  ///  this plan.
  String? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanGeneralCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanGeneralCostCopyWith<InsurancePlanGeneralCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanGeneralCostCopyWith<$Res> {
  factory $InsurancePlanGeneralCostCopyWith(InsurancePlanGeneralCost value,
          $Res Function(InsurancePlanGeneralCost) then) =
      _$InsurancePlanGeneralCostCopyWithImpl<$Res, InsurancePlanGeneralCost>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      FhirPositiveInt? groupSize,
      @JsonKey(name: '_groupSize') PrimitiveElement? groupSizeElement,
      Money? cost,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});

  $CodeableConceptCopyWith<$Res>? get type;
  $MoneyCopyWith<$Res>? get cost;
}

/// @nodoc
class _$InsurancePlanGeneralCostCopyWithImpl<$Res,
        $Val extends InsurancePlanGeneralCost>
    implements $InsurancePlanGeneralCostCopyWith<$Res> {
  _$InsurancePlanGeneralCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? groupSize = freezed,
    Object? groupSizeElement = freezed,
    Object? cost = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      groupSize: freezed == groupSize
          ? _value.groupSize
          : groupSize // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      groupSizeElement: freezed == groupSizeElement
          ? _value.groupSizeElement
          : groupSizeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get cost {
    if (_value.cost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.cost!, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanGeneralCostImplCopyWith<$Res>
    implements $InsurancePlanGeneralCostCopyWith<$Res> {
  factory _$$InsurancePlanGeneralCostImplCopyWith(
          _$InsurancePlanGeneralCostImpl value,
          $Res Function(_$InsurancePlanGeneralCostImpl) then) =
      __$$InsurancePlanGeneralCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      FhirPositiveInt? groupSize,
      @JsonKey(name: '_groupSize') PrimitiveElement? groupSizeElement,
      Money? cost,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $MoneyCopyWith<$Res>? get cost;
}

/// @nodoc
class __$$InsurancePlanGeneralCostImplCopyWithImpl<$Res>
    extends _$InsurancePlanGeneralCostCopyWithImpl<$Res,
        _$InsurancePlanGeneralCostImpl>
    implements _$$InsurancePlanGeneralCostImplCopyWith<$Res> {
  __$$InsurancePlanGeneralCostImplCopyWithImpl(
      _$InsurancePlanGeneralCostImpl _value,
      $Res Function(_$InsurancePlanGeneralCostImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? groupSize = freezed,
    Object? groupSizeElement = freezed,
    Object? cost = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
  }) {
    return _then(_$InsurancePlanGeneralCostImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      groupSize: freezed == groupSize
          ? _value.groupSize
          : groupSize // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      groupSizeElement: freezed == groupSizeElement
          ? _value.groupSizeElement
          : groupSizeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanGeneralCostImpl extends _InsurancePlanGeneralCost {
  const _$InsurancePlanGeneralCostImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.groupSize,
      @JsonKey(name: '_groupSize') this.groupSizeElement,
      this.cost,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$InsurancePlanGeneralCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanGeneralCostImplFromJson(json);

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

  /// [type] Type of cost.
  @override
  final CodeableConcept? type;

  /// [groupSize] Number of participants enrolled in the plan.
  @override
  final FhirPositiveInt? groupSize;

  /// [groupSizeElement] Extensions for groupSize
  @override
  @JsonKey(name: '_groupSize')
  final PrimitiveElement? groupSizeElement;

  /// [cost] Value of the cost.
  @override
  final Money? cost;

  /// [comment] Additional information about the general costs associated with
  ///  this plan.
  @override
  final String? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  @override
  String toString() {
    return 'InsurancePlanGeneralCost(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, groupSize: $groupSize, groupSizeElement: $groupSizeElement, cost: $cost, comment: $comment, commentElement: $commentElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanGeneralCostImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.groupSize, groupSize) ||
                other.groupSize == groupSize) &&
            (identical(other.groupSizeElement, groupSizeElement) ||
                other.groupSizeElement == groupSizeElement) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      groupSize,
      groupSizeElement,
      cost,
      comment,
      commentElement);

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanGeneralCostImplCopyWith<_$InsurancePlanGeneralCostImpl>
      get copyWith => __$$InsurancePlanGeneralCostImplCopyWithImpl<
          _$InsurancePlanGeneralCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanGeneralCostImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanGeneralCost extends InsurancePlanGeneralCost {
  const factory _InsurancePlanGeneralCost(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final FhirPositiveInt? groupSize,
          @JsonKey(name: '_groupSize') final PrimitiveElement? groupSizeElement,
          final Money? cost,
          final String? comment,
          @JsonKey(name: '_comment') final PrimitiveElement? commentElement}) =
      _$InsurancePlanGeneralCostImpl;
  const _InsurancePlanGeneralCost._() : super._();

  factory _InsurancePlanGeneralCost.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanGeneralCostImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [type] Type of cost.
  @override
  CodeableConcept? get type;

  /// [groupSize] Number of participants enrolled in the plan.
  @override
  FhirPositiveInt? get groupSize;

  /// [groupSizeElement] Extensions for groupSize
  @override
  @JsonKey(name: '_groupSize')
  PrimitiveElement? get groupSizeElement;

  /// [cost] Value of the cost.
  @override
  Money? get cost;

  /// [comment] Additional information about the general costs associated with
  ///  this plan.
  @override
  String? get comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;

  /// Create a copy of InsurancePlanGeneralCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanGeneralCostImplCopyWith<_$InsurancePlanGeneralCostImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsurancePlanSpecificCost _$InsurancePlanSpecificCostFromJson(
    Map<String, dynamic> json) {
  return _InsurancePlanSpecificCost.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanSpecificCost {
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

  /// [category] General category of benefit (Medical; Dental; Vision; Drug;
  ///  Mental Health; Substance Abuse; Hospice, Home Health).
  CodeableConcept get category => throw _privateConstructorUsedError;

  /// [benefit] List of the specific benefits under this category of benefit.
  List<InsurancePlanBenefit1>? get benefit =>
      throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanSpecificCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanSpecificCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanSpecificCostCopyWith<InsurancePlanSpecificCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanSpecificCostCopyWith<$Res> {
  factory $InsurancePlanSpecificCostCopyWith(InsurancePlanSpecificCost value,
          $Res Function(InsurancePlanSpecificCost) then) =
      _$InsurancePlanSpecificCostCopyWithImpl<$Res, InsurancePlanSpecificCost>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept category,
      List<InsurancePlanBenefit1>? benefit});

  $CodeableConceptCopyWith<$Res> get category;
}

/// @nodoc
class _$InsurancePlanSpecificCostCopyWithImpl<$Res,
        $Val extends InsurancePlanSpecificCost>
    implements $InsurancePlanSpecificCostCopyWith<$Res> {
  _$InsurancePlanSpecificCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanSpecificCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = null,
    Object? benefit = freezed,
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
      benefit: freezed == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanBenefit1>?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanSpecificCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get category {
    return $CodeableConceptCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanSpecificCostImplCopyWith<$Res>
    implements $InsurancePlanSpecificCostCopyWith<$Res> {
  factory _$$InsurancePlanSpecificCostImplCopyWith(
          _$InsurancePlanSpecificCostImpl value,
          $Res Function(_$InsurancePlanSpecificCostImpl) then) =
      __$$InsurancePlanSpecificCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept category,
      List<InsurancePlanBenefit1>? benefit});

  @override
  $CodeableConceptCopyWith<$Res> get category;
}

/// @nodoc
class __$$InsurancePlanSpecificCostImplCopyWithImpl<$Res>
    extends _$InsurancePlanSpecificCostCopyWithImpl<$Res,
        _$InsurancePlanSpecificCostImpl>
    implements _$$InsurancePlanSpecificCostImplCopyWith<$Res> {
  __$$InsurancePlanSpecificCostImplCopyWithImpl(
      _$InsurancePlanSpecificCostImpl _value,
      $Res Function(_$InsurancePlanSpecificCostImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanSpecificCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = null,
    Object? benefit = freezed,
  }) {
    return _then(_$InsurancePlanSpecificCostImpl(
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
      benefit: freezed == benefit
          ? _value._benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanBenefit1>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanSpecificCostImpl extends _InsurancePlanSpecificCost {
  const _$InsurancePlanSpecificCostImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.category,
      final List<InsurancePlanBenefit1>? benefit})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _benefit = benefit,
        super._();

  factory _$InsurancePlanSpecificCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanSpecificCostImplFromJson(json);

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

  /// [category] General category of benefit (Medical; Dental; Vision; Drug;
  ///  Mental Health; Substance Abuse; Hospice, Home Health).
  @override
  final CodeableConcept category;

  /// [benefit] List of the specific benefits under this category of benefit.
  final List<InsurancePlanBenefit1>? _benefit;

  /// [benefit] List of the specific benefits under this category of benefit.
  @override
  List<InsurancePlanBenefit1>? get benefit {
    final value = _benefit;
    if (value == null) return null;
    if (_benefit is EqualUnmodifiableListView) return _benefit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InsurancePlanSpecificCost(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, category: $category, benefit: $benefit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanSpecificCostImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._benefit, _benefit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      category,
      const DeepCollectionEquality().hash(_benefit));

  /// Create a copy of InsurancePlanSpecificCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanSpecificCostImplCopyWith<_$InsurancePlanSpecificCostImpl>
      get copyWith => __$$InsurancePlanSpecificCostImplCopyWithImpl<
          _$InsurancePlanSpecificCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanSpecificCostImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanSpecificCost extends InsurancePlanSpecificCost {
  const factory _InsurancePlanSpecificCost(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept category,
          final List<InsurancePlanBenefit1>? benefit}) =
      _$InsurancePlanSpecificCostImpl;
  const _InsurancePlanSpecificCost._() : super._();

  factory _InsurancePlanSpecificCost.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanSpecificCostImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [category] General category of benefit (Medical; Dental; Vision; Drug;
  ///  Mental Health; Substance Abuse; Hospice, Home Health).
  @override
  CodeableConcept get category;

  /// [benefit] List of the specific benefits under this category of benefit.
  @override
  List<InsurancePlanBenefit1>? get benefit;

  /// Create a copy of InsurancePlanSpecificCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanSpecificCostImplCopyWith<_$InsurancePlanSpecificCostImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsurancePlanBenefit1 _$InsurancePlanBenefit1FromJson(
    Map<String, dynamic> json) {
  return _InsurancePlanBenefit1.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanBenefit1 {
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

  /// [type] Type of specific benefit (preventative; primary care office visit;
  ///  speciality office visit; hospitalization; emergency room; urgent care).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [cost] List of the costs associated with a specific benefit.
  List<InsurancePlanCost>? get cost => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanBenefit1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanBenefit1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanBenefit1CopyWith<InsurancePlanBenefit1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanBenefit1CopyWith<$Res> {
  factory $InsurancePlanBenefit1CopyWith(InsurancePlanBenefit1 value,
          $Res Function(InsurancePlanBenefit1) then) =
      _$InsurancePlanBenefit1CopyWithImpl<$Res, InsurancePlanBenefit1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<InsurancePlanCost>? cost});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$InsurancePlanBenefit1CopyWithImpl<$Res,
        $Val extends InsurancePlanBenefit1>
    implements $InsurancePlanBenefit1CopyWith<$Res> {
  _$InsurancePlanBenefit1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanBenefit1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? cost = freezed,
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
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanCost>?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanBenefit1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanBenefit1ImplCopyWith<$Res>
    implements $InsurancePlanBenefit1CopyWith<$Res> {
  factory _$$InsurancePlanBenefit1ImplCopyWith(
          _$InsurancePlanBenefit1Impl value,
          $Res Function(_$InsurancePlanBenefit1Impl) then) =
      __$$InsurancePlanBenefit1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<InsurancePlanCost>? cost});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$InsurancePlanBenefit1ImplCopyWithImpl<$Res>
    extends _$InsurancePlanBenefit1CopyWithImpl<$Res,
        _$InsurancePlanBenefit1Impl>
    implements _$$InsurancePlanBenefit1ImplCopyWith<$Res> {
  __$$InsurancePlanBenefit1ImplCopyWithImpl(_$InsurancePlanBenefit1Impl _value,
      $Res Function(_$InsurancePlanBenefit1Impl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanBenefit1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? cost = freezed,
  }) {
    return _then(_$InsurancePlanBenefit1Impl(
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
      cost: freezed == cost
          ? _value._cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<InsurancePlanCost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanBenefit1Impl extends _InsurancePlanBenefit1 {
  const _$InsurancePlanBenefit1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      final List<InsurancePlanCost>? cost})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _cost = cost,
        super._();

  factory _$InsurancePlanBenefit1Impl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanBenefit1ImplFromJson(json);

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

  /// [type] Type of specific benefit (preventative; primary care office visit;
  ///  speciality office visit; hospitalization; emergency room; urgent care).
  @override
  final CodeableConcept type;

  /// [cost] List of the costs associated with a specific benefit.
  final List<InsurancePlanCost>? _cost;

  /// [cost] List of the costs associated with a specific benefit.
  @override
  List<InsurancePlanCost>? get cost {
    final value = _cost;
    if (value == null) return null;
    if (_cost is EqualUnmodifiableListView) return _cost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InsurancePlanBenefit1(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanBenefit1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._cost, _cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_cost));

  /// Create a copy of InsurancePlanBenefit1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanBenefit1ImplCopyWith<_$InsurancePlanBenefit1Impl>
      get copyWith => __$$InsurancePlanBenefit1ImplCopyWithImpl<
          _$InsurancePlanBenefit1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanBenefit1ImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanBenefit1 extends InsurancePlanBenefit1 {
  const factory _InsurancePlanBenefit1(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final List<InsurancePlanCost>? cost}) = _$InsurancePlanBenefit1Impl;
  const _InsurancePlanBenefit1._() : super._();

  factory _InsurancePlanBenefit1.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanBenefit1Impl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [type] Type of specific benefit (preventative; primary care office visit;
  ///  speciality office visit; hospitalization; emergency room; urgent care).
  @override
  CodeableConcept get type;

  /// [cost] List of the costs associated with a specific benefit.
  @override
  List<InsurancePlanCost>? get cost;

  /// Create a copy of InsurancePlanBenefit1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanBenefit1ImplCopyWith<_$InsurancePlanBenefit1Impl>
      get copyWith => throw _privateConstructorUsedError;
}

InsurancePlanCost _$InsurancePlanCostFromJson(Map<String, dynamic> json) {
  return _InsurancePlanCost.fromJson(json);
}

/// @nodoc
mixin _$InsurancePlanCost {
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

  /// [type] Type of cost (copay; individual cap; family cap; coinsurance;
  ///  deductible).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [applicability] Whether the cost applies to in-network or out-of-network
  ///  providers (in-network; out-of-network; other).
  CodeableConcept? get applicability => throw _privateConstructorUsedError;

  /// [qualifiers] Additional information about the cost, such as information
  ///  about funding sources (e.g. HSA, HRA, FSA, RRA).
  List<CodeableConcept>? get qualifiers => throw _privateConstructorUsedError;

  /// [value] The actual cost value. (some of the costs may be represented as
  ///  percentages rather than currency, e.g. 10% coinsurance).
  Quantity? get value => throw _privateConstructorUsedError;

  /// Serializes this InsurancePlanCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsurancePlanCostCopyWith<InsurancePlanCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancePlanCostCopyWith<$Res> {
  factory $InsurancePlanCostCopyWith(
          InsurancePlanCost value, $Res Function(InsurancePlanCost) then) =
      _$InsurancePlanCostCopyWithImpl<$Res, InsurancePlanCost>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? applicability,
      List<CodeableConcept>? qualifiers,
      Quantity? value});

  $CodeableConceptCopyWith<$Res> get type;
  $CodeableConceptCopyWith<$Res>? get applicability;
  $QuantityCopyWith<$Res>? get value;
}

/// @nodoc
class _$InsurancePlanCostCopyWithImpl<$Res, $Val extends InsurancePlanCost>
    implements $InsurancePlanCostCopyWith<$Res> {
  _$InsurancePlanCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? applicability = freezed,
    Object? qualifiers = freezed,
    Object? value = freezed,
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
      applicability: freezed == applicability
          ? _value.applicability
          : applicability // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      qualifiers: freezed == qualifiers
          ? _value.qualifiers
          : qualifiers // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get applicability {
    if (_value.applicability == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.applicability!, (value) {
      return _then(_value.copyWith(applicability: value) as $Val);
    });
  }

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsurancePlanCostImplCopyWith<$Res>
    implements $InsurancePlanCostCopyWith<$Res> {
  factory _$$InsurancePlanCostImplCopyWith(_$InsurancePlanCostImpl value,
          $Res Function(_$InsurancePlanCostImpl) then) =
      __$$InsurancePlanCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? applicability,
      List<CodeableConcept>? qualifiers,
      Quantity? value});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $CodeableConceptCopyWith<$Res>? get applicability;
  @override
  $QuantityCopyWith<$Res>? get value;
}

/// @nodoc
class __$$InsurancePlanCostImplCopyWithImpl<$Res>
    extends _$InsurancePlanCostCopyWithImpl<$Res, _$InsurancePlanCostImpl>
    implements _$$InsurancePlanCostImplCopyWith<$Res> {
  __$$InsurancePlanCostImplCopyWithImpl(_$InsurancePlanCostImpl _value,
      $Res Function(_$InsurancePlanCostImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? applicability = freezed,
    Object? qualifiers = freezed,
    Object? value = freezed,
  }) {
    return _then(_$InsurancePlanCostImpl(
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
      applicability: freezed == applicability
          ? _value.applicability
          : applicability // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      qualifiers: freezed == qualifiers
          ? _value._qualifiers
          : qualifiers // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePlanCostImpl extends _InsurancePlanCost {
  const _$InsurancePlanCostImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.applicability,
      final List<CodeableConcept>? qualifiers,
      this.value})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _qualifiers = qualifiers,
        super._();

  factory _$InsurancePlanCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePlanCostImplFromJson(json);

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

  /// [type] Type of cost (copay; individual cap; family cap; coinsurance;
  ///  deductible).
  @override
  final CodeableConcept type;

  /// [applicability] Whether the cost applies to in-network or out-of-network
  ///  providers (in-network; out-of-network; other).
  @override
  final CodeableConcept? applicability;

  /// [qualifiers] Additional information about the cost, such as information
  ///  about funding sources (e.g. HSA, HRA, FSA, RRA).
  final List<CodeableConcept>? _qualifiers;

  /// [qualifiers] Additional information about the cost, such as information
  ///  about funding sources (e.g. HSA, HRA, FSA, RRA).
  @override
  List<CodeableConcept>? get qualifiers {
    final value = _qualifiers;
    if (value == null) return null;
    if (_qualifiers is EqualUnmodifiableListView) return _qualifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] The actual cost value. (some of the costs may be represented as
  ///  percentages rather than currency, e.g. 10% coinsurance).
  @override
  final Quantity? value;

  @override
  String toString() {
    return 'InsurancePlanCost(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, applicability: $applicability, qualifiers: $qualifiers, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePlanCostImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.applicability, applicability) ||
                other.applicability == applicability) &&
            const DeepCollectionEquality()
                .equals(other._qualifiers, _qualifiers) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      applicability,
      const DeepCollectionEquality().hash(_qualifiers),
      value);

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePlanCostImplCopyWith<_$InsurancePlanCostImpl> get copyWith =>
      __$$InsurancePlanCostImplCopyWithImpl<_$InsurancePlanCostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePlanCostImplToJson(
      this,
    );
  }
}

abstract class _InsurancePlanCost extends InsurancePlanCost {
  const factory _InsurancePlanCost(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final CodeableConcept? applicability,
      final List<CodeableConcept>? qualifiers,
      final Quantity? value}) = _$InsurancePlanCostImpl;
  const _InsurancePlanCost._() : super._();

  factory _InsurancePlanCost.fromJson(Map<String, dynamic> json) =
      _$InsurancePlanCostImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [type] Type of cost (copay; individual cap; family cap; coinsurance;
  ///  deductible).
  @override
  CodeableConcept get type;

  /// [applicability] Whether the cost applies to in-network or out-of-network
  ///  providers (in-network; out-of-network; other).
  @override
  CodeableConcept? get applicability;

  /// [qualifiers] Additional information about the cost, such as information
  ///  about funding sources (e.g. HSA, HRA, FSA, RRA).
  @override
  List<CodeableConcept>? get qualifiers;

  /// [value] The actual cost value. (some of the costs may be represented as
  ///  percentages rather than currency, e.g. 10% coinsurance).
  @override
  Quantity? get value;

  /// Create a copy of InsurancePlanCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePlanCostImplCopyWith<_$InsurancePlanCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
