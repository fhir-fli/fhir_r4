import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Quantity] A measured amount (or an amount that can potentially be
/// measured). Note that measured amounts include amounts that are not
/// precisely quantified, including amounts involving arbitrary units and
/// floating currencies.

@freezed
class Quantity with _$Quantity {
  const Quantity._();

  const factory Quantity({
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
/// [value] The value of the measured amount. The value includes an
/// implicit precision in the presentation of the value.

    @JsonKey(name: 'value') FhirDecimal? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
/// [comparator] How the value should be understood and represented -
/// whether the actual value is greater or less than the stated value due to
/// measurement issues; e.g. if the comparator is "<" , then the real value is
/// < stated value.

    @JsonKey(name: 'comparator') dynamic? comparator,
/// [_comparator] Extensions for comparator

    @JsonKey(name: '_comparator') PrimitiveElement? comparatorElement,
/// [unit] A human-readable form of the unit.

    @JsonKey(name: 'unit') String? unit,
/// [_unit] Extensions for unit

    @JsonKey(name: '_unit') PrimitiveElement? unitElement,
/// [system] The identification of the system that provides the coded form
/// of the unit.

    @JsonKey(name: 'system') FhirUri? system,
/// [_system] Extensions for system

    @JsonKey(name: '_system') PrimitiveElement? systemElement,
/// [code] A computer processable form of the unit in some unit
/// representation system.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
  }) = _$Quantity;

  @override
  String get fhirType => 'Quantity';

  factory Quantity.fromJson(Map<String, dynamic> json) =>
      _$QuantityFromJson(json);

  factory Quantity.fromYaml(dynamic yaml) => yaml is String
      ? Quantity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Quantity.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Quantity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Quantity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuantityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
