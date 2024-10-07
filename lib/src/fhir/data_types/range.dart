import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Range] /// A set of ordered Quantities defined by a low and high limit.
class Range extends DataType {
  Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [low] /// The low limit. The boundary is inclusive.
  final Quantity? low;

  /// [high] /// The high limit. The boundary is inclusive.
  final Quantity? high;
  @override
  Range clone() => throw UnimplementedError();
  Range copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? low,
    Quantity? high,
  }) {
    return Range(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      low: low ?? this.low,
      high: high ?? this.high,
    );
  }
}
