import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Validates the invariants of a [Node] against the corresponding
/// [fhir.ElementDefinition].
ValidationResults validateInvariants({
  required Node node,
  required fhir.ElementDefinition element,
  required ValidationResults results,
  String? url,
  required ResourceCache resourceCache,
}) {
  if (element.constraint != null) {
    final context = _getContext(node, element, results);
    for (final constraint in element.constraint!) {
      if (constraint.expression != null) {
        if (!_constraintsIDontWantToDo(
          node,
          constraint.expression!.valueString!,
        )) {
          if (!_evaluateConstraint(
            node,
            context,
            constraint.expression!.valueString!,
            results,
          )) {
            results.addResult(
              node,
              withUrlIfExists('Invariant violation: ${constraint.human}', url),
              Severity.information,
            );
          }
        }
      } else {
        results.addResult(
          node,
          withUrlIfExists('Invariant violation: ${constraint.human}', url),
          Severity.information,
        );
      }
    }
  }
  return results;
}

fhir.FhirBase? _getContext(
  Node node,
  fhir.ElementDefinition element,
  ValidationResults results,
) {
  final dynamic rawContext = _nodeToMap(node);

  if (element.type == null || element.path.valueString == null) {
    results.addResult(
      node,
      'Element type or path is missing for node: ${node.path}',
      Severity.error,
    );
    return null;
  }

  final key = element.path.valueString!.split('.').last;
  final extractedContext = rawContext is Map<String, dynamic>
      ? rawContext[key] ?? rawContext
      : rawContext;

  for (final type in element.type!) {
    try {
      final context = fhir.fromType(extractedContext, type.code.toString());
      if (context != null) {
        return context;
      }
    } catch (e) {
      results.addResult(
        node,
        'Type conversion failed: Unable to convert '
        '${extractedContext.runtimeType} '
        'to FHIR type "${type.code}". Error: $e',
        Severity.error,
      );
    }
  }

  results.addResult(
    node,
    withUrlIfExists(
      'Unable to determine context type for node: ${node.path}',
      element.contentReference.toString(),
    ),
    Severity.warning,
  );
  return null;
}

/// Evaluates a FHIRPath expression against a [FhirBase] context.
bool _evaluateConstraint(
  Node node,
  fhir.FhirBase? context,
  String expression,
  ValidationResults results,
) {
  if (context == null) {
    results.addResult(
      node,
      'Context is null for $expression',
      Severity.error,
    );
    return false;
  }

  // Evaluate the FHIRPath expression using the context
  final result = walkFhirPath(
    context: context,
    pathExpression: expression,
  );

  // Check if the result satisfies the constraint
  return result.length == 1 &&
      ((result.first is bool && result.first as bool) ||
          (result.first is fhir.FhirBoolean &&
              ((result.first as fhir.FhirBoolean).valueBoolean ?? false)));
}

/// Converts a [Node] to a [Map] for use as a FHIRPath context.
dynamic _nodeToMap(Node node) {
  if (node is LiteralNode) {
    return node.value;
  } else if (node is ObjectNode) {
    return _objectNodeToMap(node);
  } else if (node is ArrayNode) {
    return _arrayNodeToList(node);
  } else if (node is PropertyNode) {
    if (node.key?.value == null) {
      throw Exception('PropertyNode key is null');
    }
    return <String, dynamic>{node.key!.value: _nodeToMap(node.value!)};
  }
  throw Exception('Unknown node type: ${node.runtimeType}');
}

Map<String, dynamic> _objectNodeToMap(ObjectNode node) {
  final map = <String, dynamic>{};
  for (final property in node.children) {
    if (property.key?.value == null) {
      throw Exception('PropertyNode key is null');
    }
    map[property.key!.value] = _nodeToMap(property.value!);
  }
  return map;
}

List<dynamic> _arrayNodeToList(ArrayNode node) {
  return node.children.map(_nodeToMap).toList();
}

bool _constraintsIDontWantToDo(Node node, String expression) {
  const skippedConstraints = {
    'Observation.subject': [
      // ignore: no_adjacent_strings_in_list
      "reference.startsWith('#').not() or "
          "(reference.substring(1).trace('url') in "
          "%rootResource.contained.id.trace('ids')) or "
          "(reference='#' and %rootResource!=%resource)"
    ],
    'extension.exists() != value.exists()': <String>[],
  };

  for (final entry in skippedConstraints.entries) {
    if (node.path.startsWith(entry.key) && entry.value.contains(expression)) {
      return true;
    }
  }
  return false;
}
