import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MonetaryComponent] Financial line items use this datatype to commonly
/// categorize the value, and other factors that may effect how the value
/// should be interpreted.

@freezed
class MonetaryComponent with _$MonetaryComponent {
  const MonetaryComponent._();

  const factory MonetaryComponent({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [type] The type of monetary component, what the value is to be used for
/// and how that should be applied in its context. e.g. A surchange would
/// increase the cost, a deduction would reduce the cost.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [code] A codable breakdown of the type of monetary component. e.g.
/// State Tax, Federal Tax, VIP-Discount.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [factor] The factor that has been applied to the base price (in another
/// monetary component value) when performing calculations.

    @JsonKey(name: 'factor') FhirDecimal? factor,
/// [_factor] Extensions for factor

    @JsonKey(name: '_factor') PrimitiveElement? factorElement,
/// [amount] The explicit value amount of the component (based on
/// type/code).

    @JsonKey(name: 'amount') Money? amount,
  }) = _$MonetaryComponent;

  @override
  String get fhirType => 'MonetaryComponent';

  factory MonetaryComponent.fromJson(Map<String, dynamic> json) =>
      _$MonetaryComponentFromJson(json);

  factory MonetaryComponent.fromYaml(dynamic yaml) => yaml is String
      ? MonetaryComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MonetaryComponent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MonetaryComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MonetaryComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MonetaryComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
