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
    super.objectPath = 'Dosage',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Dosage.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Dosage';
    return Dosage(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'sequence',
        FhirInteger.fromJson,
        '$objectPath.sequence',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.additionalInstruction'}),
            ),
          )
          .toList(),
      patientInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'patientInstruction',
        FhirString.fromJson,
        '$objectPath.patientInstruction',
      ),
      timing: JsonParser.parseObject<Timing>(
        json,
        'timing',
        Timing.fromJson,
        '$objectPath.timing',
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXDosage>(
        json,
        {
          'asNeededBoolean': FhirBoolean.fromJson,
          'asNeededCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      site: JsonParser.parseObject<CodeableConcept>(
        json,
        'site',
        CodeableConcept.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConcept>(
        json,
        'route',
        CodeableConcept.fromJson,
        '$objectPath.route',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)
          ?.map<DosageDoseAndRate>(
            (v) => DosageDoseAndRate.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.doseAndRate'}),
            ),
          )
          .toList(),
      maxDosePerPeriod: JsonParser.parseObject<Ratio>(
        json,
        'maxDosePerPeriod',
        Ratio.fromJson,
        '$objectPath.maxDosePerPeriod',
      ),
      maxDosePerAdministration: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerAdministration',
        Quantity.fromJson,
        '$objectPath.maxDosePerAdministration',
      ),
      maxDosePerLifetime: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerLifetime',
        Quantity.fromJson,
        '$objectPath.maxDosePerLifetime',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('text', text);
    addField('additionalInstruction', additionalInstruction);
    addField('patientInstruction', patientInstruction);
    addField('timing', timing);
    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField('asNeeded${fhirType.capitalize()}', asNeededX);
    }

    addField('site', site);
    addField('route', route);
    addField('method', method);
    addField('doseAndRate', doseAndRate);
    addField('maxDosePerPeriod', maxDosePerPeriod);
    addField('maxDosePerAdministration', maxDosePerAdministration);
    addField('maxDosePerLifetime', maxDosePerLifetime);
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
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Dosage(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      additionalInstruction: additionalInstruction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additionalInstruction',
                ),
              )
              .toList() ??
          this.additionalInstruction,
      patientInstruction: patientInstruction?.copyWith(
            objectPath: '$newObjectPath.patientInstruction',
          ) ??
          this.patientInstruction,
      timing: timing?.copyWith(
            objectPath: '$newObjectPath.timing',
          ) ??
          this.timing,
      asNeededX: asNeededX?.copyWith(
            objectPath: '$newObjectPath.asNeededX',
          ) as AsNeededXDosage? ??
          this.asNeededX,
      site: site?.copyWith(
            objectPath: '$newObjectPath.site',
          ) ??
          this.site,
      route: route?.copyWith(
            objectPath: '$newObjectPath.route',
          ) ??
          this.route,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      doseAndRate: doseAndRate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.doseAndRate',
                ),
              )
              .toList() ??
          this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod?.copyWith(
            objectPath: '$newObjectPath.maxDosePerPeriod',
          ) ??
          this.maxDosePerPeriod,
      maxDosePerAdministration: maxDosePerAdministration?.copyWith(
            objectPath: '$newObjectPath.maxDosePerAdministration',
          ) ??
          this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime?.copyWith(
            objectPath: '$newObjectPath.maxDosePerLifetime',
          ) ??
          this.maxDosePerLifetime,
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
    super.objectPath = 'DosageDoseAndRate',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'DosageDoseAndRate';
    return DosageDoseAndRate(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      doseX: JsonParser.parsePolymorphic<DoseXDosageDoseAndRate>(
        json,
        {
          'doseRange': Range.fromJson,
          'doseQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
      rateX: JsonParser.parsePolymorphic<RateXDosageDoseAndRate>(
        json,
        {
          'rateRatio': Ratio.fromJson,
          'rateRange': Range.fromJson,
          'rateQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('type', type);
    if (doseX != null) {
      final fhirType = doseX!.fhirType;
      addField('dose${fhirType.capitalize()}', doseX);
    }

    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField('rate${fhirType.capitalize()}', rateX);
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
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return DosageDoseAndRate(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      doseX: doseX?.copyWith(
            objectPath: '$newObjectPath.doseX',
          ) as DoseXDosageDoseAndRate? ??
          this.doseX,
      rateX: rateX?.copyWith(
            objectPath: '$newObjectPath.rateX',
          ) as RateXDosageDoseAndRate? ??
          this.rateX,
    );
  }
}
