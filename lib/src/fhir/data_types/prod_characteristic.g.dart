// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_characteristic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProdCharacteristic _$ProdCharacteristicFromJson(Map<String, dynamic> json) =>
    ProdCharacteristic(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] == null
          ? null
          : Quantity.fromJson(json['height'] as Map<String, dynamic>),
      width: json['width'] == null
          ? null
          : Quantity.fromJson(json['width'] as Map<String, dynamic>),
      depth: json['depth'] == null
          ? null
          : Quantity.fromJson(json['depth'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? null
          : Quantity.fromJson(json['weight'] as Map<String, dynamic>),
      nominalVolume: json['nominalVolume'] == null
          ? null
          : Quantity.fromJson(json['nominalVolume'] as Map<String, dynamic>),
      externalDiameter: json['externalDiameter'] == null
          ? null
          : Quantity.fromJson(json['externalDiameter'] as Map<String, dynamic>),
      shape: json['shape'] == null ? null : FhirString.fromJson(json['shape']),
      shapeElement: json['_shape'] == null
          ? null
          : Element.fromJson(json['_shape'] as Map<String, dynamic>),
      color:
          (json['color'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      colorElement: (json['_color'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      imprint: (json['imprint'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      imprintElement: (json['_imprint'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      scoring: json['scoring'] == null
          ? null
          : CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$ProdCharacteristicToJson(ProdCharacteristic instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('width', instance.width?.toJson());
  writeNotNull('depth', instance.depth?.toJson());
  writeNotNull('weight', instance.weight?.toJson());
  writeNotNull('nominalVolume', instance.nominalVolume?.toJson());
  writeNotNull('externalDiameter', instance.externalDiameter?.toJson());
  writeNotNull('shape', instance.shape?.toJson());
  writeNotNull('_shape', instance.shapeElement?.toJson());
  writeNotNull('color', instance.color?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_color', instance.colorElement?.map((e) => e.toJson()).toList());
  writeNotNull('imprint', instance.imprint?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_imprint', instance.imprintElement?.map((e) => e.toJson()).toList());
  writeNotNull('image', instance.image?.map((e) => e.toJson()).toList());
  writeNotNull('scoring', instance.scoring?.toJson());
  return val;
}
