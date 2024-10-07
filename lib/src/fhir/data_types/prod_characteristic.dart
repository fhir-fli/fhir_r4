import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ProdCharacteristic] /// The marketing status describes the date when a medicinal product is
/// actually put on the market or the date as of which it is no longer
/// available.
class ProdCharacteristic extends BackboneType {
  ProdCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.shapeElement,
    this.color,
    this.colorElement,
    this.imprint,
    this.imprintElement,
    this.image,
    this.scoring,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [height] /// Where applicable, the height can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  final Quantity? height;

  /// [width] /// Where applicable, the width can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  final Quantity? width;

  /// [depth] /// Where applicable, the depth can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  final Quantity? depth;

  /// [weight] /// Where applicable, the weight can be specified using a numerical value and
  /// its unit of measurement The unit of measurement shall be specified in
  /// accordance with ISO 11240 and the resulting terminology The symbol and the
  /// symbol identifier shall be used.
  final Quantity? weight;

  /// [nominalVolume] /// Where applicable, the nominal volume can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  /// symbol and the symbol identifier shall be used.
  final Quantity? nominalVolume;

  /// [externalDiameter] /// Where applicable, the external diameter can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  /// symbol and the symbol identifier shall be used.
  final Quantity? externalDiameter;

  /// [shape] /// Where applicable, the shape can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be used.
  final FhirString? shape;
  final Element? shapeElement;

  /// [color] /// Where applicable, the color can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be used.
  final List<FhirString>? color;
  final List<Element>? colorElement;

  /// [imprint] /// Where applicable, the imprint can be specified as text.
  final List<FhirString>? imprint;
  final List<Element>? imprintElement;

  /// [image] /// Where applicable, the image can be provided The format of the image
  /// attachment shall be specified by regional implementations.
  final List<Attachment>? image;

  /// [scoring] /// Where applicable, the scoring can be specified An appropriate controlled
  /// vocabulary shall be used The term and the term identifier shall be used.
  final CodeableConcept? scoring;
  @override
  ProdCharacteristic clone() => throw UnimplementedError();
  ProdCharacteristic copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? height,
    Quantity? width,
    Quantity? depth,
    Quantity? weight,
    Quantity? nominalVolume,
    Quantity? externalDiameter,
    FhirString? shape,
    Element? shapeElement,
    List<FhirString>? color,
    List<Element>? colorElement,
    List<FhirString>? imprint,
    List<Element>? imprintElement,
    List<Attachment>? image,
    CodeableConcept? scoring,
  }) {
    return ProdCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      height: height ?? this.height,
      width: width ?? this.width,
      depth: depth ?? this.depth,
      weight: weight ?? this.weight,
      nominalVolume: nominalVolume ?? this.nominalVolume,
      externalDiameter: externalDiameter ?? this.externalDiameter,
      shape: shape ?? this.shape,
      shapeElement: shapeElement ?? this.shapeElement,
      color: color ?? this.color,
      colorElement: colorElement ?? this.colorElement,
      imprint: imprint ?? this.imprint,
      imprintElement: imprintElement ?? this.imprintElement,
      image: image ?? this.image,
      scoring: scoring ?? this.scoring,
    );
  }
}
