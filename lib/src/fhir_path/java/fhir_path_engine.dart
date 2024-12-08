// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'dart:collection';

import 'package:fhir_r4/fhir_r4.dart';

import 'java.dart';

class FHIRPathEngine {
  // Constructor
  FHIRPathEngine(this.worker)
      : terminologyServiceOptions = ValidationOptions.defaults(),
        profileUtilities = ProfileUtilities(worker) {
    for (final sd in worker.getStructures()) {
      if (sd.derivation == TypeDerivationRule.specialization &&
          sd.kind != StructureDefinitionKind.logical &&
          sd.name.value != null) {
        allTypes[sd.name.value!] = sd;
      }
      if (sd.derivation == TypeDerivationRule.specialization &&
          sd.kind == StructureDefinitionKind.primitive_type &&
          sd.name.value != null) {
        primitiveTypes.add(sd.name.value!);
      }
    }
    _initFlags();
  }

  // Fields
  final IWorkerContext worker;
  final StringBuffer log = StringBuffer();
  final Set<String> primitiveTypes = {};
  final Map<String, StructureDefinition> allTypes = {};
  final ValidationOptions terminologyServiceOptions;
  final ProfileUtilities profileUtilities;

  // Flags
  bool legacyMode = false;
  bool allowPolymorphicNames = false;
  bool doImplicitStringConversion = false;
  bool liquidMode = false;
  bool doNotEnforceAsSingletonRule = false;
  bool doNotEnforceAsCaseSensitive = false;
  bool allowDoubleQuotes = false;

  String? location; // For error messages
  IEvaluationContext? hostServices;

  // Initialization helper
  void _initFlags() {
    if (!VersionUtilities.isR5VerOrLater(worker.getVersion())) {
      doNotEnforceAsCaseSensitive = true;
      doNotEnforceAsSingletonRule = true;
    }
  }

  // Parse a path for later use
  ExpressionNode parse(String path, [String? name]) {
    final lexer = FHIRLexer.full(path, name, false, allowDoubleQuotes);
    if (lexer.done()) {
      throw lexer.error('Path cannot be empty');
    }
    final result = _parseExpression(lexer, true);
    if (!lexer.done()) {
      throw lexer.error(
        'Premature ExpressionNode termination at unexpected token '
        '"${lexer.getCurrent()}"',
      );
    }
    result.check();
    return result;
  }

  // Parse a partial path
  ExpressionNodeWithOffset parsePartial(String path, int i) {
    final lexer = FHIRLexer.withCursorAndQuotes(path, i, allowDoubleQuotes);
    if (lexer.done()) {
      throw lexer.error('Path cannot be empty');
    }
    final result = _parseExpression(lexer, true)..check();
    return ExpressionNodeWithOffset(lexer.getCurrentStart(), result);
  }

  // Parse an expression from the lexer
  ExpressionNode _parseExpression(FHIRLexer lexer, bool allowExtensions) {
    final result = _parseTerm(lexer, allowExtensions);
    if (lexer.isOp()) {
      final operation = FpOperation.fromCode(lexer.getCurrent()!);
      if (operation == null) {
        throw lexer.error('Unknown operation: ${lexer.getCurrent()}');
      }
      lexer.next();
      final next = _parseExpression(lexer, allowExtensions);
      result
        ..operation = operation
        ..opNext = next;
    }
    return result;
  }

  // Parse a term (helper for parsing expressions)
  ExpressionNode _parseTerm(FHIRLexer lexer, bool allowExtensions) {
    final result = ExpressionNode('term');
    if (lexer.isConstant()) {
      result
        ..kind = Kind.Constant
        ..constant = _parseConstant(lexer);
    } else if (lexer.isToken()) {
      result
        ..kind = Kind.Name
        ..name = lexer.take();
    } else if (lexer.getCurrent() == '(') {
      lexer.next();
      result
        ..kind = Kind.Group
        ..group = _parseExpression(lexer, allowExtensions);
      if (lexer.getCurrent() != ')') {
        throw lexer.error('Expected ")"');
      }
      lexer.next();
    } else {
      throw lexer.error('Unexpected token: ${lexer.getCurrent()}');
    }
    return result;
  }

