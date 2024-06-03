import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [BodyStructure_BodyLandmarkOrientation] Record details about an
/// anatomical structure.  This resource may be used when a coded concept does
/// not provide the necessary detail needed for the use case.

@freezed
class BodyStructure_BodyLandmarkOrientation with _$BodyStructure_BodyLandmarkOrientation {
  const BodyStructure_BodyLandmarkOrientation._();

  const factory BodyStructure_BodyLandmarkOrientation({
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
/// [landmarkDescription] Body landmark description used as a reference to
/// locate something else.

    @JsonKey(name: 'landmarkDescription') List<List<CodeableConcept>>? landmarkDescription,
/// [clockFacePosition] An description of the direction away from a
/// landmark something is located based on a radial clock dial.

    @JsonKey(name: 'clockFacePosition') List<List<CodeableConcept>>? clockFacePosition,
/// [distanceFromLandmark] The distance in centimeters a certain
/// observation is made from a body landmark.

    @JsonKey(name: 'distanceFromLandmark') List<List<BodyStructure_DistanceFromLandmark>>? distanceFromLandmark,
/// [surfaceOrientation] The surface area a body location is in relation to
/// a landmark.

    @JsonKey(name: 'surfaceOrientation') List<List<CodeableConcept>>? surfaceOrientation,
  }) = _$BodyStructure_BodyLandmarkOrientation;

  @override
  String get fhirType => 'BodyStructure_BodyLandmarkOrientation';

  factory BodyStructure_BodyLandmarkOrientation.fromJson(Map<String, dynamic> json) =>
      _$BodyStructure_BodyLandmarkOrientationFromJson(json);

  factory BodyStructure_BodyLandmarkOrientation.fromYaml(dynamic yaml) => yaml is String
      ? BodyStructure_BodyLandmarkOrientation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BodyStructure_BodyLandmarkOrientation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BodyStructure_BodyLandmarkOrientation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BodyStructure_BodyLandmarkOrientation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BodyStructure_BodyLandmarkOrientationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
