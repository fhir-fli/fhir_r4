// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';



bool isWhitespace(dynamic value) {
  if (value is String) {
    return value.isWhiteSpace();
  } else if (value is int) {
    return value.isWhitespace();
  } else {
    return false;
  }
}

class FunctionDetails {
  FunctionDetails(this.description, this.minParameters, this.maxParameters);

  String description;
  int minParameters;
  int maxParameters;

  String getDescription() {
    return description;
  }

  int getMinParameters() {
    return minParameters;
  }

  int getMaxParameters() {
    return maxParameters;
  }
}

enum FpEquality {
  null_,
  true_,
  false_,
}

/// if the fhir path expressions are allowed to use constants beyond those
/// defined in the specification
/// the application can implement them by providing a constant resolver
abstract class IEvaluationContext {
  /// A constant reference - e.g. a reference to a name that must be resolved in
  /// context. The % will be removed from the constant name before this is
  /// invoked. Variables created with defineVariable will not be processed by
  /// resolveConstant (or resolveConstantType)
  ///
  /// This will also be called if the host invokes the FluentPath engine with a
  /// context of null
  ///
  /// @param appContext    - content passed into the fluent path engine
  /// @param name          - name reference to resolve
  /// @param beforeContext - whether this is being called before the name is
  ///                      resolved locally, or not
  /// @return the value of the reference (or null, if it's not valid, though can
  ///         throw an exception if desired)
  List<FhirBase> resolveConstant(
    FHIRPathEngine? engine,
    Object? appContext,
    String? name,
    bool beforeContext,
    bool explicitConstant,
  );

  TypeDetails resolveConstantType(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool explicitConstant,
  );

  /// when the .log() function is called
  ///
  /// @param argument
  /// @param focus
  /// @return
  bool fpLog(String argument, List<FhirBase> focus);

  // extensibility for functions
  ///
  /// @param functionName
  /// @return null if the function is not known
  FunctionDetails resolveFunction(FHIRPathEngine engine, String functionName);

  /// Check the function parameters, and throw an error if they are incorrect,
  /// or return the type for the function
  ///
  /// @param functionName
  /// @param parameters
  /// @return
  TypeDetails checkFunction(
    FHIRPathEngine engine,
    Object appContext,
    String functionName,
    TypeDetails focus,
    List<TypeDetails> parameters,
  );

  /// @param appContext
  /// @param functionName
  /// @param parameters
  /// @return
  List<FhirBase> executeFunction(
    FHIRPathEngine engine,
    Object? appContext,
    List<FhirBase> focus,
    String? functionName,
    List<List<FhirBase>> parameters,
  );

  /// Implementation of resolve() function. Passed a string, return matching
  /// resource, if one is known - else null
  ///
  /// @appContext - passed in by the host to the FHIRPathEngine
  /// @param url the reference (Reference.reference or the value of the
  /// canonical
  /// @return
  /// @throws FHIRException
  FhirBase resolveReference(
    FHIRPathEngine engine,
    Object appContext,
    String url,
    FhirBase refContext,
  );

  bool conformsToProfile(
    FHIRPathEngine engine,
    Object appContext,
    FhirBase item,
    String url,
  );

  /// return the value set referenced by the url, which has been used in
  /// memberOf()
  ValueSet resolveValueSet(
    FHIRPathEngine engine,
    Object? appContext,
    String url,
  );
}

class ExpressionNodeWithOffset {
  ExpressionNodeWithOffset(this.offset, this.node);

  int offset;
  ExpressionNode node;

  int getOffset() {
    return offset;
  }

  ExpressionNode getNode() {
    return node;
  }
}

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

class ElementDefinitionMatch {
  ElementDefinitionMatch(this.definition, this.fixedType);

  ElementDefinition? definition;
  String? fixedType;
}

class ClassTypeInfo extends FhirBase {
  ClassTypeInfo(this.instance);

  final FhirBase instance;
  final String? idBase = null;

  @override
  String get fhirType => 'ClassInfo';

  List<FhirBase> getProperty(String name, bool checkValid) {
    if (name == 'name') {
      return [FhirString(getName())];
    } else if (name == 'namespace') {
      return [FhirString(getNamespace())];
    } else {
      throw PathEngineException('Unknown property $name');
      // return super.getProperty(hash, name, checkValid);
    }
  }

  String getNamespace() {
    if (instance is Resource) {
      return 'FHIR';
    } else if (instance is! Element ||
        ((instance as Element).disallowExtensions ?? false)) {
      return 'System';
    } else {
      return 'FHIR';
    }
  }

  String getName() {
    if (instance is Resource) {
      return instance.fhirType;
    } else if (instance is! Element ||
        ((instance as Element).disallowExtensions ?? false)) {
      return instance.fhirType.capitalize()!;
    } else {
      return instance.fhirType;
    }
  }

  @override
  FhirBase clone() {
    throw UnimplementedError();
  }

  @override
  FhirBase copyWith({
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    throw UnimplementedError();
  }

  @override
  FhirBase? getChildValueByName(String name) {
    throw UnimplementedError();
  }

  @override
  List<FhirBase> listChildrenByName(String name, [bool checkValid = false]) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
