// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'measure_report.freezed.dart';
part 'measure_report.g.dart';

/// [MeasureReport] The MeasureReport resource contains the results of the
@freezed
class MeasureReport with _$MeasureReport implements DomainResource {
  /// [MeasureReport] The MeasureReport resource contains the results of the
  const MeasureReport._();

  /// [MeasureReport] The MeasureReport resource contains the results of the
  /// calculation of a measure; and optionally a reference to the resources
  ///  involved in that calculation.
  ///
  /// [resourceType] This is a MeasureReport resource
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
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
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
  ///
  /// [identifier] A formal identifier that is used to identify this
  /// MeasureReport when it is represented in other formats or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [status] The MeasureReport status. No data will be available until the
  ///  MeasureReport status is complete.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] The type of measure report. This may be an individual report,
  /// which provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange
  ///  the data-of-interest for a quality measure.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [measure] A reference to the Measure that was calculated to produce this
  ///  report.
  ///
  /// [subject] Optional subject identifying the individual or individuals the
  ///  report is for.
  ///
  /// [date] The date this measure report was generated.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [reporter] The individual, location, or organization that is reporting
  ///  the data.
  ///
  /// [period] The reporting period for which the report was calculated.
  ///
  /// [improvementNotation] Whether improvement in the measure is noted by an
  ///  increase or decrease in the measure score.
  ///
  /// [group] The results of the calculation, one for each population group in
  ///  the measure.
  ///
  /// [evaluatedResource] A reference to a Bundle containing the Resources that
  ///  were used in the calculation of this measure.
  const factory MeasureReport({
    @Default(R4ResourceType.MeasureReport)
    @JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)

    /// [resourceType] This is a MeasureReport resource
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

    /// [identifier] A formal identifier that is used to identify this
    /// MeasureReport when it is represented in other formats or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [status] The MeasureReport status. No data will be available until the
    ///  MeasureReport status is complete.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] The type of measure report. This may be an individual report,
    /// which provides the score for the measure for an individual member of the
    /// population; a subject-listing, which returns the list of members that meet
    /// the various criteria in the measure; a summary report, which returns a
    /// population count for each of the criteria in the measure; or a
    /// data-collection, which enables the MeasureReport to be used to exchange
    ///  the data-of-interest for a quality measure.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [measure] A reference to the Measure that was calculated to produce this
    ///  report.
    required FhirCanonical measure,

    /// [subject] Optional subject identifying the individual or individuals the
    ///  report is for.
    Reference? subject,

    /// [date] The date this measure report was generated.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [reporter] The individual, location, or organization that is reporting
    ///  the data.
    Reference? reporter,

    /// [period] The reporting period for which the report was calculated.
    required Period period,

    /// [improvementNotation] Whether improvement in the measure is noted by an
    ///  increase or decrease in the measure score.
    CodeableConcept? improvementNotation,

    /// [group] The results of the calculation, one for each population group in
    ///  the measure.
    List<MeasureReportGroup>? group,

    /// [evaluatedResource] A reference to a Bundle containing the Resources that
    ///  were used in the calculation of this measure.
    List<Reference>? evaluatedResource,
  }) = _MeasureReport;

  @override
  String get fhirType => 'MeasureReport';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReport.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReport.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportFromJson(json);

  /// Acts like a constructor, returns a [MeasureReport], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
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

/// [MeasureReportGroup] The MeasureReport resource contains the results of
@freezed

/// [MeasureReportGroup] The MeasureReport resource contains the results of
@freezed
class MeasureReportGroup with _$MeasureReportGroup implements BackboneElement {
  /// [MeasureReportGroup] The MeasureReport resource contains the results of
  const MeasureReportGroup._();

