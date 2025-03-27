import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Validates the cardinality of a [Node] against its corresponding
/// [ElementDefinition] in the FHIR StructureDefinition.
Future<ValidationResults> validateCardinality({
  required ObjectNode node,
  required Map<String, ElementDefinition> elements,
  String? url,
  required String originalPath,
  required String replacePath,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) async {
  var newResults = results.copyWith();
  final currentPath = cleanLocalPath(originalPath, replacePath, node.path);
  final missingPaths = <String>[];

  for (final key in elements.keys) {
    if (!_isPathAlreadyChecked(missingPaths, key)) {
      final foundNode = _findNodeRecursively(
            node,
            originalPath,
            replacePath,
            cleanLocalPath(originalPath, replacePath, key),
          ) ??
          _checkForPolymorphism(
            node,
            elements[key]!,
            currentPath,
            originalPath,
            replacePath,
          );

      if (foundNode == null && key != originalPath) {
        missingPaths.add(key);
      }

      newResults = await _validateElementCardinality(
        url: url,
        node: node,
        element: elements[key]!,
        foundNode: foundNode,
        path: key,
        originalPath: originalPath,
        replacePath: replacePath,
        elements: elements,
        results: newResults,
        resourceCache: resourceCache,
      );
    }
  }

  return newResults;
}

/// Checks if the [path] is already present in the list of checked paths.
bool _isPathAlreadyChecked(List<String> missingPaths, String path) {
  return missingPaths
          .indexWhere((String element) => path.startsWith(element)) !=
      -1;
}

/// Validates the cardinality of a single element.
Future<ValidationResults> _validateElementCardinality({
  required String? url,
  required ObjectNode node,
  required ElementDefinition element,
  required Node? foundNode,
  required String path,
  required String originalPath,
  required String replacePath,
  required Map<String, ElementDefinition> elements,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) async {
  var newResults = results.copyWith();

  // Check for missing required elements
  if (element.min != null && element.min! > 0 && foundNode == null) {
    newResults.addMissingResult(
      path,
      withUrlIfExists(
        '$path: minimum required = ${element.min}, but only found 0',
        url,
      ),
      Severity.error,
    );
  } else if (foundNode != null) {
    // Check for too many occurrences of an element
    if (element.max != null && element.max!.value != '*') {
      final max = int.tryParse(element.max!.value!);
      if (max != null &&
          foundNode is ArrayNode &&
          foundNode.children.length > max) {
        newResults.addResult(
          node,
          withUrlIfExists(
            'Too many elements for: $path. Maximum allowed is $max.',
            url,
          ),
          Severity.error,
        );
      }
    }

    // Check if the required element is populated
    if (element.min != null && element.min! > 0) {
      if (!_isNodePopulated(foundNode)) {
        newResults.addResult(
          node,
          withUrlIfExists('Required element is not populated: $path', url),
          Severity.error,
        );
      }
    } else {
      // Recursively check nested elements if not a primitive type
      newResults = await _validateNestedElements(
        element: element,
        foundNode: foundNode,
        originalPath: originalPath,
        replacePath: replacePath,
        results: newResults,
        resourceCache: resourceCache,
      );
    }
  }

  return newResults;
}

/// Checks if a [Node] is populated or not.
bool _isNodePopulated(Node foundNode) {
  return !(foundNode is LiteralNode && foundNode.value == null) &&
      !(foundNode is ObjectNode && foundNode.children.isEmpty) &&
      !(foundNode is PropertyNode && foundNode.value == null);
}

/// Validates nested elements recursively if they are complex types.
Future<ValidationResults> _validateNestedElements({
  required ElementDefinition element,
  required Node foundNode,
  required String originalPath,
  required String replacePath,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) async {
  var newResults = results.copyWith();

  if (element.type != null && element.type!.isNotEmpty) {
    final typeCode = findCode(element, foundNode.path);
    if (typeCode != null && !isPrimitiveType(typeCode)) {
      final structureDefinition =
          await resourceCache.getStructureDefinition(typeCode);
      if (structureDefinition != null) {
        final newElements = extractElements(structureDefinition);

        if (foundNode is ObjectNode) {
          newResults = await validateCardinality(
            node: foundNode,
            elements: newElements,
            url: structureDefinition.getUrl(),
            originalPath: originalPath,
            replacePath: replacePath,
            results: newResults,
            resourceCache: resourceCache,
          );
        }
      }
    }
  }

  return newResults;
}

/// Recursively finds a [Node] in the AST based on the [targetPath].
Node? _findNodeRecursively(
  Node node,
  String originalPath,
  String replacePath,
  String targetPath,
) {
  final cleanedNodePath = cleanLocalPath(originalPath, replacePath, node.path);

  if (cleanedNodePath == targetPath) {
    return node;
  }

  if (node is ObjectNode) {
    for (final property in node.children) {
      final foundNode =
          _findNodeRecursively(property, originalPath, replacePath, targetPath);
      if (foundNode != null) {
        return foundNode;
      }
    }
  } else if (node is ArrayNode) {
    for (final child in node.children) {
      final foundNode =
          _findNodeRecursively(child, originalPath, replacePath, targetPath);
      if (foundNode != null) {
        return foundNode;
      }
    }
  } else if (node is PropertyNode && node.value != null) {
    final foundNode = _findNodeRecursively(
      node.value!,
      originalPath,
      replacePath,
      targetPath,
    );
    if (foundNode != null) {
      return foundNode;
    }
  }

  return null;
}

/// Checks for polymorphism in the given [ElementDefinition] and attempts to
/// find the correct node for polymorphic elements.
Node? _checkForPolymorphism(
  ObjectNode node,
  ElementDefinition element,
  String currentPath,
  String originalPath,
  String replacePath,
) {
  if (_isAPolymorphicElement(element)) {
    return node.children.firstWhereOrNull(
      (PropertyNode child) =>
          cleanLocalPath(originalPath, replacePath, child.path)
              .replaceFirst('[x]', '') ==
          currentPath,
    );
  }
  return null;
}

/// Determines if an [ElementDefinition] is polymorphic (ends with `[x]`).
bool _isAPolymorphicElement(ElementDefinition element) =>
    element.path.value?.endsWith('[x]') ?? false;
