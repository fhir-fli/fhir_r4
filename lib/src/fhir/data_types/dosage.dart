import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'dosage.g.dart';

/// [Dosage] /// Indicates how the medication is/was taken or should be taken by the
/// patient.
@JsonSerializable()
class Dosage extends BackboneType {
  Dosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.text,
    this.textElement,
    this.additionalInstruction,
    this.patientInstruction,
    this.patientInstructionElement,
    this.timing,
    this.asNeededBoolean,
    this.asNeededBooleanElement,
    this.asNeededCodeableConcept,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Dosage';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// Indicates the order in which the dosage instructions should be applied or
  /// interpreted.
  @JsonKey(name: 'sequence')
  final FhirInteger? sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [text] /// Free text dosage instructions e.g. SIG.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [additionalInstruction] /// Supplemental instructions to the patient on how to take the medication
  /// (e.g. "with meals" or"take half to one hour before food") or warnings for
  /// the patient about the medication (e.g. "may cause drowsiness" or "avoid
  /// exposure of skin to direct sunlight or sunlamps").
  @JsonKey(name: 'additionalInstruction')
  final List<CodeableConcept>? additionalInstruction;

  /// [patientInstruction] /// Instructions in terms that are understood by the patient or consumer.
  @JsonKey(name: 'patientInstruction')
  final FhirString? patientInstruction;
  @JsonKey(name: '_patientInstruction')
  final Element? patientInstructionElement;

  /// [timing] /// When medication should be administered.
  @JsonKey(name: 'timing')
  final Timing? timing;

  /// [asNeededBoolean] /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the precondition
  /// for taking the Medication (CodeableConcept).
  @JsonKey(name: 'asNeededBoolean')
  final FhirBoolean? asNeededBoolean;
  @JsonKey(name: '_asNeededBoolean')
  final Element? asNeededBooleanElement;

  /// [asNeededCodeableConcept] /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the precondition
  /// for taking the Medication (CodeableConcept).
  @JsonKey(name: 'asNeededCodeableConcept')
  final CodeableConcept? asNeededCodeableConcept;

  /// [site] /// Body site to administer to.
  @JsonKey(name: 'site')
  final CodeableConcept? site;

  /// [route] /// How drug should enter body.
  @JsonKey(name: 'route')
  final CodeableConcept? route;

  /// [method] /// Technique for administering medication.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [doseAndRate] /// The amount of medication administered.
  @JsonKey(name: 'doseAndRate')
  final List<DosageDoseAndRate>? doseAndRate;

  /// [maxDosePerPeriod] /// Upper limit on medication per unit of time.
  @JsonKey(name: 'maxDosePerPeriod')
  final Ratio? maxDosePerPeriod;

  /// [maxDosePerAdministration] /// Upper limit on medication per administration.
  @JsonKey(name: 'maxDosePerAdministration')
  final Quantity? maxDosePerAdministration;

  /// [maxDosePerLifetime] /// Upper limit on medication per lifetime of the patient.
  @JsonKey(name: 'maxDosePerLifetime')
  final Quantity? maxDosePerLifetime;
  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DosageToJson(this);

  @override
  Dosage clone() => throw UnimplementedError();
  @override
  Dosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? sequence,
    Element? sequenceElement,
    FhirString? text,
    Element? textElement,
    List<CodeableConcept>? additionalInstruction,
    FhirString? patientInstruction,
    Element? patientInstructionElement,
    Timing? timing,
    FhirBoolean? asNeededBoolean,
    Element? asNeededBooleanElement,
    CodeableConcept? asNeededCodeableConcept,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    List<DosageDoseAndRate>? doseAndRate,
    Ratio? maxDosePerPeriod,
    Quantity? maxDosePerAdministration,
    Quantity? maxDosePerLifetime,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Dosage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      additionalInstruction:
          additionalInstruction ?? this.additionalInstruction,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      patientInstructionElement:
          patientInstructionElement ?? this.patientInstructionElement,
      timing: timing ?? this.timing,
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
      asNeededBooleanElement:
          asNeededBooleanElement ?? this.asNeededBooleanElement,
      asNeededCodeableConcept:
          asNeededCodeableConcept ?? this.asNeededCodeableConcept,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      doseAndRate: doseAndRate ?? this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod ?? this.maxDosePerPeriod,
      maxDosePerAdministration:
          maxDosePerAdministration ?? this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime ?? this.maxDosePerLifetime,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Dosage.fromYaml(dynamic yaml) => yaml is String
      ? Dosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Dosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Dosage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Dosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Dosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DosageDoseAndRate] /// The amount of medication administered.
@JsonSerializable()
class DosageDoseAndRate extends Element {
  DosageDoseAndRate({
    super.id,
    super.extension_,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DosageDoseAndRate';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of dose or rate specified, for example, ordered or calculated.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [doseRange] /// Amount of medication per dose.
  @JsonKey(name: 'doseRange')
  final Range? doseRange;

  /// [doseQuantity] /// Amount of medication per dose.
  @JsonKey(name: 'doseQuantity')
  final Quantity? doseQuantity;

  /// [rateRatio] /// Amount of medication per unit of time.
  @JsonKey(name: 'rateRatio')
  final Ratio? rateRatio;

  /// [rateRange] /// Amount of medication per unit of time.
  @JsonKey(name: 'rateRange')
  final Range? rateRange;

  /// [rateQuantity] /// Amount of medication per unit of time.
  @JsonKey(name: 'rateQuantity')
  final Quantity? rateQuantity;
  factory DosageDoseAndRate.fromJson(Map<String, dynamic> json) =>
      _$DosageDoseAndRateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DosageDoseAndRateToJson(this);

  @override
  DosageDoseAndRate clone() => throw UnimplementedError();
  @override
  DosageDoseAndRate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? type,
    Range? doseRange,
    Quantity? doseQuantity,
    Ratio? rateRatio,
    Range? rateRange,
    Quantity? rateQuantity,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DosageDoseAndRate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      doseRange: doseRange ?? this.doseRange,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      rateRatio: rateRatio ?? this.rateRatio,
      rateRange: rateRange ?? this.rateRange,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DosageDoseAndRate.fromYaml(dynamic yaml) => yaml is String
      ? DosageDoseAndRate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DosageDoseAndRate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DosageDoseAndRate cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DosageDoseAndRate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DosageDoseAndRate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
