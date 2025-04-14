import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show MarketingStatus, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MarketingStatusBuilder]
/// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class MarketingStatusBuilder extends BackboneTypeBuilder {
  /// Primary constructor for
  /// [MarketingStatusBuilder]

  MarketingStatusBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.country,
    this.jurisdiction,
    this.status,
    this.dateRange,
    this.restoreDate,
    super.disallowExtensions,
    super.objectPath = 'MarketingStatusBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MarketingStatusBuilder.empty() => MarketingStatusBuilder(
        status: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MarketingStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'MarketingStatus';
    return MarketingStatusBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      country: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'country',
        CodeableConceptBuilder.fromJson,
        '$objectPath.country',
      ),
      jurisdiction: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'jurisdiction',
        CodeableConceptBuilder.fromJson,
        '$objectPath.jurisdiction',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      dateRange: JsonParser.parseObject<PeriodBuilder>(
        json,
        'dateRange',
        PeriodBuilder.fromJson,
        '$objectPath.dateRange',
      ),
      restoreDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'restoreDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.restoreDate',
      ),
    );
  }

  /// Deserialize [MarketingStatusBuilder]
  /// from a [String] or [YamlMap] object
  factory MarketingStatusBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MarketingStatusBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MarketingStatusBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MarketingStatusBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MarketingStatusBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MarketingStatusBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MarketingStatusBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MarketingStatus';

  /// [country]
  /// The country in which the marketing authorisation has been granted shall
  /// be specified It should be specified using the ISO 3166 ‑ 1 alpha-2 code
  /// elements.
  CodeableConceptBuilder? country;

  /// [jurisdiction]
  /// Where a Medicines Regulatory Agency has granted a marketing
  /// authorisation for which specific provisions within a jurisdiction
  /// apply, the jurisdiction can be specified using an appropriate
  /// controlled terminology The controlled term and the controlled term
  /// identifier shall be specified.
  CodeableConceptBuilder? jurisdiction;

  /// [status]
  /// This attribute provides information on the status of the marketing of
  /// the medicinal product See ISO/TS 20443 for more information and
  /// examples.
  CodeableConceptBuilder? status;

  /// [dateRange]
  /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market”
  /// refers to the release of the Medicinal Product into the distribution
  /// chain.
  PeriodBuilder? dateRange;

  /// [restoreDate]
  /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market”
  /// refers to the release of the Medicinal Product into the distribution
  /// chain.
  FhirDateTimeBuilder? restoreDate;

  /// Converts a [MarketingStatusBuilder]
  /// to [MarketingStatus]
  @override
  MarketingStatus build() => MarketingStatus.fromJson(toJson());

  /// Converts a [MarketingStatusBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('country', country);
    addField('jurisdiction', jurisdiction);
    addField('status', status);
    addField('dateRange', dateRange);
    addField('restoreDate', restoreDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'country',
      'jurisdiction',
      'status',
      'dateRange',
      'restoreDate',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'country':
        if (country != null) {
          fields.add(country!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'dateRange':
        if (dateRange != null) {
          fields.add(dateRange!);
        }
      case 'restoreDate':
        if (restoreDate != null) {
          fields.add(restoreDate!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'country':
        {
          if (child is CodeableConceptBuilder) {
            country = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is CodeableConceptBuilder) {
            jurisdiction = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dateRange':
        {
          if (child is PeriodBuilder) {
            dateRange = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'restoreDate':
        {
          if (child is FhirDateTimeBuilder) {
            restoreDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                restoreDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'country':
        return ['CodeableConceptBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'dateRange':
        return ['PeriodBuilder'];
      case 'restoreDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MarketingStatusBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'country':
        {
          country = CodeableConceptBuilder.empty();
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'dateRange':
        {
          dateRange = PeriodBuilder.empty();
          return;
        }
      case 'restoreDate':
        {
          restoreDate = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MarketingStatusBuilder clone() => throw UnimplementedError();
  @override
  MarketingStatusBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? country,
    CodeableConceptBuilder? jurisdiction,
    CodeableConceptBuilder? status,
    PeriodBuilder? dateRange,
    FhirDateTimeBuilder? restoreDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = MarketingStatusBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      country: country ?? this.country,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      status: status ?? this.status,
      dateRange: dateRange ?? this.dateRange,
      restoreDate: restoreDate ?? this.restoreDate,
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
    if (o is! MarketingStatusBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      country,
      o.country,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateRange,
      o.dateRange,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      restoreDate,
      o.restoreDate,
    )) {
      return false;
    }
    return true;
  }
}
