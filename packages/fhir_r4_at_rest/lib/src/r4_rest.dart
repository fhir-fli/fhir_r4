import 'package:fhir_at_rest/fhir_at_rest.dart' as core;
import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;

/// FHIR R4B for the REST client: how `fhir_r4` resources are parsed and
/// written, and which names are resource types.
class R4RestModel extends core.ResourceModel<Resource> {
  /// Creates the model.
  const R4RestModel();

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
const r4Rest = R4RestModel();

/// What a RESTful operation returned, over R4B resources: the resources
/// asked for (of [T]) and, as [Resource]s, the other resources and the
/// informational and error OperationOutcomes.
typedef ReturnResults<T> = core.ReturnResults<T, Resource>;

/// See [core.parseRequestResult].
ReturnResults<Resource> parseRequestResult(Resource result) =>
    core.parseRequestResult(r4Rest, result);

/// See [core.parseBundle].
ReturnResults<Resource> parseBundle(Bundle bundle) =>
    core.parseBundle(r4Rest, bundle);

/// See [core.parseRequestResultForType].
ReturnResults<T> parseRequestResultForType<T>(Resource result) =>
    core.parseRequestResultForType<T, Resource>(r4Rest, result);

/// See [core.parseBundleForType].
ReturnResults<T> parseBundleForType<T>(Bundle bundle) =>
    core.parseBundleForType<T, Resource>(r4Rest, bundle);

/// See [core.incorrectResultType].
OperationOutcome incorrectResultType<T>(Resource result) =>
    core.incorrectResultType<T, Resource>(r4Rest, result) as OperationOutcome;

/// See [core.parseResponse].
ReturnResults<Resource> parseResponse(http.Response response) =>
    core.parseResponse(r4Rest, response);
