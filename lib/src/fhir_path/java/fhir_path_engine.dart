// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

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
        "'${lexer.getCurrent()}'",
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
        ..kind = ExpressionNodeKind.constant
        ..constant = _parseConstant(lexer);
    } else if (lexer.isToken()) {
      result
        ..kind = ExpressionNodeKind.name
        ..name = lexer.take();
    } else if (lexer.getCurrent() == '(') {
      lexer.next();
      result
        ..kind = ExpressionNodeKind.group
        ..group = _parseExpression(lexer, allowExtensions);
      if (lexer.getCurrent() != ')') {
        throw lexer.error("Expected ')'");
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
      return FhirString(constant.unescapeJson());
    } else if (FHIRPathConstant.isFHIRPathConstant(constant)) {
      if (constant == 'true' || constant == 'false') {
        return FhirBoolean(constant == 'true');
      } else if (constant == '{}') {
        throw lexer.error('Unsupported constant: {}');
      } else if (constant[0] == '@') {
        return FhirDateTime.fromString(constant.substring(1));
      } else if (constant[0] == '%' ||
          constant[0] == '-' ||
          constant[0] == '+' && double.tryParse(constant) != null) {
        return FhirDecimal(double.parse(constant));
      } else if (RegExp(r'^\d+(\.\d+)?$').hasMatch(constant) &&
          double.tryParse(constant) != null) {
        return FhirDecimal(double.parse(constant));
      } else {
        throw lexer.error('Unsupported constant: $constant');
      }
    } else {
      throw lexer.error('Invalid constant: $constant');
    }
  }

  TypeDetails check(
    Object appContext,
    String resourceType,
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
      if (resourceType.isAbsoluteUrl()) {
        ctxt = '${resourceType.substring(0, resourceType.lastIndexOf('/') + 1)}'
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

    return executeTypeContext(
      ExecutionTypeContext(appContext, resourceType, types, types!),
      types,
      expr,
      true,
    );
  }

  TypeDetails checkWithStructureDefinition(
    Object appContext,
    StructureDefinition sd,
    String? context,
    ExpressionNode expr,
  ) {
    TypeDetails? types;

    if (!context!.contains('.') && sd.url != null) {
      types = TypeDetails(CollectionStatus.singleton, [sd.url.toString()]);
    } else {
      final ed = getElementDefinition(sd, context, true, expr);
      if (ed == null) {
        throw makeException(expr, 'Unknown context element: ', [context]);
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

    return executeTypeContext(
      ExecutionTypeContext(appContext, sd.url!.toString(), types, types),
      types,
      expr,
      true,
    );
  }

  TypeDetails checkWithExpression(
    Object appContext,
    StructureDefinition sd,
    ExpressionNode expr,
  ) {
    final types = TypeDetails(CollectionStatus.singleton);
    return executeTypeContext(
      ExecutionTypeContext(appContext, sd.url!.toString(), null, types),
      types,
      expr,
      true,
    );
  }

  TypeDetails checkWithStringExpression(
    Object appContext,
    String resourceType,
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
            ed.path.value!.substring(0, ed.path.value!.length - 3),
          ) &&
          path.length == ed.path.value!.length - 3) {
        return ElementDefinitionMatch(ed, null);
      }

      if (allowTypedName &&
          (ed.path.value?.endsWith('[x]') ?? false) &&
          path.startsWith(
            ed.path.value!.substring(0, ed.path.value!.length - 3),
          ) &&
          path.length > ed.path.value!.length - 3) {
        final suffix = path.substring(ed.path.value!.length - 3);
        final s = suffix.uncapitalize();

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
          ed.type![0].code.toString().sdNs(
                worker.getOverrideVersionNs(),
              ),
        );

        if (nsd == null) {
          throw makeException(
            expr,
            'FHIRPATH_NO_TYPE',
            [
              ed.type![0].code.value?.toString() ?? '',
              'getElementDefinition',
            ],
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
        final match = getElementDefinitionById(
          sd,
          ed.contentReference?.toString(),
        );
        return getElementDefinition(
          sd,
          '${match?.definition?.path.value}${path.substring(
            ed.path.value!.length,
          )}',
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

  TypeDetails executeTypeContext(
    ExecutionTypeContext inContext,
    TypeDetails? focus,
    ExpressionNode exp,
    bool atEntry,
  ) {
    var context = contextForParameter(inContext);
    var result = TypeDetails.empty();

    switch (exp.kind) {
      case ExpressionNodeKind.name:
        if (atEntry && exp.name == r'$this') {
          result.update(context.thisItem);
        } else if (atEntry && exp.name == r'$total') {
          result.update(anything(CollectionStatus.unordered));
        } else if (atEntry && exp.name == r'$index') {
          result.addType(TypeDetails.FP_Integer);
        } else if (atEntry && focus == null) {
          result.update(executeContextType(context, exp.name!, exp, false));
        } else {
          for (final s in focus?.getTypes() ?? <String>[]) {
            result.update(executeTypeString(s, exp, atEntry));
          }
          if (result.hasNoTypes()) {
            throw makeException(exp, 'FHIRPATH_UNKNOWN_NAME', [
              exp.name ?? '',
              focus?.describe() ?? '',
            ]);
          }
        }

      case ExpressionNodeKind.function:
        if (focus == null) {
          throw makeException(exp, 'FHIRPATH_NO_FOCUS', []);
        }
        result.update(evaluateFunctionType(context, focus, exp));

      case ExpressionNodeKind.unary:
        result.addType(TypeDetails.FP_Integer);
        result.addType(TypeDetails.FP_Decimal);
        result.addType(TypeDetails.FP_Quantity);

      case ExpressionNodeKind.constant:
        result.update(resolveConstantType(context, exp.constant, exp, true));

      case ExpressionNodeKind.group:
        result.update(executeTypeContext(context, focus, exp.group!, atEntry));
      case null:
      // TODO: Handle this case.
    }

    exp.types = result;

    if (exp.inner != null) {
      result = executeTypeContext(context, result, exp.inner!, false);
    }

    if (exp.proximal && exp.operation != null) {
      var next = exp.opNext;
      var last = exp;
      while (next != null) {
        context = contextForParameter(inContext);
        TypeDetails work;
        if (last.operation == FpOperation.Is ||
            last.operation == FpOperation.As) {
          work = executeTypeNameType(context, focus, next, atEntry);
        } else {
          work = executeTypeContext(context, focus, next, atEntry);
        }
        result = operateTypes(result, last.operation!, work, last);
        last = next;
        next = next.opNext;
      }
      exp.opTypes = result;
    }

    return result;
  }

  TypeDetails executeTypeString(String type, ExpressionNode exp, bool atEntry) {
    if (atEntry &&
        (exp.name?[0].isUpperCase() ?? false) &&
        type.hashTail() == exp.name) {
      // special
      // case for
      // start up
      return TypeDetails(CollectionStatus.singleton, [type]);
    }
    final result = TypeDetails(null);
    getChildTypesByName(type, exp.name, result, exp);
    return result;
  }

  List<FhirBase> resolveConstant(
    ExecutionContext context,
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

    final c = constant;
    if (c.value.startsWith('%')) {
      final varName = c.value.substring(1);
      if (context.hasDefinedVariable(varName)) {
        return context.getDefinedVariable(varName);
      }
      return resolveConstant(
        context,
        FhirString(c.value),
        beforeContext,
        expr,
        explicitConstant,
      );
    } else if (c.value.startsWith('@')) {
      return [processDateConstant(context.appInfo, c.value.substring(1), expr)];
    } else {
      throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [c.value]);
    }
  }

  ElementDefinitionMatch? getElementDefinitionById(
    StructureDefinition sd,
    String? ref,
  ) {
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

  ExecutionTypeContext contextForParameter(ExecutionTypeContext context) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      context.thisItem,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s
          in context.definedVariables?.keys.toSet().toList() ?? <String>[]) {
        newContext.setDefinedVariable(s, context.definedVariables![s]!);
      }
    }
    return newContext;
  }

  TypeDetails anything(CollectionStatus status) {
    return TypeDetails(status, allTypes.keys.toSet().toList());
  }

  TypeDetails executeContextType(
    ExecutionTypeContext context,
    String name,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (hostServices == null) {
      throw makeException(
        expr,
        'FHIRPATH_HO_HOST_SERVICES',
        ['Context Reference'],
      );
    }
    return hostServices!
        .resolveConstantType(this, context.appInfo, name, explicitConstant);
  }

  TypeDetails evaluateFunctionType(
    ExecutionTypeContext context,
    TypeDetails focus,
    ExpressionNode exp,
  ) {
    final paramTypes = <TypeDetails>[];

    if (exp.function == FpFunction.Is ||
        exp.function == FpFunction.As ||
        exp.function == FpFunction.OfType) {
      paramTypes.add(
        TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
      );
    } else {
      for (var i = 0; i < (exp.parameters?.length ?? 0); i++) {
        final expr = exp.parameters![i];
        if (_isExpressionParameter(exp, i)) {
          paramTypes.add(
            executeTypeNameType(
              changeThisExecutionTypeContext(context, focus),
              focus,
              expr,
              true,
            ),
          );
        } else {
          paramTypes.add(
            executeTypeNameType(context, context.thisItem, expr, true),
          );
        }
      }
    }

    switch (exp.function) {
      case FpFunction.Empty:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Not:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Exists:
        _checkParamTypes(
          exp,
          exp.function?.toCode() ?? 'Exists',
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Boolean]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.SubsetOf:
      case FpFunction.SupersetOf:
        _checkParamTypes(
          exp,
          exp.function?.toCode() ?? 'SubsetOf',
          paramTypes,
          [focus],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [
            TypeDetails.FP_Boolean,
          ],
        );
      case FpFunction.IsDistinct:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Distinct:
        return focus;
      case FpFunction.Count:
        return TypeDetails(CollectionStatus.singleton, [
          TypeDetails.FP_Integer,
        ]);
      case FpFunction.Where:
      case FpFunction.Select:
      case FpFunction.Repeat:
      case FpFunction.Aggregate:
        return focus;
      case FpFunction.All:
        return TypeDetails(
          CollectionStatus.singleton,
          [
            TypeDetails.FP_Boolean,
          ],
        );
      case FpFunction.As:
      case FpFunction.OfType:
        _checkParamTypes(
          exp,
          exp.function?.toCode() ?? 'As',
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          exp.parameters?.first.name == null
              ? []
              : [
                  exp.parameters!.first.name!,
                ],
        );
      case FpFunction.Type:
        final isSystemType = focus.types.any((pt) => pt.isSystemType());
        final isCustomType = focus.types.any((pt) => !pt.isSystemType());
        if (isSystemType && isCustomType) {
          return TypeDetails(
            CollectionStatus.singleton,
            [
              TypeDetails.FP_SimpleTypeInfo,
              TypeDetails.FP_ClassInfo,
            ],
          );
        } else if (isSystemType) {
          return TypeDetails(
            CollectionStatus.singleton,
            [
              TypeDetails.FP_SimpleTypeInfo,
            ],
          );
        } else {
          return TypeDetails(
            CollectionStatus.singleton,
            [
              TypeDetails.FP_ClassInfo,
            ],
          );
        }
      case FpFunction.Is:
        _checkParamTypes(
          exp,
          exp.function?.toCode() ?? 'Is',
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Union:
        return focus.union(paramTypes.first);
      case FpFunction.Combine:
        return focus.union(paramTypes.first);
      case FpFunction.Intersect:
        return focus.intersect(paramTypes.first);
      case FpFunction.Exclude:
        return focus;
      case FpFunction.Iif:
        final resultTypes = TypeDetails(null);
        _checkSingleton(focus, 'iif', exp);
        _checkParamTypes(
          exp,
          exp.function?.toCode() ?? 'Iif',
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Boolean]),
          ],
        );
        resultTypes.update(paramTypes[1]);
        if (paramTypes.length > 2) {
          resultTypes.update(paramTypes[2]);
        }
        return resultTypes;
      case FpFunction.ToString:
        _checkContextPrimitive(focus, 'toString', true, exp);
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case null:
      case FpFunction.Item:
      case FpFunction.Custom:
      case FpFunction.Single:
      case FpFunction.First:
      case FpFunction.Last:
      case FpFunction.Tail:
      case FpFunction.Skip:
      case FpFunction.Take:
      case FpFunction.Upper:
      case FpFunction.Lower:
      case FpFunction.ToChars:
      case FpFunction.IndexOf:
      case FpFunction.Substring:
      case FpFunction.StartsWith:
      case FpFunction.EndsWith:
      case FpFunction.Matches:
      case FpFunction.MatchesFull:
      case FpFunction.ReplaceMatches:
      case FpFunction.Contains:
      case FpFunction.Replace:
      case FpFunction.Length:
      case FpFunction.Children:
      case FpFunction.Descendants:
      case FpFunction.MemberOf:
      case FpFunction.Trace:
      case FpFunction.DefineVariable:
      case FpFunction.Check:
      case FpFunction.Today:
      case FpFunction.Now:
      case FpFunction.Resolve:
      case FpFunction.Extension:
      case FpFunction.AllFalse:
      case FpFunction.AnyFalse:
      case FpFunction.AllTrue:
      case FpFunction.AnyTrue:
      case FpFunction.HasValue:
      case FpFunction.ConvertsToBoolean:
      case FpFunction.ConvertsToInteger:
      case FpFunction.ConvertsToString:
      case FpFunction.ConvertsToDecimal:
      case FpFunction.ConvertsToQuantity:
      case FpFunction.ConvertsToDateTime:
      case FpFunction.ConvertsToDate:
      case FpFunction.ConvertsToTime:
      case FpFunction.ToBoolean:
      case FpFunction.ToInteger:
      case FpFunction.ToDecimal:
      case FpFunction.ToQuantity:
      case FpFunction.ToDateTime:
      case FpFunction.ToTime:
      case FpFunction.ConformsTo:
      case FpFunction.Round:
      case FpFunction.Sqrt:
      case FpFunction.Abs:
      case FpFunction.Ceiling:
      case FpFunction.Exp:
      case FpFunction.Floor:
      case FpFunction.Ln:
      case FpFunction.Log:
      case FpFunction.Power:
      case FpFunction.Truncate:
      case FpFunction.Encode:
      case FpFunction.Decode:
      case FpFunction.Escape:
      case FpFunction.Unescape:
      case FpFunction.Trim:
      case FpFunction.Split:
      case FpFunction.Join:
      case FpFunction.LowBoundary:
      case FpFunction.HighBoundary:
      case FpFunction.Precision:
      case FpFunction.HtmlChecks1:
      case FpFunction.HtmlChecks2:
      case FpFunction.Comparable:
      case FpFunction.HasTemplateIdOf:
        throw UnimplementedError();
    }
  }

  bool _isExpressionParameter(ExpressionNode exp, int i) {
    switch (i) {
      case 0:
        return exp.function == FpFunction.Where ||
            exp.function == FpFunction.Exists ||
            exp.function == FpFunction.All ||
            exp.function == FpFunction.Select ||
            exp.function == FpFunction.Repeat ||
            exp.function == FpFunction.Aggregate;
      case 1:
        return exp.function == FpFunction.Trace ||
            exp.function == FpFunction.DefineVariable;
      default:
        return false;
    }
  }

  void _checkParamTypes(
    ExpressionNode expr,
    String funcName,
    List<TypeDetails> paramTypes,
    List<TypeDetails> typeSet,
  ) {
    for (var i = 0; i < typeSet.length; i++) {
      if (i >= paramTypes.length) return;
      final actual = paramTypes[i];
      for (final a in actual.getTypes()) {
        if (!typeSet[i].hasTypeFromWorker(worker, [a])) {
          throw PathEngineException(
              '$funcName parameter $i has incorrect type $a, '
              'expected ${typeSet[i]}');
        }
      }
    }
  }

  void getChildTypesByName(
    String? type,
    String? name,
    TypeDetails result,
    ExpressionNode expr,
  ) {
    if (type == null || type.isEmpty || name == null || name.isEmpty) {
      throw makeException(expr, 'FHIRPATH_NO_TYPE', ['getChildTypesByName']);
    }

    if (type == 'http://hl7.org/fhir/StructureDefinition/xhtml' ||
        type.startsWith(NS_SYSTEM_TYPE)) {
      return;
    }

    if (type == TypeDetails.FP_SimpleTypeInfo) {
      getSimpleTypeChildTypesByName(name, result);
    } else if (type == TypeDetails.FP_ClassInfo) {
      getClassInfoChildTypesByName(name, result);
    } else {
      final url =
          type.contains('#') ? type.substring(0, type.indexOf('#')) : type;
      var tail = '';

      final sd = worker.fetchResource<StructureDefinition>(url);
      if (sd == null) {
        throw makeException(
          expr,
          'FHIRPATH_NO_TYPE',
          [url, 'getChildTypesByName'],
        );
      }

      final sdl = <StructureDefinition>[];
      ElementDefinitionMatch? m;

      if (type.contains('#')) {
        m = getElementDefinition(
          sd,
          type.substring(type.indexOf('#') + 1),
          false,
          expr,
        );
      }

      if (m != null && hasDataType(m.definition)) {
        if (m.fixedType != null) {
          final dt = worker.fetchResource<StructureDefinition>(
            m.fixedType!.sdNs(worker.getOverrideVersionNs()),
          );
          if (dt == null) {
            throw makeException(
              expr,
              'FHIRPATH_NO_TYPE',
              [
                m.fixedType!.sdNs(worker.getOverrideVersionNs()),
                'getChildTypesByName',
              ],
            );
          }
          sdl.add(dt);
        } else {
          for (final t in m.definition?.type ?? <ElementDefinitionType>[]) {
            final dt = worker.fetchResource<StructureDefinition>(
              t.code.toString().sdNs(
                    worker.getOverrideVersionNs(),
                  ),
            );
            if (dt == null) {
              throw makeException(expr, 'FHIRPATH_NO_TYPE', [
                t.code.toString().sdNs(worker.getOverrideVersionNs()),
                'getChildTypesByName',
              ]);
            }
            addTypeAndDescendents(sdl, dt, worker.allStructures());
          }
        }
      } else {
        addTypeAndDescendents(sdl, sd, worker.allStructures());
        if (type.contains('#')) {
          tail = type.substring(type.indexOf('#') + 1);
          tail = tail.substring(tail.indexOf('.'));
        }
      }

      for (final sdi in sdl) {
        var path = '${sdi.snapshot?.element[0].path}$tail.';

        if (name == '**') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if (ed.path.value?.startsWith(path) ?? false) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                String? tn;
                if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  tn = '${sdi.type}#${ed.path}';
                } else if (t.code.toString() == 'Resource') {
                  for (final rn in worker.getResourceNames()) {
                    if (!result.hasTypeFromWorker(worker, [rn])) {
                      getChildTypesByName(
                        result.addType(rn),
                        '**',
                        result,
                        expr,
                      );
                    }
                  }
                } else if (!result.hasTypeFromWorker(worker, [tn!])) {
                  getChildTypesByName(result.addType(tn), '**', result, expr);
                }
              }
            }
          }
        } else if (name == '*') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if ((ed.path.value?.startsWith(path) ?? false) &&
                !(ed.path.value?.substring(path.length).contains('.') ??
                    false)) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  result.addType('System.string');
                } else if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  result.addType('${sdi.type}#${ed.path}');
                } else if (t.code.toString() == 'Resource') {
                  result.addTypes(worker.getResourceNames());
                } else {
                  result.addType(t.code.toString());
                }
              }
            }
          }
        } else {
          path = '${sdi.snapshot?.element[0].path}$tail.$name';
          final ed =
              getElementDefinition(sdi, path, allowPolymorphicNames, expr);
          if (ed != null) {
            if (ed.fixedType != null) {
              result.addType(ed.fixedType!);
            } else {
              for (final t
                  in ed.definition?.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  if (['Element.id', 'Extension.url']
                          .contains(ed.definition?.id?.value) ||
                      ['Resource.id', 'Element.id', 'Extension.url']
                          .contains(ed.definition?.base?.path.value)) {
                    result.addTypeWithProfile(TypeDetails.FP_NS, 'string');
                  }
                  break;
                }
                ProfiledType? pt;
                if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  pt = ProfiledType('${sdi.url}#$path');
                } else if (t.code.toString() == 'Resource') {
                  result.addTypes(worker.getResourceNames());
                } else {
                  pt = ProfiledType(t.code.toString());
                }
                if (pt != null) {
                  if (t.profile != null) {
                    pt.addProfiles(t.profile!);
                  }
                  if (ed.definition?.binding != null) {
                    pt.addBinding(ed.definition!.binding);
                  }
                  result.addProfiledType(pt);
                }
              }
            }
          }
        }
      }
    }
  }

  TypeDetails resolveConstantType(
    ExecutionTypeContext context,
    FhirBase? constant,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (constant is FhirBoolean) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Boolean]);
    } else if (constant is FhirInteger) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Integer]);
    } else if (constant is FhirDecimal) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Decimal]);
    } else if (constant is Quantity) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Quantity]);
    } else if (constant is FHIRConstant) {
      return resolveConstantType(
        context,
        FhirString(constant.value),
        expr,
        explicitConstant,
      );
    } else if (constant == null) {
      return TypeDetails(CollectionStatus.singleton);
    } else {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
    }
  }

  TypeDetails executeTypeNameType(
    ExecutionTypeContext context,
    TypeDetails? focus,
    ExpressionNode exp,
    bool atEntry,
  ) {
    return TypeDetails(
      CollectionStatus.singleton,
      exp.name == null ? <String>[] : [exp.name!],
    );
  }

  List<FhirBase> executeTypeNameBase(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode next,
    bool atEntry,
  ) {
    final result = <FhirBase>[];
    if (next.name != null) {
      if (next.inner?.name != null) {
        result.add(FhirString('${next.name}.${next.inner!.name}}'));
      } else {
        result.add(FhirString(next.name));
      }
    }
    return result;
  }

  TypeDetails operateTypes(
    TypeDetails left,
    FpOperation operation,
    TypeDetails right,
    ExpressionNode expr,
  ) {
    switch (operation) {
      case FpOperation.Equals:
      case FpOperation.Equivalent:
      case FpOperation.NotEquals:
      case FpOperation.NotEquivalent:
      case FpOperation.LessThan:
      case FpOperation.Greater:
      case FpOperation.LessOrEqual:
      case FpOperation.GreaterOrEqual:
      case FpOperation.Is:
      case FpOperation.Or:
      case FpOperation.And:
      case FpOperation.Xor:
      case FpOperation.Implies:
      case FpOperation.In:
      case FpOperation.MemberOf:
      case FpOperation.Contains:
        return TypeDetails(
          CollectionStatus.singleton,
          [
            TypeDetails.FP_Boolean,
          ],
        );

      case FpOperation.As:
        return TypeDetails.profiledTypes(
          CollectionStatus.singleton,
          right.types,
        );

      case FpOperation.Union:
        return left.union(right);

      case FpOperation.Times:
      case FpOperation.Plus:
      case FpOperation.Minus:
      case FpOperation.DivideBy:
      case FpOperation.Div:
      case FpOperation.Mod:
        {
          final result = TypeDetails(CollectionStatus.singleton);
          if (left.hasType('integer') && right.hasType('integer')) {
            result.addType(TypeDetails.FP_Integer);
          } else if (left.hasTypes(['integer', 'decimal']) &&
              right.hasTypes(['integer', 'decimal'])) {
            result.addType(TypeDetails.FP_Decimal);
          } else if (operation == FpOperation.Plus &&
              left.hasTypes(['string', 'id', 'code', 'uri']) &&
              right.hasTypes(['string', 'id', 'code', 'uri'])) {
            result.addType(TypeDetails.FP_String);
          } else if ((operation == FpOperation.Plus ||
                  operation == FpOperation.Minus) &&
              left.hasTypes(['date', 'dateTime', 'instant'])) {
            if (right.hasType('Quantity')) {
              result.addType(left.getType());
            } else {
              throw PathEngineException(
                'Error in date arithmetic: '
                'Unable to operate on type ${right.getType()} '
                'with ${left.getType()}',
                location: expr.opStart,
                expression: expr.toString(),
              );
            }
          } else if (operation == FpOperation.Minus &&
              left.hasType('Quantity') &&
              right.hasType('Quantity')) {
            result.addType(TypeDetails.FP_Quantity);
          }
          return result;
        }

      case FpOperation.Concatenate:
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
    }
  }

  FhirBase processDateConstant(
      Object appInfo, String value, ExpressionNode expr) {
    String? date;
    String? time;
    String? tz;
    TemporalPrecisionEnum? temp;

    if (value.startsWith('T')) {
      time = value.substring(1);
    } else if (!value.contains('T')) {
      date = value;
    } else {
      final parts = value.split('T');
      date = parts[0];
      if (parts.length > 1) {
        time = parts[1];
      }
    }

    if (time != null) {
      var i = time.indexOf('-');
      if (i == -1) i = time.indexOf('+');
      if (i == -1) i = time.indexOf('Z');
      if (i > -1) {
        tz = time.substring(i);
        time = time.substring(0, i);
      }

      if (time.length == 2) {
        time = '$time:00:00';
        temp = TemporalPrecisionEnum.minute;
      } else if (time.length == 5) {
        time = '$time:00';
        temp = TemporalPrecisionEnum.minute;
      } else if (time.contains('.')) {
        temp = TemporalPrecisionEnum.millisecond;
      } else {
        temp = TemporalPrecisionEnum.second;
      }
    }

    if (date == null) {
      if (tz != null) {
        throw makeException(expr, 'FHIRPATH_UNKNOWN_CONTEXT', [value]);
      } else {
        var tt = FhirTime(time);
        tt = tt.adjustToPrecision(temp!);
        return tt;
        // TODO: no extensions
        // return tt.noExtensions();
      }
    } else if (time != null) {
      var dt = FhirDateTime.fromString("$date'T'$time${tz ?? ''}");
      if (temp != null) {
        dt = dt.adjustToPrecision(temp) as FhirDateTime;
      }
      return dt;
      // TODO(Dokotela): no extensions
      // return dt.noExtensions();
    } else {
      var d = FhirDate.fromString(date);
      return d;
      // TODO: no extensions
      // return d.noExtensions();
    }
  }

  ExecutionContext changeThisExecutionContext(
    ExecutionContext context,
    FhirBase newThis,
  ) {
    // Create a new ExecutionContext instance
    final newContext = ExecutionContext(
      context.appInfo,
      context.focusResource,
      context.rootResource,
      context.context,
      newThis,
    );

    // Append all the defined variables from the original context
    if (context.definedVariables != null) {
      context.definedVariables!.forEach((key, value) {
        newContext.setDefinedVariable(key, value, worker);
      });
    }

    return newContext;
  }

  ExecutionTypeContext changeThisExecutionTypeContext(
    ExecutionTypeContext context,
    TypeDetails newThis,
  ) {
    // Create a new ExecutionTypeContext instance
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      newThis,
    );

    // Append all the defined variables from the original context
    if (context.definedVariables != null) {
      context.definedVariables!.forEach(newContext.setDefinedVariable);
    }

    return newContext;
  }

  void _checkSingleton(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus != CollectionStatus.singleton) {
      // typeWarnings.add(
      //  new IssueMessage(
      //    worker.formatMessage(
      //      I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT,
      //      name, expr.toString(),
      //    ),
      //  I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT,
      //  ),
      // );
    }
  }

  void _checkContextPrimitive(
    TypeDetails focus,
    String name,
    bool canQty,
    ExpressionNode expr,
  ) {
    if (!focus.hasNoTypes()) {
      if (canQty) {
        if (!focus.hasTypes(primitiveTypes.toList()) &&
            !focus.hasType('Quantity')) {
          throw makeException(
            expr,
            'FHIRPATH_PRIMITIVE_ONLY',
            [
              name,
              focus.describe(),
              'Quantity, $primitiveTypes',
            ],
          );
        }
      } else if (!focus.hasTypes(primitiveTypes.toList())) {
        throw makeException(
          expr,
          'FHIRPATH_PRIMITIVE_ONLY',
          [
            name,
            focus.describe(),
            ...primitiveTypes,
          ],
        );
      }
    }
  }

  void getClassInfoChildTypesByName(String name, TypeDetails result) {
    if (name == 'namespace') {
      result.addType(TypeDetails.FP_String);
    }
    if (name == 'name') {
      result.addType(TypeDetails.FP_String);
    }
  }

  void getSimpleTypeChildTypesByName(String name, TypeDetails result) {
    if (name == 'namespace') {
      result.addType(TypeDetails.FP_String);
    }
    if (name == 'name') {
      result.addType(TypeDetails.FP_String);
    }
  }

  bool hasDataType(ElementDefinition? ed) {
    return ed != null &&
        ed.hasType() &&
        !(ed.getType().first.code.toString() == 'Element' ||
            ed.getType().first.code.toString() == 'BackboneElement');
  }

  void addTypeAndDescendents(
    List<StructureDefinition> sdl,
    StructureDefinition dt,
    List<StructureDefinition> types,
  ) {
    sdl.add(dt);
    for (final sd in types) {
      if (sd.baseDefinition != null &&
          sd.baseDefinition!.toString() == dt.url.toString() &&
          sd.derivation == TypeDerivationRule.specialization) {
        addTypeAndDescendents(sdl, sd, types);
      }
    }
  }
}
