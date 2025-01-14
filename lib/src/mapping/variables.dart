import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

void _log(String cnt, [bool shouldPrint = false, String level = 'info']) {
  if (shouldPrint) {
    print('$level: $cnt');
  }
}

enum VariableMode {
  INPUT,
  OUTPUT,
  SHARED;

  // Improved toString function to handle the different variable modes
  @override
  String toString() {
    switch (this) {
      case VariableMode.INPUT:
        return 'Input';
      case VariableMode.OUTPUT:
        return 'Output';
      case VariableMode.SHARED:
        return 'Shared';
    }
  }
}

class Variable {
  Variable(this.mode, this.name, this.node);
  final VariableMode mode;
  final String name;
  final ElementNode node;

  // Improved summary function to handle LeafNode and CompositeNode details
  String summary([int depth = 0]) =>
      '${"  " * depth}$name:${node.summary(depth)}';
}

class Variables {
  final List<Variable> _variables = [];

  void add(VariableMode mode, String name, ElementNode value) {
    
    _variables.removeWhere((v) => v.mode == mode && v.name == name);
    _variables.add(Variable(mode, name, value));
  }

  ElementNode? get(VariableMode mode, String name) {
    return _variables
        .firstWhereOrNull((v) => v.mode == mode && v.name == name)
        ?.node;
  }

  ElementNode? getInputVar(String name) {
    return get(VariableMode.INPUT, name);
  }

  ElementNode? getOutputVar(String? name) {
    return name == null ? null : get(VariableMode.OUTPUT, name);
  }

  Variables copy() {
    final copy = Variables();
    copy._variables.addAll(_variables);
    return copy;
  }

  // Summary function providing information about input, output, and shared variables
  String summary() {
    final inputVars = _variablesSummary(VariableMode.INPUT);
    final outputVars = _variablesSummary(VariableMode.OUTPUT);
    final sharedVars = _variablesSummary(VariableMode.SHARED);

    return '\nsource variables\n  [\n$inputVars\n]\n'
        '\ntarget variables\n  [\n$outputVars\n]\n'
        'shared variables\n  [$sharedVars]';
  }

  String sourceSummary() {
    final sourceVars = _variablesSummary(VariableMode.INPUT);

    return '\nsource variables\n  [\n$sourceVars\n]\n';
  }

  String targetSummary() {
    final outputVars = _variablesSummary(VariableMode.OUTPUT);

    return '\ntarget variables\n  [\n$outputVars\n]\n';
  }

  // Helper function to generate summaries for each variable mode
  String _variablesSummary(VariableMode mode) => _variables
      .where((v) => v.mode == mode)
      .map((v) => v.summary(2))
      .whereType<String>()
      .join('\n');

  @override
  String toString() => summary();
}
