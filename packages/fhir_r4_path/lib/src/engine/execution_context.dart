// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

class ExecutionContext {
  ExecutionContext({
    this.appInfo,
    this.focusResource,
    this.rootResource,
    this.context,
    this.thisItem,
  }) : index = 0.toFhirInteger;

  ExecutionContext copyWith({
    Object? appInfo,
    FhirBase? focusResource,
    FhirBase? rootResource,
    FhirBase? context,
    FhirBase? thisItem,
    List<FhirBase>? total,
    FhirInteger? index,
    Map<String, dynamic>? definedVariables,
  }) {
    return ExecutionContext(
      appInfo: appInfo ?? this.appInfo,
      focusResource: focusResource ?? this.focusResource,
      rootResource: rootResource ?? this.rootResource,
      context: context ?? this.context,
      thisItem: thisItem ?? this.thisItem,
    )
      ..total = total ?? this.total
      ..index = index ?? this.index
      ..definedVariables = definedVariables ?? this.definedVariables;
  }

  final Object? appInfo;
  final FhirBase? focusResource;
  final FhirBase? rootResource;
  final FhirBase? context;
  final FhirBase? thisItem;
  List<FhirBase>? total;
  FhirInteger index = 0.toFhirInteger;
  Map<String, dynamic>? definedVariables;

  void next() {
    index = (index + 1)! as FhirInteger;
  }

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  List<FhirBase> getDefinedVariable(String name) {
    if (definedVariables == null) {
      return <FhirBase>[];
    }
    final variable = definedVariables![name];
    if (variable is List<FhirBase>) {
      return variable;
    } else if (variable is Function) {
      // ignore: avoid_dynamic_calls
      final result = variable();
      if (result is List<FhirBase>) {
        return result;
      }
    }
    return <FhirBase>[];
  }

  void setDefinedVariable(
    String name,
    dynamic value,
    WorkerContext worker,
  ) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [name]),
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [
          name,
        ]),
      );
    }

    definedVariables![name] = value;
  }

  ExecutionContext changeThis(FhirBase newThis, WorkerContext worker) {
    final newContext = ExecutionContext(
      appInfo: appInfo,
      focusResource: focusResource,
      rootResource: rootResource,
      context: context,
      thisItem: newThis,
    );
    // append all of the defined variables from the context into the new context
    if (definedVariables != null) {
      for (final s in definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(
          s,
          definedVariables![s] as List<FhirBase>? ?? <FhirBase>[],
          worker,
        );
      }
    }
    return newContext;
  }

  @override
  String toString() {
    return 'ExecutionContext{appInfo: $appInfo, focusResource: $focusResource, '
        'rootResource: $rootResource, context: $context, thisItem: $thisItem, '
        'total: $total, index: $index, definedVariables: $definedVariables}';
  }
}
