import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [VisionPrescription_LensSpecification] An authorization for the
/// provision of glasses and/or contact lenses to a patient.

@freezed
class VisionPrescription_LensSpecification with _$VisionPrescription_LensSpecification {
  const VisionPrescription_LensSpecification._();

  const factory VisionPrescription_LensSpecification({
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
/// [product] Identifies the type of vision correction product which is
/// required for the patient.

    @JsonKey(name: 'product') CodeableConcept? product,
/// [eye] The eye for which the lens specification applies.

    @JsonKey(name: 'eye') FhirCode? eye,
/// [_eye] Extensions for eye

    @JsonKey(name: '_eye') PrimitiveElement? eyeElement,
/// [sphere] Lens power measured in dioptres (0.25 units).

    @JsonKey(name: 'sphere') FhirDecimal? sphere,
/// [_sphere] Extensions for sphere

    @JsonKey(name: '_sphere') PrimitiveElement? sphereElement,
/// [cylinder] Power adjustment for astigmatism measured in dioptres (0.25
/// units).

    @JsonKey(name: 'cylinder') FhirDecimal? cylinder,
/// [_cylinder] Extensions for cylinder

    @JsonKey(name: '_cylinder') PrimitiveElement? cylinderElement,
/// [axis] Adjustment for astigmatism measured in integer degrees.

    @JsonKey(name: 'axis') FhirInteger? axis,
/// [_axis] Extensions for axis

    @JsonKey(name: '_axis') PrimitiveElement? axisElement,
/// [prism] Allows for adjustment on two axis.

    @JsonKey(name: 'prism') List<List<VisionPrescription_Prism>>? prism,
/// [add] Power adjustment for multifocal lenses measured in dioptres (0.25
/// units).

    @JsonKey(name: 'add') FhirDecimal? add,
/// [_add] Extensions for add

    @JsonKey(name: '_add') PrimitiveElement? addElement,
/// [power] Contact lens power measured in dioptres (0.25 units).

    @JsonKey(name: 'power') FhirDecimal? power,
/// [_power] Extensions for power

    @JsonKey(name: '_power') PrimitiveElement? powerElement,
/// [backCurve] Back curvature measured in millimetres.

    @JsonKey(name: 'backCurve') FhirDecimal? backCurve,
/// [_backCurve] Extensions for backCurve

    @JsonKey(name: '_backCurve') PrimitiveElement? backCurveElement,
/// [diameter] Contact lens diameter measured in millimetres.

    @JsonKey(name: 'diameter') FhirDecimal? diameter,
/// [_diameter] Extensions for diameter

    @JsonKey(name: '_diameter') PrimitiveElement? diameterElement,
/// [duration] The recommended maximum wear period for the lens.

    @JsonKey(name: 'duration') Quantity? duration,
/// [color] Special color or pattern.

    @JsonKey(name: 'color') String? color,
/// [_color] Extensions for color

    @JsonKey(name: '_color') PrimitiveElement? colorElement,
/// [brand] Brand recommendations or restrictions.

    @JsonKey(name: 'brand') String? brand,
/// [_brand] Extensions for brand

    @JsonKey(name: '_brand') PrimitiveElement? brandElement,
/// [note] Notes for special requirements such as coatings and lens
/// materials.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$VisionPrescription_LensSpecification;

  @override
  String get fhirType => 'VisionPrescription_LensSpecification';

  factory VisionPrescription_LensSpecification.fromJson(Map<String, dynamic> json) =>
      _$VisionPrescription_LensSpecificationFromJson(json);

  factory VisionPrescription_LensSpecification.fromYaml(dynamic yaml) => yaml is String
      ? VisionPrescription_LensSpecification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? VisionPrescription_LensSpecification.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'VisionPrescription_LensSpecification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory VisionPrescription_LensSpecification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$VisionPrescription_LensSpecificationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
