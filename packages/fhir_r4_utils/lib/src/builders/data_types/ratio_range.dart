import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, StringExtensionForFHIR, RatioRange;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [RatioRange] to a Builder
extension BuilderRatioRange on RatioRange {
  /// Converts [RatioRange] to a [RatioRangeBuilder]
  RatioRangeBuilder get toBuilder => RatioRangeBuilder.fromJson(toJson());
}

/// [RatioRangeBuilder]
/// A range of ratios expressed as a low and high numerator and a
/// denominator.
class RatioRangeBuilder extends DataTypeBuilder
    implements
        PresentationXIngredientStrengthBuilder,
        ConcentrationXIngredientStrengthBuilder,
        StrengthXIngredientReferenceStrengthBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [RatioRangeBuilder]

  RatioRangeBuilder({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
    super.disallowExtensions,
    super.objectPath = 'RatioRangeBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RatioRangeBuilder.empty() => RatioRangeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RatioRangeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'RatioRange';
    return RatioRangeBuilder(
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
      lowNumerator: JsonParser.parseObject<QuantityBuilder>(
        json,
        'lowNumerator',
        QuantityBuilder.fromJson,
        '$objectPath.lowNumerator',
      ),
      highNumerator: JsonParser.parseObject<QuantityBuilder>(
        json,
        'highNumerator',
        QuantityBuilder.fromJson,
        '$objectPath.highNumerator',
      ),
      denominator: JsonParser.parseObject<QuantityBuilder>(
        json,
        'denominator',
        QuantityBuilder.fromJson,
        '$objectPath.denominator',
      ),
    );
  }

  /// Deserialize [RatioRangeBuilder]
  /// from a [String] or [YamlMap] object
  factory RatioRangeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RatioRangeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RatioRangeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RatioRangeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RatioRangeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RatioRangeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RatioRangeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RatioRange';

  /// [lowNumerator]
  /// The value of the low limit numerator.
  QuantityBuilder? lowNumerator;

  /// [highNumerator]
  /// The value of the high limit numerator.
  QuantityBuilder? highNumerator;

  /// [denominator]
  /// The value of the denominator.
  QuantityBuilder? denominator;

  /// Converts a RatioRangeBuilder to [RatioRange]
  RatioRange build() => RatioRange.fromJson(toJson());

  /// Converts a [RatioRangeBuilder] to a [Map<String, dynamic>]
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
    addField('lowNumerator', lowNumerator);
    addField('highNumerator', highNumerator);
    addField('denominator', denominator);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'lowNumerator',
      'highNumerator',
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
      case 'lowNumerator':
        if (lowNumerator != null) {
          fields.add(lowNumerator!);
        }
      case 'highNumerator':
        if (highNumerator != null) {
          fields.add(highNumerator!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lowNumerator':
        {
          if (child is QuantityBuilder) {
            lowNumerator = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'highNumerator':
        {
          if (child is QuantityBuilder) {
            highNumerator = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'denominator':
        {
          if (child is QuantityBuilder) {
            denominator = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'lowNumerator':
        return ['QuantityBuilder'];
      case 'highNumerator':
        return ['QuantityBuilder'];
      case 'denominator':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RatioRangeBuilder]
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
      case 'lowNumerator':
        {
          lowNumerator = QuantityBuilder.empty();
          return;
        }
      case 'highNumerator':
        {
          highNumerator = QuantityBuilder.empty();
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

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool lowNumerator = false,
    bool highNumerator = false,
    bool denominator = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (lowNumerator) this.lowNumerator = null;
    if (highNumerator) this.highNumerator = null;
    if (denominator) this.denominator = null;
  }

  @override
  RatioRangeBuilder clone() => throw UnimplementedError();
  @override
  RatioRangeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    QuantityBuilder? lowNumerator,
    QuantityBuilder? highNumerator,
    QuantityBuilder? denominator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = RatioRangeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      lowNumerator: lowNumerator ?? this.lowNumerator,
      highNumerator: highNumerator ?? this.highNumerator,
      denominator: denominator ?? this.denominator,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! RatioRangeBuilder) {
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
      lowNumerator,
      o.lowNumerator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      highNumerator,
      o.highNumerator,
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
