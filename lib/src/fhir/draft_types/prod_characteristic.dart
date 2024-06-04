// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'prod_characteristic.freezed.dart';
part 'prod_characteristic.g.dart';

/// [ProdCharacteristic] The marketing status describes the date when a
@freezed
class ProdCharacteristic with _$ProdCharacteristic implements Element {
  /// [ProdCharacteristic] The marketing status describes the date when a
  const ProdCharacteristic._();

  /// [ProdCharacteristic] The marketing status describes the date when a
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
  /// [height] Where applicable, the height can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  ///  symbol and the symbol identifier shall be used.
  ///
  /// [width] Where applicable, the width can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  ///  symbol and the symbol identifier shall be used.
  ///
  /// [depth] Where applicable, the depth can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  ///  symbol and the symbol identifier shall be used.
  ///
  /// [weight] Where applicable, the weight can be specified using a numerical
  /// value and its unit of measurement The unit of measurement shall be
  /// specified in accordance with ISO 11240 and the resulting terminology The
  ///  symbol and the symbol identifier shall be used.
  ///
  /// [nominalVolume] Where applicable, the nominal volume can be specified
  /// using a numerical value and its unit of measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  ///  resulting terminology The symbol and the symbol identifier shall be used.
  ///
  /// [externalDiameter] Where applicable, the external diameter can be
  /// specified using a numerical value and its unit of measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  ///  resulting terminology The symbol and the symbol identifier shall be used.
  ///
  /// [shape] Where applicable, the shape can be specified An appropriate
  /// controlled vocabulary shall be used The term and the term identifier shall
  ///  be used.
  ///
  /// [shapeElement] Extensions for shape
  ///
  /// [color] Where applicable, the color can be specified An appropriate
  /// controlled vocabulary shall be used The term and the term identifier shall
  ///  be used.
  ///
  /// [colorElement] Extensions for color
  ///
  /// [imprint] Where applicable, the imprint can be specified as text.
  ///
  /// [imprintElement] Extensions for imprint
  ///
  /// [image] Where applicable, the image can be provided The format of the
  ///  image attachment shall be specified by regional implementations.
  ///
  /// [scoring] Where applicable, the scoring can be specified An appropriate
  /// controlled vocabulary shall be used The term and the term identifier shall
  ///  be used.
  const factory ProdCharacteristic({
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

    /// [height] Where applicable, the height can be specified using a numerical
    /// value and its unit of measurement The unit of measurement shall be
    /// specified in accordance with ISO 11240 and the resulting terminology The
    ///  symbol and the symbol identifier shall be used.
    Quantity? height,

    /// [width] Where applicable, the width can be specified using a numerical
    /// value and its unit of measurement The unit of measurement shall be
    /// specified in accordance with ISO 11240 and the resulting terminology The
    ///  symbol and the symbol identifier shall be used.
    Quantity? width,

    /// [depth] Where applicable, the depth can be specified using a numerical
    /// value and its unit of measurement The unit of measurement shall be
    /// specified in accordance with ISO 11240 and the resulting terminology The
    ///  symbol and the symbol identifier shall be used.
    Quantity? depth,

    /// [weight] Where applicable, the weight can be specified using a numerical
    /// value and its unit of measurement The unit of measurement shall be
    /// specified in accordance with ISO 11240 and the resulting terminology The
    ///  symbol and the symbol identifier shall be used.
    Quantity? weight,

    /// [nominalVolume] Where applicable, the nominal volume can be specified
    /// using a numerical value and its unit of measurement The unit of
    /// measurement shall be specified in accordance with ISO 11240 and the
    ///  resulting terminology The symbol and the symbol identifier shall be used.
    Quantity? nominalVolume,

    /// [externalDiameter] Where applicable, the external diameter can be
    /// specified using a numerical value and its unit of measurement The unit of
    /// measurement shall be specified in accordance with ISO 11240 and the
    ///  resulting terminology The symbol and the symbol identifier shall be used.
    Quantity? externalDiameter,

    /// [shape] Where applicable, the shape can be specified An appropriate
    /// controlled vocabulary shall be used The term and the term identifier shall
    ///  be used.
    String? shape,

    /// [shapeElement] Extensions for shape
    @JsonKey(name: '_shape') PrimitiveElement? shapeElement,

    /// [color] Where applicable, the color can be specified An appropriate
    /// controlled vocabulary shall be used The term and the term identifier shall
    ///  be used.
    List<String>? color,

    /// [colorElement] Extensions for color
    @JsonKey(name: '_color') List<Element?>? colorElement,

    /// [imprint] Where applicable, the imprint can be specified as text.
    List<String>? imprint,

    /// [imprintElement] Extensions for imprint
    @JsonKey(name: '_imprint') List<Element?>? imprintElement,

    /// [image] Where applicable, the image can be provided The format of the
    ///  image attachment shall be specified by regional implementations.
    List<Attachment>? image,

    /// [scoring] Where applicable, the scoring can be specified An appropriate
    /// controlled vocabulary shall be used The term and the term identifier shall
    ///  be used.
    CodeableConcept? scoring,
  }) = _ProdCharacteristic;

  @override
  String get fhirType => 'ProdCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ProdCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? ProdCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ProdCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ProdCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$ProdCharacteristicFromJson(json);

  /// Acts like a constructor, returns a [ProdCharacteristic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ProdCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProdCharacteristicFromJson(json);
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
