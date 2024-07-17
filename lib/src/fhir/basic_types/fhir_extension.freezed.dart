// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fhir_extension.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FhirExtension _$FhirExtensionFromJson(Map<String, dynamic> json) {
  return _FhirExtension.fromJson(json);
}

/// @nodoc
mixin _$FhirExtension {
  /// [id] Unique id for the element within a resource (for internal
  /// references). This may be any string value that does not contain spaces.
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of fhirExtensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of fhirExtensions. Though any implementer can define an
  /// fhirExtension, there is a set of requirements that SHALL be met as part of the
  /// definition of the fhirExtension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [url] Source of the definition for the fhirExtension code - a logical name
  /// or a URL.
  @JsonKey(name: 'url')
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [_url] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [valueBase64Binary] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueBase64Binary')
  FhirBase64Binary? get valueBase64Binary => throw _privateConstructorUsedError;

  /// [_valueBase64Binary] Extensions for valueBase64Binary
  @JsonKey(name: '_valueBase64Binary')
  PrimitiveElement? get valueBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// [valueBoolean] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueBoolean')
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [_valueBoolean] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueCanonical] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueCanonical')
  FhirCanonical? get valueCanonical => throw _privateConstructorUsedError;

  /// [_valueCanonical] Extensions for valueCanonical
  @JsonKey(name: '_valueCanonical')
  PrimitiveElement? get valueCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [valueCode] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueCode')
  FhirCode? get valueCode => throw _privateConstructorUsedError;

  /// [_valueCode] Extensions for valueCode
  @JsonKey(name: '_valueCode')
  PrimitiveElement? get valueCodeElement => throw _privateConstructorUsedError;

  /// [valueDate] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueDate')
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [_valueDate] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueDateTime] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueDateTime')
  FhirDateTime? get valueDateTime => throw _privateConstructorUsedError;

  /// [_valueDateTime] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [valueDecimal] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueDecimal')
  FhirDecimal? get valueDecimal => throw _privateConstructorUsedError;

  /// [_valueDecimal] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [valueId] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueId')
  FhirId? get valueId => throw _privateConstructorUsedError;

  /// [_valueId] Extensions for valueId
  @JsonKey(name: '_valueId')
  PrimitiveElement? get valueIdElement => throw _privateConstructorUsedError;

  /// [valueInstant] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueInstant')
  FhirInstant? get valueInstant => throw _privateConstructorUsedError;

  /// [_valueInstant] Extensions for valueInstant
  @JsonKey(name: '_valueInstant')
  PrimitiveElement? get valueInstantElement =>
      throw _privateConstructorUsedError;

  /// [valueInteger] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueInteger')
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [_valueInteger] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueMarkdown] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueMarkdown')
  FhirMarkdown? get valueMarkdown => throw _privateConstructorUsedError;

  /// [_valueMarkdown] Extensions for valueMarkdown
  @JsonKey(name: '_valueMarkdown')
  PrimitiveElement? get valueMarkdownElement =>
      throw _privateConstructorUsedError;

  /// [valueOid] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueOid')
  FhirOid? get valueOid => throw _privateConstructorUsedError;

  /// [_valueOid] Extensions for valueOid
  @JsonKey(name: '_valueOid')
  PrimitiveElement? get valueOidElement => throw _privateConstructorUsedError;

  /// [valuePositiveInt] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valuePositiveInt')
  FhirPositiveInt? get valuePositiveInt => throw _privateConstructorUsedError;

  /// [_valuePositiveInt] Extensions for valuePositiveInt
  @JsonKey(name: '_valuePositiveInt')
  PrimitiveElement? get valuePositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [valueString] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueString')
  String? get valueString => throw _privateConstructorUsedError;

  /// [_valueString] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueTime] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueTime')
  FhirTime? get valueTime => throw _privateConstructorUsedError;

  /// [_valueTime] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement => throw _privateConstructorUsedError;

  /// [valueUnsignedInt] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueUnsignedInt')
  FhirUnsignedInt? get valueUnsignedInt => throw _privateConstructorUsedError;

  /// [_valueUnsignedInt] Extensions for valueUnsignedInt
  @JsonKey(name: '_valueUnsignedInt')
  PrimitiveElement? get valueUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [valueUri] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueUri')
  FhirUri? get valueUri => throw _privateConstructorUsedError;

  /// [_valueUri] Extensions for valueUri
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement => throw _privateConstructorUsedError;

  /// [valueUrl] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueUrl')
  FhirUrl? get valueUrl => throw _privateConstructorUsedError;

  /// [_valueUrl] Extensions for valueUrl
  @JsonKey(name: '_valueUrl')
  PrimitiveElement? get valueUrlElement => throw _privateConstructorUsedError;

  /// [valueUuid] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueUuid')
  FhirUuid? get valueUuid => throw _privateConstructorUsedError;

  /// [_valueUuid] Extensions for valueUuid
  @JsonKey(name: '_valueUuid')
  PrimitiveElement? get valueUuidElement => throw _privateConstructorUsedError;

  /// [valueAddress] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueAddress')
  Address? get valueAddress => throw _privateConstructorUsedError;

  /// [valueAge] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueAge')
  Age? get valueAge => throw _privateConstructorUsedError;

  /// [valueAnnotation] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueAnnotation')
  Annotation? get valueAnnotation => throw _privateConstructorUsedError;

  /// [valueAttachment] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueAttachment')
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @JsonKey(name: 'valueCodeableConcept')
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [valueCodeableReference] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @JsonKey(name: 'valueCodeableReference')
  CodeableReference? get valueCodeableReference =>
      throw _privateConstructorUsedError;

  /// [valueCoding] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueCoding')
  Coding? get valueCoding => throw _privateConstructorUsedError;

  /// [valueContactPoint] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueContactPoint')
  ContactPoint? get valueContactPoint => throw _privateConstructorUsedError;

  /// [valueCount] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueCount')
  Count? get valueCount => throw _privateConstructorUsedError;

  /// [valueDistance] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueDistance')
  Distance? get valueDistance => throw _privateConstructorUsedError;

  /// [valueDuration] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueDuration')
  FhirDuration? get valueDuration => throw _privateConstructorUsedError;

  /// [valueHumanName] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueHumanName')
  HumanName? get valueHumanName => throw _privateConstructorUsedError;

  /// [valueIdentifier] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueIdentifier')
  Identifier? get valueIdentifier => throw _privateConstructorUsedError;

  /// [valueMoney] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueMoney')
  Money? get valueMoney => throw _privateConstructorUsedError;

  /// [valuePeriod] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valuePeriod')
  Period? get valuePeriod => throw _privateConstructorUsedError;

  /// [valueQuantity] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueQuantity')
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueRange] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueRange')
  Range? get valueRange => throw _privateConstructorUsedError;

  /// [valueRatio] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueRatio')
  Ratio? get valueRatio => throw _privateConstructorUsedError;

  /// [valueRatioRange] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueRatioRange')
  RatioRange? get valueRatioRange => throw _privateConstructorUsedError;

  /// [valueReference] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueReference')
  Reference? get valueReference => throw _privateConstructorUsedError;

  /// [valueSampledData] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueSampledData')
  SampledData? get valueSampledData => throw _privateConstructorUsedError;

  /// [valueSignature] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueSignature')
  Signature? get valueSignature => throw _privateConstructorUsedError;

  /// [valueTiming] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueTiming')
  Timing? get valueTiming => throw _privateConstructorUsedError;

  /// [valueContactDetail] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueContactDetail')
  ContactDetail? get valueContactDetail => throw _privateConstructorUsedError;

  /// [valueContributor] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueContributor')
  Contributor? get valueContributor => throw _privateConstructorUsedError;

  /// [valueDataRequirement] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @JsonKey(name: 'valueDataRequirement')
  DataRequirement? get valueDataRequirement =>
      throw _privateConstructorUsedError;

  /// [valueExpression] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueExpression')
  FhirExpression? get valueExpression => throw _privateConstructorUsedError;

  /// [valueParameterDefinition] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @JsonKey(name: 'valueParameterDefinition')
  ParameterDefinition? get valueParameterDefinition =>
      throw _privateConstructorUsedError;

  /// [valueRelatedArtifact] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @JsonKey(name: 'valueRelatedArtifact')
  RelatedArtifact? get valueRelatedArtifact =>
      throw _privateConstructorUsedError;

  /// [valueTriggerDefinition] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @JsonKey(name: 'valueTriggerDefinition')
  TriggerDefinition? get valueTriggerDefinition =>
      throw _privateConstructorUsedError;

  /// [valueUsageContext] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueUsageContext')
  UsageContext? get valueUsageContext => throw _privateConstructorUsedError;

  /// [valueDosage] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @JsonKey(name: 'valueDosage')
  Dosage? get valueDosage => throw _privateConstructorUsedError;

  /// Serializes this FhirExtension to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FhirExtensionCopyWith<FhirExtension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirExtensionCopyWith<$Res> {
  factory $FhirExtensionCopyWith(
          FhirExtension value, $Res Function(FhirExtension) then) =
      _$FhirExtensionCopyWithImpl<$Res, FhirExtension>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(name: 'url') FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      PrimitiveElement? valueBase64BinaryElement,
      @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,
      @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
      @JsonKey(name: 'valueCode') FhirCode? valueCode,
      @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
      @JsonKey(name: 'valueDate') FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      @JsonKey(name: 'valueId') FhirId? valueId,
      @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
      @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,
      @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
      @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
      @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
      @JsonKey(name: 'valueOid') FhirOid? valueOid,
      @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
      @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt')
      PrimitiveElement? valuePositiveIntElement,
      @JsonKey(name: 'valueString') String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      @JsonKey(name: 'valueTime') FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt')
      PrimitiveElement? valueUnsignedIntElement,
      @JsonKey(name: 'valueUri') FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
      @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
      @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,
      @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
      @JsonKey(name: 'valueAddress') Address? valueAddress,
      @JsonKey(name: 'valueAge') Age? valueAge,
      @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
      @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
      @JsonKey(name: 'valueCodeableConcept')
      CodeableConcept? valueCodeableConcept,
      @JsonKey(name: 'valueCodeableReference')
      CodeableReference? valueCodeableReference,
      @JsonKey(name: 'valueCoding') Coding? valueCoding,
      @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,
      @JsonKey(name: 'valueCount') Count? valueCount,
      @JsonKey(name: 'valueDistance') Distance? valueDistance,
      @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
      @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,
      @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
      @JsonKey(name: 'valueMoney') Money? valueMoney,
      @JsonKey(name: 'valuePeriod') Period? valuePeriod,
      @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
      @JsonKey(name: 'valueRange') Range? valueRange,
      @JsonKey(name: 'valueRatio') Ratio? valueRatio,
      @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,
      @JsonKey(name: 'valueReference') Reference? valueReference,
      @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
      @JsonKey(name: 'valueSignature') Signature? valueSignature,
      @JsonKey(name: 'valueTiming') Timing? valueTiming,
      @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,
      @JsonKey(name: 'valueContributor') Contributor? valueContributor,
      @JsonKey(name: 'valueDataRequirement')
      DataRequirement? valueDataRequirement,
      @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
      @JsonKey(name: 'valueParameterDefinition')
      ParameterDefinition? valueParameterDefinition,
      @JsonKey(name: 'valueRelatedArtifact')
      RelatedArtifact? valueRelatedArtifact,
      @JsonKey(name: 'valueTriggerDefinition')
      TriggerDefinition? valueTriggerDefinition,
      @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,
      @JsonKey(name: 'valueDosage') Dosage? valueDosage});

  $AddressCopyWith<$Res>? get valueAddress;
  $AgeCopyWith<$Res>? get valueAge;
  $AnnotationCopyWith<$Res>? get valueAnnotation;
  $AttachmentCopyWith<$Res>? get valueAttachment;
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  $CodeableReferenceCopyWith<$Res>? get valueCodeableReference;
  $CodingCopyWith<$Res>? get valueCoding;
  $ContactPointCopyWith<$Res>? get valueContactPoint;
  $CountCopyWith<$Res>? get valueCount;
  $DistanceCopyWith<$Res>? get valueDistance;
  $FhirDurationCopyWith<$Res>? get valueDuration;
  $HumanNameCopyWith<$Res>? get valueHumanName;
  $IdentifierCopyWith<$Res>? get valueIdentifier;
  $MoneyCopyWith<$Res>? get valueMoney;
  $PeriodCopyWith<$Res>? get valuePeriod;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $RangeCopyWith<$Res>? get valueRange;
  $RatioCopyWith<$Res>? get valueRatio;
  $RatioRangeCopyWith<$Res>? get valueRatioRange;
  $ReferenceCopyWith<$Res>? get valueReference;
  $SampledDataCopyWith<$Res>? get valueSampledData;
  $SignatureCopyWith<$Res>? get valueSignature;
  $TimingCopyWith<$Res>? get valueTiming;
  $ContactDetailCopyWith<$Res>? get valueContactDetail;
  $ContributorCopyWith<$Res>? get valueContributor;
  $DataRequirementCopyWith<$Res>? get valueDataRequirement;
  $FhirExpressionCopyWith<$Res>? get valueExpression;
  $ParameterDefinitionCopyWith<$Res>? get valueParameterDefinition;
  $RelatedArtifactCopyWith<$Res>? get valueRelatedArtifact;
  $TriggerDefinitionCopyWith<$Res>? get valueTriggerDefinition;
  $UsageContextCopyWith<$Res>? get valueUsageContext;
  $DosageCopyWith<$Res>? get valueDosage;
}

