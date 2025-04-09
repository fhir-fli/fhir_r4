// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'prod_characteristic.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ProdCharacteristicCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
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
    List<FhirString>? color,
    List<FhirString>? imprint,
    List<Attachment>? image,
    CodeableConcept? scoring,
    bool? disallowExtensions,
  });
}

class _$ProdCharacteristicCopyWithImpl<T>
    implements $ProdCharacteristicCopyWith<T> {
  final ProdCharacteristic _value;
  final T Function(ProdCharacteristic) _then;

  _$ProdCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? height = fhirSentinel,
    Object? width = fhirSentinel,
    Object? depth = fhirSentinel,
    Object? weight = fhirSentinel,
    Object? nominalVolume = fhirSentinel,
    Object? externalDiameter = fhirSentinel,
    Object? shape = fhirSentinel,
    Object? color = fhirSentinel,
    Object? imprint = fhirSentinel,
    Object? image = fhirSentinel,
    Object? scoring = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ProdCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        height: identical(height, fhirSentinel)
            ? _value.height
            : height as Quantity?,
        width:
            identical(width, fhirSentinel) ? _value.width : width as Quantity?,
        depth:
            identical(depth, fhirSentinel) ? _value.depth : depth as Quantity?,
        weight: identical(weight, fhirSentinel)
            ? _value.weight
            : weight as Quantity?,
        nominalVolume: identical(nominalVolume, fhirSentinel)
            ? _value.nominalVolume
            : nominalVolume as Quantity?,
        externalDiameter: identical(externalDiameter, fhirSentinel)
            ? _value.externalDiameter
            : externalDiameter as Quantity?,
        shape: identical(shape, fhirSentinel)
            ? _value.shape
            : shape as FhirString?,
        color: identical(color, fhirSentinel)
            ? _value.color
            : color as List<FhirString>?,
        imprint: identical(imprint, fhirSentinel)
            ? _value.imprint
            : imprint as List<FhirString>?,
        image: identical(image, fhirSentinel)
            ? _value.image
            : image as List<Attachment>?,
        scoring: identical(scoring, fhirSentinel)
            ? _value.scoring
            : scoring as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ProdCharacteristicCopyWithExtension on ProdCharacteristic {
  $ProdCharacteristicCopyWith<ProdCharacteristic> get copyWith =>
      _$ProdCharacteristicCopyWithImpl<ProdCharacteristic>(
        this,
        (value) => value,
      );
}
