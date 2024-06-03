import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ConceptMap_Unmapped] A statement of relationships from one set of
/// concepts to one or more other concepts - either concepts in code systems,
/// or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_Unmapped with _$ConceptMap_Unmapped {
  const ConceptMap_Unmapped._();

  const factory ConceptMap_Unmapped({
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
/// [mode] Defines which action to take if there is no match for the source
/// concept in the target system designated for the group. One of 3 actions are
/// possible: use the unmapped source code (this is useful when doing a mapping
/// between versions, and only a few codes have changed), use a fixed code (a
/// default code), or alternatively, a reference to a different concept map can
/// be provided (by canonical URL).

    @JsonKey(name: 'mode') FhirCode? mode,
/// [_mode] Extensions for mode

    @JsonKey(name: '_mode') PrimitiveElement? modeElement,
/// [code] The fixed code to use when the mode = 'fixed'  - all unmapped
/// codes are mapped to a single fixed code.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [display] The display for the code. The display is only provided to
/// help editors when editing the concept map.

    @JsonKey(name: 'display') String? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
/// [valueSet] The set of fixed codes to use when the mode = 'fixed'  - all
/// unmapped codes are mapped to each of the fixed codes.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
/// [relationship] The default relationship value to apply between the
/// source and target concepts when the source code is unmapped and the mode is
/// 'fixed' or 'use-source-code'.

    @JsonKey(name: 'relationship') FhirCode? relationship,
/// [_relationship] Extensions for relationship

    @JsonKey(name: '_relationship') PrimitiveElement? relationshipElement,
/// [otherMap] The canonical reference to an additional ConceptMap resource
/// instance to use for mapping if this ConceptMap resource contains no
/// matching mapping for the source concept.

    @JsonKey(name: 'otherMap') FhirCanonical? otherMap,
  }) = _$ConceptMap_Unmapped;

  @override
  String get fhirType => 'ConceptMap_Unmapped';

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_UnmappedFromJson(json);

  factory ConceptMap_Unmapped.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_Unmapped.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_Unmapped.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_Unmapped cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_Unmapped.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_UnmappedFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
