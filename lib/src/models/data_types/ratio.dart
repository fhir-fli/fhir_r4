import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Ratio]
/// A relationship of two Quantity values - expressed as a numerator and a
/// denominator.
class Ratio extends DataType
    implements
        DetailXGoalTarget,
        PresentationXIngredientStrength,
        ConcentrationXIngredientStrength,
        StrengthXIngredientReferenceStrength,
        RateXMedicationAdministrationDosage,
        RateXNutritionOrderAdministration,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        QuantityXServiceRequest,
        DefaultValueXStructureMapSource,
        AmountXSubstanceDefinitionRelationship,
        ValueXTaskInput,
        ValueXTaskOutput,
        RateXDosageDoseAndRate,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Ratio]

  const Ratio({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Ratio.fromJson(
    Map<String, dynamic> json,
  ) {
    return Ratio(
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
      numerator: json['numerator'] != null
          ? Quantity.fromJson(
              json['numerator'] as Map<String, dynamic>,
            )
          : null,
      denominator: json['denominator'] != null
          ? Quantity.fromJson(
              json['denominator'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Ratio]
  /// from a [String] or [YamlMap] object
  factory Ratio.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Ratio.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Ratio.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Ratio '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Ratio]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Ratio.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Ratio.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Ratio';

  /// [numerator]
  /// The value of the numerator.
  final Quantity? numerator;

  /// [denominator]
  /// The value of the denominator.
  final Quantity? denominator;
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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (numerator != null) {
      json['numerator'] = numerator!.toJson();
    }

    if (denominator != null) {
      json['denominator'] = denominator!.toJson();
    }

    return json;
  }

  @override
  Ratio clone() => throw UnimplementedError();
  @override
  Ratio copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? numerator,
    Quantity? denominator,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Ratio(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      numerator: numerator ?? this.numerator,
      denominator: denominator ?? this.denominator,
    );
  }
}