/// @nodoc
class _$FhirExtensionCopyWithImpl<$Res, $Val extends FhirExtension>
    implements $FhirExtensionCopyWith<$Res> {
  _$FhirExtensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? valueBase64Binary = freezed,
    Object? valueBase64BinaryElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueCanonical = freezed,
    Object? valueCanonicalElement = freezed,
    Object? valueCode = freezed,
    Object? valueCodeElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueId = freezed,
    Object? valueIdElement = freezed,
    Object? valueInstant = freezed,
    Object? valueInstantElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueMarkdown = freezed,
    Object? valueMarkdownElement = freezed,
    Object? valueOid = freezed,
    Object? valueOidElement = freezed,
    Object? valuePositiveInt = freezed,
    Object? valuePositiveIntElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueUnsignedInt = freezed,
    Object? valueUnsignedIntElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueUrl = freezed,
    Object? valueUrlElement = freezed,
    Object? valueUuid = freezed,
    Object? valueUuidElement = freezed,
    Object? valueAddress = freezed,
    Object? valueAge = freezed,
    Object? valueAnnotation = freezed,
    Object? valueAttachment = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueCodeableReference = freezed,
    Object? valueCoding = freezed,
    Object? valueContactPoint = freezed,
    Object? valueCount = freezed,
    Object? valueDistance = freezed,
    Object? valueDuration = freezed,
    Object? valueHumanName = freezed,
    Object? valueIdentifier = freezed,
    Object? valueMoney = freezed,
    Object? valuePeriod = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
    Object? valueRatio = freezed,
    Object? valueRatioRange = freezed,
    Object? valueReference = freezed,
    Object? valueSampledData = freezed,
    Object? valueSignature = freezed,
    Object? valueTiming = freezed,
    Object? valueContactDetail = freezed,
    Object? valueContributor = freezed,
    Object? valueDataRequirement = freezed,
    Object? valueExpression = freezed,
    Object? valueParameterDefinition = freezed,
    Object? valueRelatedArtifact = freezed,
    Object? valueTriggerDefinition = freezed,
    Object? valueUsageContext = freezed,
    Object? valueDosage = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBase64Binary: freezed == valueBase64Binary
          ? _value.valueBase64Binary
          : valueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      valueBase64BinaryElement: freezed == valueBase64BinaryElement
          ? _value.valueBase64BinaryElement
          : valueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCanonical: freezed == valueCanonical
          ? _value.valueCanonical
          : valueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      valueCanonicalElement: freezed == valueCanonicalElement
          ? _value.valueCanonicalElement
          : valueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      valueCodeElement: freezed == valueCodeElement
          ? _value.valueCodeElement
          : valueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      valueIdElement: freezed == valueIdElement
          ? _value.valueIdElement
          : valueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInstant: freezed == valueInstant
          ? _value.valueInstant
          : valueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      valueInstantElement: freezed == valueInstantElement
          ? _value.valueInstantElement
          : valueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueMarkdown: freezed == valueMarkdown
          ? _value.valueMarkdown
          : valueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      valueMarkdownElement: freezed == valueMarkdownElement
          ? _value.valueMarkdownElement
          : valueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueOid: freezed == valueOid
          ? _value.valueOid
          : valueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      valueOidElement: freezed == valueOidElement
          ? _value.valueOidElement
          : valueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valuePositiveInt: freezed == valuePositiveInt
          ? _value.valuePositiveInt
          : valuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      valuePositiveIntElement: freezed == valuePositiveIntElement
          ? _value.valuePositiveIntElement
          : valuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUnsignedInt: freezed == valueUnsignedInt
          ? _value.valueUnsignedInt
          : valueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      valueUnsignedIntElement: freezed == valueUnsignedIntElement
          ? _value.valueUnsignedIntElement
          : valueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUrl: freezed == valueUrl
          ? _value.valueUrl
          : valueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      valueUrlElement: freezed == valueUrlElement
          ? _value.valueUrlElement
          : valueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUuid: freezed == valueUuid
          ? _value.valueUuid
          : valueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      valueUuidElement: freezed == valueUuidElement
          ? _value.valueUuidElement
          : valueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAddress: freezed == valueAddress
          ? _value.valueAddress
          : valueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      valueAge: freezed == valueAge
          ? _value.valueAge
          : valueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      valueAnnotation: freezed == valueAnnotation
          ? _value.valueAnnotation
          : valueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueCodeableReference: freezed == valueCodeableReference
          ? _value.valueCodeableReference
          : valueCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueContactPoint: freezed == valueContactPoint
          ? _value.valueContactPoint
          : valueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      valueCount: freezed == valueCount
          ? _value.valueCount
          : valueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      valueDistance: freezed == valueDistance
          ? _value.valueDistance
          : valueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      valueDuration: freezed == valueDuration
          ? _value.valueDuration
          : valueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      valueHumanName: freezed == valueHumanName
          ? _value.valueHumanName
          : valueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      valueIdentifier: freezed == valueIdentifier
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      valueMoney: freezed == valueMoney
          ? _value.valueMoney
          : valueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      valuePeriod: freezed == valuePeriod
          ? _value.valuePeriod
          : valuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      valueRatio: freezed == valueRatio
          ? _value.valueRatio
          : valueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      valueRatioRange: freezed == valueRatioRange
          ? _value.valueRatioRange
          : valueRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      valueSampledData: freezed == valueSampledData
          ? _value.valueSampledData
          : valueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      valueSignature: freezed == valueSignature
          ? _value.valueSignature
          : valueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      valueTiming: freezed == valueTiming
          ? _value.valueTiming
          : valueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      valueContactDetail: freezed == valueContactDetail
          ? _value.valueContactDetail
          : valueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      valueContributor: freezed == valueContributor
          ? _value.valueContributor
          : valueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      valueDataRequirement: freezed == valueDataRequirement
          ? _value.valueDataRequirement
          : valueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      valueExpression: freezed == valueExpression
          ? _value.valueExpression
          : valueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      valueParameterDefinition: freezed == valueParameterDefinition
          ? _value.valueParameterDefinition
          : valueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      valueRelatedArtifact: freezed == valueRelatedArtifact
          ? _value.valueRelatedArtifact
          : valueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      valueTriggerDefinition: freezed == valueTriggerDefinition
          ? _value.valueTriggerDefinition
          : valueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      valueUsageContext: freezed == valueUsageContext
          ? _value.valueUsageContext
          : valueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      valueDosage: freezed == valueDosage
          ? _value.valueDosage
          : valueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
    ) as $Val);
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get valueAddress {
    if (_value.valueAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.valueAddress!, (value) {
      return _then(_value.copyWith(valueAddress: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get valueAge {
    if (_value.valueAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.valueAge!, (value) {
      return _then(_value.copyWith(valueAge: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationCopyWith<$Res>? get valueAnnotation {
    if (_value.valueAnnotation == null) {
      return null;
    }

    return $AnnotationCopyWith<$Res>(_value.valueAnnotation!, (value) {
      return _then(_value.copyWith(valueAnnotation: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get valueAttachment {
    if (_value.valueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.valueAttachment!, (value) {
      return _then(_value.copyWith(valueAttachment: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_value.valueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.valueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(valueCodeableConcept: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get valueCodeableReference {
    if (_value.valueCodeableReference == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.valueCodeableReference!,
        (value) {
      return _then(_value.copyWith(valueCodeableReference: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get valueCoding {
    if (_value.valueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.valueCoding!, (value) {
      return _then(_value.copyWith(valueCoding: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactPointCopyWith<$Res>? get valueContactPoint {
    if (_value.valueContactPoint == null) {
      return null;
    }

    return $ContactPointCopyWith<$Res>(_value.valueContactPoint!, (value) {
      return _then(_value.copyWith(valueContactPoint: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get valueCount {
    if (_value.valueCount == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.valueCount!, (value) {
      return _then(_value.copyWith(valueCount: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get valueDistance {
    if (_value.valueDistance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.valueDistance!, (value) {
      return _then(_value.copyWith(valueDistance: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get valueDuration {
    if (_value.valueDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.valueDuration!, (value) {
      return _then(_value.copyWith(valueDuration: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get valueHumanName {
    if (_value.valueHumanName == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.valueHumanName!, (value) {
      return _then(_value.copyWith(valueHumanName: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get valueIdentifier {
    if (_value.valueIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.valueIdentifier!, (value) {
      return _then(_value.copyWith(valueIdentifier: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get valueMoney {
    if (_value.valueMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.valueMoney!, (value) {
      return _then(_value.copyWith(valueMoney: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get valuePeriod {
    if (_value.valuePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.valuePeriod!, (value) {
      return _then(_value.copyWith(valuePeriod: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get valueRange {
    if (_value.valueRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.valueRange!, (value) {
      return _then(_value.copyWith(valueRange: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get valueRatio {
    if (_value.valueRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.valueRatio!, (value) {
      return _then(_value.copyWith(valueRatio: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get valueRatioRange {
    if (_value.valueRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.valueRatioRange!, (value) {
      return _then(_value.copyWith(valueRatioRange: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get valueReference {
    if (_value.valueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.valueReference!, (value) {
      return _then(_value.copyWith(valueReference: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampledDataCopyWith<$Res>? get valueSampledData {
    if (_value.valueSampledData == null) {
      return null;
    }

    return $SampledDataCopyWith<$Res>(_value.valueSampledData!, (value) {
      return _then(_value.copyWith(valueSampledData: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get valueSignature {
    if (_value.valueSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.valueSignature!, (value) {
      return _then(_value.copyWith(valueSignature: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get valueTiming {
    if (_value.valueTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.valueTiming!, (value) {
      return _then(_value.copyWith(valueTiming: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailCopyWith<$Res>? get valueContactDetail {
    if (_value.valueContactDetail == null) {
      return null;
    }

    return $ContactDetailCopyWith<$Res>(_value.valueContactDetail!, (value) {
      return _then(_value.copyWith(valueContactDetail: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContributorCopyWith<$Res>? get valueContributor {
    if (_value.valueContributor == null) {
      return null;
    }

    return $ContributorCopyWith<$Res>(_value.valueContributor!, (value) {
      return _then(_value.copyWith(valueContributor: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get valueDataRequirement {
    if (_value.valueDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.valueDataRequirement!,
        (value) {
      return _then(_value.copyWith(valueDataRequirement: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get valueExpression {
    if (_value.valueExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.valueExpression!, (value) {
      return _then(_value.copyWith(valueExpression: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParameterDefinitionCopyWith<$Res>? get valueParameterDefinition {
    if (_value.valueParameterDefinition == null) {
      return null;
    }

    return $ParameterDefinitionCopyWith<$Res>(_value.valueParameterDefinition!,
        (value) {
      return _then(_value.copyWith(valueParameterDefinition: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelatedArtifactCopyWith<$Res>? get valueRelatedArtifact {
    if (_value.valueRelatedArtifact == null) {
      return null;
    }

    return $RelatedArtifactCopyWith<$Res>(_value.valueRelatedArtifact!,
        (value) {
      return _then(_value.copyWith(valueRelatedArtifact: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TriggerDefinitionCopyWith<$Res>? get valueTriggerDefinition {
    if (_value.valueTriggerDefinition == null) {
      return null;
    }

    return $TriggerDefinitionCopyWith<$Res>(_value.valueTriggerDefinition!,
        (value) {
      return _then(_value.copyWith(valueTriggerDefinition: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageContextCopyWith<$Res>? get valueUsageContext {
    if (_value.valueUsageContext == null) {
      return null;
    }

    return $UsageContextCopyWith<$Res>(_value.valueUsageContext!, (value) {
      return _then(_value.copyWith(valueUsageContext: value) as $Val);
    });
  }

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DosageCopyWith<$Res>? get valueDosage {
    if (_value.valueDosage == null) {
      return null;
    }

    return $DosageCopyWith<$Res>(_value.valueDosage!, (value) {
      return _then(_value.copyWith(valueDosage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FhirExtensionImplCopyWith<$Res>
    implements $FhirExtensionCopyWith<$Res> {
  factory _$$FhirExtensionImplCopyWith(
          _$FhirExtensionImpl value, $Res Function(_$FhirExtensionImpl) then) =
      __$$FhirExtensionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(name: 'url') FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      PrimitiveElement? valueBase64BinaryElement,
      @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,
      @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
      @JsonKey(name: 'valueCode') FhirCode? valueCode,
      @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
      @JsonKey(name: 'valueDate') FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      @JsonKey(name: 'valueId') FhirId? valueId,
      @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
      @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,
      @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
      @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
      @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
      @JsonKey(name: 'valueOid') FhirOid? valueOid,
      @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
      @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt')
      PrimitiveElement? valuePositiveIntElement,
      @JsonKey(name: 'valueString') String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      @JsonKey(name: 'valueTime') FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt')
      PrimitiveElement? valueUnsignedIntElement,
      @JsonKey(name: 'valueUri') FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
      @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
      @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,
      @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
      @JsonKey(name: 'valueAddress') Address? valueAddress,
      @JsonKey(name: 'valueAge') Age? valueAge,
      @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
      @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
      @JsonKey(name: 'valueCodeableConcept')
      CodeableConcept? valueCodeableConcept,
      @JsonKey(name: 'valueCodeableReference')
      CodeableReference? valueCodeableReference,
      @JsonKey(name: 'valueCoding') Coding? valueCoding,
      @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,
      @JsonKey(name: 'valueCount') Count? valueCount,
      @JsonKey(name: 'valueDistance') Distance? valueDistance,
      @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
      @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,
      @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
      @JsonKey(name: 'valueMoney') Money? valueMoney,
      @JsonKey(name: 'valuePeriod') Period? valuePeriod,
      @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
      @JsonKey(name: 'valueRange') Range? valueRange,
      @JsonKey(name: 'valueRatio') Ratio? valueRatio,
      @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,
      @JsonKey(name: 'valueReference') Reference? valueReference,
      @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
      @JsonKey(name: 'valueSignature') Signature? valueSignature,
      @JsonKey(name: 'valueTiming') Timing? valueTiming,
      @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,
      @JsonKey(name: 'valueContributor') Contributor? valueContributor,
      @JsonKey(name: 'valueDataRequirement')
      DataRequirement? valueDataRequirement,
      @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
      @JsonKey(name: 'valueParameterDefinition')
      ParameterDefinition? valueParameterDefinition,
      @JsonKey(name: 'valueRelatedArtifact')
      RelatedArtifact? valueRelatedArtifact,
      @JsonKey(name: 'valueTriggerDefinition')
      TriggerDefinition? valueTriggerDefinition,
      @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,
      @JsonKey(name: 'valueDosage') Dosage? valueDosage});

  @override
  $AddressCopyWith<$Res>? get valueAddress;
  @override
  $AgeCopyWith<$Res>? get valueAge;
  @override
  $AnnotationCopyWith<$Res>? get valueAnnotation;
  @override
  $AttachmentCopyWith<$Res>? get valueAttachment;
  @override
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  @override
  $CodeableReferenceCopyWith<$Res>? get valueCodeableReference;
  @override
  $CodingCopyWith<$Res>? get valueCoding;
  @override
  $ContactPointCopyWith<$Res>? get valueContactPoint;
  @override
  $CountCopyWith<$Res>? get valueCount;
  @override
  $DistanceCopyWith<$Res>? get valueDistance;
  @override
  $FhirDurationCopyWith<$Res>? get valueDuration;
  @override
  $HumanNameCopyWith<$Res>? get valueHumanName;
  @override
  $IdentifierCopyWith<$Res>? get valueIdentifier;
  @override
  $MoneyCopyWith<$Res>? get valueMoney;
  @override
  $PeriodCopyWith<$Res>? get valuePeriod;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $RangeCopyWith<$Res>? get valueRange;
  @override
  $RatioCopyWith<$Res>? get valueRatio;
  @override
  $RatioRangeCopyWith<$Res>? get valueRatioRange;
  @override
  $ReferenceCopyWith<$Res>? get valueReference;
  @override
  $SampledDataCopyWith<$Res>? get valueSampledData;
  @override
  $SignatureCopyWith<$Res>? get valueSignature;
  @override
  $TimingCopyWith<$Res>? get valueTiming;
  @override
  $ContactDetailCopyWith<$Res>? get valueContactDetail;
  @override
  $ContributorCopyWith<$Res>? get valueContributor;
  @override
  $DataRequirementCopyWith<$Res>? get valueDataRequirement;
  @override
  $FhirExpressionCopyWith<$Res>? get valueExpression;
  @override
  $ParameterDefinitionCopyWith<$Res>? get valueParameterDefinition;
  @override
  $RelatedArtifactCopyWith<$Res>? get valueRelatedArtifact;
  @override
  $TriggerDefinitionCopyWith<$Res>? get valueTriggerDefinition;
  @override
  $UsageContextCopyWith<$Res>? get valueUsageContext;
  @override
  $DosageCopyWith<$Res>? get valueDosage;
}

/// @nodoc
class __$$FhirExtensionImplCopyWithImpl<$Res>
    extends _$FhirExtensionCopyWithImpl<$Res, _$FhirExtensionImpl>
    implements _$$FhirExtensionImplCopyWith<$Res> {
  __$$FhirExtensionImplCopyWithImpl(
      _$FhirExtensionImpl _value, $Res Function(_$FhirExtensionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? valueBase64Binary = freezed,
    Object? valueBase64BinaryElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueCanonical = freezed,
    Object? valueCanonicalElement = freezed,
    Object? valueCode = freezed,
    Object? valueCodeElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueId = freezed,
    Object? valueIdElement = freezed,
    Object? valueInstant = freezed,
    Object? valueInstantElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueMarkdown = freezed,
    Object? valueMarkdownElement = freezed,
    Object? valueOid = freezed,
    Object? valueOidElement = freezed,
    Object? valuePositiveInt = freezed,
    Object? valuePositiveIntElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueUnsignedInt = freezed,
    Object? valueUnsignedIntElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueUrl = freezed,
    Object? valueUrlElement = freezed,
    Object? valueUuid = freezed,
    Object? valueUuidElement = freezed,
    Object? valueAddress = freezed,
    Object? valueAge = freezed,
    Object? valueAnnotation = freezed,
    Object? valueAttachment = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueCodeableReference = freezed,
    Object? valueCoding = freezed,
    Object? valueContactPoint = freezed,
    Object? valueCount = freezed,
    Object? valueDistance = freezed,
    Object? valueDuration = freezed,
    Object? valueHumanName = freezed,
    Object? valueIdentifier = freezed,
    Object? valueMoney = freezed,
    Object? valuePeriod = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
    Object? valueRatio = freezed,
    Object? valueRatioRange = freezed,
    Object? valueReference = freezed,
    Object? valueSampledData = freezed,
    Object? valueSignature = freezed,
    Object? valueTiming = freezed,
    Object? valueContactDetail = freezed,
    Object? valueContributor = freezed,
    Object? valueDataRequirement = freezed,
    Object? valueExpression = freezed,
    Object? valueParameterDefinition = freezed,
    Object? valueRelatedArtifact = freezed,
    Object? valueTriggerDefinition = freezed,
    Object? valueUsageContext = freezed,
    Object? valueDosage = freezed,
  }) {
    return _then(_$FhirExtensionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBase64Binary: freezed == valueBase64Binary
          ? _value.valueBase64Binary
          : valueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      valueBase64BinaryElement: freezed == valueBase64BinaryElement
          ? _value.valueBase64BinaryElement
          : valueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCanonical: freezed == valueCanonical
          ? _value.valueCanonical
          : valueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      valueCanonicalElement: freezed == valueCanonicalElement
          ? _value.valueCanonicalElement
          : valueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      valueCodeElement: freezed == valueCodeElement
          ? _value.valueCodeElement
          : valueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      valueIdElement: freezed == valueIdElement
          ? _value.valueIdElement
          : valueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInstant: freezed == valueInstant
          ? _value.valueInstant
          : valueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      valueInstantElement: freezed == valueInstantElement
          ? _value.valueInstantElement
          : valueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueMarkdown: freezed == valueMarkdown
          ? _value.valueMarkdown
          : valueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      valueMarkdownElement: freezed == valueMarkdownElement
          ? _value.valueMarkdownElement
          : valueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueOid: freezed == valueOid
          ? _value.valueOid
          : valueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      valueOidElement: freezed == valueOidElement
          ? _value.valueOidElement
          : valueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valuePositiveInt: freezed == valuePositiveInt
          ? _value.valuePositiveInt
          : valuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      valuePositiveIntElement: freezed == valuePositiveIntElement
          ? _value.valuePositiveIntElement
          : valuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUnsignedInt: freezed == valueUnsignedInt
          ? _value.valueUnsignedInt
          : valueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      valueUnsignedIntElement: freezed == valueUnsignedIntElement
          ? _value.valueUnsignedIntElement
          : valueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUrl: freezed == valueUrl
          ? _value.valueUrl
          : valueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      valueUrlElement: freezed == valueUrlElement
          ? _value.valueUrlElement
          : valueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUuid: freezed == valueUuid
          ? _value.valueUuid
          : valueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      valueUuidElement: freezed == valueUuidElement
          ? _value.valueUuidElement
          : valueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAddress: freezed == valueAddress
          ? _value.valueAddress
          : valueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      valueAge: freezed == valueAge
          ? _value.valueAge
          : valueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      valueAnnotation: freezed == valueAnnotation
          ? _value.valueAnnotation
          : valueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueCodeableReference: freezed == valueCodeableReference
          ? _value.valueCodeableReference
          : valueCodeableReference // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueContactPoint: freezed == valueContactPoint
          ? _value.valueContactPoint
          : valueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      valueCount: freezed == valueCount
          ? _value.valueCount
          : valueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      valueDistance: freezed == valueDistance
          ? _value.valueDistance
          : valueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      valueDuration: freezed == valueDuration
          ? _value.valueDuration
          : valueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      valueHumanName: freezed == valueHumanName
          ? _value.valueHumanName
          : valueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      valueIdentifier: freezed == valueIdentifier
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      valueMoney: freezed == valueMoney
          ? _value.valueMoney
          : valueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      valuePeriod: freezed == valuePeriod
          ? _value.valuePeriod
          : valuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      valueRatio: freezed == valueRatio
          ? _value.valueRatio
          : valueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      valueRatioRange: freezed == valueRatioRange
          ? _value.valueRatioRange
          : valueRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      valueSampledData: freezed == valueSampledData
          ? _value.valueSampledData
          : valueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      valueSignature: freezed == valueSignature
          ? _value.valueSignature
          : valueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      valueTiming: freezed == valueTiming
          ? _value.valueTiming
          : valueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      valueContactDetail: freezed == valueContactDetail
          ? _value.valueContactDetail
          : valueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      valueContributor: freezed == valueContributor
          ? _value.valueContributor
          : valueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      valueDataRequirement: freezed == valueDataRequirement
          ? _value.valueDataRequirement
          : valueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      valueExpression: freezed == valueExpression
          ? _value.valueExpression
          : valueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      valueParameterDefinition: freezed == valueParameterDefinition
          ? _value.valueParameterDefinition
          : valueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      valueRelatedArtifact: freezed == valueRelatedArtifact
          ? _value.valueRelatedArtifact
          : valueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      valueTriggerDefinition: freezed == valueTriggerDefinition
          ? _value.valueTriggerDefinition
          : valueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      valueUsageContext: freezed == valueUsageContext
          ? _value.valueUsageContext
          : valueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      valueDosage: freezed == valueDosage
          ? _value.valueDosage
          : valueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirExtensionImpl extends _FhirExtension {
  const _$FhirExtensionImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: '_url') this.urlElement,
      @JsonKey(name: 'valueBase64Binary') this.valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary') this.valueBase64BinaryElement,
      @JsonKey(name: 'valueBoolean') this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      @JsonKey(name: 'valueCanonical') this.valueCanonical,
      @JsonKey(name: '_valueCanonical') this.valueCanonicalElement,
      @JsonKey(name: 'valueCode') this.valueCode,
      @JsonKey(name: '_valueCode') this.valueCodeElement,
      @JsonKey(name: 'valueDate') this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      @JsonKey(name: 'valueDateTime') this.valueDateTime,
      @JsonKey(name: '_valueDateTime') this.valueDateTimeElement,
      @JsonKey(name: 'valueDecimal') this.valueDecimal,
      @JsonKey(name: '_valueDecimal') this.valueDecimalElement,
      @JsonKey(name: 'valueId') this.valueId,
      @JsonKey(name: '_valueId') this.valueIdElement,
      @JsonKey(name: 'valueInstant') this.valueInstant,
      @JsonKey(name: '_valueInstant') this.valueInstantElement,
      @JsonKey(name: 'valueInteger') this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      @JsonKey(name: 'valueMarkdown') this.valueMarkdown,
      @JsonKey(name: '_valueMarkdown') this.valueMarkdownElement,
      @JsonKey(name: 'valueOid') this.valueOid,
      @JsonKey(name: '_valueOid') this.valueOidElement,
      @JsonKey(name: 'valuePositiveInt') this.valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt') this.valuePositiveIntElement,
      @JsonKey(name: 'valueString') this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      @JsonKey(name: 'valueTime') this.valueTime,
      @JsonKey(name: '_valueTime') this.valueTimeElement,
      @JsonKey(name: 'valueUnsignedInt') this.valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt') this.valueUnsignedIntElement,
      @JsonKey(name: 'valueUri') this.valueUri,
      @JsonKey(name: '_valueUri') this.valueUriElement,
      @JsonKey(name: 'valueUrl') this.valueUrl,
      @JsonKey(name: '_valueUrl') this.valueUrlElement,
      @JsonKey(name: 'valueUuid') this.valueUuid,
      @JsonKey(name: '_valueUuid') this.valueUuidElement,
      @JsonKey(name: 'valueAddress') this.valueAddress,
      @JsonKey(name: 'valueAge') this.valueAge,
      @JsonKey(name: 'valueAnnotation') this.valueAnnotation,
      @JsonKey(name: 'valueAttachment') this.valueAttachment,
      @JsonKey(name: 'valueCodeableConcept') this.valueCodeableConcept,
      @JsonKey(name: 'valueCodeableReference') this.valueCodeableReference,
      @JsonKey(name: 'valueCoding') this.valueCoding,
      @JsonKey(name: 'valueContactPoint') this.valueContactPoint,
      @JsonKey(name: 'valueCount') this.valueCount,
      @JsonKey(name: 'valueDistance') this.valueDistance,
      @JsonKey(name: 'valueDuration') this.valueDuration,
      @JsonKey(name: 'valueHumanName') this.valueHumanName,
      @JsonKey(name: 'valueIdentifier') this.valueIdentifier,
      @JsonKey(name: 'valueMoney') this.valueMoney,
      @JsonKey(name: 'valuePeriod') this.valuePeriod,
      @JsonKey(name: 'valueQuantity') this.valueQuantity,
      @JsonKey(name: 'valueRange') this.valueRange,
      @JsonKey(name: 'valueRatio') this.valueRatio,
      @JsonKey(name: 'valueRatioRange') this.valueRatioRange,
      @JsonKey(name: 'valueReference') this.valueReference,
      @JsonKey(name: 'valueSampledData') this.valueSampledData,
      @JsonKey(name: 'valueSignature') this.valueSignature,
      @JsonKey(name: 'valueTiming') this.valueTiming,
      @JsonKey(name: 'valueContactDetail') this.valueContactDetail,
      @JsonKey(name: 'valueContributor') this.valueContributor,
      @JsonKey(name: 'valueDataRequirement') this.valueDataRequirement,
      @JsonKey(name: 'valueExpression') this.valueExpression,
      @JsonKey(name: 'valueParameterDefinition') this.valueParameterDefinition,
      @JsonKey(name: 'valueRelatedArtifact') this.valueRelatedArtifact,
      @JsonKey(name: 'valueTriggerDefinition') this.valueTriggerDefinition,
      @JsonKey(name: 'valueUsageContext') this.valueUsageContext,
      @JsonKey(name: 'valueDosage') this.valueDosage})
      : _extension_ = extension_,
        super._();

  factory _$FhirExtensionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirExtensionImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  /// references). This may be any string value that does not contain spaces.
  @override
  @JsonKey(name: 'id')
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of fhirExtensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of fhirExtensions. Though any implementer can define an
  /// fhirExtension, there is a set of requirements that SHALL be met as part of the
  /// definition of the fhirExtension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of fhirExtensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of fhirExtensions. Though any implementer can define an
  /// fhirExtension, there is a set of requirements that SHALL be met as part of the
  /// definition of the fhirExtension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [url] Source of the definition for the fhirExtension code - a logical name
  /// or a URL.
  @override
  @JsonKey(name: 'url')
  final FhirUri? url;

  /// [_url] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [valueBase64Binary] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary? valueBase64Binary;

  /// [_valueBase64Binary] Extensions for valueBase64Binary
  @override
  @JsonKey(name: '_valueBase64Binary')
  final PrimitiveElement? valueBase64BinaryElement;

  /// [valueBoolean] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;

  /// [_valueBoolean] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueCanonical] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCanonical')
  final FhirCanonical? valueCanonical;

  /// [_valueCanonical] Extensions for valueCanonical
  @override
  @JsonKey(name: '_valueCanonical')
  final PrimitiveElement? valueCanonicalElement;

  /// [valueCode] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCode')
  final FhirCode? valueCode;

  /// [_valueCode] Extensions for valueCode
  @override
  @JsonKey(name: '_valueCode')
  final PrimitiveElement? valueCodeElement;

  /// [valueDate] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;

  /// [_valueDate] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueDateTime] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime? valueDateTime;

  /// [_valueDateTime] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  final PrimitiveElement? valueDateTimeElement;

  /// [valueDecimal] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal? valueDecimal;

  /// [_valueDecimal] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  final PrimitiveElement? valueDecimalElement;

  /// [valueId] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueId')
  final FhirId? valueId;

  /// [_valueId] Extensions for valueId
  @override
  @JsonKey(name: '_valueId')
  final PrimitiveElement? valueIdElement;

  /// [valueInstant] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueInstant')
  final FhirInstant? valueInstant;

  /// [_valueInstant] Extensions for valueInstant
  @override
  @JsonKey(name: '_valueInstant')
  final PrimitiveElement? valueInstantElement;

  /// [valueInteger] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueInteger')
  final FhirInteger? valueInteger;

  /// [_valueInteger] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueMarkdown] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueMarkdown')
  final FhirMarkdown? valueMarkdown;

  /// [_valueMarkdown] Extensions for valueMarkdown
  @override
  @JsonKey(name: '_valueMarkdown')
  final PrimitiveElement? valueMarkdownElement;

  /// [valueOid] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueOid')
  final FhirOid? valueOid;

  /// [_valueOid] Extensions for valueOid
  @override
  @JsonKey(name: '_valueOid')
  final PrimitiveElement? valueOidElement;

  /// [valuePositiveInt] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valuePositiveInt')
  final FhirPositiveInt? valuePositiveInt;

  /// [_valuePositiveInt] Extensions for valuePositiveInt
  @override
  @JsonKey(name: '_valuePositiveInt')
  final PrimitiveElement? valuePositiveIntElement;

  /// [valueString] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueString')
  final String? valueString;

  /// [_valueString] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueTime] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueTime')
  final FhirTime? valueTime;

  /// [_valueTime] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  final PrimitiveElement? valueTimeElement;

  /// [valueUnsignedInt] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUnsignedInt')
  final FhirUnsignedInt? valueUnsignedInt;

  /// [_valueUnsignedInt] Extensions for valueUnsignedInt
  @override
  @JsonKey(name: '_valueUnsignedInt')
  final PrimitiveElement? valueUnsignedIntElement;

  /// [valueUri] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUri')
  final FhirUri? valueUri;

  /// [_valueUri] Extensions for valueUri
  @override
  @JsonKey(name: '_valueUri')
  final PrimitiveElement? valueUriElement;

  /// [valueUrl] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUrl')
  final FhirUrl? valueUrl;

  /// [_valueUrl] Extensions for valueUrl
  @override
  @JsonKey(name: '_valueUrl')
  final PrimitiveElement? valueUrlElement;

  /// [valueUuid] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUuid')
  final FhirUuid? valueUuid;

  /// [_valueUuid] Extensions for valueUuid
  @override
  @JsonKey(name: '_valueUuid')
  final PrimitiveElement? valueUuidElement;

  /// [valueAddress] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAddress')
  final Address? valueAddress;

  /// [valueAge] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAge')
  final Age? valueAge;

  /// [valueAnnotation] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAnnotation')
  final Annotation? valueAnnotation;

  /// [valueAttachment] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [valueCodeableConcept] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueCodeableReference] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueCodeableReference')
  final CodeableReference? valueCodeableReference;

  /// [valueCoding] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCoding')
  final Coding? valueCoding;

  /// [valueContactPoint] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueContactPoint')
  final ContactPoint? valueContactPoint;

  /// [valueCount] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCount')
  final Count? valueCount;

  /// [valueDistance] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDistance')
  final Distance? valueDistance;

  /// [valueDuration] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDuration')
  final FhirDuration? valueDuration;

  /// [valueHumanName] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueHumanName')
  final HumanName? valueHumanName;

  /// [valueIdentifier] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueIdentifier')
  final Identifier? valueIdentifier;

  /// [valueMoney] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueMoney')
  final Money? valueMoney;

  /// [valuePeriod] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valuePeriod')
  final Period? valuePeriod;

  /// [valueQuantity] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueRange] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueRange')
  final Range? valueRange;

  /// [valueRatio] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueRatio')
  final Ratio? valueRatio;

  /// [valueRatioRange] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueRatioRange')
  final RatioRange? valueRatioRange;

  /// [valueReference] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueReference')
  final Reference? valueReference;

  /// [valueSampledData] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueSampledData')
  final SampledData? valueSampledData;

  /// [valueSignature] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueSignature')
  final Signature? valueSignature;

  /// [valueTiming] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueTiming')
  final Timing? valueTiming;

  /// [valueContactDetail] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueContactDetail')
  final ContactDetail? valueContactDetail;

  /// [valueContributor] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueContributor')
  final Contributor? valueContributor;

  /// [valueDataRequirement] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueDataRequirement')
  final DataRequirement? valueDataRequirement;

  /// [valueExpression] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueExpression')
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueParameterDefinition')
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueRelatedArtifact')
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueTriggerDefinition')
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUsageContext')
  final UsageContext? valueUsageContext;

  /// [valueDosage] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDosage')
  final Dosage? valueDosage;

  @override
  String toString() {
    return 'FhirExtension(id: $id, extension_: $extension_, url: $url, urlElement: $urlElement, valueBase64Binary: $valueBase64Binary, valueBase64BinaryElement: $valueBase64BinaryElement, valueBoolean: $valueBoolean, valueBooleanElement: $valueBooleanElement, valueCanonical: $valueCanonical, valueCanonicalElement: $valueCanonicalElement, valueCode: $valueCode, valueCodeElement: $valueCodeElement, valueDate: $valueDate, valueDateElement: $valueDateElement, valueDateTime: $valueDateTime, valueDateTimeElement: $valueDateTimeElement, valueDecimal: $valueDecimal, valueDecimalElement: $valueDecimalElement, valueId: $valueId, valueIdElement: $valueIdElement, valueInstant: $valueInstant, valueInstantElement: $valueInstantElement, valueInteger: $valueInteger, valueIntegerElement: $valueIntegerElement, valueMarkdown: $valueMarkdown, valueMarkdownElement: $valueMarkdownElement, valueOid: $valueOid, valueOidElement: $valueOidElement, valuePositiveInt: $valuePositiveInt, valuePositiveIntElement: $valuePositiveIntElement, valueString: $valueString, valueStringElement: $valueStringElement, valueTime: $valueTime, valueTimeElement: $valueTimeElement, valueUnsignedInt: $valueUnsignedInt, valueUnsignedIntElement: $valueUnsignedIntElement, valueUri: $valueUri, valueUriElement: $valueUriElement, valueUrl: $valueUrl, valueUrlElement: $valueUrlElement, valueUuid: $valueUuid, valueUuidElement: $valueUuidElement, valueAddress: $valueAddress, valueAge: $valueAge, valueAnnotation: $valueAnnotation, valueAttachment: $valueAttachment, valueCodeableConcept: $valueCodeableConcept, valueCodeableReference: $valueCodeableReference, valueCoding: $valueCoding, valueContactPoint: $valueContactPoint, valueCount: $valueCount, valueDistance: $valueDistance, valueDuration: $valueDuration, valueHumanName: $valueHumanName, valueIdentifier: $valueIdentifier, valueMoney: $valueMoney, valuePeriod: $valuePeriod, valueQuantity: $valueQuantity, valueRange: $valueRange, valueRatio: $valueRatio, valueRatioRange: $valueRatioRange, valueReference: $valueReference, valueSampledData: $valueSampledData, valueSignature: $valueSignature, valueTiming: $valueTiming, valueContactDetail: $valueContactDetail, valueContributor: $valueContributor, valueDataRequirement: $valueDataRequirement, valueExpression: $valueExpression, valueParameterDefinition: $valueParameterDefinition, valueRelatedArtifact: $valueRelatedArtifact, valueTriggerDefinition: $valueTriggerDefinition, valueUsageContext: $valueUsageContext, valueDosage: $valueDosage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirExtensionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            (identical(other.valueBase64Binary, valueBase64Binary) ||
                other.valueBase64Binary == valueBase64Binary) &&
            (identical(other.valueBase64BinaryElement, valueBase64BinaryElement) ||
                other.valueBase64BinaryElement == valueBase64BinaryElement) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueCanonical, valueCanonical) ||
                other.valueCanonical == valueCanonical) &&
            (identical(other.valueCanonicalElement, valueCanonicalElement) ||
                other.valueCanonicalElement == valueCanonicalElement) &&
            (identical(other.valueCode, valueCode) ||
                other.valueCode == valueCode) &&
            (identical(other.valueCodeElement, valueCodeElement) ||
                other.valueCodeElement == valueCodeElement) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueDateTime, valueDateTime) ||
                other.valueDateTime == valueDateTime) &&
            (identical(other.valueDateTimeElement, valueDateTimeElement) ||
                other.valueDateTimeElement == valueDateTimeElement) &&
            (identical(other.valueDecimal, valueDecimal) ||
                other.valueDecimal == valueDecimal) &&
            (identical(other.valueDecimalElement, valueDecimalElement) ||
                other.valueDecimalElement == valueDecimalElement) &&
            (identical(other.valueId, valueId) || other.valueId == valueId) &&
            (identical(other.valueIdElement, valueIdElement) ||
                other.valueIdElement == valueIdElement) &&
            (identical(other.valueInstant, valueInstant) ||
                other.valueInstant == valueInstant) &&
            (identical(other.valueInstantElement, valueInstantElement) ||
                other.valueInstantElement == valueInstantElement) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
            (identical(other.valueMarkdown, valueMarkdown) ||
                other.valueMarkdown == valueMarkdown) &&
            (identical(other.valueMarkdownElement, valueMarkdownElement) ||
                other.valueMarkdownElement == valueMarkdownElement) &&
            (identical(other.valueOid, valueOid) ||
                other.valueOid == valueOid) &&
            (identical(other.valueOidElement, valueOidElement) ||
                other.valueOidElement == valueOidElement) &&
            (identical(other.valuePositiveInt, valuePositiveInt) ||
                other.valuePositiveInt == valuePositiveInt) &&
            (identical(other.valuePositiveIntElement, valuePositiveIntElement) ||
                other.valuePositiveIntElement == valuePositiveIntElement) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueTime, valueTime) ||
                other.valueTime == valueTime) &&
            (identical(other.valueTimeElement, valueTimeElement) ||
                other.valueTimeElement == valueTimeElement) &&
            (identical(other.valueUnsignedInt, valueUnsignedInt) ||
                other.valueUnsignedInt == valueUnsignedInt) &&
            (identical(other.valueUnsignedIntElement, valueUnsignedIntElement) || other.valueUnsignedIntElement == valueUnsignedIntElement) &&
            (identical(other.valueUri, valueUri) || other.valueUri == valueUri) &&
            (identical(other.valueUriElement, valueUriElement) || other.valueUriElement == valueUriElement) &&
            (identical(other.valueUrl, valueUrl) || other.valueUrl == valueUrl) &&
            (identical(other.valueUrlElement, valueUrlElement) || other.valueUrlElement == valueUrlElement) &&
            (identical(other.valueUuid, valueUuid) || other.valueUuid == valueUuid) &&
            (identical(other.valueUuidElement, valueUuidElement) || other.valueUuidElement == valueUuidElement) &&
            (identical(other.valueAddress, valueAddress) || other.valueAddress == valueAddress) &&
            (identical(other.valueAge, valueAge) || other.valueAge == valueAge) &&
            (identical(other.valueAnnotation, valueAnnotation) || other.valueAnnotation == valueAnnotation) &&
            (identical(other.valueAttachment, valueAttachment) || other.valueAttachment == valueAttachment) &&
            (identical(other.valueCodeableConcept, valueCodeableConcept) || other.valueCodeableConcept == valueCodeableConcept) &&
            (identical(other.valueCodeableReference, valueCodeableReference) || other.valueCodeableReference == valueCodeableReference) &&
            (identical(other.valueCoding, valueCoding) || other.valueCoding == valueCoding) &&
            (identical(other.valueContactPoint, valueContactPoint) || other.valueContactPoint == valueContactPoint) &&
            (identical(other.valueCount, valueCount) || other.valueCount == valueCount) &&
            (identical(other.valueDistance, valueDistance) || other.valueDistance == valueDistance) &&
            (identical(other.valueDuration, valueDuration) || other.valueDuration == valueDuration) &&
            (identical(other.valueHumanName, valueHumanName) || other.valueHumanName == valueHumanName) &&
            (identical(other.valueIdentifier, valueIdentifier) || other.valueIdentifier == valueIdentifier) &&
            (identical(other.valueMoney, valueMoney) || other.valueMoney == valueMoney) &&
            (identical(other.valuePeriod, valuePeriod) || other.valuePeriod == valuePeriod) &&
            (identical(other.valueQuantity, valueQuantity) || other.valueQuantity == valueQuantity) &&
            (identical(other.valueRange, valueRange) || other.valueRange == valueRange) &&
            (identical(other.valueRatio, valueRatio) || other.valueRatio == valueRatio) &&
            (identical(other.valueRatioRange, valueRatioRange) || other.valueRatioRange == valueRatioRange) &&
            (identical(other.valueReference, valueReference) || other.valueReference == valueReference) &&
            (identical(other.valueSampledData, valueSampledData) || other.valueSampledData == valueSampledData) &&
            (identical(other.valueSignature, valueSignature) || other.valueSignature == valueSignature) &&
            (identical(other.valueTiming, valueTiming) || other.valueTiming == valueTiming) &&
            (identical(other.valueContactDetail, valueContactDetail) || other.valueContactDetail == valueContactDetail) &&
            (identical(other.valueContributor, valueContributor) || other.valueContributor == valueContributor) &&
            (identical(other.valueDataRequirement, valueDataRequirement) || other.valueDataRequirement == valueDataRequirement) &&
            (identical(other.valueExpression, valueExpression) || other.valueExpression == valueExpression) &&
            (identical(other.valueParameterDefinition, valueParameterDefinition) || other.valueParameterDefinition == valueParameterDefinition) &&
            (identical(other.valueRelatedArtifact, valueRelatedArtifact) || other.valueRelatedArtifact == valueRelatedArtifact) &&
            (identical(other.valueTriggerDefinition, valueTriggerDefinition) || other.valueTriggerDefinition == valueTriggerDefinition) &&
            (identical(other.valueUsageContext, valueUsageContext) || other.valueUsageContext == valueUsageContext) &&
            (identical(other.valueDosage, valueDosage) || other.valueDosage == valueDosage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        url,
        urlElement,
        valueBase64Binary,
        valueBase64BinaryElement,
        valueBoolean,
        valueBooleanElement,
        valueCanonical,
        valueCanonicalElement,
        valueCode,
        valueCodeElement,
        valueDate,
        valueDateElement,
        valueDateTime,
        valueDateTimeElement,
        valueDecimal,
        valueDecimalElement,
        valueId,
        valueIdElement,
        valueInstant,
        valueInstantElement,
        valueInteger,
        valueIntegerElement,
        valueMarkdown,
        valueMarkdownElement,
        valueOid,
        valueOidElement,
        valuePositiveInt,
        valuePositiveIntElement,
        valueString,
        valueStringElement,
        valueTime,
        valueTimeElement,
        valueUnsignedInt,
        valueUnsignedIntElement,
        valueUri,
        valueUriElement,
        valueUrl,
        valueUrlElement,
        valueUuid,
        valueUuidElement,
        valueAddress,
        valueAge,
        valueAnnotation,
        valueAttachment,
        valueCodeableConcept,
        valueCodeableReference,
        valueCoding,
        valueContactPoint,
        valueCount,
        valueDistance,
        valueDuration,
        valueHumanName,
        valueIdentifier,
        valueMoney,
        valuePeriod,
        valueQuantity,
        valueRange,
        valueRatio,
        valueRatioRange,
        valueReference,
        valueSampledData,
        valueSignature,
        valueTiming,
        valueContactDetail,
        valueContributor,
        valueDataRequirement,
        valueExpression,
        valueParameterDefinition,
        valueRelatedArtifact,
        valueTriggerDefinition,
        valueUsageContext,
        valueDosage
      ]);

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirExtensionImplCopyWith<_$FhirExtensionImpl> get copyWith =>
      __$$FhirExtensionImplCopyWithImpl<_$FhirExtensionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirExtensionImplToJson(
      this,
    );
  }
}

abstract class _FhirExtension extends FhirExtension {
  const factory _FhirExtension(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(name: 'url') final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      @JsonKey(name: 'valueBase64Binary')
      final FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      final PrimitiveElement? valueBase64BinaryElement,
      @JsonKey(name: 'valueBoolean') final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      @JsonKey(name: 'valueCanonical') final FhirCanonical? valueCanonical,
      @JsonKey(name: '_valueCanonical')
      final PrimitiveElement? valueCanonicalElement,
      @JsonKey(name: 'valueCode') final FhirCode? valueCode,
      @JsonKey(name: '_valueCode') final PrimitiveElement? valueCodeElement,
      @JsonKey(name: 'valueDate') final FhirDate? valueDate,
      @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
      @JsonKey(name: 'valueDateTime') final FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime')
      final PrimitiveElement? valueDateTimeElement,
      @JsonKey(name: 'valueDecimal') final FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal')
      final PrimitiveElement? valueDecimalElement,
      @JsonKey(name: 'valueId') final FhirId? valueId,
      @JsonKey(name: '_valueId') final PrimitiveElement? valueIdElement,
      @JsonKey(name: 'valueInstant') final FhirInstant? valueInstant,
      @JsonKey(name: '_valueInstant')
      final PrimitiveElement? valueInstantElement,
      @JsonKey(name: 'valueInteger') final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      @JsonKey(name: 'valueMarkdown') final FhirMarkdown? valueMarkdown,
      @JsonKey(name: '_valueMarkdown')
      final PrimitiveElement? valueMarkdownElement,
      @JsonKey(name: 'valueOid') final FhirOid? valueOid,
      @JsonKey(name: '_valueOid') final PrimitiveElement? valueOidElement,
      @JsonKey(name: 'valuePositiveInt')
      final FhirPositiveInt? valuePositiveInt,
      @JsonKey(name: '_valuePositiveInt')
      final PrimitiveElement? valuePositiveIntElement,
      @JsonKey(name: 'valueString') final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      @JsonKey(name: 'valueTime') final FhirTime? valueTime,
      @JsonKey(name: '_valueTime') final PrimitiveElement? valueTimeElement,
      @JsonKey(name: 'valueUnsignedInt')
      final FhirUnsignedInt? valueUnsignedInt,
      @JsonKey(name: '_valueUnsignedInt')
      final PrimitiveElement? valueUnsignedIntElement,
      @JsonKey(name: 'valueUri') final FhirUri? valueUri,
      @JsonKey(name: '_valueUri') final PrimitiveElement? valueUriElement,
      @JsonKey(name: 'valueUrl') final FhirUrl? valueUrl,
      @JsonKey(name: '_valueUrl') final PrimitiveElement? valueUrlElement,
      @JsonKey(name: 'valueUuid') final FhirUuid? valueUuid,
      @JsonKey(name: '_valueUuid') final PrimitiveElement? valueUuidElement,
      @JsonKey(name: 'valueAddress') final Address? valueAddress,
      @JsonKey(name: 'valueAge') final Age? valueAge,
      @JsonKey(name: 'valueAnnotation') final Annotation? valueAnnotation,
      @JsonKey(name: 'valueAttachment') final Attachment? valueAttachment,
      @JsonKey(name: 'valueCodeableConcept')
      final CodeableConcept? valueCodeableConcept,
      @JsonKey(name: 'valueCodeableReference')
      final CodeableReference? valueCodeableReference,
      @JsonKey(name: 'valueCoding') final Coding? valueCoding,
      @JsonKey(name: 'valueContactPoint') final ContactPoint? valueContactPoint,
      @JsonKey(name: 'valueCount') final Count? valueCount,
      @JsonKey(name: 'valueDistance') final Distance? valueDistance,
      @JsonKey(name: 'valueDuration') final FhirDuration? valueDuration,
      @JsonKey(name: 'valueHumanName') final HumanName? valueHumanName,
      @JsonKey(name: 'valueIdentifier') final Identifier? valueIdentifier,
      @JsonKey(name: 'valueMoney') final Money? valueMoney,
      @JsonKey(name: 'valuePeriod') final Period? valuePeriod,
      @JsonKey(name: 'valueQuantity') final Quantity? valueQuantity,
      @JsonKey(name: 'valueRange') final Range? valueRange,
      @JsonKey(name: 'valueRatio') final Ratio? valueRatio,
      @JsonKey(name: 'valueRatioRange') final RatioRange? valueRatioRange,
      @JsonKey(name: 'valueReference') final Reference? valueReference,
      @JsonKey(name: 'valueSampledData') final SampledData? valueSampledData,
      @JsonKey(name: 'valueSignature') final Signature? valueSignature,
      @JsonKey(name: 'valueTiming') final Timing? valueTiming,
      @JsonKey(name: 'valueContactDetail')
      final ContactDetail? valueContactDetail,
      @JsonKey(name: 'valueContributor') final Contributor? valueContributor,
      @JsonKey(name: 'valueDataRequirement')
      final DataRequirement? valueDataRequirement,
      @JsonKey(name: 'valueExpression') final FhirExpression? valueExpression,
      @JsonKey(name: 'valueParameterDefinition')
      final ParameterDefinition? valueParameterDefinition,
      @JsonKey(name: 'valueRelatedArtifact')
      final RelatedArtifact? valueRelatedArtifact,
      @JsonKey(name: 'valueTriggerDefinition')
      final TriggerDefinition? valueTriggerDefinition,
      @JsonKey(name: 'valueUsageContext') final UsageContext? valueUsageContext,
      @JsonKey(name: 'valueDosage')
      final Dosage? valueDosage}) = _$FhirExtensionImpl;
  const _FhirExtension._() : super._();

  factory _FhirExtension.fromJson(Map<String, dynamic> json) =
      _$FhirExtensionImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  /// references). This may be any string value that does not contain spaces.
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of fhirExtensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of fhirExtensions. Though any implementer can define an
  /// fhirExtension, there is a set of requirements that SHALL be met as part of the
  /// definition of the fhirExtension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [url] Source of the definition for the fhirExtension code - a logical name
  /// or a URL.
  @override
  @JsonKey(name: 'url')
  FhirUri? get url;

  /// [_url] Extensions for url
  @override
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;

  /// [valueBase64Binary] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueBase64Binary')
  FhirBase64Binary? get valueBase64Binary;

  /// [_valueBase64Binary] Extensions for valueBase64Binary
  @override
  @JsonKey(name: '_valueBase64Binary')
  PrimitiveElement? get valueBase64BinaryElement;

  /// [valueBoolean] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueBoolean')
  FhirBoolean? get valueBoolean;

  /// [_valueBoolean] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;

  /// [valueCanonical] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCanonical')
  FhirCanonical? get valueCanonical;

  /// [_valueCanonical] Extensions for valueCanonical
  @override
  @JsonKey(name: '_valueCanonical')
  PrimitiveElement? get valueCanonicalElement;

  /// [valueCode] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCode')
  FhirCode? get valueCode;

  /// [_valueCode] Extensions for valueCode
  @override
  @JsonKey(name: '_valueCode')
  PrimitiveElement? get valueCodeElement;

  /// [valueDate] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDate')
  FhirDate? get valueDate;

  /// [_valueDate] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;

  /// [valueDateTime] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDateTime')
  FhirDateTime? get valueDateTime;

  /// [_valueDateTime] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement;

  /// [valueDecimal] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDecimal')
  FhirDecimal? get valueDecimal;

  /// [_valueDecimal] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement;

  /// [valueId] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueId')
  FhirId? get valueId;

  /// [_valueId] Extensions for valueId
  @override
  @JsonKey(name: '_valueId')
  PrimitiveElement? get valueIdElement;

  /// [valueInstant] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueInstant')
  FhirInstant? get valueInstant;

  /// [_valueInstant] Extensions for valueInstant
  @override
  @JsonKey(name: '_valueInstant')
  PrimitiveElement? get valueInstantElement;

  /// [valueInteger] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueInteger')
  FhirInteger? get valueInteger;

  /// [_valueInteger] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;

  /// [valueMarkdown] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueMarkdown')
  FhirMarkdown? get valueMarkdown;

  /// [_valueMarkdown] Extensions for valueMarkdown
  @override
  @JsonKey(name: '_valueMarkdown')
  PrimitiveElement? get valueMarkdownElement;

  /// [valueOid] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueOid')
  FhirOid? get valueOid;

  /// [_valueOid] Extensions for valueOid
  @override
  @JsonKey(name: '_valueOid')
  PrimitiveElement? get valueOidElement;

  /// [valuePositiveInt] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valuePositiveInt')
  FhirPositiveInt? get valuePositiveInt;

  /// [_valuePositiveInt] Extensions for valuePositiveInt
  @override
  @JsonKey(name: '_valuePositiveInt')
  PrimitiveElement? get valuePositiveIntElement;

  /// [valueString] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueString')
  String? get valueString;

  /// [_valueString] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;

  /// [valueTime] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueTime')
  FhirTime? get valueTime;

  /// [_valueTime] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement;

  /// [valueUnsignedInt] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUnsignedInt')
  FhirUnsignedInt? get valueUnsignedInt;

  /// [_valueUnsignedInt] Extensions for valueUnsignedInt
  @override
  @JsonKey(name: '_valueUnsignedInt')
  PrimitiveElement? get valueUnsignedIntElement;

  /// [valueUri] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUri')
  FhirUri? get valueUri;

  /// [_valueUri] Extensions for valueUri
  @override
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement;

  /// [valueUrl] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUrl')
  FhirUrl? get valueUrl;

  /// [_valueUrl] Extensions for valueUrl
  @override
  @JsonKey(name: '_valueUrl')
  PrimitiveElement? get valueUrlElement;

  /// [valueUuid] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUuid')
  FhirUuid? get valueUuid;

  /// [_valueUuid] Extensions for valueUuid
  @override
  @JsonKey(name: '_valueUuid')
  PrimitiveElement? get valueUuidElement;

  /// [valueAddress] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAddress')
  Address? get valueAddress;

  /// [valueAge] Value of fhirExtension - must be one of a constrained set of the
  /// data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAge')
  Age? get valueAge;

  /// [valueAnnotation] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAnnotation')
  Annotation? get valueAnnotation;

  /// [valueAttachment] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueAttachment')
  Attachment? get valueAttachment;

  /// [valueCodeableConcept] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueCodeableConcept')
  CodeableConcept? get valueCodeableConcept;

  /// [valueCodeableReference] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueCodeableReference')
  CodeableReference? get valueCodeableReference;

  /// [valueCoding] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCoding')
  Coding? get valueCoding;

  /// [valueContactPoint] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueContactPoint')
  ContactPoint? get valueContactPoint;

  /// [valueCount] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueCount')
  Count? get valueCount;

  /// [valueDistance] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDistance')
  Distance? get valueDistance;

  /// [valueDuration] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDuration')
  FhirDuration? get valueDuration;

  /// [valueHumanName] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueHumanName')
  HumanName? get valueHumanName;

  /// [valueIdentifier] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueIdentifier')
  Identifier? get valueIdentifier;

  /// [valueMoney] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueMoney')
  Money? get valueMoney;

  /// [valuePeriod] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valuePeriod')
  Period? get valuePeriod;

  /// [valueQuantity] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueQuantity')
  Quantity? get valueQuantity;

  /// [valueRange] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueRange')
  Range? get valueRange;

  /// [valueRatio] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueRatio')
  Ratio? get valueRatio;

  /// [valueRatioRange] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueRatioRange')
  RatioRange? get valueRatioRange;

  /// [valueReference] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueReference')
  Reference? get valueReference;

  /// [valueSampledData] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueSampledData')
  SampledData? get valueSampledData;

  /// [valueSignature] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueSignature')
  Signature? get valueSignature;

  /// [valueTiming] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueTiming')
  Timing? get valueTiming;

  /// [valueContactDetail] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueContactDetail')
  ContactDetail? get valueContactDetail;

  /// [valueContributor] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueContributor')
  Contributor? get valueContributor;

  /// [valueDataRequirement] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueDataRequirement')
  DataRequirement? get valueDataRequirement;

  /// [valueExpression] Value of fhirExtension - must be one of a constrained set
  /// of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueExpression')
  FhirExpression? get valueExpression;

  /// [valueParameterDefinition] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueParameterDefinition')
  ParameterDefinition? get valueParameterDefinition;

  /// [valueRelatedArtifact] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueRelatedArtifact')
  RelatedArtifact? get valueRelatedArtifact;

  /// [valueTriggerDefinition] Value of fhirExtension - must be one of a
  /// constrained set of the data types (see [Extensibility](extensibility.html)
  /// for a list).
  @override
  @JsonKey(name: 'valueTriggerDefinition')
  TriggerDefinition? get valueTriggerDefinition;

  /// [valueUsageContext] Value of fhirExtension - must be one of a constrained
  /// set of the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueUsageContext')
  UsageContext? get valueUsageContext;

  /// [valueDosage] Value of fhirExtension - must be one of a constrained set of
  /// the data types (see [Extensibility](extensibility.html) for a list).
  @override
  @JsonKey(name: 'valueDosage')
  Dosage? get valueDosage;

  /// Create a copy of FhirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FhirExtensionImplCopyWith<_$FhirExtensionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
