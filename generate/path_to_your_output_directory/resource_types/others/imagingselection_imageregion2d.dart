import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImagingSelection_ImageRegion2D] A selection of DICOM SOP instances
/// and/or frames within a single Study and Series. This might include
/// additional specifics such as an image region, an Observation UID or a
/// Segmentation Number, allowing linkage to an Observation Resource or
/// transferring this information along with the ImagingStudy Resource.

@freezed
class ImagingSelection_ImageRegion2D with _$ImagingSelection_ImageRegion2D {
  const ImagingSelection_ImageRegion2D._();

  const factory ImagingSelection_ImageRegion2D({
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
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [regionType] Specifies the type of image region.

    @JsonKey(name: 'regionType') FhirCode? regionType,
/// [_regionType] Extensions for regionType

    @JsonKey(name: '_regionType') PrimitiveElement? regionTypeElement,
/// [coordinate] The coordinates describing the image region. Encoded as a
/// set of (column, row) pairs that denote positions in the selected image /
/// frames specified with sub-pixel resolution.
       The origin at the TLHC
/// of the TLHC pixel is 0.0\0.0, the BRHC of the TLHC pixel is 1.0\1.0, and
/// the BRHC of the BRHC pixel is the number of columns\rows in the image /
/// frames. The values must be within the range 0\0 to the number of
/// columns\rows in the image / frames.

    @JsonKey(name: 'coordinate') List<List<FhirDecimal>>? coordinate,
/// [_coordinate] Extensions for coordinate

    @JsonKey(name: '_coordinate') List<PrimitiveElement>? coordinateElement,
  }) = _$ImagingSelection_ImageRegion2D;

  @override
  String get fhirType => 'ImagingSelection_ImageRegion2D';

  factory ImagingSelection_ImageRegion2D.fromJson(Map<String, dynamic> json) =>
      _$ImagingSelection_ImageRegion2DFromJson(json);

  factory ImagingSelection_ImageRegion2D.fromYaml(dynamic yaml) => yaml is String
      ? ImagingSelection_ImageRegion2D.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingSelection_ImageRegion2D.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingSelection_ImageRegion2D cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingSelection_ImageRegion2D.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingSelection_ImageRegion2DFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
