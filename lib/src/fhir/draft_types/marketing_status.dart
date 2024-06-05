// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'marketing_status.freezed.dart';
part 'marketing_status.g.dart';

/// [MarketingStatus] The marketing status describes the date when a
@freezed
class MarketingStatus with _$MarketingStatus implements Element {
  /// [MarketingStatus] The marketing status describes the date when a
  const MarketingStatus._();

  /// [MarketingStatus] The marketing status describes the date when a
  /// medicinal product is actually put on the market or the date as of which it
  ///  is no longer available.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [country] The country in which the marketing authorisation has been
  /// granted shall be specified It should be specified using the ISO 3166 ‑ 1
  ///  alpha-2 code elements.
  ///
  /// [jurisdiction] Where a Medicines Regulatory Agency has granted a
  /// marketing authorisation for which specific provisions within a
  /// jurisdiction apply, the jurisdiction can be specified using an appropriate
  /// controlled terminology The controlled term and the controlled term
  ///  identifier shall be specified.
  ///
  /// [status] This attribute provides information on the status of the
  /// marketing of the medicinal product See ISO/TS 20443 for more information
  ///  and examples.
  ///
  /// [dateRange] The date when the Medicinal Product is placed on the market
  /// by the Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market”
  /// refers to the release of the Medicinal Product into the distribution
  ///  chain.
  ///
  /// [restoreDate] The date when the Medicinal Product is placed on the market
  /// by the Marketing Authorisation Holder (or where applicable, the
  /// manufacturer/distributor) in a country and/or jurisdiction shall be
  /// provided A complete date consisting of day, month and year shall be
  /// specified using the ISO 8601 date format NOTE “Placed on the market”
  /// refers to the release of the Medicinal Product into the distribution
  ///  chain.
  ///
  /// [restoreDateElement] Extensions for restoreDate
  const factory MarketingStatus({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [country] The country in which the marketing authorisation has been
    /// granted shall be specified It should be specified using the ISO 3166 ‑ 1
    ///  alpha-2 code elements.
    CodeableConcept? country,

    /// [jurisdiction] Where a Medicines Regulatory Agency has granted a
    /// marketing authorisation for which specific provisions within a
    /// jurisdiction apply, the jurisdiction can be specified using an appropriate
    /// controlled terminology The controlled term and the controlled term
    ///  identifier shall be specified.
    CodeableConcept? jurisdiction,

    /// [status] This attribute provides information on the status of the
    /// marketing of the medicinal product See ISO/TS 20443 for more information
    ///  and examples.
    required CodeableConcept status,

    /// [dateRange] The date when the Medicinal Product is placed on the market
    /// by the Marketing Authorisation Holder (or where applicable, the
    /// manufacturer/distributor) in a country and/or jurisdiction shall be
    /// provided A complete date consisting of day, month and year shall be
    /// specified using the ISO 8601 date format NOTE “Placed on the market”
    /// refers to the release of the Medicinal Product into the distribution
    ///  chain.
    Period? dateRange,

    /// [restoreDate] The date when the Medicinal Product is placed on the market
    /// by the Marketing Authorisation Holder (or where applicable, the
    /// manufacturer/distributor) in a country and/or jurisdiction shall be
    /// provided A complete date consisting of day, month and year shall be
    /// specified using the ISO 8601 date format NOTE “Placed on the market”
    /// refers to the release of the Medicinal Product into the distribution
    ///  chain.
    FhirDateTime? restoreDate,

    /// [restoreDateElement] Extensions for restoreDate
    @JsonKey(name: '_restoreDate') PrimitiveElement? restoreDateElement,
  }) = _MarketingStatus;

  @override
  String get fhirType => 'MarketingStatus';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MarketingStatus.fromYaml(dynamic yaml) => yaml is String
      ? MarketingStatus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MarketingStatus.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MarketingStatus cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MarketingStatus.fromJson(Map<String, dynamic> json) =>
      _$MarketingStatusFromJson(json);

  /// Acts like a constructor, returns a [MarketingStatus], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MarketingStatus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MarketingStatusFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
