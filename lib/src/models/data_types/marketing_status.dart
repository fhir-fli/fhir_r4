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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(country, o.country)) {
      return false;
    }
    if (!equalsDeepWithNull(jurisdiction, o.jurisdiction)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(dateRange, o.dateRange)) {
      return false;
    }
    if (!equalsDeepWithNull(restoreDate, o.restoreDate)) {
      return false;
    }
    return true;
  }
}
