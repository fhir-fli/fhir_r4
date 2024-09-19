// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'parameters.freezed.dart';
part 'parameters.g.dart';

/// [Parameters] This resource is a non-persisted resource used to pass
@freezed
class Parameters extends DomainResource with _$Parameters {
  /// [Parameters] This resource is a non-persisted resource used to pass
  Parameters._();

  /// [Parameters] This resource is a non-persisted resource used to pass
  /// information into and back from an [operation](operations.html). It has no
  ///  other use, and there is no RESTful endpoint associated with it.
  ///
  /// [resourceType] This is a Parameters resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [parameter] A parameter passed to or received from the operation.
  factory Parameters({
    @Default(R4ResourceType.Parameters)
    @JsonKey(unknownEnumValue: R4ResourceType.Parameters)

    /// [resourceType] This is a Parameters resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [parameter] A parameter passed to or received from the operation.
    List<ParametersParameter>? parameter,
  }) = _Parameters;

  @override
  String get fhirType => 'Parameters';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Parameters.fromYaml(dynamic yaml) => yaml is String
      ? Parameters.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Parameters.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Parameters cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);

  /// Acts like a constructor, returns a [Parameters], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Parameters.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ParametersFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [ParametersParameter] This resource is a non-persisted resource used to
@freezed

/// [ParametersParameter] This resource is a non-persisted resource used to
@freezed
class ParametersParameter extends BackboneElement with _$ParametersParameter {
  /// [ParametersParameter] This resource is a non-persisted resource used to
  ParametersParameter._();

