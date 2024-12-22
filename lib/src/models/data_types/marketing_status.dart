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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return MarketingStatus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MarketingStatus(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      country: country ?? this.country,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      status: status ?? this.status,
      dateRange: dateRange ?? this.dateRange,
      restoreDate: restoreDate ?? this.restoreDate,
    );
  }
}
