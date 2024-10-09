import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MarketingStatus] /// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class MarketingStatus extends BackboneType {
  MarketingStatus({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.country,
    this.jurisdiction,
    required this.status,
    this.dateRange,
    this.restoreDate,
    this.restoreDateElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MarketingStatus';

  @Id()
  int dbId = 0;

  /// [country] /// The country in which the marketing authorisation has been granted shall be
  /// specified It should be specified using the ISO 3166 ‑ 1 alpha-2 code
  /// elements.
  final CodeableConcept? country;

  /// [jurisdiction] /// Where a Medicines Regulatory Agency has granted a marketing authorisation
  /// for which specific provisions within a jurisdiction apply, the jurisdiction
  /// can be specified using an appropriate controlled terminology The controlled
  /// term and the controlled term identifier shall be specified.
  final CodeableConcept? jurisdiction;

  /// [status] /// This attribute provides information on the status of the marketing of the
  /// medicinal product See ISO/TS 20443 for more information and examples.
  final CodeableConcept status;

  /// [dateRange] /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market” refers
  /// to the release of the Medicinal Product into the distribution chain.
  final Period? dateRange;

  /// [restoreDate] /// The date when the Medicinal Product is placed on the market by the
  /// Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market” refers
  /// to the release of the Medicinal Product into the distribution chain.
  final FhirDateTime? restoreDate;
  final Element? restoreDateElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (country != null) {
      json['country'] = country!.toJson();
    }
    if (jurisdiction != null) {
      json['jurisdiction'] = jurisdiction!.toJson();
    }
    json['status'] = status.toJson();
    if (dateRange != null) {
      json['dateRange'] = dateRange!.toJson();
    }
    if (restoreDate?.value != null) {
      json['restoreDate'] = restoreDate!.value;
    }
    if (restoreDateElement != null) {
      json['_restoreDate'] = restoreDateElement!.toJson();
    }
    return json;
  }

  factory MarketingStatus.fromJson(Map<String, dynamic> json) {
    return MarketingStatus(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      country: json['country'] != null
          ? CodeableConcept.fromJson(json['country'] as Map<String, dynamic>)
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? CodeableConcept.fromJson(
              json['jurisdiction'] as Map<String, dynamic>)
          : null,
      status: CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      dateRange: json['dateRange'] != null
          ? Period.fromJson(json['dateRange'] as Map<String, dynamic>)
          : null,
      restoreDate: json['restoreDate'] != null
          ? FhirDateTime(json['restoreDate'])
          : null,
      restoreDateElement: json['_restoreDate'] != null
          ? Element.fromJson(json['_restoreDate'] as Map<String, dynamic>)
          : null,
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
    Element? restoreDateElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      restoreDateElement: restoreDateElement ?? this.restoreDateElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MarketingStatus.fromYaml(dynamic yaml) => yaml is String
      ? MarketingStatus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MarketingStatus.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MarketingStatus cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MarketingStatus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MarketingStatus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
