import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// What fhir_r4 supplies to fhir_path's worker context: its version, its
/// generated type table, its value factory, its JSON codec and the two
/// casts (what stands for a Coding or a CodeableConcept) that are its own.
class R4ModelBinding extends FhirModelBinding {
  /// The binding.
  const R4ModelBinding();

  @override
  String get fhirVersion => '4.3.0';

  static final Map<String, TypeHierarchyEntry> _table = {
    for (final e in fhirTypeHierarchy.entries)
      e.key: TypeHierarchyEntry(
        name: e.value.name,
        type: e.value.type,
        kind: e.value.kind,
        url: e.value.url,
        base: e.value.base,
        derivation: e.value.derivation,
        isAbstract: e.value.isAbstract,
      ),
  };

  @override
  Map<String, TypeHierarchyEntry> get typeHierarchy => _table;

  @override
  IFhirValueFactory get valueFactory => const FhirValueFactory();

  @override
  FhirNode fromJson(Map<String, dynamic> json) => Resource.fromJson(json);

  @override
  Map<String, dynamic> toJson(FhirNode node) => (node as FhirBase).toJson();

  @override
  bool isModelType(String typeName) =>
      typeName.isFhirPrimitive ||
      typeName.isBackboneElement ||
      typeName.isFhirBackboneType ||
      typeName.isFhirDataType ||
      typeName.isFhirQuantity ||
      typeName.isFhirResourceType;

  @override
  bool isSystemValue(FhirNode node) =>
      node is! Resource &&
      (node is! Element || (node.disallowExtensions ?? false));

  @override
  bool isSystemPrimitive(FhirNode node) =>
      node is Element && (node.disallowExtensions ?? false);

  @override
  CodingValue? asCoding(FhirNode node) {
    final coding = TypeConvertor.castToCoding(node as FhirBase);
    return coding == null ? null : CodingValue.fromJson(coding.toJson());
  }

  @override
  ConceptValue? asCodeableConcept(FhirNode node) {
    final concept = TypeConvertor.castToCodeableConcept(node as FhirBase);
    return concept == null ? null : ConceptValue.fromJson(concept.toJson());
  }
}
