// ignore_for_file: public_member_api_docs, avoid_print

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4/src/fhir_path/java/java.dart';
import 'package:ucum/ucum.dart';

class SimpleWorkerContext extends IWorkerContext {
  // Fields to store resources
  final Map<String, StructureDefinition> _structures = {};
  final Map<String, Resource> _resources = {};
  final UcumService _ucumService = UcumService();

  @override
  List<StructureDefinition> getStructures() {
    return _structures.values.toList();
  }

  @override
  List<StructureDefinition> allStructures() {
    return getStructures();
  }

  @override
  List<String> getResourceNames() {
    return _resources.keys.toList();
  }

  @override
  String getVersion() {
    // Return a placeholder version for now
    return '4.0.1'; // Replace with dynamic version if applicable
  }

  @override
  StructureDefinition? fetchTypeDefinition(String typeName) {
    return _structures[typeName];
  }

  @override
  T? fetchResource<T extends Resource>({
    String? uri,
    String? version,
    CanonicalResource? canonicalForSource,
  }) {
    if (uri == null) {
      return null;
    }
    final resource = _resources[uri];
    if (resource is T) {
      return resource;
    }
    return null;
  }

  @override
  String formatMessage(String theMessage, List<dynamic> theMessageArguments) {
    // Include argument information in the output
    final argumentsInfo = theMessageArguments
        .asMap()
        .entries
        .map(
          (entry) =>
              // ignore: avoid_dynamic_calls
              '[${entry.key}]: (${entry.value.runtimeType}) ${entry.value}',
        )
        .join(', ');

    // Replace placeholders with the arguments
    final formattedMessage = theMessageArguments.asMap().entries.fold(
          theMessage,
          (msg, entry) =>
              msg.replaceAll('{$entry.key}', entry.value.toString()),
        );

    // Add the arguments info to the message
    return '$formattedMessage\nArguments: $argumentsInfo';
  }

  @override
  String formatMessagePlural(
    int pl,
    String theMessage,
    List<dynamic> theMessageArguments,
  ) {
    final message = formatMessage(theMessage, theMessageArguments);
    return '$message (plural count: $pl)';
  }

  @override
  UcumService get ucumService => _ucumService;

  @override
  ValidationResult validateCode(
    ValidationOptions options,
    Coding? code,
    ValueSet vs,
  ) {
    if (vs.containsConcept(code?.code?.value ?? '')) {
      return ValidationResult(
        definition: CodeSystemConcept(
          code: FhirCode(code?.code?.value ?? ''), // Mandatory field
          display: code?.display,
        ),
        system: code?.system?.toString(),
        severity: IssueSeverity.information,
        message: 'Code is valid',
      );
    } else {
      return ValidationResult(
        severity: IssueSeverity.error,
        message: 'Code is invalid',
      );
    }
  }

  @override
  String getOverrideVersionNs() {
    return 'http://hl7.org/fhir';
  }

  // Utility methods for loading resources
  void loadStructureDefinition(StructureDefinition sd) {
    if (sd.name.value != null) {
      _structures[sd.name.value!] = sd;
    }
  }

  void loadStructureDefinitions(List<StructureDefinition> sds) {
    sds.forEach(loadStructureDefinition);
  }

  void loadResource(Resource resource) {
    final uri = resource.id?.value ?? resource.meta?.versionId?.value;
    if (uri != null) {
      _resources[uri] = resource;
    }
  }

  void clearResources() {
    _structures.clear();
    _resources.clear();
  }
}