  FhirBase _parseConstant(FHIRLexer lexer) {
    final constant = lexer.take();
    if (FHIRPathConstant.isFHIRPathStringConstant(constant)) {
      return FhirString(input: FhirPathUtilities.unescapeJson(constant));
    } else if (FHIRPathConstant.isFHIRPathConstant(constant)) {
      if (constant == 'true' || constant == 'false') {
        return FhirBoolean(input: constant == 'true');
      } else if (constant == '{}') {
        throw lexer.error('Unsupported constant: {}');
      } else if (constant[0] == '@') {
        return FhirDateTime.fromString(constant.substring(1));
      } else if (constant[0] == '%' ||
          constant[0] == '-' ||
          constant[0] == '+' && double.tryParse(constant) != null) {
        return FhirDecimal(input: double.parse(constant));
      } else if (RegExp(r'^\d+(\.\d+)?$').hasMatch(constant) &&
          double.tryParse(constant) != null) {
        return FhirDecimal(input: double.parse(constant));
      } else {
        throw lexer.error('Unsupported constant: $constant');
      }
    } else {
      throw lexer.error('Invalid constant: $constant');
    }
  }

  TypeDetails check(
    Object appContext,
    String? resourceType,
    String? context,
    ExpressionNode expr,
  ) {
    TypeDetails? types;

    if (context == null) {
      // Special case: first path reference must resolve in context
      types = null;
    } else if (!context.contains('.')) {
      final sd = worker.fetchTypeDefinition(context);
      if (sd == null) {
        throw PathEngineException('Unknown type definition: $context');
      }
      types = TypeDetails(CollectionStatus.singleton, [sd.url!.toString()]);
    } else {
      var ctxt = context.substring(0, context.indexOf('.'));
      if (FhirPathUtilities.isAbsoluteUrl(resourceType)) {
        ctxt =
            '${resourceType!.substring(0, resourceType.lastIndexOf('/') + 1)}'
            '$ctxt';
      }
      final sd = worker.fetchResource<StructureDefinition>(ctxt);
      if (sd == null) {
        throw makeException(expr, 'Unknown context: $context', []);
      }

      final ed = getElementDefinition(sd, context, true, expr);
      if (ed == null) {
        throw makeException(expr, 'Unknown context element: ', [context]);
      }

      if (ed.fixedType != null) {
        types = TypeDetails(CollectionStatus.singleton, [ed.fixedType!]);
      } else if ((ed.definition?.type?.isEmpty ?? true) ||
          isAbstractType(ed.definition!.type!)) {
        types = TypeDetails(CollectionStatus.singleton, ['$ctxt#$context']);
      } else {
        types = TypeDetails(CollectionStatus.singleton);
        for (final t in ed.definition?.type ?? <ElementDefinitionType>[]) {
          types.addType(t.code.toString());
        }
      }
    }

    return executeType(
      ExecutionTypeContext(appContext, resourceType, types, types),
      types,
      expr,
      true,
    );
  }

  TypeDetails checkWithStructureDefinition(
    dynamic appContext,
    StructureDefinition sd,
    String? context,
    ExpressionNode expr,
  ) {
    TypeDetails? types;

    if (!context!.contains('.') && sd.url != null) {
      types = TypeDetails(CollectionStatus.singleton, [sd.url.toString()]);
    } else {
      final  ed =
          getElementDefinition(sd, context, true, expr);
      if (ed == null) {
        throw makeException(expr, 'Unknown context element: ',[context]);
      }

      if (ed.fixedType != null) {
        types = TypeDetails(CollectionStatus.singleton, [ed.fixedType!]);
      } else if ((ed.definition?.type?.isEmpty ?? true) ||
          isAbstractType(ed.definition!.type!)) {
        types = TypeDetails(CollectionStatus.singleton, ['${sd.url}#$context']);
      } else {
        types = TypeDetails(CollectionStatus.singleton);
        for (final t in ed.definition?.type ?? <ElementDefinitionType>[]) {
          types.addType(t.code.toString());
        }
      }
    }

    return executeType(
      ExecutionTypeContext(appContext, sd.url?.toString(), types, types),
      types,
      expr,
      true,
    );
  }

