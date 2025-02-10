// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// Enum representing the different modes of a variable during FHIR mapping
enum VariableMode {
  /// Represents an input variable
  INPUT,

  /// Represents an output variable
  OUTPUT,

  /// Represents a shared variable
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

/// Class representing a variable in a FHIR mapping
class Variable {
  /// Constructor for a variable
  Variable(this.mode, this.name, this.node);

  /// The mode of the variable
  final VariableMode mode;

  /// The name of the variable
  final String name;

  /// The value of the variable
  final ElementNode node;

  /// Improved summary function to handle LeafNode and CompositeNode details
  String summary([int depth = 0]) =>
      '${"  " * depth}$name:${node.summary(depth)}';
}

/// Class representing a collection of variables in a FHIR mapping
class Variables {
  final List<Variable> _variables = [];

  /// Prints off the actual names of the variables
  String variableNames() {
    return (StringBuffer()
          ..write('Input: ')
          ..writeln(
            _variables
                .where((e) => e.mode == VariableMode.INPUT)
                .map((v) => v.name)
                .join(', '),
          )
          ..write('Output: ')
          ..writeln(
            _variables
                .where((e) => e.mode == VariableMode.OUTPUT)
                .map((v) => v.name)
                .join(', '),
          )
          ..write('Shared: ')
          ..writeln(
            _variables
                .where((e) => e.mode == VariableMode.SHARED)
                .map((v) => v.name)
                .join(', '),
          ))
        .toString();
  }

  /// Adds a variable to the collection
  void add(VariableMode mode, String name, ElementNode value) {
    _variables
      ..removeWhere((v) => v.mode == mode && v.name == name)
      ..add(Variable(mode, name, value));
  }

  /// Adds an input variable to the collection
  ElementNode? get(VariableMode mode, String name) {
    return _variables
        .firstWhereOrNull((v) => v.mode == mode && v.name == name)
        ?.node;
  }

  /// Retrieves an input variable from the collection
  ElementNode? getInputVar(String name) {
    return get(VariableMode.INPUT, name);
  }

  /// Retrieves an output variable from the collection
  ElementNode? getOutputVar(String? name) {
    return name == null ? null : get(VariableMode.OUTPUT, name);
  }

  /// Retrieves a shared variable from the collection
  Variables copy() {
    final copy = Variables();
    copy._variables.addAll(_variables);
    return copy;
  }

  /// Summary function providing information about input, output,
  /// and shared variables
  String summary() {
    final inputVars = _variablesSummary(VariableMode.INPUT);
    final outputVars = _variablesSummary(VariableMode.OUTPUT);
    final sharedVars = _variablesSummary(VariableMode.SHARED);

    return '\nsource variables\n  [\n$inputVars\n]\n'
        '\ntarget variables\n  [\n$outputVars\n]\n'
        'shared variables\n  [$sharedVars]';
  }

  /// Summary function providing information about source variables
  String sourceSummary() {
    final sourceVars = _variablesSummary(VariableMode.INPUT);

    return '\nsource variables\n  [\n$sourceVars\n]\n';
  }

  /// Summary function providing information about target variables
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
