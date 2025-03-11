import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// Validates the bindings of nodes against the value sets defined in their
/// corresponding [ElementDefinition]s.
///
/// Ensures that the codes in the FHIR resource are valid according to the
/// bindings specified in the FHIR StructureDefinition.
Future<ValidationResults> validateBindings({
  required Node node,
  required Map<String, ElementDefinition> elements,
  required ValidationResults results,
  required Client client,
}) async {
  var newResults = results.copyWith();

  for (final element in elements.values) {
    // Check if the element has a binding with an associated ValueSet.
    if (element.binding != null && element.binding!.valueSet != null) {
      final valueSetUrl = element.binding!.valueSet.toString();
      final validCodes = await getValueSetCodes(valueSetUrl, client);
      final elementPath = element.path.value;

      if (elementPath != null) {
        // Find the node corresponding to the element path.
        final targetNode = _findNodeByPath(node, elementPath);

        // Validate the target node against the valid codes from the ValueSet.
        if (targetNode != null) {
          newResults = _validateNodeAgainstValueSet(
            targetNode,
            validCodes,
            newResults,
            element.binding!.strength,
            valueSetUrl,
          );
        }
      }
    }
  }

  return newResults;
}

/// Validates a [Node] against a given ValueSet.
///
/// Checks if the [Node]'s value is part of the allowed codes in the ValueSet.
/// If not, adds a diagnostic to the [ValidationResults].
ValidationResults _validateNodeAgainstValueSet(
  Node node,
  Set<String> validCodes,
  ValidationResults results,
  BindingStrength? strength,
  String valueSetUrl,
) {
  var newResults = results.copyWith();

  if (node is ObjectNode) {
    // Recursively validate all child nodes.
    for (final child in node.children) {
      newResults = _validateNodeAgainstValueSet(
        child,
        validCodes,
        newResults,
        strength,
        valueSetUrl,
      );
    }
  } else if (node is PropertyNode && node.value is LiteralNode) {
    // Validate the literal value against the ValueSet.
    final dynamic code = (node.value! as LiteralNode).value;
    if (code != null && !validCodes.contains(code)) {
      newResults.addResult(
        node,
        'Code "$code" is not valid according to ValueSet $valueSetUrl',
        strength == BindingStrength.required_
            ? Severity.error
            : Severity.warning,
      );
    }
  }

  return newResults;
}

/// Finds a [Node] within the AST by its FHIR path.
///
/// Handles nested paths and array indexing (e.g., `patient.name[0].given`).
Node? _findNodeByPath(Node rootNode, String path) {
  final pathSegments = path.split('.');
  Node? currentNode = rootNode;

  for (final segment in pathSegments) {
    if (currentNode == null) {
      return null;
    }

    // Handle array indexing within the path (e.g., `name[0]`).
    final match = RegExp(r'(\w+)\[(\d+)\]').firstMatch(segment);
    if (match != null) {
      currentNode = _getNodeAtArrayIndex(currentNode, match);
      if (currentNode == null) {
        return null;
      }
    } else {
      currentNode = _getNodeAtProperty(currentNode, segment);
      if (currentNode == null) {
        return null;
      }
    }
  }

  return currentNode;
}

/// Retrieves a [Node] at a specific array index based on a regex match.
///
/// Used for paths like `name[0]` to access the 0th element of the `name` array.
Node? _getNodeAtArrayIndex(Node currentNode, RegExpMatch match) {
  final propertyName = match.group(1)!; // The property name (e.g., `name`).
  final index = int.parse(match.group(2)!); // The array index (e.g., `0`).

  if (currentNode is ObjectNode) {
    // Get the property node and ensure it's an array.
    final propertyNode = currentNode.getPropertyNode(propertyName);
    if (propertyNode is ArrayNode && index < propertyNode.children.length) {
      return propertyNode.children[index];
    }
  }

  return null;
}

/// Retrieves a [Node] corresponding to a property name in an object or array.
///
/// Handles both [ObjectNode] and [ArrayNode] types for traversing the AST.
Node? _getNodeAtProperty(Node currentNode, String segment) {
  if (currentNode is ObjectNode) {
    // Retrieve a child property node by its name.
    return currentNode.getPropertyNode(segment);
  } else if (currentNode is ArrayNode) {
    // Attempt to parse the segment as an index to access an array element.
    final index = int.tryParse(segment.replaceAll(RegExp(r'\D'), ''));
    if (index != null && index < currentNode.children.length) {
      return currentNode.children[index];
    }
  }

  return null;
}
