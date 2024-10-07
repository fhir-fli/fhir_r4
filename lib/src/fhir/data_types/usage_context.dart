import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [UsageContext] /// Specifies clinical/business/etc. metadata that can be used to retrieve,
/// index and/or categorize an artifact. This metadata can either be specific
/// to the applicable population (e.g., age category, DRG) or the specific
/// context of care (e.g., venue, care setting, provider of care).
class UsageContext extends DataType {
  UsageContext({
    super.id,
    super.extension_,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that identifies the type of context being specified by this usage
  /// context.
  final Coding code;

  /// [valueCodeableConcept] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final CodeableConcept valueCodeableConcept;

  /// [valueQuantity] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final Quantity valueQuantity;

  /// [valueRange] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final Range valueRange;

  /// [valueReference] /// A value that defines the context specified in this context of use. The
  /// interpretation of the value is defined by the code.
  final Reference valueReference;
  @override
  UsageContext clone() => throw UnimplementedError();
  UsageContext copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    Coding? code,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
  }) {
    return UsageContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueReference: valueReference ?? this.valueReference,
    );
  }
}
