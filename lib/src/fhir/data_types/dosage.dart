import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Dosage] /// Indicates how the medication is/was taken or should be taken by the
/// patient.
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
  int dbId = 0;

  /// [sequence] /// Indicates the order in which the dosage instructions should be applied or
  /// interpreted.
  final FhirInteger? sequence;
  final Element? sequenceElement;

  /// [text] /// Free text dosage instructions e.g. SIG.
  final FhirString? text;
  final Element? textElement;

  /// [additionalInstruction] /// Supplemental instructions to the patient on how to take the medication
  /// (e.g. "with meals" or"take half to one hour before food") or warnings for
  /// the patient about the medication (e.g. "may cause drowsiness" or "avoid
  /// exposure of skin to direct sunlight or sunlamps").
  final List<CodeableConcept>? additionalInstruction;

  /// [patientInstruction] /// Instructions in terms that are understood by the patient or consumer.
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;

  /// [timing] /// When medication should be administered.
  final Timing? timing;

  /// [asNeededBoolean] /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the precondition
  /// for taking the Medication (CodeableConcept).
  final FhirBoolean? asNeededBoolean;
  final Element? asNeededBooleanElement;

  /// [asNeededCodeableConcept] /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the precondition
  /// for taking the Medication (CodeableConcept).
  final CodeableConcept? asNeededCodeableConcept;

  /// [site] /// Body site to administer to.
  final CodeableConcept? site;

  /// [route] /// How drug should enter body.
  final CodeableConcept? route;

  /// [method] /// Technique for administering medication.
  final CodeableConcept? method;

  /// [doseAndRate] /// The amount of medication administered.
  final List<DosageDoseAndRate>? doseAndRate;

  /// [maxDosePerPeriod] /// Upper limit on medication per unit of time.
  final Ratio? maxDosePerPeriod;

  /// [maxDosePerAdministration] /// Upper limit on medication per administration.
  final Quantity? maxDosePerAdministration;

  /// [maxDosePerLifetime] /// Upper limit on medication per lifetime of the patient.
  final Quantity? maxDosePerLifetime;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (sequence?.value != null) {
      json['sequence'] = sequence!.value;
    }
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.value;
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (additionalInstruction != null && additionalInstruction!.isNotEmpty) {
      json['additionalInstruction'] = additionalInstruction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (patientInstruction?.value != null) {
      json['patientInstruction'] = patientInstruction!.value;
    }
    if (patientInstructionElement != null) {
      json['_patientInstruction'] = patientInstructionElement!.toJson();
    }
    if (timing != null) {
      json['timing'] = timing!.toJson();
    }
    if (asNeededBoolean?.value != null) {
      json['asNeededBoolean'] = asNeededBoolean!.value;
    }
    if (asNeededBooleanElement != null) {
      json['_asNeededBoolean'] = asNeededBooleanElement!.toJson();
    }
    if (asNeededCodeableConcept != null) {
      json['asNeededCodeableConcept'] = asNeededCodeableConcept!.toJson();
    }
    if (site != null) {
      json['site'] = site!.toJson();
    }
    if (route != null) {
      json['route'] = route!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (doseAndRate != null && doseAndRate!.isNotEmpty) {
      json['doseAndRate'] = doseAndRate!
          .map<dynamic>((DosageDoseAndRate v) => v.toJson())
          .toList();
    }
    if (maxDosePerPeriod != null) {
      json['maxDosePerPeriod'] = maxDosePerPeriod!.toJson();
    }
    if (maxDosePerAdministration != null) {
      json['maxDosePerAdministration'] = maxDosePerAdministration!.toJson();
    }
    if (maxDosePerLifetime != null) {
      json['maxDosePerLifetime'] = maxDosePerLifetime!.toJson();
    }
    return json;
  }

  factory Dosage.fromJson(Map<String, dynamic> json) {
    return Dosage(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: json['sequence'] != null ? FhirInteger(json['sequence']) : null,
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(json['_sequence'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      additionalInstruction: json['additionalInstruction'] != null
          ? (json['additionalInstruction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      patientInstruction: json['patientInstruction'] != null
          ? FhirString(json['patientInstruction'])
          : null,
      patientInstructionElement: json['_patientInstruction'] != null
          ? Element.fromJson(
              json['_patientInstruction'] as Map<String, dynamic>)
          : null,
      timing: json['timing'] != null
          ? Timing.fromJson(json['timing'] as Map<String, dynamic>)
          : null,
      asNeededBoolean: json['asNeededBoolean'] != null
          ? FhirBoolean(json['asNeededBoolean'])
          : null,
      asNeededBooleanElement: json['_asNeededBoolean'] != null
          ? Element.fromJson(json['_asNeededBoolean'] as Map<String, dynamic>)
          : null,
      asNeededCodeableConcept: json['asNeededCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['asNeededCodeableConcept'] as Map<String, dynamic>)
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(json['site'] as Map<String, dynamic>)
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(json['route'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      doseAndRate: json['doseAndRate'] != null
          ? (json['doseAndRate'] as List<dynamic>)
              .map<DosageDoseAndRate>((dynamic v) =>
                  DosageDoseAndRate.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      maxDosePerPeriod: json['maxDosePerPeriod'] != null
          ? Ratio.fromJson(json['maxDosePerPeriod'] as Map<String, dynamic>)
          : null,
      maxDosePerAdministration: json['maxDosePerAdministration'] != null
          ? Quantity.fromJson(
              json['maxDosePerAdministration'] as Map<String, dynamic>)
          : null,
      maxDosePerLifetime: json['maxDosePerLifetime'] != null
          ? Quantity.fromJson(
              json['maxDosePerLifetime'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [type] /// The kind of dose or rate specified, for example, ordered or calculated.
  final CodeableConcept? type;

  /// [doseRange] /// Amount of medication per dose.
  final Range? doseRange;

  /// [doseQuantity] /// Amount of medication per dose.
  final Quantity? doseQuantity;

  /// [rateRatio] /// Amount of medication per unit of time.
  final Ratio? rateRatio;

  /// [rateRange] /// Amount of medication per unit of time.
  final Range? rateRange;

  /// [rateQuantity] /// Amount of medication per unit of time.
  final Quantity? rateQuantity;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (doseRange != null) {
      json['doseRange'] = doseRange!.toJson();
    }
    if (doseQuantity != null) {
      json['doseQuantity'] = doseQuantity!.toJson();
    }
    if (rateRatio != null) {
      json['rateRatio'] = rateRatio!.toJson();
    }
    if (rateRange != null) {
      json['rateRange'] = rateRange!.toJson();
    }
    if (rateQuantity != null) {
      json['rateQuantity'] = rateQuantity!.toJson();
    }
    return json;
  }

  factory DosageDoseAndRate.fromJson(Map<String, dynamic> json) {
    return DosageDoseAndRate(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      doseRange: json['doseRange'] != null
          ? Range.fromJson(json['doseRange'] as Map<String, dynamic>)
          : null,
      doseQuantity: json['doseQuantity'] != null
          ? Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>)
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>)
          : null,
      rateRange: json['rateRange'] != null
          ? Range.fromJson(json['rateRange'] as Map<String, dynamic>)
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>)
          : null,
    );
  }
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
