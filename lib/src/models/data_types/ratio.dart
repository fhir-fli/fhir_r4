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
    super.objectPath = 'Ratio',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Ratio.empty() => const Ratio();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Ratio.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Ratio';
    return Ratio(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      numerator: JsonParser.parseObject<Quantity>(
        json,
        'numerator',
        Quantity.fromJson,
        '$objectPath.numerator',
      ),
      denominator: JsonParser.parseObject<Quantity>(
        json,
        'denominator',
        Quantity.fromJson,
        '$objectPath.denominator',
      ),
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
    if (json is Map<String, dynamic>) {
      return Ratio.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    addField('numerator', numerator);
    addField('denominator', denominator);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'numerator',
      'denominator',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'numerator':
        if (numerator != null) {
          fields.add(numerator!);
        }
      case 'denominator':
        if (denominator != null) {
          fields.add(denominator!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'numerator':
        {
          if (child is Quantity) {
            return copyWith(numerator: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'denominator':
        {
          if (child is Quantity) {
            return copyWith(denominator: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'numerator':
        return ['Quantity'];
      case 'denominator':
        return ['Quantity'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Ratio]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Ratio createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'numerator':
        {
          return copyWith(numerator: Quantity.empty());
        }
      case 'denominator':
        {
          return copyWith(denominator: Quantity.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  Ratio clone() => throw UnimplementedError();
  @override
  Ratio copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? numerator,
    Quantity? denominator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Ratio(
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
      numerator: numerator?.copyWith(
            objectPath: '$newObjectPath.numerator',
          ) ??
          this.numerator,
      denominator: denominator?.copyWith(
            objectPath: '$newObjectPath.denominator',
          ) ??
          this.denominator,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Ratio) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(numerator, o.numerator)) {
      return false;
    }
    if (!equalsDeepWithNull(denominator, o.denominator)) {
      return false;
    }
    return true;
  }
}
