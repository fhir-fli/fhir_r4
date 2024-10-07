import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ProductShelfLife] /// The shelf-life and storage information for a medicinal product item or
/// container can be described using this class.
class ProductShelfLife extends BackboneType {
  ProductShelfLife({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for the packaged Medicinal Product.
  final Identifier? identifier;

  /// [type] /// This describes the shelf life, taking into account various scenarios such
  /// as shelf life of the packaged Medicinal Product itself, shelf life after
  /// transformation where necessary and shelf life after the first opening of a
  /// bottle, etc. The shelf life type shall be specified using an appropriate
  /// controlled vocabulary The controlled term and the controlled term
  /// identifier shall be specified.
  final CodeableConcept type;

  /// [period] /// The shelf life time period can be specified using a numerical value for the
  /// period of time and its unit of time measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  final Quantity period;

  /// [specialPrecautionsForStorage] /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary The controlled term and the controlled
  /// term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
  @override
  ProductShelfLife clone() => throw UnimplementedError();
  ProductShelfLife copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    Quantity? period,
    List<CodeableConcept>? specialPrecautionsForStorage,
  }) {
    return ProductShelfLife(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      period: period ?? this.period,
      specialPrecautionsForStorage:
          specialPrecautionsForStorage ?? this.specialPrecautionsForStorage,
    );
  }
}
