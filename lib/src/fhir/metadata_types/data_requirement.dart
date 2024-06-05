// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'data_requirement.freezed.dart';
part 'data_requirement.g.dart';

/// [DataRequirement] Describes a required data item for evaluation in terms
@freezed
class DataRequirement with _$DataRequirement implements DataType {
  /// [DataRequirement] Describes a required data item for evaluation in terms
  const DataRequirement._();

  /// [DataRequirement] Describes a required data item for evaluation in terms
  ///  of the type of data, and optional code or date-based filters of the data.
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
  /// [type] The type of the required data, specified as the type name of a
  /// resource. For profiles, this value is set to the type of the base resource
  ///  of the profile.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [profile] The profile of the required data, specified as the uri of the
  ///  profile definition.
  ///
  /// [subjectCodeableConcept] The intended subjects of the data requirement.
  ///  If this element is not provided, a Patient subject is assumed.
  ///
  /// [subjectReference] The intended subjects of the data requirement. If this
  ///  element is not provided, a Patient subject is assumed.
  ///
  /// [mustSupport] Indicates that specific elements of the type are referenced
  /// by the knowledge module and must be supported by the consumer in order to
  /// obtain an effective evaluation. This does not mean that a value is
  /// required for this element, only that the consuming system must understand
  ///  the element and be able to provide values for it if they are available.
  /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of
  /// the DataRequirement. The path SHALL consist only of identifiers, constant
  /// indexers, and .resolve() (see the [Simple FHIRPath
  ///  Profile](fhirpath.html#simple) for full details).
  ///
  /// [mustSupportElement] Extensions for mustSupport
  ///
  /// [codeFilter] Code filters specify additional constraints on the data,
  /// specifying the value set of interest for a particular element of the data.
  /// Each code filter defines an additional constraint on the data, i.e. code
  ///  filters are AND'ed, not OR'ed.
  ///
  /// [dateFilter] Date filters specify additional constraints on the data in
  /// terms of the applicable date range for specific elements. Each date filter
  /// specifies an additional constraint on the data, i.e. date filters are
  ///  AND'ed, not OR'ed.
  ///
  /// [limit] Specifies a maximum number of results that are required (uses the
  ///  _count search parameter).
  ///
  /// [limitElement] Extensions for limit
  ///
  /// [sort] Specifies the order of the results to be returned.
  const factory DataRequirement({
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

    /// [type] The type of the required data, specified as the type name of a
    /// resource. For profiles, this value is set to the type of the base resource
    ///  of the profile.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [profile] The profile of the required data, specified as the uri of the
    ///  profile definition.
    List<FhirCanonical>? profile,

    /// [subjectCodeableConcept] The intended subjects of the data requirement.
    ///  If this element is not provided, a Patient subject is assumed.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] The intended subjects of the data requirement. If this
    ///  element is not provided, a Patient subject is assumed.
    Reference? subjectReference,

    /// [mustSupport] Indicates that specific elements of the type are referenced
    /// by the knowledge module and must be supported by the consumer in order to
    /// obtain an effective evaluation. This does not mean that a value is
    /// required for this element, only that the consuming system must understand
    ///  the element and be able to provide values for it if they are available.
    /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of
    /// the DataRequirement. The path SHALL consist only of identifiers, constant
    /// indexers, and .resolve() (see the [Simple FHIRPath
    ///  Profile](fhirpath.html#simple) for full details).
    List<String>? mustSupport,

    /// [mustSupportElement] Extensions for mustSupport
    @JsonKey(name: '_mustSupport') List<PrimitiveElement>? mustSupportElement,

    /// [codeFilter] Code filters specify additional constraints on the data,
    /// specifying the value set of interest for a particular element of the data.
    /// Each code filter defines an additional constraint on the data, i.e. code
    ///  filters are AND'ed, not OR'ed.
    List<DataRequirementCodeFilter>? codeFilter,

    /// [dateFilter] Date filters specify additional constraints on the data in
    /// terms of the applicable date range for specific elements. Each date filter
    /// specifies an additional constraint on the data, i.e. date filters are
    ///  AND'ed, not OR'ed.
    List<DataRequirementDateFilter>? dateFilter,

    /// [limit] Specifies a maximum number of results that are required (uses the
    ///  _count search parameter).
    FhirPositiveInt? limit,

    /// [limitElement] Extensions for limit
    @JsonKey(name: '_limit') PrimitiveElement? limitElement,

    /// [sort] Specifies the order of the results to be returned.
    List<DataRequirementSort>? sort,
  }) = _DataRequirement;

  @override
  String get fhirType => 'DataRequirement';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DataRequirement.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DataRequirement.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementFromJson(json);

