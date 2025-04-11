import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Ratio, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [RatioBuilder]
/// A relationship of two Quantity values - expressed as a numerator and a
/// denominator.
class RatioBuilder extends DataTypeBuilder
    implements
        DetailXGoalTargetBuilder,
        PresentationXIngredientStrengthBuilder,
        ConcentrationXIngredientStrengthBuilder,
        StrengthXIngredientReferenceStrengthBuilder,
        RateXMedicationAdministrationDosageBuilder,
        RateXNutritionOrderAdministrationBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        QuantityXServiceRequestBuilder,
        DefaultValueXStructureMapSourceBuilder,
        AmountXSubstanceDefinitionRelationshipBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        RateXDosageDoseAndRateBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [RatioBuilder]

  RatioBuilder({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
    super.disallowExtensions,
    super.objectPath = 'RatioBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RatioBuilder.empty() => RatioBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RatioBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Ratio';
    return RatioBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      numerator: JsonParser.parseObject<QuantityBuilder>(
        json,
        'numerator',
        QuantityBuilder.fromJson,
        '$objectPath.numerator',
      ),
      denominator: JsonParser.parseObject<QuantityBuilder>(
        json,
        'denominator',
        QuantityBuilder.fromJson,
        '$objectPath.denominator',
      ),
    );
  }

  /// Deserialize [RatioBuilder]
  /// from a [String] or [YamlMap] object
  factory RatioBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RatioBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RatioBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RatioBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RatioBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RatioBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RatioBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Ratio';

  /// [numerator]
  /// The value of the numerator.
  QuantityBuilder? numerator;

  /// [denominator]
  /// The value of the denominator.
  QuantityBuilder? denominator;

  /// Converts a [RatioBuilder]
  /// to [Ratio]
  @override
  Ratio build() => Ratio.fromJson(toJson());

  /// Converts a [RatioBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numerator':
        {
          if (child is QuantityBuilder) {
            numerator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'denominator':
        {
          if (child is QuantityBuilder) {
            denominator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'numerator':
        return ['QuantityBuilder'];
      case 'denominator':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RatioBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'numerator':
        {
          numerator = QuantityBuilder.empty();
          return;
        }
      case 'denominator':
        {
          denominator = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RatioBuilder clone() => throw UnimplementedError();
  @override
  RatioBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    QuantityBuilder? numerator,
    QuantityBuilder? denominator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = RatioBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      numerator: numerator ?? this.numerator,
      denominator: denominator ?? this.denominator,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! RatioBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numerator,
      o.numerator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      denominator,
      o.denominator,
    )) {
      return false;
    }
    return true;
  }
}
