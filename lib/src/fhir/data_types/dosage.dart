import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Dosage]
/// Indicates how the medication is/was taken or should be taken by the
/// patient.
class Dosage extends BackboneType {
  /// Primary constructor for [Dosage]

  Dosage({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.sequence,
    this.text,
    this.additionalInstruction,
    this.patientInstruction,
    this.timing,
    this.asNeededBoolean,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Dosage.fromJson(Map<String, dynamic> json) {
    return Dosage(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: json['sequence'] != null
          ? FhirInteger.fromJson({
              'value': json['sequence'],
              '_value': json['_sequence'],
            })
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      additionalInstruction: json['additionalInstruction'] != null
          ? (json['additionalInstruction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      patientInstruction: json['patientInstruction'] != null
          ? FhirString.fromJson({
              'value': json['patientInstruction'],
              '_value': json['_patientInstruction'],
            })
          : null,
      timing: json['timing'] != null
          ? Timing.fromJson(
              json['timing'] as Map<String, dynamic>,
            )
          : null,
      asNeededBoolean: json['asNeededBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['asNeededBoolean'],
              '_value': json['_asNeededBoolean'],
            })
          : null,
      asNeededCodeableConcept: json['asNeededCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['asNeededCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(
              json['site'] as Map<String, dynamic>,
            )
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(
              json['route'] as Map<String, dynamic>,
            )
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      doseAndRate: json['doseAndRate'] != null
          ? (json['doseAndRate'] as List<dynamic>)
              .map<DosageDoseAndRate>(
                (v) => DosageDoseAndRate.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      maxDosePerPeriod: json['maxDosePerPeriod'] != null
          ? Ratio.fromJson(
              json['maxDosePerPeriod'] as Map<String, dynamic>,
            )
          : null,
      maxDosePerAdministration: json['maxDosePerAdministration'] != null
          ? Quantity.fromJson(
              json['maxDosePerAdministration'] as Map<String, dynamic>,
            )
          : null,
      maxDosePerLifetime: json['maxDosePerLifetime'] != null
          ? Quantity.fromJson(
              json['maxDosePerLifetime'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Dosage] from a [String]
  /// or [YamlMap] object
  factory Dosage.fromYaml(dynamic yaml) => yaml is String
      ? Dosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Dosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Dosage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Dosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Dosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Dosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Dosage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [sequence]
  /// Indicates the order in which the dosage instructions should be applied
  /// or interpreted.
  final FhirInteger? sequence;

  /// [text]
  /// Free text dosage instructions e.g. SIG.
  final FhirString? text;

  /// [additionalInstruction]
  /// Supplemental instructions to the patient on how to take the medication
  /// (e.g. "with meals" or"take half to one hour before food") or warnings
  /// for the patient about the medication (e.g. "may cause drowsiness" or
  /// "avoid exposure of skin to direct sunlight or sunlamps").
  final List<CodeableConcept>? additionalInstruction;

  /// [patientInstruction]
  /// Instructions in terms that are understood by the patient or consumer.
  final FhirString? patientInstruction;

  /// [timing]
  /// When medication should be administered.
  final Timing? timing;

  /// [asNeededBoolean]
  /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the
  /// precondition for taking the Medication (CodeableConcept).
  final FhirBoolean? asNeededBoolean;

  /// [asNeededCodeableConcept]
  /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the
  /// precondition for taking the Medication (CodeableConcept).
  final CodeableConcept? asNeededCodeableConcept;

  /// [site]
  /// Body site to administer to.
  final CodeableConcept? site;

  /// [route]
  /// How drug should enter body.
  final CodeableConcept? route;

  /// [method]
  /// Technique for administering medication.
  final CodeableConcept? method;

  /// [doseAndRate]
  /// The amount of medication administered.
  final List<DosageDoseAndRate>? doseAndRate;

  /// [maxDosePerPeriod]
  /// Upper limit on medication per unit of time.
  final Ratio? maxDosePerPeriod;

  /// [maxDosePerAdministration]
  /// Upper limit on medication per administration.
  final Quantity? maxDosePerAdministration;

  /// [maxDosePerLifetime]
  /// Upper limit on medication per lifetime of the patient.
  final Quantity? maxDosePerLifetime;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (sequence != null) {
      final fieldJson3 = sequence!.toJson();
      json['sequence'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_sequence'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (additionalInstruction != null && additionalInstruction!.isNotEmpty) {
      final fieldJson5 = additionalInstruction!.map((e) => e.toJson()).toList();
      json['additionalInstruction'] =
          fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_additionalInstruction'] =
            fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (patientInstruction != null) {
      final fieldJson6 = patientInstruction!.toJson();
      json['patientInstruction'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_patientInstruction'] = fieldJson6['_value'];
      }
    }

    if (timing != null) {
      final fieldJson7 = timing!.toJson();
      json['timing'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_timing'] = fieldJson7['_value'];
      }
    }

    if (asNeededBoolean != null) {
      final fieldJson8 = asNeededBoolean!.toJson();
      json['asNeededBoolean'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_asNeededBoolean'] = fieldJson8['_value'];
      }
    }

    if (asNeededCodeableConcept != null) {
      final fieldJson9 = asNeededCodeableConcept!.toJson();
      json['asNeededCodeableConcept'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_asNeededCodeableConcept'] = fieldJson9['_value'];
      }
    }

    if (site != null) {
      final fieldJson10 = site!.toJson();
      json['site'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_site'] = fieldJson10['_value'];
      }
    }

    if (route != null) {
      final fieldJson11 = route!.toJson();
      json['route'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_route'] = fieldJson11['_value'];
      }
    }

    if (method != null) {
      final fieldJson12 = method!.toJson();
      json['method'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_method'] = fieldJson12['_value'];
      }
    }

    if (doseAndRate != null && doseAndRate!.isNotEmpty) {
      final fieldJson13 = doseAndRate!.map((e) => e.toJson()).toList();
      json['doseAndRate'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_doseAndRate'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    if (maxDosePerPeriod != null) {
      final fieldJson14 = maxDosePerPeriod!.toJson();
      json['maxDosePerPeriod'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_maxDosePerPeriod'] = fieldJson14['_value'];
      }
    }

    if (maxDosePerAdministration != null) {
      final fieldJson15 = maxDosePerAdministration!.toJson();
      json['maxDosePerAdministration'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_maxDosePerAdministration'] = fieldJson15['_value'];
      }
    }

    if (maxDosePerLifetime != null) {
      final fieldJson16 = maxDosePerLifetime!.toJson();
      json['maxDosePerLifetime'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_maxDosePerLifetime'] = fieldJson16['_value'];
      }
    }

    return json;
  }

  @override
  Dosage clone() => throw UnimplementedError();
  @override
  Dosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? sequence,
    FhirString? text,
    List<CodeableConcept>? additionalInstruction,
    FhirString? patientInstruction,
    Timing? timing,
    FhirBoolean? asNeededBoolean,
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
      text: text ?? this.text,
      additionalInstruction:
          additionalInstruction ?? this.additionalInstruction,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      timing: timing ?? this.timing,
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
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
}

/// [DosageDoseAndRate]
/// The amount of medication administered.
class DosageDoseAndRate extends Element {
  /// Primary constructor for [DosageDoseAndRate]

  DosageDoseAndRate({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRate.fromJson(Map<String, dynamic> json) {
    return DosageDoseAndRate(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      doseRange: json['doseRange'] != null
          ? Range.fromJson(
              json['doseRange'] as Map<String, dynamic>,
            )
          : null,
      doseQuantity: json['doseQuantity'] != null
          ? Quantity.fromJson(
              json['doseQuantity'] as Map<String, dynamic>,
            )
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(
              json['rateRatio'] as Map<String, dynamic>,
            )
          : null,
      rateRange: json['rateRange'] != null
          ? Range.fromJson(
              json['rateRange'] as Map<String, dynamic>,
            )
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(
              json['rateQuantity'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DosageDoseAndRate] from a [String]
  /// or [YamlMap] object
  factory DosageDoseAndRate.fromYaml(dynamic yaml) => yaml is String
      ? DosageDoseAndRate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DosageDoseAndRate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DosageDoseAndRate cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DosageDoseAndRate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DosageDoseAndRate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DosageDoseAndRate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DosageDoseAndRate';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The kind of dose or rate specified, for example, ordered or calculated.
  final CodeableConcept? type;

  /// [doseRange]
  /// Amount of medication per dose.
  final Range? doseRange;

  /// [doseQuantity]
  /// Amount of medication per dose.
  final Quantity? doseQuantity;

  /// [rateRatio]
  /// Amount of medication per unit of time.
  final Ratio? rateRatio;

  /// [rateRange]
  /// Amount of medication per unit of time.
  final Range? rateRange;

  /// [rateQuantity]
  /// Amount of medication per unit of time.
  final Quantity? rateQuantity;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson2 = type!.toJson();
      json['type'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_type'] = fieldJson2['_value'];
      }
    }

    if (doseRange != null) {
      final fieldJson3 = doseRange!.toJson();
      json['doseRange'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_doseRange'] = fieldJson3['_value'];
      }
    }

    if (doseQuantity != null) {
      final fieldJson4 = doseQuantity!.toJson();
      json['doseQuantity'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_doseQuantity'] = fieldJson4['_value'];
      }
    }

    if (rateRatio != null) {
      final fieldJson5 = rateRatio!.toJson();
      json['rateRatio'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_rateRatio'] = fieldJson5['_value'];
      }
    }

    if (rateRange != null) {
      final fieldJson6 = rateRange!.toJson();
      json['rateRange'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_rateRange'] = fieldJson6['_value'];
      }
    }

    if (rateQuantity != null) {
      final fieldJson7 = rateQuantity!.toJson();
      json['rateQuantity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_rateQuantity'] = fieldJson7['_value'];
      }
    }

    return json;
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
}
