import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Measure_Component] The Measure resource provides the definition of a
/// quality measure.

@freezed
class Measure_Component with _$Measure_Component {
  const Measure_Component._();

  const factory Measure_Component({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [linkId] An identifier that is unique within the Measure allowing
/// linkage to the equivalent item in a MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [code] Indicates a meaning for the stratifier component. This can be as
/// simple as a unique identifier, or it can establish meaning in a broader
/// context by drawing from a terminology, allowing stratifiers to be
/// correlated across measures.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [description] The human readable description of this stratifier
/// criteria component.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [criteria] An expression that specifies the criteria for this component
/// of the stratifier. This is typically the name of an expression defined
/// within a referenced library, but it may also be a path to a stratifier
/// element.

    @JsonKey(name: 'criteria') FhirExpression? criteria,
/// [groupDefinition] A Group resource that defines this population as a
/// set of characteristics.

    @JsonKey(name: 'groupDefinition') Reference? groupDefinition,
  }) = _$Measure_Component;

  @override
  String get fhirType => 'Measure_Component';

  factory Measure_Component.fromJson(Map<String, dynamic> json) =>
      _$Measure_ComponentFromJson(json);

  factory Measure_Component.fromYaml(dynamic yaml) => yaml is String
      ? Measure_Component.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure_Component.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure_Component cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Measure_Component.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Measure_ComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
