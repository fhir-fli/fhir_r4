import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show HumanName, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [HumanNameBuilder]
/// A human's name with the ability to identify parts and usage.
class HumanNameBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [HumanNameBuilder]

  HumanNameBuilder({
    super.id,
    super.extension_,
    this.use,
    this.text,
    this.family,
    this.given,
    this.prefix,
    this.suffix,
    this.period,
    super.disallowExtensions,
    super.objectPath = 'HumanNameBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory HumanNameBuilder.empty() => HumanNameBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HumanNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'HumanName';
    return HumanNameBuilder(
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
      use: JsonParser.parsePrimitive<NameUseBuilder>(
        json,
        'use',
        NameUseBuilder.fromJson,
        '$objectPath.use',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      family: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'family',
        FhirStringBuilder.fromJson,
        '$objectPath.family',
      ),
      given: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'given',
        FhirStringBuilder.fromJson,
        '$objectPath.given',
      ),
      prefix: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'prefix',
        FhirStringBuilder.fromJson,
        '$objectPath.prefix',
      ),
      suffix: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'suffix',
        FhirStringBuilder.fromJson,
        '$objectPath.suffix',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [HumanNameBuilder]
  /// from a [String] or [YamlMap] object
  factory HumanNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HumanNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HumanNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HumanNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HumanNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HumanNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HumanNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HumanName';

  /// [use]
  /// Identifies the purpose for this name.
  NameUseBuilder? use;

  /// [text]
  /// Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the
  /// specific parts.
  FhirStringBuilder? text;

  /// [family]
  /// The part of a name that links to the genealogy. In some cultures (e.g.
  /// Eritrea) the family name of a son is the first name of his father.
  FhirStringBuilder? family;

  /// [given]
  /// Given name.
  List<FhirStringBuilder>? given;

  /// [prefix]
  /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the start of
  /// the name.
  List<FhirStringBuilder>? prefix;

  /// [suffix]
  /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the end of the
  /// name.
  List<FhirStringBuilder>? suffix;

  /// [period]
  /// Indicates the period of time when this name was valid for the named
  /// person.
  PeriodBuilder? period;

  /// converts a [HumanNameBuilder]
  /// to [HumanName]
  @override
  HumanName build() => HumanName.fromJson(toJson());

  /// converts a [HumanNameBuilder]
  /// to [Map<String, dynamic>]
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
    addField('use', use);
    addField('text', text);
    addField('family', family);
    addField('given', given);
    addField('prefix', prefix);
    addField('suffix', suffix);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'use',
      'text',
      'family',
      'given',
      'prefix',
      'suffix',
      'period',
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
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'family':
        if (family != null) {
          fields.add(family!);
        }
      case 'given':
        if (given != null) {
          fields.addAll(given!);
        }
      case 'prefix':
        if (prefix != null) {
          fields.addAll(prefix!);
        }
      case 'suffix':
        if (suffix != null) {
          fields.addAll(suffix!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
      case 'use':
        {
          if (child is NameUseBuilder) {
            use = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'family':
        {
          if (child is FhirStringBuilder) {
            family = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'given':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            given = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            given = [...(given ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prefix':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            prefix = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            prefix = [...(prefix ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'suffix':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            suffix = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            suffix = [...(suffix ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
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
      case 'use':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'family':
        return ['FhirStringBuilder'];
      case 'given':
        return ['FhirStringBuilder'];
      case 'prefix':
        return ['FhirStringBuilder'];
      case 'suffix':
        return ['FhirStringBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HumanNameBuilder]
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
      case 'use':
        {
          use = NameUseBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'family':
        {
          family = FhirStringBuilder.empty();
          return;
        }
      case 'given':
        {
          given = <FhirStringBuilder>[];
          return;
        }
      case 'prefix':
        {
          prefix = <FhirStringBuilder>[];
          return;
        }
      case 'suffix':
        {
          suffix = <FhirStringBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
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
    bool use = false,
    bool text = false,
    bool family = false,
    bool given = false,
    bool prefix = false,
    bool suffix = false,
    bool period = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (use) this.use = null;
    if (text) this.text = null;
    if (family) this.family = null;
    if (given) this.given = null;
    if (prefix) this.prefix = null;
    if (suffix) this.suffix = null;
    if (period) this.period = null;
  }

  @override
  HumanNameBuilder clone() => throw UnimplementedError();
  @override
  HumanNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    NameUseBuilder? use,
    FhirStringBuilder? text,
    FhirStringBuilder? family,
    List<FhirStringBuilder>? given,
    List<FhirStringBuilder>? prefix,
    List<FhirStringBuilder>? suffix,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = HumanNameBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      text: text ?? this.text,
      family: family ?? this.family,
      given: given ?? this.given,
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      period: period ?? this.period,
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
    if (o is! HumanNameBuilder) {
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
      use,
      o.use,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      family,
      o.family,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      given,
      o.given,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      prefix,
      o.prefix,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      suffix,
      o.suffix,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}