  /// [MeasureReportGroup] The MeasureReport resource contains the results of
  /// the calculation of a measure; and optionally a reference to the resources
  ///  involved in that calculation.
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
  /// [code] The meaning of the population group as defined in the measure
  ///  definition.
  ///
  /// [population] The populations that make up the population group, one for
  ///  each type of population appropriate for the measure.
  ///
  /// [measureScore] The measure score for this population group, calculated as
  /// appropriate for the measure type and scoring method, and based on the
  ///  contents of the populations defined in the group.
  ///
  /// [stratifier] When a measure includes multiple stratifiers, there will be
  ///  a stratifier group for each stratifier defined by the measure.
  const factory MeasureReportGroup({
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

    /// [code] The meaning of the population group as defined in the measure
    ///  definition.
    CodeableConcept? code,

    /// [population] The populations that make up the population group, one for
    ///  each type of population appropriate for the measure.
    List<MeasureReportPopulation>? population,

    /// [measureScore] The measure score for this population group, calculated as
    /// appropriate for the measure type and scoring method, and based on the
    ///  contents of the populations defined in the group.
    Quantity? measureScore,

    /// [stratifier] When a measure includes multiple stratifiers, there will be
    ///  a stratifier group for each stratifier defined by the measure.
    List<MeasureReportStratifier>? stratifier,
  }) = _MeasureReportGroup;

