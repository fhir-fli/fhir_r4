// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ObservationDefinition _$ObservationDefinitionFromJson(
    Map<String, dynamic> json) {
  return _ObservationDefinition.fromJson(json);
}

/// @nodoc
mixin _$ObservationDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
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

  /// [category] A code that classifies the general type of observation.
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;

  /// [code] Describes what will be observed. Sometimes this is called the
  ///  observation "name".
  CodeableConcept get code => throw _privateConstructorUsedError;

  /// [identifier] A unique identifier assigned to this ObservationDefinition
  ///  artifact.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [permittedDataType] The data types allowed for the value element of the
  ///  instance observations conforming to this ObservationDefinition.
  List<FhirCode>? get permittedDataType => throw _privateConstructorUsedError;
  @JsonKey(name: '_permittedDataType')
  List<PrimitiveElement>? get permittedDataTypeElement =>
      throw _privateConstructorUsedError;

  /// [multipleResultsAllowed] Multiple results allowed for observations
  ///  conforming to this ObservationDefinition.
  FhirBoolean? get multipleResultsAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: '_multipleResultsAllowed')
  PrimitiveElement? get multipleResultsAllowedElement =>
      throw _privateConstructorUsedError;

  /// [method] The method or technique used to perform the observation.
  CodeableConcept? get method => throw _privateConstructorUsedError;

  /// [preferredReportName] The preferred name to be used when reporting the
  ///  results of observations conforming to this ObservationDefinition.
  String? get preferredReportName => throw _privateConstructorUsedError;

  /// [preferredReportNameElement] Extensions for preferredReportName
  @JsonKey(name: '_preferredReportName')
  PrimitiveElement? get preferredReportNameElement =>
      throw _privateConstructorUsedError;

  /// [quantitativeDetails] Characteristics for quantitative results of this
  ///  observation.
  ObservationDefinitionQuantitativeDetails? get quantitativeDetails =>
      throw _privateConstructorUsedError;

  /// [qualifiedInterval] Multiple  ranges of results qualified by different
  /// contexts for ordinal or continuous observations conforming to this
  ///  ObservationDefinition.
  List<ObservationDefinitionQualifiedInterval>? get qualifiedInterval =>
      throw _privateConstructorUsedError;

  /// [validCodedValueSet] The set of valid coded results for the observations
  ///  conforming to this ObservationDefinition.
  Reference? get validCodedValueSet => throw _privateConstructorUsedError;

  /// [normalCodedValueSet] The set of normal coded results for the
  ///  observations conforming to this ObservationDefinition.
  Reference? get normalCodedValueSet => throw _privateConstructorUsedError;

  /// [abnormalCodedValueSet] The set of abnormal coded results for the
  ///  observation conforming to this ObservationDefinition.
  Reference? get abnormalCodedValueSet => throw _privateConstructorUsedError;

  /// [criticalCodedValueSet] The set of critical coded results for the
  ///  observation conforming to this ObservationDefinition.
  Reference? get criticalCodedValueSet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationDefinitionCopyWith<ObservationDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationDefinitionCopyWith<$Res> {
  factory $ObservationDefinitionCopyWith(ObservationDefinition value,
          $Res Function(ObservationDefinition) then) =
      _$ObservationDefinitionCopyWithImpl<$Res, ObservationDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
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
      List<CodeableConcept>? category,
      CodeableConcept code,
      List<Identifier>? identifier,
      List<FhirCode>? permittedDataType,
      @JsonKey(name: '_permittedDataType')
      List<PrimitiveElement>? permittedDataTypeElement,
      FhirBoolean? multipleResultsAllowed,
      @JsonKey(name: '_multipleResultsAllowed')
      PrimitiveElement? multipleResultsAllowedElement,
      CodeableConcept? method,
      String? preferredReportName,
      @JsonKey(name: '_preferredReportName')
      PrimitiveElement? preferredReportNameElement,
      ObservationDefinitionQuantitativeDetails? quantitativeDetails,
      List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
      Reference? validCodedValueSet,
      Reference? normalCodedValueSet,
      Reference? abnormalCodedValueSet,
      Reference? criticalCodedValueSet});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res> get code;
  $CodeableConceptCopyWith<$Res>? get method;
  $ObservationDefinitionQuantitativeDetailsCopyWith<$Res>?
      get quantitativeDetails;
  $ReferenceCopyWith<$Res>? get validCodedValueSet;
  $ReferenceCopyWith<$Res>? get normalCodedValueSet;
  $ReferenceCopyWith<$Res>? get abnormalCodedValueSet;
  $ReferenceCopyWith<$Res>? get criticalCodedValueSet;
}

