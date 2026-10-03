import 'package:fhir_bulk/fhir_bulk.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// FHIR R4B for the bulk-data code: how `fhir_r4` resources are parsed and
/// written, and which names are resource types.
class R4BulkModel extends BulkModel<Resource> {
  /// Creates the model.
  const R4BulkModel();

  @override
  String get fhirVersion => '4.3.0';

  @override
  Set<String> get resourceTypeNames => _typeNames;
  static final Set<String> _typeNames =
      R4ResourceType.values.map((t) => t.toString()).toSet();

  @override
  Resource fromJson(Map<String, dynamic> json) => Resource.fromJson(json);

  @override
  Map<String, dynamic> toJson(Resource resource) => resource.toJson();
}

/// The R4B model, for the core's model-taking members.
const r4Bulk = R4BulkModel();