  @override
  String get fhirType => 'MeasureReportGroup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportGroup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportGroup.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportGroupFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportGroup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportGroupFromJson(json);
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

/// [MeasureReportPopulation] The MeasureReport resource contains the
@freezed

/// [MeasureReportPopulation] The MeasureReport resource contains the
@freezed
class MeasureReportPopulation
    with _$MeasureReportPopulation
    implements BackboneElement {
  /// [MeasureReportPopulation] The MeasureReport resource contains the
  const MeasureReportPopulation._();

  /// [MeasureReportPopulation] The MeasureReport resource contains the
  /// results of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
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
  /// [code] The type of the population.
  ///
  /// [count] The number of members of the population.
  ///
  /// [countElement] Extensions for count
  ///
  /// [subjectResults] This element refers to a List of subject level
  ///  MeasureReport resources, one for each subject in this population.
  const factory MeasureReportPopulation({
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

    /// [code] The type of the population.
    CodeableConcept? code,

    /// [count] The number of members of the population.
    FhirInteger? count,

    /// [countElement] Extensions for count
    @JsonKey(name: '_count') PrimitiveElement? countElement,

    /// [subjectResults] This element refers to a List of subject level
    ///  MeasureReport resources, one for each subject in this population.
    Reference? subjectResults,
  }) = _MeasureReportPopulation;

  @override
  String get fhirType => 'MeasureReportPopulation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportPopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportPopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportPopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportPopulation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportPopulationFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportPopulation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportPopulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportPopulationFromJson(json);
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

/// [MeasureReportStratifier] The MeasureReport resource contains the
@freezed

/// [MeasureReportStratifier] The MeasureReport resource contains the
@freezed
class MeasureReportStratifier
    with _$MeasureReportStratifier
    implements BackboneElement {
  /// [MeasureReportStratifier] The MeasureReport resource contains the
  const MeasureReportStratifier._();

  /// [MeasureReportStratifier] The MeasureReport resource contains the
  /// results of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
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
  /// [code] The meaning of this stratifier, as defined in the measure
  ///  definition.
  ///
  /// [stratum] This element contains the results for a single stratum within
  /// the stratifier. For example, when stratifying on administrative gender,
  ///  there will be four strata, one for each possible gender value.
  const factory MeasureReportStratifier({
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

    /// [code] The meaning of this stratifier, as defined in the measure
    ///  definition.
    List<CodeableConcept>? code,

    /// [stratum] This element contains the results for a single stratum within
    /// the stratifier. For example, when stratifying on administrative gender,
    ///  there will be four strata, one for each possible gender value.
    List<MeasureReportStratum>? stratum,
  }) = _MeasureReportStratifier;

  @override
  String get fhirType => 'MeasureReportStratifier';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportStratifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportStratifierFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportStratifier], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportStratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportStratifierFromJson(json);
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

/// [MeasureReportStratum] The MeasureReport resource contains the results
@freezed

/// [MeasureReportStratum] The MeasureReport resource contains the results
@freezed
class MeasureReportStratum
    with _$MeasureReportStratum
    implements BackboneElement {
  /// [MeasureReportStratum] The MeasureReport resource contains the results
  const MeasureReportStratum._();

  /// [MeasureReportStratum] The MeasureReport resource contains the results
  /// of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
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
  /// [value] The value for this stratum, expressed as a CodeableConcept. When
  /// defining stratifiers on complex values, the value must be rendered such
  ///  that the value for each stratum within the stratifier is unique.
  ///
  /// [component] A stratifier component value.
  ///
  /// [population] The populations that make up the stratum, one for each type
  ///  of population appropriate to the measure.
  ///
  /// [measureScore] The measure score for this stratum, calculated as
  /// appropriate for the measure type and scoring method, and based on only the
  ///  members of this stratum.
  const factory MeasureReportStratum({
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

    /// [value] The value for this stratum, expressed as a CodeableConcept. When
    /// defining stratifiers on complex values, the value must be rendered such
    ///  that the value for each stratum within the stratifier is unique.
    CodeableConcept? value,

    /// [component] A stratifier component value.
    List<MeasureReportComponent>? component,

    /// [population] The populations that make up the stratum, one for each type
    ///  of population appropriate to the measure.
    List<MeasureReportPopulation1>? population,

    /// [measureScore] The measure score for this stratum, calculated as
    /// appropriate for the measure type and scoring method, and based on only the
    ///  members of this stratum.
    Quantity? measureScore,
  }) = _MeasureReportStratum;

  @override
  String get fhirType => 'MeasureReportStratum';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportStratum.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportStratum.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportStratum.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportStratum cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratum.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportStratumFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportStratum], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportStratum.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportStratumFromJson(json);
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

/// [MeasureReportComponent] The MeasureReport resource contains the results
@freezed

/// [MeasureReportComponent] The MeasureReport resource contains the results
@freezed
class MeasureReportComponent
    with _$MeasureReportComponent
    implements BackboneElement {
  /// [MeasureReportComponent] The MeasureReport resource contains the results
  const MeasureReportComponent._();

  /// [MeasureReportComponent] The MeasureReport resource contains the results
  /// of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
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
  /// [code] The code for the stratum component value.
  ///
  /// [value] The stratum component value.
  const factory MeasureReportComponent({
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

    /// [code] The code for the stratum component value.
    required CodeableConcept code,

    /// [value] The stratum component value.
    required CodeableConcept value,
  }) = _MeasureReportComponent;

  @override
  String get fhirType => 'MeasureReportComponent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportComponent.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportComponentFromJson(json);

  /// Acts like a constructor, returns a [MeasureReportComponent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportComponentFromJson(json);
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

/// [MeasureReportPopulation1] The MeasureReport resource contains the
@freezed

/// [MeasureReportPopulation1] The MeasureReport resource contains the
@freezed
class MeasureReportPopulation1
    with _$MeasureReportPopulation1
    implements BackboneElement {
  /// [MeasureReportPopulation1] The MeasureReport resource contains the
  const MeasureReportPopulation1._();

  /// [MeasureReportPopulation1] The MeasureReport resource contains the
  /// results of the calculation of a measure; and optionally a reference to the
  ///  resources involved in that calculation.
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
  /// [code] The type of the population.
  ///
  /// [count] The number of members of the population in this stratum.
  ///
  /// [countElement] Extensions for count
  ///
  /// [subjectResults] This element refers to a List of subject level
  /// MeasureReport resources, one for each subject in this population in this
  ///  stratum.
  const factory MeasureReportPopulation1({
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

    /// [code] The type of the population.
    CodeableConcept? code,

    /// [count] The number of members of the population in this stratum.
    FhirInteger? count,

    /// [countElement] Extensions for count
    @JsonKey(name: '_count') PrimitiveElement? countElement,

    /// [subjectResults] This element refers to a List of subject level
    /// MeasureReport resources, one for each subject in this population in this
    ///  stratum.
    Reference? subjectResults,
  }) = _MeasureReportPopulation1;

  @override
  String get fhirType => 'MeasureReportPopulation1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MeasureReportPopulation1.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportPopulation1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReportPopulation1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReportPopulation1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation1.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportPopulation1FromJson(json);

  /// Acts like a constructor, returns a [MeasureReportPopulation1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MeasureReportPopulation1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReportPopulation1FromJson(json);
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