  /// Acts like a constructor, returns a [DataRequirement], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DataRequirement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [DataRequirementCodeFilter] Describes a required data item for
@freezed
class DataRequirementCodeFilter
    with _$DataRequirementCodeFilter
    implements Element {
  /// [DataRequirementCodeFilter] Describes a required data item for
  const DataRequirementCodeFilter._();

  /// [DataRequirementCodeFilter] Describes a required data item for
  /// evaluation in terms of the type of data, and optional code or date-based
  ///  filters of the data.
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
  /// [path] The code-valued attribute of the filter. The specified path SHALL
  /// be a FHIRPath resolveable on the specified type of the DataRequirement,
  /// and SHALL consist only of identifiers, constant indexers, and .resolve().
  /// The path is allowed to contain qualifiers (.) to traverse sub-elements, as
  /// well as indexers ([x]) to traverse multiple-cardinality sub-elements (see
  /// the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
  /// Note that the index must be an integer constant. The path must resolve to
  ///  an element of type code, Coding, or CodeableConcept.
  ///
  /// [pathElement] Extensions for path
  ///
  /// [searchParam] A token parameter that refers to a search parameter defined
  /// on the specified type of the DataRequirement, and which searches on
  ///  elements of type code, Coding, or CodeableConcept.
  ///
  /// [searchParamElement] Extensions for searchParam
  ///
  /// [valueSet] The valueset for the code filter. The valueSet and code
  /// elements are additive. If valueSet is specified, the filter will return
  /// only those data items for which the value of the code-valued element
  ///  specified in the path is a member of the specified valueset.
  ///
  /// [code] The codes for the code filter. If values are given, the filter
  /// will return only those data items for which the code-valued attribute
  /// specified by the path has a value that is one of the specified codes. If
  /// codes are specified in addition to a value set, the filter returns items
  ///  matching a code in the value set or one of the specified codes.
  const factory DataRequirementCodeFilter({
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

    /// [path] The code-valued attribute of the filter. The specified path SHALL
    /// be a FHIRPath resolveable on the specified type of the DataRequirement,
    /// and SHALL consist only of identifiers, constant indexers, and .resolve().
    /// The path is allowed to contain qualifiers (.) to traverse sub-elements, as
    /// well as indexers ([x]) to traverse multiple-cardinality sub-elements (see
    /// the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
    /// Note that the index must be an integer constant. The path must resolve to
    ///  an element of type code, Coding, or CodeableConcept.
    String? path,

    /// [pathElement] Extensions for path
    @JsonKey(name: '_path') PrimitiveElement? pathElement,

    /// [searchParam] A token parameter that refers to a search parameter defined
    /// on the specified type of the DataRequirement, and which searches on
    ///  elements of type code, Coding, or CodeableConcept.
    String? searchParam,

    /// [searchParamElement] Extensions for searchParam
    @JsonKey(name: '_searchParam') PrimitiveElement? searchParamElement,

    /// [valueSet] The valueset for the code filter. The valueSet and code
    /// elements are additive. If valueSet is specified, the filter will return
    /// only those data items for which the value of the code-valued element
    ///  specified in the path is a member of the specified valueset.
    FhirCanonical? valueSet,

    /// [code] The codes for the code filter. If values are given, the filter
    /// will return only those data items for which the code-valued attribute
    /// specified by the path has a value that is one of the specified codes. If
    /// codes are specified in addition to a value set, the filter returns items
    ///  matching a code in the value set or one of the specified codes.
    List<Coding>? code,
  }) = _DataRequirementCodeFilter;

  @override
  String get fhirType => 'DataRequirementCodeFilter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DataRequirementCodeFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementCodeFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirementCodeFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirementCodeFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DataRequirementCodeFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementCodeFilterFromJson(json);

  /// Acts like a constructor, returns a [DataRequirementCodeFilter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DataRequirementCodeFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirementCodeFilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [DataRequirementDateFilter] Describes a required data item for
@freezed
class DataRequirementDateFilter
    with _$DataRequirementDateFilter
    implements Element {
  /// [DataRequirementDateFilter] Describes a required data item for
  const DataRequirementDateFilter._();

  /// [DataRequirementDateFilter] Describes a required data item for
  /// evaluation in terms of the type of data, and optional code or date-based
  ///  filters of the data.
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
  /// [path] The date-valued attribute of the filter. The specified path SHALL
  /// be a FHIRPath resolveable on the specified type of the DataRequirement,
  /// and SHALL consist only of identifiers, constant indexers, and .resolve().
  /// The path is allowed to contain qualifiers (.) to traverse sub-elements, as
  /// well as indexers ([x]) to traverse multiple-cardinality sub-elements (see
  /// the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
  /// Note that the index must be an integer constant. The path must resolve to
  ///  an element of type date, dateTime, Period, Schedule, or Timing.
  ///
  /// [pathElement] Extensions for path
  ///
  /// [searchParam] A date parameter that refers to a search parameter defined
  /// on the specified type of the DataRequirement, and which searches on
  ///  elements of type date, dateTime, Period, Schedule, or Timing.
  ///
  /// [searchParamElement] Extensions for searchParam
  ///
  /// [valueDateTime] The value of the filter. If period is specified, the
  /// filter will return only those data items that fall within the bounds
  /// determined by the Period, inclusive of the period boundaries. If dateTime
  /// is specified, the filter will return only those data items that are equal
  /// to the specified dateTime. If a Duration is specified, the filter will
  ///  return only those data items that fall within Duration before now.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valuePeriod] The value of the filter. If period is specified, the filter
  /// will return only those data items that fall within the bounds determined
  /// by the Period, inclusive of the period boundaries. If dateTime is
  /// specified, the filter will return only those data items that are equal to
  /// the specified dateTime. If a Duration is specified, the filter will return
  ///  only those data items that fall within Duration before now.
  ///
  /// [valueDuration] The value of the filter. If period is specified, the
  /// filter will return only those data items that fall within the bounds
  /// determined by the Period, inclusive of the period boundaries. If dateTime
  /// is specified, the filter will return only those data items that are equal
  /// to the specified dateTime. If a Duration is specified, the filter will
  ///  return only those data items that fall within Duration before now.
  const factory DataRequirementDateFilter({
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

    /// [path] The date-valued attribute of the filter. The specified path SHALL
    /// be a FHIRPath resolveable on the specified type of the DataRequirement,
    /// and SHALL consist only of identifiers, constant indexers, and .resolve().
    /// The path is allowed to contain qualifiers (.) to traverse sub-elements, as
    /// well as indexers ([x]) to traverse multiple-cardinality sub-elements (see
    /// the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
    /// Note that the index must be an integer constant. The path must resolve to
    ///  an element of type date, dateTime, Period, Schedule, or Timing.
    String? path,

    /// [pathElement] Extensions for path
    @JsonKey(name: '_path') PrimitiveElement? pathElement,

    /// [searchParam] A date parameter that refers to a search parameter defined
    /// on the specified type of the DataRequirement, and which searches on
    ///  elements of type date, dateTime, Period, Schedule, or Timing.
    String? searchParam,

    /// [searchParamElement] Extensions for searchParam
    @JsonKey(name: '_searchParam') PrimitiveElement? searchParamElement,

    /// [valueDateTime] The value of the filter. If period is specified, the
    /// filter will return only those data items that fall within the bounds
    /// determined by the Period, inclusive of the period boundaries. If dateTime
    /// is specified, the filter will return only those data items that are equal
    /// to the specified dateTime. If a Duration is specified, the filter will
    ///  return only those data items that fall within Duration before now.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valuePeriod] The value of the filter. If period is specified, the filter
    /// will return only those data items that fall within the bounds determined
    /// by the Period, inclusive of the period boundaries. If dateTime is
    /// specified, the filter will return only those data items that are equal to
    /// the specified dateTime. If a Duration is specified, the filter will return
    ///  only those data items that fall within Duration before now.
    Period? valuePeriod,

    /// [valueDuration] The value of the filter. If period is specified, the
    /// filter will return only those data items that fall within the bounds
    /// determined by the Period, inclusive of the period boundaries. If dateTime
    /// is specified, the filter will return only those data items that are equal
    /// to the specified dateTime. If a Duration is specified, the filter will
    ///  return only those data items that fall within Duration before now.
    FhirDuration? valueDuration,
  }) = _DataRequirementDateFilter;

  @override
  String get fhirType => 'DataRequirementDateFilter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DataRequirementDateFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementDateFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirementDateFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirementDateFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DataRequirementDateFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementDateFilterFromJson(json);

  /// Acts like a constructor, returns a [DataRequirementDateFilter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DataRequirementDateFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirementDateFilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [DataRequirementSort] Describes a required data item for evaluation in
@freezed
class DataRequirementSort with _$DataRequirementSort implements Element {
  /// [DataRequirementSort] Describes a required data item for evaluation in
  const DataRequirementSort._();

  /// [DataRequirementSort] Describes a required data item for evaluation in
  /// terms of the type of data, and optional code or date-based filters of the
  ///  data.
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
  /// [path] The attribute of the sort. The specified path must be resolvable
  /// from the type of the required data. The path is allowed to contain
  /// qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to
  /// traverse multiple-cardinality sub-elements. Note that the index must be an
  ///  integer constant.
  ///
  /// [pathElement] Extensions for path
  ///
  /// [direction] The direction of the sort, ascending or descending.
  ///
  /// [directionElement] Extensions for direction
  const factory DataRequirementSort({
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

    /// [path] The attribute of the sort. The specified path must be resolvable
    /// from the type of the required data. The path is allowed to contain
    /// qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to
    /// traverse multiple-cardinality sub-elements. Note that the index must be an
    ///  integer constant.
    String? path,

    /// [pathElement] Extensions for path
    @JsonKey(name: '_path') PrimitiveElement? pathElement,
    @JsonKey(unknownEnumValue: DataRequirementSortDirection.unknown)

    /// [direction] The direction of the sort, ascending or descending.
    DataRequirementSortDirection? direction,

    /// [directionElement] Extensions for direction
    @JsonKey(name: '_direction') PrimitiveElement? directionElement,
  }) = _DataRequirementSort;

  @override
  String get fhirType => 'DataRequirementSort';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DataRequirementSort.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementSort.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirementSort.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirementSort cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DataRequirementSort.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementSortFromJson(json);

  /// Acts like a constructor, returns a [DataRequirementSort], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DataRequirementSort.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirementSortFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
