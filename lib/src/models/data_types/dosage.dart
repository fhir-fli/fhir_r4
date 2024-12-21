import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Dosage]
/// Indicates how the medication is/was taken or should be taken by the
/// patient.
class Dosage extends BackboneType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
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
    this.asNeededX,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Dosage.fromJson(
    Map<String, dynamic> json,
  ) {
    return Dosage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'sequence',
        FhirInteger.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      patientInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'patientInstruction',
        FhirString.fromJson,
      ),
      timing: JsonParser.parseObject<Timing>(
        json,
        'timing',
        Timing.fromJson,
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXDosage>(json, {
        'asNeededBoolean': FhirBoolean.fromJson,
        'asNeededCodeableConcept': CodeableConcept.fromJson,
      }),
      site: JsonParser.parseObject<CodeableConcept>(
        json,
        'site',
        CodeableConcept.fromJson,
      ),
      route: JsonParser.parseObject<CodeableConcept>(
        json,
        'route',
        CodeableConcept.fromJson,
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)
          ?.map<DosageDoseAndRate>(
            (v) => DosageDoseAndRate.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      maxDosePerPeriod: JsonParser.parseObject<Ratio>(
        json,
        'maxDosePerPeriod',
        Ratio.fromJson,
      ),
      maxDosePerAdministration: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerAdministration',
        Quantity.fromJson,
      ),
      maxDosePerLifetime: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerLifetime',
        Quantity.fromJson,
      ),
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

  /// [asNeededX]
  /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the
  /// precondition for taking the Medication (CodeableConcept).
  final AsNeededXDosage? asNeededX;

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
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (sequence != null) {
      addField('sequence', sequence);
    }

    if (text != null) {
      addField('text', text);
    }

    if (additionalInstruction != null && additionalInstruction!.isNotEmpty) {
      json['additionalInstruction'] =
          additionalInstruction!.map((e) => e.toJson()).toList();
    }

    if (patientInstruction != null) {
      addField('patientInstruction', patientInstruction);
    }

    if (timing != null) {
      json['timing'] = timing!.toJson();
    }

    if (asNeededX != null) {
      addField('asNeeded${asNeededX!.fhirType.capitalize()}', asNeededX);
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
    AsNeededXDosage? asNeededX,
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
      asNeededX: asNeededX ?? this.asNeededX,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      doseAndRate: doseAndRate ?? this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod ?? this.maxDosePerPeriod,
      maxDosePerAdministration:
          maxDosePerAdministration ?? this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime ?? this.maxDosePerLifetime,
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
    this.doseX,
    this.rateX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) {
    return DosageDoseAndRate(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      doseX: JsonParser.parsePolymorphic<DoseXDosageDoseAndRate>(json, {
        'doseRange': Range.fromJson,
        'doseQuantity': Quantity.fromJson,
      }),
      rateX: JsonParser.parsePolymorphic<RateXDosageDoseAndRate>(json, {
        'rateRatio': Ratio.fromJson,
        'rateRange': Range.fromJson,
        'rateQuantity': Quantity.fromJson,
      }),
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

  /// [doseX]
  /// Amount of medication per dose.
  final DoseXDosageDoseAndRate? doseX;

  /// [rateX]
  /// Amount of medication per unit of time.
  final RateXDosageDoseAndRate? rateX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (doseX != null) {
      json['dose${doseX!.fhirType.capitalize()}'] = doseX!.toJson();
    }

    if (rateX != null) {
      json['rate${rateX!.fhirType.capitalize()}'] = rateX!.toJson();
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
    DoseXDosageDoseAndRate? doseX,
    RateXDosageDoseAndRate? rateX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DosageDoseAndRate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      doseX: doseX ?? this.doseX,
      rateX: rateX ?? this.rateX,
    );
  }
}
