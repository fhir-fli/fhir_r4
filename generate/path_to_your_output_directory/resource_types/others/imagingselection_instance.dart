import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImagingSelection_Instance] A selection of DICOM SOP instances and/or
/// frames within a single Study and Series. This might include additional
/// specifics such as an image region, an Observation UID or a Segmentation
/// Number, allowing linkage to an Observation Resource or transferring this
/// information along with the ImagingStudy Resource.

@freezed
class ImagingSelection_Instance with _$ImagingSelection_Instance {
  const ImagingSelection_Instance._();

  const factory ImagingSelection_Instance({
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
/// [uid] The SOP Instance UID for the selected DICOM instance.

    @JsonKey(name: 'uid') FhirId? uid,
/// [_uid] Extensions for uid

    @JsonKey(name: '_uid') PrimitiveElement? uidElement,
/// [number] The Instance Number for the selected DICOM instance.

    @JsonKey(name: 'number') FhirUnsignedInt? number,
/// [_number] Extensions for number

    @JsonKey(name: '_number') PrimitiveElement? numberElement,
/// [sopClass] The SOP Class UID for the selected DICOM instance.

    @JsonKey(name: 'sopClass') FhirOid? sopClass,
/// [_sopClass] Extensions for sopClass

    @JsonKey(name: '_sopClass') PrimitiveElement? sopClassElement,
/// [subset] Selected subset of the SOP Instance. The content and format of
/// the subset item is determined by the SOP Class of the selected instance.
///     May be one of:
       - A list of frame numbers selected from a
/// multiframe SOP Instance.
       - A list of Content Item Observation UID
/// values selected from a DICOM SR or other structured document SOP Instance.
///       - A list of segment numbers selected from a segmentation SOP
/// Instance.
       - A list of Region of Interest (ROI) numbers selected from
/// a radiotherapy structure set SOP Instance.

    @JsonKey(name: 'subset') List<List<String>>? subset,
/// [_subset] Extensions for subset

    @JsonKey(name: '_subset') List<PrimitiveElement>? subsetElement,
/// [imageRegion2D] Each imaging selection instance or frame list might
/// includes an image region, specified by a region type and a set of 2D
/// coordinates.
       If the parent imagingSelection.instance contains a
/// subset element of type frame, the image region applies to all frames in the
/// subset list.

    @JsonKey(name: 'imageRegion2D') List<List<ImagingSelection_ImageRegion2D>>? imageRegion2D,
  }) = _$ImagingSelection_Instance;

  @override
  String get fhirType => 'ImagingSelection_Instance';

  factory ImagingSelection_Instance.fromJson(Map<String, dynamic> json) =>
      _$ImagingSelection_InstanceFromJson(json);

  factory ImagingSelection_Instance.fromYaml(dynamic yaml) => yaml is String
      ? ImagingSelection_Instance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingSelection_Instance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingSelection_Instance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingSelection_Instance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingSelection_InstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
