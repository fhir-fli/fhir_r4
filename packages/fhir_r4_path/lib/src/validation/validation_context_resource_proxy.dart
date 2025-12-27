import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// ValidationContextResourceProxy
class ValidationContextResourceProxy {
  /// Constructor for a fully resolved resource.
  ValidationContextResourceProxy.resource(this.resource)
      : element = null,
        loader = null,
        path = null,
        errors = null;

  /// Constructor for a partially resolved element with a loader.
  ValidationContextResourceProxy.element({
    required this.element,
    required this.loader,
    required this.path,
    required this.errors,
  }) : resource = null;

  /// The fully resolved resource, if available.
  final Resource? resource;

  /// The partially resolved element, if available.
  final Element? element;

  /// Loader for resolving the element into a full resource.
  final IValidationContextResourceLoader? loader;

  /// Path to the element in the resource.
  final String? path;

  /// Errors collected during the resolution process.
  final List<String>? errors;

  /// Load a contained resource by its ID and type.
  Resource? loadContainedResource(String id, Type resourceType) {
    if (resource != null) {
      // If the resource is already resolved, look for contained resources.
      if (resource is DomainResource) {
        for (final contained
            in (resource! as DomainResource).contained ?? <Resource>[]) {
          if (contained.id?.valueString == id &&
              contained.runtimeType == resourceType) {
            return contained;
          }
        }
      }
      return null;
    } else if (element != null && loader != null) {
      // Resolve the element into a full resource using the loader.
      return loader!.loadContainedResource(
        errors: errors ?? [],
        path: path!,
        resource: element!,
        id: id,
        resourceType: resourceType,
      );
    }
    return null;
  }
}
