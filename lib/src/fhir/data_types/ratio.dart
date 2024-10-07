import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Ratio] /// A relationship of two Quantity values - expressed as a numerator and a
/// denominator.
class Ratio extends DataType {
  Ratio({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [numerator] /// The value of the numerator.
  final Quantity? numerator;

  /// [denominator] /// The value of the denominator.
  final Quantity? denominator;
  @override
  Ratio clone() => throw UnimplementedError();
  Ratio copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? numerator,
    Quantity? denominator,
  }) {
    return Ratio(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      numerator: numerator ?? this.numerator,
      denominator: denominator ?? this.denominator,
    );
  }
}