  /// [ParametersParameter] This resource is a non-persisted resource used to
  /// pass information into and back from an [operation](operations.html). It
  ///  has no other use, and there is no RESTful endpoint associated with it.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [name] The name of the parameter (reference to the operation definition).
  ///
  /// [nameElement] Extensions for name
  ///
  /// [valueBase64Binary] If the parameter is a data type.
  ///
  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  ///
  /// [valueBoolean] If the parameter is a data type.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueCanonical] If the parameter is a data type.
  ///
  /// [valueCanonicalElement] Extensions for valueCanonical
  ///
  /// [valueCode] If the parameter is a data type.
  ///
  /// [valueCodeElement] Extensions for valueCode
  ///
  /// [valueDate] If the parameter is a data type.
  ///
  /// [valueDateElement] Extensions for valueDate
  ///
  /// [valueDateTime] If the parameter is a data type.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valueDecimal] If the parameter is a data type.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  ///
  /// [valueId] If the parameter is a data type.
  ///
  /// [valueIdElement] Extensions for valueId
  ///
  /// [valueInstant] If the parameter is a data type.
  ///
  /// [valueInstantElement] Extensions for valueInstant
  ///
  /// [valueInteger] If the parameter is a data type.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueMarkdown] If the parameter is a data type.
  ///
  /// [valueMarkdownElement] Extensions for valueMarkdown
  ///
  /// [valueOid] If the parameter is a data type.
  ///
  /// [valueOidElement] Extensions for valueOid
  ///
  /// [valuePositiveInt] If the parameter is a data type.
  ///
  /// [valuePositiveIntElement] Extensions for valuePositiveInt
  ///
  /// [valueString] If the parameter is a data type.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueTime] If the parameter is a data type.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueUnsignedInt] If the parameter is a data type.
  ///
  /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
  ///
  /// [valueUri] If the parameter is a data type.
  ///
  /// [valueUriElement] Extensions for valueUri
  ///
  /// [valueUrl] If the parameter is a data type.
  ///
  /// [valueUrlElement] Extensions for valueUrl
  ///
  /// [valueUuid] If the parameter is a data type.
  ///
  /// [valueUuidElement] Extensions for valueUuid
  ///
  /// [valueAddress] If the parameter is a data type.
  ///
  /// [valueAge] If the parameter is a data type.
  ///
  /// [valueAnnotation] If the parameter is a data type.
  ///
  /// [valueAttachment] If the parameter is a data type.
  ///
  /// [valueCodeableConcept] If the parameter is a data type.
  ///
  /// [valueCoding] If the parameter is a data type.
  ///
  /// [valueContactPoint] If the parameter is a data type.
  ///
  /// [valueCount] If the parameter is a data type.
  ///
  /// [valueDistance] If the parameter is a data type.
  ///
  /// [valueDuration] If the parameter is a data type.
  ///
  /// [valueHumanName] If the parameter is a data type.
  ///
  /// [valueIdentifier] If the parameter is a data type.
  ///
  /// [valueMoney] If the parameter is a data type.
  ///
  /// [valuePeriod] If the parameter is a data type.
  ///
  /// [valueQuantity] If the parameter is a data type.
  ///
  /// [valueRange] If the parameter is a data type.
  ///
  /// [valueRatio] If the parameter is a data type.
  ///
  /// [valueReference] If the parameter is a data type.
  ///
  /// [valueSampledData] If the parameter is a data type.
  ///
  /// [valueSignature] If the parameter is a data type.
  ///
  /// [valueTiming] If the parameter is a data type.
  ///
  /// [valueContactDetail] If the parameter is a data type.
  ///
  /// [valueContributor] If the parameter is a data type.
  ///
  /// [valueDataRequirement] If the parameter is a data type.
  ///
  /// [valueExpression] If the parameter is a data type.
  ///
  /// [valueParameterDefinition] If the parameter is a data type.
  ///
  /// [valueRelatedArtifact] If the parameter is a data type.
  ///
  /// [valueTriggerDefinition] If the parameter is a data type.
  ///
  /// [valueUsageContext] If the parameter is a data type.
  ///
  /// [valueDosage] If the parameter is a data type.
  ///
  /// [valueMeta] If the parameter is a data type.
  ///
  /// [resource] If the parameter is a whole resource.
  ///
  /// [part_] A named part of a multi-part parameter.
  factory ParametersParameter({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [name] The name of the parameter (reference to the operation definition).
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [valueBase64Binary] If the parameter is a data type.
    FhirBase64Binary? valueBase64Binary,

    /// [valueBase64BinaryElement] Extensions for valueBase64Binary
    @JsonKey(name: '_valueBase64Binary')
    PrimitiveElement? valueBase64BinaryElement,

    /// [valueBoolean] If the parameter is a data type.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueCanonical] If the parameter is a data type.
    FhirCanonical? valueCanonical,

    /// [valueCanonicalElement] Extensions for valueCanonical
    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,

    /// [valueCode] If the parameter is a data type.
    FhirCode? valueCode,

    /// [valueCodeElement] Extensions for valueCode
    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,

    /// [valueDate] If the parameter is a data type.
    FhirDate? valueDate,

    /// [valueDateElement] Extensions for valueDate
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueDateTime] If the parameter is a data type.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueDecimal] If the parameter is a data type.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,

    /// [valueId] If the parameter is a data type.
    FhirId? valueId,

    /// [valueIdElement] Extensions for valueId
    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,

    /// [valueInstant] If the parameter is a data type.
    FhirInstant? valueInstant,

    /// [valueInstantElement] Extensions for valueInstant
    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,

    /// [valueInteger] If the parameter is a data type.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueMarkdown] If the parameter is a data type.
    FhirMarkdown? valueMarkdown,

    /// [valueMarkdownElement] Extensions for valueMarkdown
    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,

    /// [valueOid] If the parameter is a data type.
    FhirOid? valueOid,

    /// [valueOidElement] Extensions for valueOid
    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,

    /// [valuePositiveInt] If the parameter is a data type.
    FhirPositiveInt? valuePositiveInt,

    /// [valuePositiveIntElement] Extensions for valuePositiveInt
    @JsonKey(name: '_valuePositiveInt')
    PrimitiveElement? valuePositiveIntElement,

    /// [valueString] If the parameter is a data type.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueTime] If the parameter is a data type.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueUnsignedInt] If the parameter is a data type.
    FhirUnsignedInt? valueUnsignedInt,

