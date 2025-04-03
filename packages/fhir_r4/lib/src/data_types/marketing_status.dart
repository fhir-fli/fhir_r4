import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MarketingStatus]
/// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class MarketingStatus extends BackboneType {
  /// Primary constructor for
  /// [MarketingStatus]

  const MarketingStatus({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.country,
    this.jurisdiction,
    required this.status,
    this.dateRange,
    this.restoreDate,
    super.disallowExtensions,
    super.objectPath = 'MarketingStatus',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MarketingStatus.empty() => MarketingStatus(
        status: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MarketingStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'MarketingStatus';
    return MarketingStatus(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      country: JsonParser.parseObject<CodeableConcept>(
        json,
        'country',
        CodeableConcept.fromJson,
        '$objectPath.country',
      ),
      jurisdiction: JsonParser.parseObject<CodeableConcept>(
        json,
        'jurisdiction',
        CodeableConcept.fromJson,
        '$objectPath.jurisdiction',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      )!,
      dateRange: JsonParser.parseObject<Period>(
        json,
        'dateRange',
        Period.fromJson,
        '$objectPath.dateRange',
      ),
      restoreDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'restoreDate',
        FhirDateTime.fromJson,
        '$objectPath.restoreDate',
      ),
    );
  }

  /// Deserialize [MarketingStatus]
  /// from a [String] or [YamlMap] object
  factory MarketingStatus.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MarketingStatus.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MarketingStatus.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MarketingStatus '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MarketingStatus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MarketingStatus.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MarketingStatus.fromJson(json);
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
  final CodeableConcept? country;

  /// [jurisdiction]
  /// Where a Medicines Regulatory Agency has granted a marketing
  /// authorisation for which specific provisions within a jurisdiction
  /// apply, the jurisdiction can be specified using an appropriate
  /// controlled terminology The controlled term and the controlled term
  /// identifier shall be specified.
  final CodeableConcept? jurisdiction;

  /// [status]
  /// This attribute provides information on the status of the marketing of
  /// the medicinal product See ISO/TS 20443 for more information and
  /// examples.
  final CodeableConcept status;

  /// [dateRange]
  /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market”
  /// refers to the release of the Medicinal Product into the distribution
  /// chain.
  final Period? dateRange;

  /// [restoreDate]
  /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market”
  /// refers to the release of the Medicinal Product into the distribution
  /// chain.
  final FhirDateTime? restoreDate;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'country',
      country,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'status',
      status,
    );
    addField(
      'dateRange',
      dateRange,
    );
    addField(
      'restoreDate',
      restoreDate,
    );
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
        fields.add(status);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'country':
        {
          if (child is CodeableConcept) {
            return copyWith(country: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is CodeableConcept) {
            return copyWith(jurisdiction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is CodeableConcept) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateRange':
        {
          if (child is Period) {
            return copyWith(dateRange: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'restoreDate':
        {
          if (child is FhirDateTime) {
            return copyWith(restoreDate: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'country':
        return ['CodeableConcept'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'status':
        return ['CodeableConcept'];
      case 'dateRange':
        return ['Period'];
      case 'restoreDate':
        return ['FhirDateTime'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MarketingStatus]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MarketingStatus createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'country':
        {
          return copyWith(
            country: CodeableConcept.empty(),
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: CodeableConcept.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: CodeableConcept.empty(),
          );
        }
      case 'dateRange':
        {
          return copyWith(
            dateRange: Period.empty(),
          );
        }
      case 'restoreDate':
        {
          return copyWith(
            restoreDate: FhirDateTime.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MarketingStatus clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool country = false,
    bool jurisdiction = false,
    bool dateRange = false,
    bool restoreDate = false,
  }) {
    return MarketingStatus(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      country: country ? null : this.country,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      status: status,
      dateRange: dateRange ? null : this.dateRange,
      restoreDate: restoreDate ? null : this.restoreDate,
    );
  }

  @override
  MarketingStatus clone() => throw UnimplementedError();
  @override
  MarketingStatus copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? country,
    CodeableConcept? jurisdiction,
    CodeableConcept? status,
    Period? dateRange,
    FhirDateTime? restoreDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return MarketingStatus(
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
      country: country?.copyWith(
            objectPath: '$newObjectPath.country',
          ) ??
          this.country,
      jurisdiction: jurisdiction?.copyWith(
            objectPath: '$newObjectPath.jurisdiction',
          ) ??
          this.jurisdiction,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      dateRange: dateRange?.copyWith(
            objectPath: '$newObjectPath.dateRange',
          ) ??
          this.dateRange,
      restoreDate: restoreDate?.copyWith(
            objectPath: '$newObjectPath.restoreDate',
          ) ??
          this.restoreDate,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MarketingStatus) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
