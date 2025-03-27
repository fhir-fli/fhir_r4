// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// Enum representing the different modes of a variable during FHIR mapping
enum MappingVariableMode {
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
      case MappingVariableMode.INPUT:
        return 'Input';
      case MappingVariableMode.OUTPUT:
        return 'Output';
      case MappingVariableMode.SHARED:
        return 'Shared';
    }
  }
}

/// Class representing a variable in a FHIR mapping
class MappingVariable {
  /// Constructor for a variable
  MappingVariable(this.mode, this.name, this.base);

  /// The mode of the variable
  final MappingVariableMode mode;

  /// The name of the variable
  final String name;

  /// The value of the variable
  final FhirBase base;

  /// SummaryFunction
  String summary() => '${base.fhirType}: ${prettyPrintJson(base.toJson())}';
}

/// Class representing a collection of variables in a FHIR mapping
class MappingVariables {
  final List<MappingVariable> _variables = [];

  /// Prints off the actual names of the variables
  String variableNames() {
    return (StringBuffer()
          ..write('Input: ')
          ..writeln(
            _variables
                .where((e) => e.mode == MappingVariableMode.INPUT)
                .map((v) => v.name)
                .join(', '),
          )
          ..write('Output: ')
          ..writeln(
            _variables
                .where((e) => e.mode == MappingVariableMode.OUTPUT)
                .map((v) => v.name)
                .join(', '),
          )
          ..write('Shared: ')
          ..writeln(
            _variables
                .where((e) => e.mode == MappingVariableMode.SHARED)
                .map((v) => v.name)
                .join(', '),
          ))
        .toString();
  }

  /// Adds a variable to the collection
  void add(MappingVariableMode mode, String name, FhirBase value) {
    _variables
      ..removeWhere((v) => v.mode == mode && v.name == name)
      ..add(MappingVariable(mode, name, value));
  }

  /// Adds an input variable to the collection
  FhirBase? get(MappingVariableMode mode, String? name) {
    return name == null
        ? null
        : _variables
            .firstWhereOrNull((v) => v.mode == mode && v.name == name)
            ?.base;
  }

  /// Retrieves an input variable from the collection
  FhirBase? getInputVar(String name) {
    return get(MappingVariableMode.INPUT, name);
  }

  /// Retrieves an output variable from the collection
  FhirBase? getOutputVar(String? name) {
    return name == null ? null : get(MappingVariableMode.OUTPUT, name);
  }

  /// Retrieves a shared variable from the collection
  MappingVariables copy() {
    final copy = MappingVariables();
    copy._variables.addAll(_variables);
    return copy;
  }

  /// Summary function providing information about input, output,
  /// and shared variables
  String summary() {
    final inputVars = _variablesSummary(MappingVariableMode.INPUT);
    final outputVars = _variablesSummary(MappingVariableMode.OUTPUT);
    final sharedVars = _variablesSummary(MappingVariableMode.SHARED);

    return '\nsource variables\n  [\n$inputVars\n]\n'
        '\ntarget variables\n  [\n$outputVars\n]\n'
        'shared variables\n  [$sharedVars]';
  }

  /// Summary function providing information about source variables
  String sourceSummary() {
    final sourceVars = _variablesSummary(MappingVariableMode.INPUT);

    return '\nsource variables\n  [\n$sourceVars\n]\n';
  }

  /// Summary function providing information about target variables
  String targetSummary() {
    final outputVars = _variablesSummary(MappingVariableMode.OUTPUT);

    return '\ntarget variables\n  [\n$outputVars\n]\n';
  }

  // Helper function to generate summaries for each variable mode
  String _variablesSummary(MappingVariableMode mode) => _variables
      .where((v) => v.mode == mode)
      .map((v) => '${v.name}: ${v.summary()}')
      .whereType<String>()
      .join('\n');

  @override
  String toString() => summary();
}
