import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [RatioRange] /// A range of ratios expressed as a low and high numerator and a denominator.
class RatioRange extends DataType {
  RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [lowNumerator] /// The value of the low limit numerator.
  final Quantity? lowNumerator;

  /// [highNumerator] /// The value of the high limit numerator.
  final Quantity? highNumerator;

  /// [denominator] /// The value of the denominator.
  final Quantity? denominator;
  @override
  RatioRange clone() => throw UnimplementedError();
  RatioRange copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? lowNumerator,
    Quantity? highNumerator,
    Quantity? denominator,
  }) {
    return RatioRange(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      lowNumerator: lowNumerator ?? this.lowNumerator,
      highNumerator: highNumerator ?? this.highNumerator,
      denominator: denominator ?? this.denominator,
    );
  }
}