  TypeDetails checkWithExpression(
    dynamic appContext,
    StructureDefinition? sd,
    ExpressionNode expr,
  ) {
    final types = TypeDetails(CollectionStatus.singleton);
    return executeType(
      ExecutionTypeContext(appContext, sd?.url?.toString(), null, types),
      types,
      expr,
      true,
    );
  }

  TypeDetails checkWithStringExpression(
    Object appContext,
    String? resourceType,
    String? context,
    String expr,
  ) {
    final parsedExpr = parse(expr);
    return check(appContext, resourceType, context, parsedExpr);
  }

  FhirException makeException(
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    var fmt = worker.formatMessage(constName, args);
    if (location != null) {
      fmt = '$fmt ${worker.formatMessage('FHIRPATH_LOCATION', [location])}';
    }
    if (holder != null) {
      return PathEngineException(
        fmt,
        location: holder.start,
        expression: holder.toString(),
      );
    } else {
      return PathEngineException(fmt);
    }
  }

  ElementDefinitionMatch? getElementDefinition(
    StructureDefinition sd,
    String path,
    bool allowTypedName,
    ExpressionNode expr,
  ) {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ed.path.value == path) {
        if (ed.hasContentReference()) {
          return getElementDefinitionById(sd, ed.contentReference?.toString());
        } else {
          return ElementDefinitionMatch(ed, null);
        }
      }

      if ((ed.path.value?.endsWith('[x]') ?? false) &&
          path.startsWith(
              ed.path.value!.substring(0, ed.path.value!.length - 3),) &&
          path.length == ed.path.value!.length - 3) {
        return ElementDefinitionMatch(ed, null);
      }

      if (allowTypedName &&
          (ed.path.value?.endsWith('[x]') ?? false) &&
          path.startsWith(
              ed.path.value!.substring(0, ed.path.value!.length - 3),) &&
          path.length > ed.path.value!.length - 3) {
        final suffix = path.substring(ed.path.value!.length - 3);
        final s = FhirPathUtilities.uncapitalize(suffix);

        if (primitiveTypes.contains(s)) {
          return ElementDefinitionMatch(ed, s);
        } else {
          return ElementDefinitionMatch(ed, suffix);
        }
      }

      if ((ed.path.value?.contains('.') ?? false) &&
          path.startsWith('${ed.path.value}.') &&
          (ed.type?.isNotEmpty ?? false) &&
          !isAbstractType(ed.type!)) {
        // If there’s more than one type, the test above would fail this
        if (ed.type!.length > 1) {
          throw StateError('Internal typing issue...');
        }

        final nsd = worker.fetchResource<StructureDefinition>(
          profileUtilities.sdNs(
              ed.type![0].code.value!, worker.getOverrideVersionNs(),),
        );

        if (nsd == null) {
          throw makeException(
            expr,
            'FHIRPATH_NO_TYPE',
            [ed.type![0].code.value?.toString() ?? '',
            'getElementDefinition',],
          );
        }

        return getElementDefinition(
          nsd,
          '${nsd.id!.value}${path.substring(ed.path.value!.length)}',
          allowTypedName,
          expr,
        );
      }

