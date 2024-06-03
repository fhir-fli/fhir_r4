/// /// [ConceptMap_DependsOn] A statement of relationships from one set of
/// concepts to one or more other concepts - either concepts in code systems,
/// or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_DependsOn with _$ConceptMap_DependsOn {
  const ConceptMap_DependsOn._();

  const factory ConceptMap_DependsOn({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [attribute] A reference to the additional attribute that holds a value
/// the map depends on.

    @JsonKey(name: 'attribute') FhirCode? attribute,
/// /// [_attribute] Extensions for attribute

    @JsonKey(name: '_attribute') FhirElement? attributeElement,
/// /// [valueCode] Data element value that the map depends on / produces. If
/// the data type is a code, that code SHALL come from the .group.source code
/// system for .dependsOn.valueCode or from the .group.target code system for
/// .product.valueCode.

    @JsonKey(name: 'valueCode') FhirCode? valueCode,
/// /// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') FhirElement? valueCodeElement,
/// /// [valueCoding] Data element value that the map depends on / produces. If
/// the data type is a code, that code SHALL come from the .group.source code
/// system for .dependsOn.valueCode or from the .group.target code system for
/// .product.valueCode.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// /// [valueString] Data element value that the map depends on / produces. If
/// the data type is a code, that code SHALL come from the .group.source code
/// system for .dependsOn.valueCode or from the .group.target code system for
/// .product.valueCode.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueBoolean] Data element value that the map depends on / produces.
/// If the data type is a code, that code SHALL come from the .group.source
/// code system for .dependsOn.valueCode or from the .group.target code system
/// for .product.valueCode.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
/// /// [valueQuantity] Data element value that the map depends on / produces.
/// If the data type is a code, that code SHALL come from the .group.source
/// code system for .dependsOn.valueCode or from the .group.target code system
/// for .product.valueCode.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueSet] This mapping applies if the data element value is a code
/// from this value set.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
  }) = _$ConceptMap_DependsOn;

  @override
  String get fhirType => 'ConceptMap_DependsOn';

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_DependsOnFromJson(json);

  factory ConceptMap_DependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_DependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_DependsOn.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_DependsOn cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_DependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_DependsOnFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