    /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
    @JsonKey(name: '_valueUnsignedInt')
    PrimitiveElement? valueUnsignedIntElement,

    /// [valueUri] If the parameter is a data type.
    FhirUri? valueUri,

    /// [valueUriElement] Extensions for valueUri
    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,

    /// [valueUrl] If the parameter is a data type.
    FhirUrl? valueUrl,

    /// [valueUrlElement] Extensions for valueUrl
    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,

    /// [valueUuid] If the parameter is a data type.
    FhirUuid? valueUuid,

    /// [valueUuidElement] Extensions for valueUuid
    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,

    /// [valueAddress] If the parameter is a data type.
    Address? valueAddress,

    /// [valueAge] If the parameter is a data type.
    Age? valueAge,

    /// [valueAnnotation] If the parameter is a data type.
    Annotation? valueAnnotation,

    /// [valueAttachment] If the parameter is a data type.
    Attachment? valueAttachment,

    /// [valueCodeableConcept] If the parameter is a data type.
    CodeableConcept? valueCodeableConcept,

    /// [valueCoding] If the parameter is a data type.
    Coding? valueCoding,

    /// [valueContactPoint] If the parameter is a data type.
    ContactPoint? valueContactPoint,

    /// [valueCount] If the parameter is a data type.
    Count? valueCount,

    /// [valueDistance] If the parameter is a data type.
    Distance? valueDistance,

    /// [valueDuration] If the parameter is a data type.
    FhirDuration? valueDuration,

    /// [valueHumanName] If the parameter is a data type.
    HumanName? valueHumanName,

    /// [valueIdentifier] If the parameter is a data type.
    Identifier? valueIdentifier,

    /// [valueMoney] If the parameter is a data type.
    Money? valueMoney,

    /// [valuePeriod] If the parameter is a data type.
    Period? valuePeriod,

    /// [valueQuantity] If the parameter is a data type.
    Quantity? valueQuantity,

    /// [valueRange] If the parameter is a data type.
    Range? valueRange,

    /// [valueRatio] If the parameter is a data type.
    Ratio? valueRatio,

    /// [valueReference] If the parameter is a data type.
    Reference? valueReference,

    /// [valueSampledData] If the parameter is a data type.
    SampledData? valueSampledData,

    /// [valueSignature] If the parameter is a data type.
    Signature? valueSignature,

    /// [valueTiming] If the parameter is a data type.
    Timing? valueTiming,

    /// [valueContactDetail] If the parameter is a data type.
    ContactDetail? valueContactDetail,

    /// [valueContributor] If the parameter is a data type.
    Contributor? valueContributor,

    /// [valueDataRequirement] If the parameter is a data type.
    DataRequirement? valueDataRequirement,

    /// [valueExpression] If the parameter is a data type.
    FhirExpression? valueExpression,

    /// [valueParameterDefinition] If the parameter is a data type.
    ParameterDefinition? valueParameterDefinition,

    /// [valueRelatedArtifact] If the parameter is a data type.
    RelatedArtifact? valueRelatedArtifact,

    /// [valueTriggerDefinition] If the parameter is a data type.
    TriggerDefinition? valueTriggerDefinition,

    /// [valueUsageContext] If the parameter is a data type.
    UsageContext? valueUsageContext,

    /// [valueDosage] If the parameter is a data type.
    Dosage? valueDosage,

    /// [valueMeta] If the parameter is a data type.
    FhirMeta? valueMeta,

    /// [resource] If the parameter is a whole resource.
    Resource? resource,

    /// [part_] A named part of a multi-part parameter.
    @JsonKey(name: 'part') List<ParametersParameter>? part_,
  }) = _ParametersParameter;

  @override
  String get fhirType => 'ParametersParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ParametersParameter.fromYaml(dynamic yaml) => yaml is String
      ? ParametersParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ParametersParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ParametersParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ParametersParameter.fromJson(Map<String, dynamic> json) =>
      _$ParametersParameterFromJson(json);

  /// Acts like a constructor, returns a [ParametersParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ParametersParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ParametersParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