/// @nodoc
class _$ObservationDefinitionCopyWithImpl<$Res,
        $Val extends ObservationDefinition>
    implements $ObservationDefinitionCopyWith<$Res> {
  _$ObservationDefinitionCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
    Object? code = null,
    Object? identifier = freezed,
    Object? permittedDataType = freezed,
    Object? permittedDataTypeElement = freezed,
    Object? multipleResultsAllowed = freezed,
    Object? multipleResultsAllowedElement = freezed,
    Object? method = freezed,
    Object? preferredReportName = freezed,
    Object? preferredReportNameElement = freezed,
    Object? quantitativeDetails = freezed,
    Object? qualifiedInterval = freezed,
    Object? validCodedValueSet = freezed,
    Object? normalCodedValueSet = freezed,
    Object? abnormalCodedValueSet = freezed,
    Object? criticalCodedValueSet = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      permittedDataType: freezed == permittedDataType
          ? _value.permittedDataType
          : permittedDataType // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      permittedDataTypeElement: freezed == permittedDataTypeElement
          ? _value.permittedDataTypeElement
          : permittedDataTypeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      multipleResultsAllowed: freezed == multipleResultsAllowed
          ? _value.multipleResultsAllowed
          : multipleResultsAllowed // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      multipleResultsAllowedElement: freezed == multipleResultsAllowedElement
          ? _value.multipleResultsAllowedElement
          : multipleResultsAllowedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      preferredReportName: freezed == preferredReportName
          ? _value.preferredReportName
          : preferredReportName // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredReportNameElement: freezed == preferredReportNameElement
          ? _value.preferredReportNameElement
          : preferredReportNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quantitativeDetails: freezed == quantitativeDetails
          ? _value.quantitativeDetails
          : quantitativeDetails // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionQuantitativeDetails?,
      qualifiedInterval: freezed == qualifiedInterval
          ? _value.qualifiedInterval
          : qualifiedInterval // ignore: cast_nullable_to_non_nullable
              as List<ObservationDefinitionQualifiedInterval>?,
      validCodedValueSet: freezed == validCodedValueSet
          ? _value.validCodedValueSet
          : validCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
      normalCodedValueSet: freezed == normalCodedValueSet
          ? _value.normalCodedValueSet
          : normalCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
      abnormalCodedValueSet: freezed == abnormalCodedValueSet
          ? _value.abnormalCodedValueSet
          : abnormalCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
      criticalCodedValueSet: freezed == criticalCodedValueSet
          ? _value.criticalCodedValueSet
          : criticalCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
  $CodeableConceptCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationDefinitionQuantitativeDetailsCopyWith<$Res>?
      get quantitativeDetails {
    if (_value.quantitativeDetails == null) {
      return null;
    }

    return $ObservationDefinitionQuantitativeDetailsCopyWith<$Res>(
        _value.quantitativeDetails!, (value) {
      return _then(_value.copyWith(quantitativeDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get validCodedValueSet {
    if (_value.validCodedValueSet == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.validCodedValueSet!, (value) {
      return _then(_value.copyWith(validCodedValueSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get normalCodedValueSet {
    if (_value.normalCodedValueSet == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.normalCodedValueSet!, (value) {
      return _then(_value.copyWith(normalCodedValueSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get abnormalCodedValueSet {
    if (_value.abnormalCodedValueSet == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.abnormalCodedValueSet!, (value) {
      return _then(_value.copyWith(abnormalCodedValueSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get criticalCodedValueSet {
    if (_value.criticalCodedValueSet == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.criticalCodedValueSet!, (value) {
      return _then(_value.copyWith(criticalCodedValueSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObservationDefinitionImplCopyWith<$Res>
    implements $ObservationDefinitionCopyWith<$Res> {
  factory _$$ObservationDefinitionImplCopyWith(
          _$ObservationDefinitionImpl value,
          $Res Function(_$ObservationDefinitionImpl) then) =
      __$$ObservationDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
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
      List<CodeableConcept>? category,
      CodeableConcept code,
      List<Identifier>? identifier,
      List<FhirCode>? permittedDataType,
      @JsonKey(name: '_permittedDataType')
      List<PrimitiveElement>? permittedDataTypeElement,
      FhirBoolean? multipleResultsAllowed,
      @JsonKey(name: '_multipleResultsAllowed')
      PrimitiveElement? multipleResultsAllowedElement,
      CodeableConcept? method,
      String? preferredReportName,
      @JsonKey(name: '_preferredReportName')
      PrimitiveElement? preferredReportNameElement,
      ObservationDefinitionQuantitativeDetails? quantitativeDetails,
      List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
      Reference? validCodedValueSet,
      Reference? normalCodedValueSet,
      Reference? abnormalCodedValueSet,
      Reference? criticalCodedValueSet});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $CodeableConceptCopyWith<$Res>? get method;
  @override
  $ObservationDefinitionQuantitativeDetailsCopyWith<$Res>?
      get quantitativeDetails;
  @override
  $ReferenceCopyWith<$Res>? get validCodedValueSet;
  @override
  $ReferenceCopyWith<$Res>? get normalCodedValueSet;
  @override
  $ReferenceCopyWith<$Res>? get abnormalCodedValueSet;
  @override
  $ReferenceCopyWith<$Res>? get criticalCodedValueSet;
}

/// @nodoc
class __$$ObservationDefinitionImplCopyWithImpl<$Res>
    extends _$ObservationDefinitionCopyWithImpl<$Res,
        _$ObservationDefinitionImpl>
    implements _$$ObservationDefinitionImplCopyWith<$Res> {
  __$$ObservationDefinitionImplCopyWithImpl(_$ObservationDefinitionImpl _value,
      $Res Function(_$ObservationDefinitionImpl) _then)
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
    Object? category = freezed,
    Object? code = null,
    Object? identifier = freezed,
    Object? permittedDataType = freezed,
    Object? permittedDataTypeElement = freezed,
    Object? multipleResultsAllowed = freezed,
    Object? multipleResultsAllowedElement = freezed,
    Object? method = freezed,
    Object? preferredReportName = freezed,
    Object? preferredReportNameElement = freezed,
    Object? quantitativeDetails = freezed,
    Object? qualifiedInterval = freezed,
    Object? validCodedValueSet = freezed,
    Object? normalCodedValueSet = freezed,
    Object? abnormalCodedValueSet = freezed,
    Object? criticalCodedValueSet = freezed,
  }) {
    return _then(_$ObservationDefinitionImpl(
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
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      permittedDataType: freezed == permittedDataType
          ? _value._permittedDataType
          : permittedDataType // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      permittedDataTypeElement: freezed == permittedDataTypeElement
          ? _value._permittedDataTypeElement
          : permittedDataTypeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      multipleResultsAllowed: freezed == multipleResultsAllowed
          ? _value.multipleResultsAllowed
          : multipleResultsAllowed // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      multipleResultsAllowedElement: freezed == multipleResultsAllowedElement
          ? _value.multipleResultsAllowedElement
          : multipleResultsAllowedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      preferredReportName: freezed == preferredReportName
          ? _value.preferredReportName
          : preferredReportName // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredReportNameElement: freezed == preferredReportNameElement
          ? _value.preferredReportNameElement
          : preferredReportNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quantitativeDetails: freezed == quantitativeDetails
          ? _value.quantitativeDetails
          : quantitativeDetails // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionQuantitativeDetails?,
      qualifiedInterval: freezed == qualifiedInterval
          ? _value._qualifiedInterval
          : qualifiedInterval // ignore: cast_nullable_to_non_nullable
              as List<ObservationDefinitionQualifiedInterval>?,
      validCodedValueSet: freezed == validCodedValueSet
          ? _value.validCodedValueSet
          : validCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
      normalCodedValueSet: freezed == normalCodedValueSet
          ? _value.normalCodedValueSet
          : normalCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
      abnormalCodedValueSet: freezed == abnormalCodedValueSet
          ? _value.abnormalCodedValueSet
          : abnormalCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
      criticalCodedValueSet: freezed == criticalCodedValueSet
          ? _value.criticalCodedValueSet
          : criticalCodedValueSet // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObservationDefinitionImpl extends _ObservationDefinition {
  _$ObservationDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
      this.resourceType = R4ResourceType.ObservationDefinition,
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
      final List<CodeableConcept>? category,
      required this.code,
      final List<Identifier>? identifier,
      final List<FhirCode>? permittedDataType,
      @JsonKey(name: '_permittedDataType')
      final List<PrimitiveElement>? permittedDataTypeElement,
      this.multipleResultsAllowed,
      @JsonKey(name: '_multipleResultsAllowed')
      this.multipleResultsAllowedElement,
      this.method,
      this.preferredReportName,
      @JsonKey(name: '_preferredReportName') this.preferredReportNameElement,
      this.quantitativeDetails,
      final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
      this.validCodedValueSet,
      this.normalCodedValueSet,
      this.abnormalCodedValueSet,
      this.criticalCodedValueSet})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _category = category,
        _identifier = identifier,
        _permittedDataType = permittedDataType,
        _permittedDataTypeElement = permittedDataTypeElement,
        _qualifiedInterval = qualifiedInterval,
        super._();

  factory _$ObservationDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObservationDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
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

  /// [category] A code that classifies the general type of observation.
  final List<CodeableConcept>? _category;

  /// [category] A code that classifies the general type of observation.
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] Describes what will be observed. Sometimes this is called the
  ///  observation "name".
  @override
  final CodeableConcept code;

  /// [identifier] A unique identifier assigned to this ObservationDefinition
  ///  artifact.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this ObservationDefinition
  ///  artifact.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [permittedDataType] The data types allowed for the value element of the
  ///  instance observations conforming to this ObservationDefinition.
  final List<FhirCode>? _permittedDataType;

  /// [permittedDataType] The data types allowed for the value element of the
  ///  instance observations conforming to this ObservationDefinition.
  @override
  List<FhirCode>? get permittedDataType {
    final value = _permittedDataType;
    if (value == null) return null;
    if (_permittedDataType is EqualUnmodifiableListView)
      return _permittedDataType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _permittedDataTypeElement;
  @override
  @JsonKey(name: '_permittedDataType')
  List<PrimitiveElement>? get permittedDataTypeElement {
    final value = _permittedDataTypeElement;
    if (value == null) return null;
    if (_permittedDataTypeElement is EqualUnmodifiableListView)
      return _permittedDataTypeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [multipleResultsAllowed] Multiple results allowed for observations
  ///  conforming to this ObservationDefinition.
  @override
  final FhirBoolean? multipleResultsAllowed;
  @override
  @JsonKey(name: '_multipleResultsAllowed')
  final PrimitiveElement? multipleResultsAllowedElement;

  /// [method] The method or technique used to perform the observation.
  @override
  final CodeableConcept? method;

  /// [preferredReportName] The preferred name to be used when reporting the
  ///  results of observations conforming to this ObservationDefinition.
  @override
  final String? preferredReportName;

  /// [preferredReportNameElement] Extensions for preferredReportName
  @override
  @JsonKey(name: '_preferredReportName')
  final PrimitiveElement? preferredReportNameElement;

  /// [quantitativeDetails] Characteristics for quantitative results of this
  ///  observation.
  @override
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;

  /// [qualifiedInterval] Multiple  ranges of results qualified by different
  /// contexts for ordinal or continuous observations conforming to this
  ///  ObservationDefinition.
  final List<ObservationDefinitionQualifiedInterval>? _qualifiedInterval;

  /// [qualifiedInterval] Multiple  ranges of results qualified by different
  /// contexts for ordinal or continuous observations conforming to this
  ///  ObservationDefinition.
  @override
  List<ObservationDefinitionQualifiedInterval>? get qualifiedInterval {
    final value = _qualifiedInterval;
    if (value == null) return null;
    if (_qualifiedInterval is EqualUnmodifiableListView)
      return _qualifiedInterval;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [validCodedValueSet] The set of valid coded results for the observations
  ///  conforming to this ObservationDefinition.
  @override
  final Reference? validCodedValueSet;

  /// [normalCodedValueSet] The set of normal coded results for the
  ///  observations conforming to this ObservationDefinition.
  @override
  final Reference? normalCodedValueSet;

  /// [abnormalCodedValueSet] The set of abnormal coded results for the
  ///  observation conforming to this ObservationDefinition.
  @override
  final Reference? abnormalCodedValueSet;

  /// [criticalCodedValueSet] The set of critical coded results for the
  ///  observation conforming to this ObservationDefinition.
  @override
  final Reference? criticalCodedValueSet;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationDefinitionImpl &&
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
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality()
                .equals(other._permittedDataType, _permittedDataType) &&
            const DeepCollectionEquality().equals(
                other._permittedDataTypeElement, _permittedDataTypeElement) &&
            (identical(other.multipleResultsAllowed, multipleResultsAllowed) ||
                other.multipleResultsAllowed == multipleResultsAllowed) &&
            (identical(other.multipleResultsAllowedElement,
                    multipleResultsAllowedElement) ||
                other.multipleResultsAllowedElement ==
                    multipleResultsAllowedElement) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.preferredReportName, preferredReportName) ||
                other.preferredReportName == preferredReportName) &&
            (identical(other.preferredReportNameElement,
                    preferredReportNameElement) ||
                other.preferredReportNameElement ==
                    preferredReportNameElement) &&
            (identical(other.quantitativeDetails, quantitativeDetails) ||
                other.quantitativeDetails == quantitativeDetails) &&
            const DeepCollectionEquality()
                .equals(other._qualifiedInterval, _qualifiedInterval) &&
            (identical(other.validCodedValueSet, validCodedValueSet) ||
                other.validCodedValueSet == validCodedValueSet) &&
            (identical(other.normalCodedValueSet, normalCodedValueSet) ||
                other.normalCodedValueSet == normalCodedValueSet) &&
            (identical(other.abnormalCodedValueSet, abnormalCodedValueSet) ||
                other.abnormalCodedValueSet == abnormalCodedValueSet) &&
            (identical(other.criticalCodedValueSet, criticalCodedValueSet) ||
                other.criticalCodedValueSet == criticalCodedValueSet));
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
        const DeepCollectionEquality().hash(_category),
        code,
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_permittedDataType),
        const DeepCollectionEquality().hash(_permittedDataTypeElement),
        multipleResultsAllowed,
        multipleResultsAllowedElement,
        method,
        preferredReportName,
        preferredReportNameElement,
        quantitativeDetails,
        const DeepCollectionEquality().hash(_qualifiedInterval),
        validCodedValueSet,
        normalCodedValueSet,
        abnormalCodedValueSet,
        criticalCodedValueSet
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationDefinitionImplCopyWith<_$ObservationDefinitionImpl>
      get copyWith => __$$ObservationDefinitionImplCopyWithImpl<
          _$ObservationDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ObservationDefinition extends ObservationDefinition {
  factory _ObservationDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
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
      final List<CodeableConcept>? category,
      required final CodeableConcept code,
      final List<Identifier>? identifier,
      final List<FhirCode>? permittedDataType,
      @JsonKey(name: '_permittedDataType')
      final List<PrimitiveElement>? permittedDataTypeElement,
      final FhirBoolean? multipleResultsAllowed,
      @JsonKey(name: '_multipleResultsAllowed')
      final PrimitiveElement? multipleResultsAllowedElement,
      final CodeableConcept? method,
      final String? preferredReportName,
      @JsonKey(name: '_preferredReportName')
      final PrimitiveElement? preferredReportNameElement,
      final ObservationDefinitionQuantitativeDetails? quantitativeDetails,
      final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
      final Reference? validCodedValueSet,
      final Reference? normalCodedValueSet,
      final Reference? abnormalCodedValueSet,
      final Reference? criticalCodedValueSet}) = _$ObservationDefinitionImpl;
  _ObservationDefinition._() : super._();

  factory _ObservationDefinition.fromJson(Map<String, dynamic> json) =
      _$ObservationDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)
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

  /// [category] A code that classifies the general type of observation.
  List<CodeableConcept>? get category;
  @override

  /// [code] Describes what will be observed. Sometimes this is called the
  ///  observation "name".
  CodeableConcept get code;
  @override

  /// [identifier] A unique identifier assigned to this ObservationDefinition
  ///  artifact.
  List<Identifier>? get identifier;
  @override

  /// [permittedDataType] The data types allowed for the value element of the
  ///  instance observations conforming to this ObservationDefinition.
  List<FhirCode>? get permittedDataType;
  @override
  @JsonKey(name: '_permittedDataType')
  List<PrimitiveElement>? get permittedDataTypeElement;
  @override

  /// [multipleResultsAllowed] Multiple results allowed for observations
  ///  conforming to this ObservationDefinition.
  FhirBoolean? get multipleResultsAllowed;
  @override
  @JsonKey(name: '_multipleResultsAllowed')
  PrimitiveElement? get multipleResultsAllowedElement;
  @override

  /// [method] The method or technique used to perform the observation.
  CodeableConcept? get method;
  @override

  /// [preferredReportName] The preferred name to be used when reporting the
  ///  results of observations conforming to this ObservationDefinition.
  String? get preferredReportName;
  @override

  /// [preferredReportNameElement] Extensions for preferredReportName
  @JsonKey(name: '_preferredReportName')
  PrimitiveElement? get preferredReportNameElement;
  @override

  /// [quantitativeDetails] Characteristics for quantitative results of this
  ///  observation.
  ObservationDefinitionQuantitativeDetails? get quantitativeDetails;
  @override

  /// [qualifiedInterval] Multiple  ranges of results qualified by different
  /// contexts for ordinal or continuous observations conforming to this
  ///  ObservationDefinition.
  List<ObservationDefinitionQualifiedInterval>? get qualifiedInterval;
  @override

  /// [validCodedValueSet] The set of valid coded results for the observations
  ///  conforming to this ObservationDefinition.
  Reference? get validCodedValueSet;
  @override

  /// [normalCodedValueSet] The set of normal coded results for the
  ///  observations conforming to this ObservationDefinition.
  Reference? get normalCodedValueSet;
  @override

  /// [abnormalCodedValueSet] The set of abnormal coded results for the
  ///  observation conforming to this ObservationDefinition.
  Reference? get abnormalCodedValueSet;
  @override

  /// [criticalCodedValueSet] The set of critical coded results for the
  ///  observation conforming to this ObservationDefinition.
  Reference? get criticalCodedValueSet;
  @override
  @JsonKey(ignore: true)
  _$$ObservationDefinitionImplCopyWith<_$ObservationDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationDefinitionQuantitativeDetails
    _$ObservationDefinitionQuantitativeDetailsFromJson(
        Map<String, dynamic> json) {
  return _ObservationDefinitionQuantitativeDetails.fromJson(json);
}

/// @nodoc
mixin _$ObservationDefinitionQuantitativeDetails {
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

  /// [customaryUnit] Customary unit used to report quantitative results of
  ///  observations conforming to this ObservationDefinition.
  CodeableConcept? get customaryUnit => throw _privateConstructorUsedError;

  /// [unit] SI unit used to report quantitative results of observations
  ///  conforming to this ObservationDefinition.
  CodeableConcept? get unit => throw _privateConstructorUsedError;

  /// [conversionFactor] Factor for converting value expressed with SI unit to
  ///  value expressed with customary unit.
  FhirDecimal? get conversionFactor => throw _privateConstructorUsedError;

  /// [conversionFactorElement] Extensions for conversionFactor
  @JsonKey(name: '_conversionFactor')
  PrimitiveElement? get conversionFactorElement =>
      throw _privateConstructorUsedError;

  /// [decimalPrecision] Number of digits after decimal separator when the
  ///  results of such observations are of type Quantity.
  FhirInteger? get decimalPrecision => throw _privateConstructorUsedError;

  /// [decimalPrecisionElement] Extensions for decimalPrecision
  @JsonKey(name: '_decimalPrecision')
  PrimitiveElement? get decimalPrecisionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationDefinitionQuantitativeDetailsCopyWith<
          ObservationDefinitionQuantitativeDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationDefinitionQuantitativeDetailsCopyWith<$Res> {
  factory $ObservationDefinitionQuantitativeDetailsCopyWith(
          ObservationDefinitionQuantitativeDetails value,
          $Res Function(ObservationDefinitionQuantitativeDetails) then) =
      _$ObservationDefinitionQuantitativeDetailsCopyWithImpl<$Res,
          ObservationDefinitionQuantitativeDetails>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? customaryUnit,
      CodeableConcept? unit,
      FhirDecimal? conversionFactor,
      @JsonKey(name: '_conversionFactor')
      PrimitiveElement? conversionFactorElement,
      FhirInteger? decimalPrecision,
      @JsonKey(name: '_decimalPrecision')
      PrimitiveElement? decimalPrecisionElement});

  $CodeableConceptCopyWith<$Res>? get customaryUnit;
  $CodeableConceptCopyWith<$Res>? get unit;
}

/// @nodoc
class _$ObservationDefinitionQuantitativeDetailsCopyWithImpl<$Res,
        $Val extends ObservationDefinitionQuantitativeDetails>
    implements $ObservationDefinitionQuantitativeDetailsCopyWith<$Res> {
  _$ObservationDefinitionQuantitativeDetailsCopyWithImpl(
      this._value, this._then);

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
    Object? customaryUnit = freezed,
    Object? unit = freezed,
    Object? conversionFactor = freezed,
    Object? conversionFactorElement = freezed,
    Object? decimalPrecision = freezed,
    Object? decimalPrecisionElement = freezed,
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
      customaryUnit: freezed == customaryUnit
          ? _value.customaryUnit
          : customaryUnit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      conversionFactor: freezed == conversionFactor
          ? _value.conversionFactor
          : conversionFactor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      conversionFactorElement: freezed == conversionFactorElement
          ? _value.conversionFactorElement
          : conversionFactorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      decimalPrecision: freezed == decimalPrecision
          ? _value.decimalPrecision
          : decimalPrecision // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      decimalPrecisionElement: freezed == decimalPrecisionElement
          ? _value.decimalPrecisionElement
          : decimalPrecisionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get customaryUnit {
    if (_value.customaryUnit == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.customaryUnit!, (value) {
      return _then(_value.copyWith(customaryUnit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObservationDefinitionQuantitativeDetailsImplCopyWith<$Res>
    implements $ObservationDefinitionQuantitativeDetailsCopyWith<$Res> {
  factory _$$ObservationDefinitionQuantitativeDetailsImplCopyWith(
          _$ObservationDefinitionQuantitativeDetailsImpl value,
          $Res Function(_$ObservationDefinitionQuantitativeDetailsImpl) then) =
      __$$ObservationDefinitionQuantitativeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? customaryUnit,
      CodeableConcept? unit,
      FhirDecimal? conversionFactor,
      @JsonKey(name: '_conversionFactor')
      PrimitiveElement? conversionFactorElement,
      FhirInteger? decimalPrecision,
      @JsonKey(name: '_decimalPrecision')
      PrimitiveElement? decimalPrecisionElement});

  @override
  $CodeableConceptCopyWith<$Res>? get customaryUnit;
  @override
  $CodeableConceptCopyWith<$Res>? get unit;
}

/// @nodoc
class __$$ObservationDefinitionQuantitativeDetailsImplCopyWithImpl<$Res>
    extends _$ObservationDefinitionQuantitativeDetailsCopyWithImpl<$Res,
        _$ObservationDefinitionQuantitativeDetailsImpl>
    implements _$$ObservationDefinitionQuantitativeDetailsImplCopyWith<$Res> {
  __$$ObservationDefinitionQuantitativeDetailsImplCopyWithImpl(
      _$ObservationDefinitionQuantitativeDetailsImpl _value,
      $Res Function(_$ObservationDefinitionQuantitativeDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? customaryUnit = freezed,
    Object? unit = freezed,
    Object? conversionFactor = freezed,
    Object? conversionFactorElement = freezed,
    Object? decimalPrecision = freezed,
    Object? decimalPrecisionElement = freezed,
  }) {
    return _then(_$ObservationDefinitionQuantitativeDetailsImpl(
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
      customaryUnit: freezed == customaryUnit
          ? _value.customaryUnit
          : customaryUnit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      conversionFactor: freezed == conversionFactor
          ? _value.conversionFactor
          : conversionFactor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      conversionFactorElement: freezed == conversionFactorElement
          ? _value.conversionFactorElement
          : conversionFactorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      decimalPrecision: freezed == decimalPrecision
          ? _value.decimalPrecision
          : decimalPrecision // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      decimalPrecisionElement: freezed == decimalPrecisionElement
          ? _value.decimalPrecisionElement
          : decimalPrecisionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObservationDefinitionQuantitativeDetailsImpl
    extends _ObservationDefinitionQuantitativeDetails {
  _$ObservationDefinitionQuantitativeDetailsImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.customaryUnit,
      this.unit,
      this.conversionFactor,
      @JsonKey(name: '_conversionFactor') this.conversionFactorElement,
      this.decimalPrecision,
      @JsonKey(name: '_decimalPrecision') this.decimalPrecisionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ObservationDefinitionQuantitativeDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ObservationDefinitionQuantitativeDetailsImplFromJson(json);

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

  /// [customaryUnit] Customary unit used to report quantitative results of
  ///  observations conforming to this ObservationDefinition.
  @override
  final CodeableConcept? customaryUnit;

  /// [unit] SI unit used to report quantitative results of observations
  ///  conforming to this ObservationDefinition.
  @override
  final CodeableConcept? unit;

  /// [conversionFactor] Factor for converting value expressed with SI unit to
  ///  value expressed with customary unit.
  @override
  final FhirDecimal? conversionFactor;

  /// [conversionFactorElement] Extensions for conversionFactor
  @override
  @JsonKey(name: '_conversionFactor')
  final PrimitiveElement? conversionFactorElement;

  /// [decimalPrecision] Number of digits after decimal separator when the
  ///  results of such observations are of type Quantity.
  @override
  final FhirInteger? decimalPrecision;

  /// [decimalPrecisionElement] Extensions for decimalPrecision
  @override
  @JsonKey(name: '_decimalPrecision')
  final PrimitiveElement? decimalPrecisionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationDefinitionQuantitativeDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.customaryUnit, customaryUnit) ||
                other.customaryUnit == customaryUnit) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.conversionFactor, conversionFactor) ||
                other.conversionFactor == conversionFactor) &&
            (identical(
                    other.conversionFactorElement, conversionFactorElement) ||
                other.conversionFactorElement == conversionFactorElement) &&
            (identical(other.decimalPrecision, decimalPrecision) ||
                other.decimalPrecision == decimalPrecision) &&
            (identical(
                    other.decimalPrecisionElement, decimalPrecisionElement) ||
                other.decimalPrecisionElement == decimalPrecisionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      customaryUnit,
      unit,
      conversionFactor,
      conversionFactorElement,
      decimalPrecision,
      decimalPrecisionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationDefinitionQuantitativeDetailsImplCopyWith<
          _$ObservationDefinitionQuantitativeDetailsImpl>
      get copyWith =>
          __$$ObservationDefinitionQuantitativeDetailsImplCopyWithImpl<
              _$ObservationDefinitionQuantitativeDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationDefinitionQuantitativeDetailsImplToJson(
      this,
    );
  }
}

abstract class _ObservationDefinitionQuantitativeDetails
    extends ObservationDefinitionQuantitativeDetails {
  factory _ObservationDefinitionQuantitativeDetails(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? customaryUnit,
          final CodeableConcept? unit,
          final FhirDecimal? conversionFactor,
          @JsonKey(name: '_conversionFactor')
          final PrimitiveElement? conversionFactorElement,
          final FhirInteger? decimalPrecision,
          @JsonKey(name: '_decimalPrecision')
          final PrimitiveElement? decimalPrecisionElement}) =
      _$ObservationDefinitionQuantitativeDetailsImpl;
  _ObservationDefinitionQuantitativeDetails._() : super._();

  factory _ObservationDefinitionQuantitativeDetails.fromJson(
          Map<String, dynamic> json) =
      _$ObservationDefinitionQuantitativeDetailsImpl.fromJson;

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

  /// [customaryUnit] Customary unit used to report quantitative results of
  ///  observations conforming to this ObservationDefinition.
  CodeableConcept? get customaryUnit;
  @override

  /// [unit] SI unit used to report quantitative results of observations
  ///  conforming to this ObservationDefinition.
  CodeableConcept? get unit;
  @override

  /// [conversionFactor] Factor for converting value expressed with SI unit to
  ///  value expressed with customary unit.
  FhirDecimal? get conversionFactor;
  @override

  /// [conversionFactorElement] Extensions for conversionFactor
  @JsonKey(name: '_conversionFactor')
  PrimitiveElement? get conversionFactorElement;
  @override

  /// [decimalPrecision] Number of digits after decimal separator when the
  ///  results of such observations are of type Quantity.
  FhirInteger? get decimalPrecision;
  @override

  /// [decimalPrecisionElement] Extensions for decimalPrecision
  @JsonKey(name: '_decimalPrecision')
  PrimitiveElement? get decimalPrecisionElement;
  @override
  @JsonKey(ignore: true)
  _$$ObservationDefinitionQuantitativeDetailsImplCopyWith<
          _$ObservationDefinitionQuantitativeDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationDefinitionQualifiedInterval
    _$ObservationDefinitionQualifiedIntervalFromJson(
        Map<String, dynamic> json) {
  return _ObservationDefinitionQualifiedInterval.fromJson(json);
}

/// @nodoc
mixin _$ObservationDefinitionQualifiedInterval {
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

  /// [category] The category of interval of values for continuous or ordinal
  ///  observations conforming to this ObservationDefinition.
  FhirCode? get category => throw _privateConstructorUsedError;

  /// [categoryElement] Extensions for category
  @JsonKey(name: '_category')
  PrimitiveElement? get categoryElement => throw _privateConstructorUsedError;

  /// [range] The low and high values determining the interval. There may be
  ///  only one of the two.
  Range? get range => throw _privateConstructorUsedError;

  /// [context] Codes to indicate the health context the range applies to. For
  ///  example, the normal or therapeutic range.
  CodeableConcept? get context => throw _privateConstructorUsedError;

  /// [appliesTo] Codes to indicate the target population this reference range
  ///  applies to.
  List<CodeableConcept>? get appliesTo => throw _privateConstructorUsedError;

  /// [gender] Sex of the population the range applies to.
  FhirCode? get gender => throw _privateConstructorUsedError;

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement => throw _privateConstructorUsedError;

  /// [age] The age at which this reference range is applicable. This is a
  ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
  Range? get age => throw _privateConstructorUsedError;

  /// [gestationalAge] The gestational age to which this reference range is
  ///  applicable, in the context of pregnancy.
  Range? get gestationalAge => throw _privateConstructorUsedError;

  /// [condition] Text based condition for which the reference range is valid.
  String? get condition => throw _privateConstructorUsedError;

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  PrimitiveElement? get conditionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationDefinitionQualifiedIntervalCopyWith<
          ObservationDefinitionQualifiedInterval>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationDefinitionQualifiedIntervalCopyWith<$Res> {
  factory $ObservationDefinitionQualifiedIntervalCopyWith(
          ObservationDefinitionQualifiedInterval value,
          $Res Function(ObservationDefinitionQualifiedInterval) then) =
      _$ObservationDefinitionQualifiedIntervalCopyWithImpl<$Res,
          ObservationDefinitionQualifiedInterval>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? category,
      @JsonKey(name: '_category') PrimitiveElement? categoryElement,
      Range? range,
      CodeableConcept? context,
      List<CodeableConcept>? appliesTo,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      Range? age,
      Range? gestationalAge,
      String? condition,
      @JsonKey(name: '_condition') PrimitiveElement? conditionElement});

  $RangeCopyWith<$Res>? get range;
  $CodeableConceptCopyWith<$Res>? get context;
  $RangeCopyWith<$Res>? get age;
  $RangeCopyWith<$Res>? get gestationalAge;
}

/// @nodoc
class _$ObservationDefinitionQualifiedIntervalCopyWithImpl<$Res,
        $Val extends ObservationDefinitionQualifiedInterval>
    implements $ObservationDefinitionQualifiedIntervalCopyWith<$Res> {
  _$ObservationDefinitionQualifiedIntervalCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
    Object? categoryElement = freezed,
    Object? range = freezed,
    Object? context = freezed,
    Object? appliesTo = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? age = freezed,
    Object? gestationalAge = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      categoryElement: freezed == categoryElement
          ? _value.categoryElement
          : categoryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      appliesTo: freezed == appliesTo
          ? _value.appliesTo
          : appliesTo // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Range?,
      gestationalAge: freezed == gestationalAge
          ? _value.gestationalAge
          : gestationalAge // ignore: cast_nullable_to_non_nullable
              as Range?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get age {
    if (_value.age == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.age!, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get gestationalAge {
    if (_value.gestationalAge == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.gestationalAge!, (value) {
      return _then(_value.copyWith(gestationalAge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObservationDefinitionQualifiedIntervalImplCopyWith<$Res>
    implements $ObservationDefinitionQualifiedIntervalCopyWith<$Res> {
  factory _$$ObservationDefinitionQualifiedIntervalImplCopyWith(
          _$ObservationDefinitionQualifiedIntervalImpl value,
          $Res Function(_$ObservationDefinitionQualifiedIntervalImpl) then) =
      __$$ObservationDefinitionQualifiedIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? category,
      @JsonKey(name: '_category') PrimitiveElement? categoryElement,
      Range? range,
      CodeableConcept? context,
      List<CodeableConcept>? appliesTo,
      FhirCode? gender,
      @JsonKey(name: '_gender') PrimitiveElement? genderElement,
      Range? age,
      Range? gestationalAge,
      String? condition,
      @JsonKey(name: '_condition') PrimitiveElement? conditionElement});

  @override
  $RangeCopyWith<$Res>? get range;
  @override
  $CodeableConceptCopyWith<$Res>? get context;
  @override
  $RangeCopyWith<$Res>? get age;
  @override
  $RangeCopyWith<$Res>? get gestationalAge;
}

/// @nodoc
class __$$ObservationDefinitionQualifiedIntervalImplCopyWithImpl<$Res>
    extends _$ObservationDefinitionQualifiedIntervalCopyWithImpl<$Res,
        _$ObservationDefinitionQualifiedIntervalImpl>
    implements _$$ObservationDefinitionQualifiedIntervalImplCopyWith<$Res> {
  __$$ObservationDefinitionQualifiedIntervalImplCopyWithImpl(
      _$ObservationDefinitionQualifiedIntervalImpl _value,
      $Res Function(_$ObservationDefinitionQualifiedIntervalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = freezed,
    Object? categoryElement = freezed,
    Object? range = freezed,
    Object? context = freezed,
    Object? appliesTo = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? age = freezed,
    Object? gestationalAge = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
  }) {
    return _then(_$ObservationDefinitionQualifiedIntervalImpl(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      categoryElement: freezed == categoryElement
          ? _value.categoryElement
          : categoryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      appliesTo: freezed == appliesTo
          ? _value._appliesTo
          : appliesTo // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      genderElement: freezed == genderElement
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Range?,
      gestationalAge: freezed == gestationalAge
          ? _value.gestationalAge
          : gestationalAge // ignore: cast_nullable_to_non_nullable
              as Range?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObservationDefinitionQualifiedIntervalImpl
    extends _ObservationDefinitionQualifiedInterval {
  _$ObservationDefinitionQualifiedIntervalImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.category,
      @JsonKey(name: '_category') this.categoryElement,
      this.range,
      this.context,
      final List<CodeableConcept>? appliesTo,
      this.gender,
      @JsonKey(name: '_gender') this.genderElement,
      this.age,
      this.gestationalAge,
      this.condition,
      @JsonKey(name: '_condition') this.conditionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _appliesTo = appliesTo,
        super._();

  factory _$ObservationDefinitionQualifiedIntervalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ObservationDefinitionQualifiedIntervalImplFromJson(json);

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

  /// [category] The category of interval of values for continuous or ordinal
  ///  observations conforming to this ObservationDefinition.
  @override
  final FhirCode? category;

  /// [categoryElement] Extensions for category
  @override
  @JsonKey(name: '_category')
  final PrimitiveElement? categoryElement;

  /// [range] The low and high values determining the interval. There may be
  ///  only one of the two.
  @override
  final Range? range;

  /// [context] Codes to indicate the health context the range applies to. For
  ///  example, the normal or therapeutic range.
  @override
  final CodeableConcept? context;

  /// [appliesTo] Codes to indicate the target population this reference range
  ///  applies to.
  final List<CodeableConcept>? _appliesTo;

  /// [appliesTo] Codes to indicate the target population this reference range
  ///  applies to.
  @override
  List<CodeableConcept>? get appliesTo {
    final value = _appliesTo;
    if (value == null) return null;
    if (_appliesTo is EqualUnmodifiableListView) return _appliesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [gender] Sex of the population the range applies to.
  @override
  final FhirCode? gender;

  /// [genderElement] Extensions for gender
  @override
  @JsonKey(name: '_gender')
  final PrimitiveElement? genderElement;

  /// [age] The age at which this reference range is applicable. This is a
  ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
  @override
  final Range? age;

  /// [gestationalAge] The gestational age to which this reference range is
  ///  applicable, in the context of pregnancy.
  @override
  final Range? gestationalAge;

  /// [condition] Text based condition for which the reference range is valid.
  @override
  final String? condition;

  /// [conditionElement] Extensions for condition
  @override
  @JsonKey(name: '_condition')
  final PrimitiveElement? conditionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationDefinitionQualifiedIntervalImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryElement, categoryElement) ||
                other.categoryElement == categoryElement) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality()
                .equals(other._appliesTo, _appliesTo) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderElement, genderElement) ||
                other.genderElement == genderElement) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gestationalAge, gestationalAge) ||
                other.gestationalAge == gestationalAge) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.conditionElement, conditionElement) ||
                other.conditionElement == conditionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      category,
      categoryElement,
      range,
      context,
      const DeepCollectionEquality().hash(_appliesTo),
      gender,
      genderElement,
      age,
      gestationalAge,
      condition,
      conditionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationDefinitionQualifiedIntervalImplCopyWith<
          _$ObservationDefinitionQualifiedIntervalImpl>
      get copyWith =>
          __$$ObservationDefinitionQualifiedIntervalImplCopyWithImpl<
              _$ObservationDefinitionQualifiedIntervalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationDefinitionQualifiedIntervalImplToJson(
      this,
    );
  }
}

abstract class _ObservationDefinitionQualifiedInterval
    extends ObservationDefinitionQualifiedInterval {
  factory _ObservationDefinitionQualifiedInterval(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? category,
          @JsonKey(name: '_category') final PrimitiveElement? categoryElement,
          final Range? range,
          final CodeableConcept? context,
          final List<CodeableConcept>? appliesTo,
          final FhirCode? gender,
          @JsonKey(name: '_gender') final PrimitiveElement? genderElement,
          final Range? age,
          final Range? gestationalAge,
          final String? condition,
          @JsonKey(name: '_condition')
          final PrimitiveElement? conditionElement}) =
      _$ObservationDefinitionQualifiedIntervalImpl;
  _ObservationDefinitionQualifiedInterval._() : super._();

  factory _ObservationDefinitionQualifiedInterval.fromJson(
          Map<String, dynamic> json) =
      _$ObservationDefinitionQualifiedIntervalImpl.fromJson;

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

  /// [category] The category of interval of values for continuous or ordinal
  ///  observations conforming to this ObservationDefinition.
  FhirCode? get category;
  @override

  /// [categoryElement] Extensions for category
  @JsonKey(name: '_category')
  PrimitiveElement? get categoryElement;
  @override

  /// [range] The low and high values determining the interval. There may be
  ///  only one of the two.
  Range? get range;
  @override

  /// [context] Codes to indicate the health context the range applies to. For
  ///  example, the normal or therapeutic range.
  CodeableConcept? get context;
  @override

  /// [appliesTo] Codes to indicate the target population this reference range
  ///  applies to.
  List<CodeableConcept>? get appliesTo;
  @override

  /// [gender] Sex of the population the range applies to.
  FhirCode? get gender;
  @override

  /// [genderElement] Extensions for gender
  @JsonKey(name: '_gender')
  PrimitiveElement? get genderElement;
  @override

  /// [age] The age at which this reference range is applicable. This is a
  ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
  Range? get age;
  @override

  /// [gestationalAge] The gestational age to which this reference range is
  ///  applicable, in the context of pregnancy.
  Range? get gestationalAge;
  @override

  /// [condition] Text based condition for which the reference range is valid.
  String? get condition;
  @override

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  PrimitiveElement? get conditionElement;
  @override
  @JsonKey(ignore: true)
  _$$ObservationDefinitionQualifiedIntervalImplCopyWith<
          _$ObservationDefinitionQualifiedIntervalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
