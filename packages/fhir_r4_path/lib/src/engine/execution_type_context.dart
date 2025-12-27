// ignore_for_file: public_member_api_docs

import 'package:fhir_r4_path/fhir_r4_path.dart';

class ExecutionTypeContext {
  ExecutionTypeContext(
    this.appInfo,
    this.resource,
    this.context,
    this.thisItem,
  );

  final Object appInfo;
  final String? resource;
  final TypeDetails? context;
  final TypeDetails? thisItem;
  TypeDetails? total;
  Map<String, TypeDetails>? definedVariables;

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  TypeDetails? getDefinedVariable(String name) {
    return definedVariables?[name];
  }

  void setDefinedVariable(String name, TypeDetails? value) {
    if (value == null) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }
    if (isSystemVariable(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables![name] = value;
  }

  ExecutionTypeContext changeThis(
    TypeDetails newThis,
  ) {
    final newContext = ExecutionTypeContext(
      appInfo,
      resource,
      context,
      newThis,
    );
    // append all of the defined variables from the context into the new context
    if (definedVariables != null) {
      for (final s in definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(s, definedVariables![s]);
      }
    }
    return newContext;
  }
}

bool isSystemVariable(String name) {
  if (['sct', 'loinc', 'ucum', 'resource', 'rootResource', 'context']
      .contains(name)) {
    return true;
  }
  return false;
}