      if (ed.hasContentReference() && path.startsWith('${ed.path.value}.')) {
        final match = getElementDefinitionById(sd, ed.contentReference?.toString(),);
        return getElementDefinition(
          sd,
          '${match?.definition?.path.value}${path.substring(ed.path.value!.length,)}',
          allowTypedName,
          expr,
        );
      }
    }

    return null;
  }

  bool isAbstractType(List<ElementDefinitionType> list) {
    return list.length != 1 ||
        [
          'Element',
          'BackboneElement',
          'Resource',
          'DomainResource',
        ].contains(list.first.code.toString());
  }

  TypeDetails executeType(
  ExecutionContext inContext,
  TypeDetails? focus,
  ExpressionNode exp,
  bool atEntry,
) {
  var context = contextForParameter(inContext);
  var result = TypeDetails.empty();

  switch (exp.kind) {
    case Kind.Name:
      if (atEntry && exp.name == r'$this') {
        // TODO(Dokotela): implement this
        // result.update(context.getThisItem());
      } else if (atEntry && exp.name == r'$total') {
        result.update(anything(CollectionStatus.unordered));
      } else if (atEntry && exp.name == r"$index") {
        result.addType(TypeDetails.FP_Integer);
      } else if (atEntry && focus.isEmpty()) {
        result.update(executeContextType(context, exp.name!, exp, false));
      } else {
        for (final s in focus.getTypes()) {
          result.update(executeTypeForString(s, exp, atEntry));
        }
        if (result.hasNoTypes()) {
          throw makeException(
            exp,
            'FHIRPATH_UNKNOWN_NAME',
            exp.name,
            focus.describe(),
          );
        }
      }
      break;

    case ExpressionNodeKind.function:
      result.update(evaluateFunctionType(context, focus, exp));
      break;

    case ExpressionNodeKind.unary:
      result.addType(TypeDetails.FP_Integer);
      result.addType(TypeDetails.FP_Decimal);
      result.addType(TypeDetails.FP_Quantity);
      break;

    case ExpressionNodeKind.constant:
      result.update(resolveConstantType(context, exp.constant, exp, true));
      break;

    case ExpressionNodeKind.group:
      result.update(executeType(context, focus, exp.group!, atEntry));
      break;
  }

  exp.setTypes(result);

  if (exp.inner != null) {
    result = executeType(context, result, exp.inner!, false);
  }

  if (exp.isProximal && exp.operation != null) {
    var next = exp.opNext;
    var last = exp;
    while (next != null) {
      context = contextForParameter(inContext);
      TypeDetails work;
      if (last.operation == Operation.is || last.operation == Operation.as_) {
        work = executeTypeName(context, focus, next, atEntry);
      } else {
        work = executeType(context, focus, next, atEntry);
      }
      result = operateTypes(result, last.operation!, work, last);
      last = next;
      next = next.opNext;
    }
    exp.setOpTypes(result);
  }

  return result;
}

List<FhirBase> resolveConstant(
  ExecutionTypeContext context,
  FhirBase? constant,
  bool beforeContext,
  ExpressionNode expr,
  bool explicitConstant,
) {
  if (constant == null) {
    return <FhirBase>[];
  }

  if (constant is! FHIRConstant) {
    return [constant];
  }

  final c = constant as FHIRConstant;
  if (c.value.startsWith('%')) {
    final varName = c.value.substring(1);
    if (context.hasDefinedVariable(varName)) {
      return context.getDefinedVariable(varName);
    }
    return resolveConstant(context, c.value, beforeContext, expr, explicitConstant);
  } else if (c.value.startsWith('@')) {
    return [
      processDateConstant(context.appInfo, c.value.substring(1), expr)
    ];
  } else {
    throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', c.value);
  }
}

  ElementDefinitionMatch? getElementDefinitionById(StructureDefinition sd, String? ref) {
    if (ref == null) {
      return null;
    }
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ref == '#${ed.id}') {
        return ElementDefinitionMatch(ed, null);
      }
    }
    return null;
  }

    ExecutionContext contextForParameter(ExecutionContext context) {
    ExecutionContext newContext = new ExecutionContext(context.appInfo, context.focusResource, context.rootResource, context.context, context.thisItem);
    newContext.total = context.total;
    newContext.index = context.index;
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables?.keys.toSet().toList() ?? <String>[]) {
        newContext.setDefinedVariable(s, context.definedVariables.get(s));
      }
    }
    return newContext;
  }

  TypeDetails anything(CollectionStatus status) {
    return TypeDetails(status, allTypes.keys.toSet().toList());
  }

}

