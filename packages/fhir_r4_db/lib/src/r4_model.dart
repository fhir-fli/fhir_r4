import 'dart:convert';

import 'package:fhir_db/fhir_db.dart' as core;
import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_db/src/search/compartment_definitions.dart'
    as generated;
import 'package:fhir_r4_db/src/search/search_parameter_types.dart';
import 'package:fhir_r4_db/src/search/search_parameters.dart';

/// FHIR R4B for the store: how `fhir_r4` resources are parsed, written and
/// stamped, and this version's generated search and compartment data.
class R4Model extends core.FhirModel<Resource, R4ResourceType> {
  /// Creates the model.
  R4Model();

  /// The row builders over this model, for the generated extractor.
  late final core.SearchIndexer indexer = core.SearchIndexer(this);

  @override
  String get fhirVersion => '4.3.0';

  @override
  Set<String> get resourceTypeNames => _typeNames;
  static final Set<String> _typeNames =
      R4ResourceType.values.map((t) => t.toString()).toSet();

  @override
  R4ResourceType? typeFromName(String name) => R4ResourceType.fromString(name);

  @override
  Resource fromJson(String json) => Resource.fromJsonString(json);

  @override
  String toJson(Resource resource) => resource.toJsonString();

  @override
  Map<String, dynamic> jsonOf(FhirNode element) =>
      (element as FhirBase).toJson();

  @override
  String jsonText(FhirNode element) => jsonEncode(jsonOf(element));

  @override
  Resource withId(Resource resource, String id) =>
      resource.copyWith(id: FhirString(id));

  @override
  Resource withMeta(Resource resource, Map<String, dynamic> meta) =>
      resource.copyWith(meta: FhirMeta.fromJson(meta));

  @override
  core.SearchParameterLists extract(Resource resource) =>
      updateSearchParameters(indexer, resource);

  @override
  core.SearchDefinitions get searchParameters => _definitions;
  static const _definitions = core.SearchDefinitions(searchParameterTypes);

  @override
  Map<String, Map<String, List<String>>> get compartmentDefinitions =>
      generated.compartmentDefinitions;

  /// A bound code carries its system and display on the enum value
  /// (`FhirCodeEnum`); a [FhirNode] exposes neither as a child.
  @override
  String? enumSystem(FhirNode value) =>
      value is FhirCodeEnum ? value.system?.valueString : null;

  @override
  String? enumDisplay(FhirNode value) =>
      value is FhirCodeEnum ? value.display?.valueString : null;
}

/// The one model instance the binding's database uses.
final R4Model r4Model = R4Model();
