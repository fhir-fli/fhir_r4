import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Dosage]
/// Indicates how the medication is/was taken or should be taken by the
/// patient.
class Dosage extends BackboneType {
  /// Primary constructor for
  /// [Dosage]

  const Dosage({
    super.id,
    super.extension_,
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
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Dosage.fromJson(
    Map<String, dynamic> json,
  ) {
    return Dosage(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      sequence: (json['sequence'] != null || json['_sequence'] != null)
          ? FhirInteger.fromJson({
              'value': json['sequence'],
              '_value': json['_sequence'],
            })
          : null,
      text: (json['text'] != null || json['_text'] != null)
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
      patientInstruction: (json['patientInstruction'] != null ||
              json['_patientInstruction'] != null)
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
      asNeededBoolean:
          (json['asNeededBoolean'] != null || json['_asNeededBoolean'] != null)
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

  /// Deserialize [Dosage]
  /// from a [String] or [YamlMap] object
  factory Dosage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Dosage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Dosage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Dosage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Dosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Dosage.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('sequence', sequence);
    addField('text', text);
    if (additionalInstruction != null && additionalInstruction!.isNotEmpty) {
      json['additionalInstruction'] =
          additionalInstruction!.map((e) => e.toJson()).toList();
    }

    addField('patientInstruction', patientInstruction);
    if (timing != null) {
      json['timing'] = timing!.toJson();
    }

    addField('asNeededBoolean', asNeededBoolean);
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
      json['doseAndRate'] = doseAndRate!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [DosageDoseAndRate]
/// The amount of medication administered.
class DosageDoseAndRate extends Element {
  /// Primary constructor for
  /// [DosageDoseAndRate]

  const DosageDoseAndRate({
    super.id,
    super.extension_,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) {
    return DosageDoseAndRate(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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

  /// Deserialize [DosageDoseAndRate]
  /// from a [String] or [YamlMap] object
  factory DosageDoseAndRate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DosageDoseAndRate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DosageDoseAndRate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DosageDoseAndRate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DosageDoseAndRate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DosageDoseAndRate.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
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
    );
  }
}
