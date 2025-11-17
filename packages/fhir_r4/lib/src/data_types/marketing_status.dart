import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'marketing_status.g.dart';

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MarketingStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    return MarketingStatus(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      country: JsonParser.parseObject<CodeableConcept>(
        json,
        'country',
        CodeableConcept.fromJson,
      ),
      jurisdiction: JsonParser.parseObject<CodeableConcept>(
        json,
        'jurisdiction',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      )!,
      dateRange: JsonParser.parseObject<Period>(
        json,
        'dateRange',
        Period.fromJson,
      ),
      restoreDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'restoreDate',
        FhirDateTime.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  MarketingStatus clone() => copyWith();

  /// Copy function for [MarketingStatus]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MarketingStatusCopyWith<MarketingStatus> get copyWith =>
      _$MarketingStatusCopyWithImpl<MarketingStatus>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MarketingStatus) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      country,
      o.country,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      dateRange,
      o.dateRange,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      restoreDate,
      o.restoreDate,
    )) {
      return false;
    }
    return true;
  }
}
