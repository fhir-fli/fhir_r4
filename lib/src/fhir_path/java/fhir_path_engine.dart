// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters
// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4/src/fhir_path/java/java.dart';
import 'package:ucum/ucum.dart';

class FHIRPathEngine {
  /// Constructor
  FHIRPathEngine(this.worker)
      : terminologyServiceOptions = ValidationOptions.defaults() {
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

  /// Initialization helper
  void _initFlags() {
    if (!VersionUtilities.isR5VerOrLater(worker.getVersion())) {
      doNotEnforceAsCaseSensitive = true;
      doNotEnforceAsSingletonRule = true;
    }
  }

  StructureDefinition? _fetchTypeDefinition(String? type) {
    return type == null ? null : worker.fetchTypeDefinition(type);
  }

  /// Constants
  // ignore: constant_identifier_names
  static const NS_SYSTEM_TYPE = 'http://hl7.org/fhirpath/System.';
  // ignore: constant_identifier_names
  static const FHIR_TYPES_STRING = {
    'string',
    'uri',
    'code',
    'oid',
    'id',
    'uuid',
    'sid',
    'markdown',
    'base64Binary',
    'canonical',
    'url',
  };

  /// Fields
  final IWorkerContext worker;
  final StringBuffer fpLog = StringBuffer();
  final Set<String> primitiveTypes = {};
  final Map<String, StructureDefinition> allTypes = {};
  final ValidationOptions terminologyServiceOptions;

  /// Flags
  bool legacyMode = false;
  bool allowPolymorphicNames = false;
  bool doImplicitStringConversion = false;
  bool liquidMode = false;
  bool doNotEnforceAsSingletonRule = false;
  bool doNotEnforceAsCaseSensitive = false;
  bool allowDoubleQuotes = false;

  String? location; // For error messages
  IEvaluationContext? hostServices;

  ///
  /// ***************************************
  /// PARSING AND PRECEDENCE MANAGEMENT
  /// ***************************************
  ///
  ExpressionNode parse(String path, [String? name]) {
    final lexer = FHIRLexer(
      source: path,
      name: name,
      allowDoubleQuotes: allowDoubleQuotes,
    );

    if (lexer.done()) {
      throw FHIRLexerException(
        message: 'Path cannot be empty',
        location: lexer.currentLocation,
      );
    }
    return _parseLexer(lexer);
  }

  ExpressionNodeWithOffset parsePartial(String path, int i) {
    final lexer = FHIRLexer(
      source: path,
      cursor: i,
      allowDoubleQuotes: allowDoubleQuotes,
    );
    if (lexer.done()) {
      throw lexer.error('Path cannot be empty');
    }
    final result = _parseExpression(lexer, true)..check();
    return ExpressionNodeWithOffset(lexer.currentStart, result);
  }

  ExpressionNode _parseLexer(FHIRLexer lexer) {
    final result = _parseExpression(lexer, true);
    if (!lexer.done()) {
      throw lexer.error('Unexpected token "${lexer.current}"');
    }
    result.check();
    return result;
  }

  ExpressionNode _parseExpression(FHIRLexer lexer, bool proximal) {
    var result = ExpressionNode(lexer.nextId().toString());
    ExpressionNode? wrapper;
    final c = lexer.currentStartLocation;
    result.start = lexer.currentLocation;

    // Handle unary operations ('-' and '+')
    if (['-', '+'].contains(lexer.current)) {
      print('Found unary operation: ${lexer.current}');

      wrapper = ExpressionNode(lexer.nextId().toString())
        ..kind = ExpressionNodeKind.unary
        ..operation = FpOperation.fromCode(lexer.take())
        ..start = lexer.currentLocation
        ..proximal = proximal;
    }

    if (lexer.current == null) {
      throw lexer.error('Expression terminated unexpectedly');
    } else if (lexer.isConstant()) {
      final isString = lexer.isStringConstant();

      // Adjust for constants with unary operators (e.g., "-123")
      if (!isString &&
          (lexer.current!.startsWith('-') || lexer.current!.startsWith('+'))) {
        wrapper = ExpressionNode(lexer.nextId().toString())
          ..kind = ExpressionNodeKind.unary
          ..operation = FpOperation.fromCode(lexer.current!.substring(0, 1))
          ..proximal = proximal
          ..start = lexer.currentLocation;
        lexer.current = lexer.current!.substring(1);
      }

      result
        ..constant = _processConstant(lexer)
        ..kind = ExpressionNodeKind.constant;

      // Handle quantities (e.g., "5 years")
      if (!isString &&
          !lexer.done() &&
          (result.constant is FhirInteger || result.constant is FhirDecimal) &&
          (lexer.isStringConstant() ||
              lexer.hasTokenList([
                'year',
                'years',
                'month',
                'months',
                'week',
                'weeks',
                'day',
                'days',
                'hour',
                'hours',
                'minute',
                'minutes',
                'second',
                'seconds',
                'millisecond',
                'milliseconds',
              ]))) {
        String? ucum;
        String? unit;

        if (lexer.hasTokenList([
          'year',
          'years',
          'month',
          'months',
          'week',
          'weeks',
          'day',
          'days',
          'hour',
          'hours',
          'minute',
          'minutes',
          'second',
          'seconds',
          'millisecond',
          'milliseconds',
        ])) {
          final s = lexer.take();
          unit = s;
          switch (s) {
            case 'week':
            case 'weeks':
              ucum = 'wk';
            case 'day':
            case 'days':
              ucum = 'd';
            case 'hour':
            case 'hours':
              ucum = 'h';
            case 'minute':
            case 'minutes':
              ucum = 'min';
            case 'second':
            case 'seconds':
              ucum = 's';
            case 'millisecond':
            case 'milliseconds':
              ucum = 'ms';
          }
        } else {
          ucum = lexer.readConstant('units');
        }

        result.constant = Quantity(
          value: result.constant?.primitiveValue == null ||
                  double.tryParse(result.constant!.primitiveValue!) == null
              ? null
              : double.parse(result.constant!.primitiveValue!).toFhirDecimal,
          unit: unit?.toFhirString,
          system: ucum == null ? null : 'http://unitsofmeasure.org'.toFhirUri,
          code: ucum?.toFhirCode,
        );
      }
      result.end = lexer.currentLocation;
    } else if (lexer.current == '(') {
      lexer.next();
      result
        ..kind = ExpressionNodeKind.group
        ..group = _parseExpression(lexer, true);
      if (lexer.current != ')') {
        throw lexer.error('Found ${lexer.current} expecting a ")"');
      }
      result.end = lexer.currentLocation;
      lexer.next();
    } else {
      if (!lexer.isToken() && !lexer.current!.startsWith('`')) {
        throw lexer.error('Found ${lexer.current} expecting a token name');
      }
      if (lexer.isFixedName()) {
        result.name = lexer.readFixedName('Path Name');
      } else {
        result.name = lexer.take();
      }
      result.end = lexer.currentLocation;
      if (!result.checkName()) {
        throw lexer.error('Found ${result.name} expecting a valid token name');
      }
      if (lexer.current == '(') {
        var f = FpFunction.fromCode(result.name!);
        FunctionDetails? details;
        if (f == null) {
          if (hostServices != null) {
            details = hostServices!.resolveFunction(this, result.name!);
          }
          if (details == null) {
            throw lexer
                .error('The name ${result.name} is not a valid function name');
          }
          f = FpFunction.Custom;
        }
        result
          ..kind = ExpressionNodeKind.function
          ..function = f;
        lexer.next();
        while (lexer.current != ')') {
          result.parameters.add(_parseExpression(lexer, true));
          if (lexer.current == ',') {
            lexer.next();
          } else if (lexer.current != ')') {
            throw lexer.error(
              'The token ${lexer.current} is not expected here - '
              'either a "," or a ")" expected',
            );
          }
        }
        result.end = lexer.currentLocation;
        lexer.next();
        _checkParameters(lexer, c, result, details);
      } else {
        result.kind = ExpressionNodeKind.name;
      }
    }

    var focus = result;
    if (lexer.current == '[') {
      lexer.next();
      final item = ExpressionNode(lexer.nextId().toString())
        ..kind = ExpressionNodeKind.function
        ..function = FpFunction.Item
        ..parameters.add(_parseExpression(lexer, true));
      if (lexer.current != ']') {
        throw lexer.error(
          'The token ${lexer.current} is not expected here - a "]" expected',
        );
      }
      lexer.next();
      result.inner = item;
      focus = item;
    }
    if (lexer.current == '.') {
      lexer.next();
      focus.inner = _parseExpression(lexer, false);
    }

    result.proximal = proximal;
    if (proximal) {
      while (lexer.isOp()) {
        focus
          ..operation = FpOperation.fromCode(lexer.current)
          ..opStart = lexer.currentStartLocation
          ..opEnd = lexer.currentLocation;

        lexer.next();
        focus.opNext = _parseExpression(lexer, false);
        focus = focus.opNext!;
      }
      print('before organize precedence');
      result.printExpressionTree();
      result = _organisePrecedence(lexer, result);
      print('after organize precedence');
      result.printExpressionTree();
    }

    if (wrapper != null) {
      wrapper.opNext = result;
      result.proximal = false;
      result = wrapper;
    }

    return result;
  }

  ExpressionNode _organisePrecedence(FHIRLexer lexer, ExpressionNode oldNode) {
    var node = oldNode;

    // Handle multiplication/division/mod
    node = _gatherPrecedence(lexer, node, {
      FpOperation.Times,
      FpOperation.DivideBy,
      FpOperation.Div,
      FpOperation.Mod,
    });

    // Handle addition/subtraction
    node = _gatherPrecedence(lexer, node, {
      FpOperation.Plus,
      FpOperation.Minus,
      FpOperation.Concatenate,
    });

    // Handle other operations
    node = _gatherPrecedence(lexer, node, {FpOperation.Union});
    node = _gatherPrecedence(lexer, node, {
      FpOperation.LessThan,
      FpOperation.Greater,
      FpOperation.LessOrEqual,
      FpOperation.GreaterOrEqual,
    });
    node = _gatherPrecedence(lexer, node, {
      FpOperation.Equals,
      FpOperation.Equivalent,
      FpOperation.NotEquals,
      FpOperation.NotEquivalent,
    });

    node = _gatherPrecedence(lexer, node, {FpOperation.And});

    node = _gatherPrecedence(lexer, node, {FpOperation.Xor, FpOperation.Or});
    node = _gatherPrecedence(lexer, node, {FpOperation.Implies});
    return node;
  }

  ExpressionNode _gatherPrecedence(
    FHIRLexer lexer,
    ExpressionNode oldStart,
    Set<FpOperation> ops, {
    bool unary = false,
  }) {
    assert(oldStart.proximal, 'Start must be proximal');
    var start = oldStart;

    if (unary) {
      // Handle unary operators
      while (start.kind == ExpressionNodeKind.unary && start.opNext != null) {
        start
          ..group = start.opNext
          ..opNext = null;
        start = start.group!;
      }
      return start;
    }

    // Detect work needed for precedence grouping
    var focus = start.opNext;
    var work = false;
    if (ops.contains(start.operation)) {
      while (focus != null && focus.operation != null) {
        work = work || !ops.contains(focus.operation);
        focus = focus.opNext;
      }
    } else {
      while (focus != null && focus.operation != null) {
        work = work || ops.contains(focus.operation);
        focus = focus.opNext;
      }
    }
    if (!work) {
      return start;
    }

    // Entry point for grouping
    ExpressionNode group;
    if (ops.contains(start.operation)) {
      group = _newGroup(lexer, start);
      group.proximal = true;
      focus = start;
      start = group;
    } else {
      var node = start;
      focus = node.opNext;
      while (focus != null &&
          focus.operation != null &&
          !ops.contains(focus.operation)) {
        node = focus;
        focus = focus.opNext;
      }
      group = _newGroup(lexer, focus);
      node.opNext = group;
    }

    // Main grouping loop
    do {
      while (focus != null &&
          focus.operation != null &&
          ops.contains(focus.operation)) {
        focus = focus.opNext;
      }

      if (focus != null && focus.operation != null) {
        group
          ..operation = focus.operation
          ..opNext = focus.opNext;

        focus
          ..operation = null
          ..opNext = null;

        var node = group;
        focus = group.opNext;
        if (focus != null) {
          while (focus != null &&
              focus.operation != null &&
              !ops.contains(focus.operation)) {
            node = focus;
            focus = focus.opNext;
          }
          if (focus != null) {
            group = _newGroup(lexer, focus);
            node.opNext = group;
          }
        }
      }
    } while (focus != null && focus.operation != null);

    return start;
  }

  ExpressionNode _newGroup(FHIRLexer lexer, ExpressionNode? next) {
    final result = ExpressionNode(lexer.nextId().toString())
      ..kind = ExpressionNodeKind.group
      ..group = next;
    if (next != null) {
      next.proximal = true;
    }
    return result;
  }

  ///
  /// ***************************************
  /// CORE EVALUATION METHODS
  /// ***************************************
  ///
  /// Evaluation with base and ExpressionNode
  List<FhirBase> evaluate(FhirBase? base, ExpressionNode node) {
    print('Evaluating1: ');
    final list = <FhirBase>[];
    if (base != null) {
      list.add(base);
    }
    fpLog.clear();
    final context = ExecutionContext(
      focusResource: base != null && base is Resource ? base : null,
      rootResource: base != null && base is Resource ? base : null,
      context: base,
      thisItem: base,
    );
    return execute(context, list, node, true);
  }

  // Evaluation with base and FHIRPath expression (String)
  List<FhirBase> evaluateFromPath(FhirBase? base, String path) {
    final node = parse(path); // Assume `parse` is implemented
    return evaluate(base, node);
  }

  // Evaluation with appContext and additional parameters
  List<FhirBase> evaluateWithContext(
    Object? appContext,
    Resource? focusResource,
    Resource? rootResource,
    FhirBase? base,
    ExpressionNode node,
  ) {
    final list = <FhirBase>[];
    if (base != null) {
      list.add(base);
    }
    fpLog.clear();
    final context = ExecutionContext(
      appInfo: appContext,
      focusResource: focusResource,
      rootResource: rootResource,
      context: base,
      thisItem: base,
    );
    return execute(context, list, node, true);
  }

  // Evaluation with appContext and path (String)
  List<FhirBase> evaluateWithPath(
    Object? appContext,
    Resource? focusResource,
    Resource? rootResource,
    FhirBase? base,
    String path,
  ) {
    final node = parse(path); // Assume `parse` is implemented
    return evaluateWithContext(
      appContext,
      focusResource,
      rootResource,
      base,
      node,
    );
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
      var i = 0;
      for (final expr in exp.parameters) {
        if (isExpressionParameter(exp, i)) {
          paramTypes.add(
            executeType(
              changeThisTypeContext(context, focus),
              focus,
              expr,
              true,
            ),
          );
        } else {
          paramTypes.add(executeType(context, context.thisItem, expr, true));
        }
        i++;
      }
    }

    switch (exp.function) {
      case FpFunction.Empty:
      case FpFunction.Not:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Exists:
      case FpFunction.SubsetOf:
      case FpFunction.SupersetOf:
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [focus],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.IsDistinct:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Distinct:
        return focus;
      case FpFunction.Count:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Integer],
        );
      case FpFunction.Where:
      case FpFunction.Select:
      case FpFunction.Repeat:
      case FpFunction.Aggregate:
        return anything(focus.collectionStatus);
      case FpFunction.All:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Item:
        checkOrdered(focus, 'item', exp);
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Integer]),
          ],
        );
        return focus;
      case FpFunction.As:
      case FpFunction.OfType:
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          exp.parameters.isEmpty || exp.parameters.first.name == null
              ? []
              : [exp.parameters.first.name!],
        );
      case FpFunction.Type:
        var hasSystemType = false;
        var hasCustomType = false;
        for (final pt in focus.types) {
          hasSystemType = hasSystemType || pt.isSystemType();
          hasCustomType = hasCustomType || !pt.isSystemType();
        }
        if (hasSystemType && hasCustomType) {
          return TypeDetails(
            CollectionStatus.singleton,
            [TypeDetails.FP_SimpleTypeInfo, TypeDetails.FP_ClassInfo],
          );
        } else if (hasSystemType) {
          return TypeDetails(
            CollectionStatus.singleton,
            [TypeDetails.FP_SimpleTypeInfo],
          );
        } else {
          return TypeDetails(
            CollectionStatus.singleton,
            [TypeDetails.FP_ClassInfo],
          );
        }
      case FpFunction.Is:
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Single:
        return focus.toSingleton();
      case FpFunction.First:
      case FpFunction.Last:
        checkOrdered(focus, exp.function.toString(), exp);
        return focus.toSingleton();
      case FpFunction.Tail:
      case FpFunction.Skip:
      case FpFunction.Take:
        checkOrdered(focus, exp.function.toString(), exp);
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Integer]),
          ],
        );
        return focus;
      case FpFunction.Union:
      case FpFunction.Combine:
        return focus.union(paramTypes.first);
      case FpFunction.Intersect:
        return focus.intersect(paramTypes.first);
      case FpFunction.Exclude:
        return focus;
      case FpFunction.Iif:
        final types = TypeDetails(null);
        checkSingleton(focus, 'iif', exp);
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Boolean]),
          ],
        );
        types.update(paramTypes[1]);
        if (paramTypes.length > 2) {
          types.update(paramTypes[2]);
        }
        return types;
      case FpFunction.Lower:
      case FpFunction.Upper:
      case FpFunction.ToChars:
        checkContextString(focus, exp.function.toString(), exp, true);
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case FpFunction.IndexOf:
      case FpFunction.Substring:
      case FpFunction.StartsWith:
      case FpFunction.EndsWith:
      case FpFunction.Matches:
      case FpFunction.MatchesFull:
      case FpFunction.ReplaceMatches:
      case FpFunction.Contains:
      case FpFunction.Replace:
        checkContextString(focus, exp.function.toString(), exp, true);
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Length:
        checkContextPrimitive(focus, 'length', false, exp);
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Integer],
        );
      case FpFunction.Children:
      case FpFunction.Descendants:
        return childTypes(focus, exp.function.toString(), exp);
      case FpFunction.MemberOf:
        checkContextCoded(focus, 'memberOf', exp);
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Trace:
      case FpFunction.DefineVariable:
      case FpFunction.Check:
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.unordered, [TypeDetails.FP_String]),
          ],
        );
        return focus;
      case FpFunction.Today:
      case FpFunction.Now:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_DateTime],
        );
      case FpFunction.Resolve:
        checkContextReference(focus, 'resolve', exp);
        return TypeDetails(CollectionStatus.singleton, ['DomainResource']);
      case FpFunction.Extension:
        checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(CollectionStatus.singleton, ['Extension']);
      case FpFunction.ToInteger:
      case FpFunction.ToDecimal:
      case FpFunction.ToString:
      case FpFunction.ToQuantity:
      case FpFunction.ToBoolean:
        checkContextPrimitive(focus, exp.function.toString(), true, exp);
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case FpFunction.ToDateTime:
      case FpFunction.ToTime:
        checkContextPrimitive(focus, exp.function.toString(), false, exp);
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_DateTime],
        );
      case FpFunction.Custom:
        if (hostServices == null) {
          throw makeException(
            exp,
            'FHIRPATH_NO_HOST_SERVICES',
            ['Custom Function'],
          );
        }
        return hostServices!.checkFunction(
          this,
          context.appInfo,
          exp.name ?? 'custom',
          focus,
          paramTypes,
        );
      case null:
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

  ///
  /// ***************************************
  /// CORE EXECUTION FUNCTIONS
  /// ***************************************
  ///
  /// Core method to execute evaluation logic
  List<FhirBase> execute(
    ExecutionContext inContext,
    List<FhirBase> focus,
    ExpressionNode exp,
    bool atEntry,
  ) {
    print('Executing: $exp');
    var context = contextForParameter(inContext);
    var work = <FhirBase>[];

    switch (exp.kind) {
      case ExpressionNodeKind.unary:
        work.add(0.toFhirInteger);

      case ExpressionNodeKind.name:
        if (atEntry && exp.name == r'$this') {
          work.add(context.thisItem!);
        } else if (atEntry && exp.name == r'$total') {
          work.addAll(context.total ?? []);
        } else if (atEntry && exp.name == r'$index') {
          work.add(context.index);
        } else {
          for (final item in focus) {
            final outcome = executeForItem(context, item, exp, atEntry: true);
            work.addAll(outcome);
          }
        }

      case ExpressionNodeKind.function:
        work.addAll(evaluateFunction(context, focus, exp));

      case ExpressionNodeKind.constant:
        final constants =
            resolveConstantWithBase(context, exp.constant, false, exp, true);
        work.addAll(constants);

      case ExpressionNodeKind.group:
        work.addAll(execute(context, focus, exp.group!, atEntry));

      case null:
        break;
    }

    if (exp.inner != null) {
      work = execute(context, work, exp.inner!, false);
    }

    if (exp.proximal && exp.operation != null) {
      var next = exp.opNext;
      var last = exp;
      while (next != null) {
        context = contextForParameter(inContext);
        var work2 = preOperate(work, last.operation, exp);
        if (work2 != null) {
          work = work2;
        } else if (last.operation == FpOperation.Is ||
            last.operation == FpOperation.As) {
          work2 = executeContextTypeName(context, focus, next, false);
          work = operate(context, work, last.operation, work2, last);
        } else {
          work2 = execute(context, focus, next, true);
          work = operate(context, work, last.operation, work2, last);
        }
        last = next;
        next = next.opNext;
      }
    }

    return work;
  }

  List<FhirBase> executeForItem(
    ExecutionContext context,
    FhirBase item,
    ExpressionNode exp, {
    required bool atEntry,
  }) {
    final result = <FhirBase>[];
    // Step 1: Resolve constants if at entry
    if (atEntry && context.appInfo != null && hostServices != null) {
      final temp = hostServices!
          .resolveConstant(this, context.appInfo, exp.name, true, false);
      if (temp.isNotEmpty) {
        result.addAll(temp);
        return result;
      }
    }

    // Step 2: Special case for type checks
    if (atEntry &&
        exp.name != null &&
        exp.name!.isNotEmpty &&
        exp.name![0].toUpperCase() == exp.name![0]) {
      // Handle constant items
      if (item is PrimitiveType) {
        final itemType = item.fhirType;
        if (itemType == exp.name) {
          result.add(item);
          return result;
        } else {}
      }

      // Handle resources
      var sd = _fetchTypeDefinition(item.fhirType);
      if (sd == null) {
        // Logical model case
        if (exp.name == item.fhirType) {
          result.add(item);
        }
      } else {
        // Traverse through base definitions
        while (sd != null) {
          if (sd.type.toString() == exp.name) {
            result.add(item);
            break;
          }
          // final baseDefinitionUri = sd.baseDefinition?.toString();
          // if (baseDefinitionUri == null || baseDefinitionUri.isEmpty) {
          //   break;
          // }
          sd = worker.fetchResource<StructureDefinition>(
            uri: sd.baseDefinition?.toString(),
          );
        }
      }
    } else {
      // Step 3: Default case - Get children by name

      getChildrenByName(item, exp.name!, result);
    }
    // Step 4: Fallback to resolve constants if result is empty
    if (atEntry &&
        context.appInfo != null &&
        hostServices != null &&
        result.isEmpty) {
      result.addAll(
        hostServices!
            .resolveConstant(this, context.appInfo, exp.name, false, false),
      );
    }

    return result;
  }

  TypeDetails executeType(
    dynamic contextOrType, // Can be String or ExecutionTypeContext
    dynamic focusOrExp, // Can be TypeDetails or ExpressionNode
    ExpressionNode exp,
    bool atEntry,
  ) {
    // Determine whether the first parameter is a String or ExecutionTypeContext
    if (contextOrType is String && focusOrExp is ExpressionNode) {
      // Handle the first function's logic
      final type = contextOrType;
      final expression = focusOrExp;

      if (atEntry &&
          expression.name != null &&
          expression.name!.isNotEmpty &&
          expression.name![0].isUpperCase() &&
          type.hashTail() == expression.name) {
        // Special case for start up
        return TypeDetails(CollectionStatus.singleton, [type]);
      }

      final result = TypeDetails(null);
      getChildTypesByName(type, expression.name!, result, expression);
      return result;
    } else if (contextOrType is ExecutionTypeContext &&
        focusOrExp is TypeDetails?) {
      // Handle the second function's logic
      var context = typeContextForParameter(contextOrType);
      final focus = focusOrExp;
      TypeDetails? result = TypeDetails(null);

      switch (exp.kind) {
        case ExpressionNodeKind.name:
          if (atEntry && exp.name == r'$this') {
            if (context.thisItem == null) {
              throw makeException(exp, 'FHIRPATH_NO_THIS', ['']);
            }
            result.update(context.thisItem!);
          } else if (atEntry && exp.name == r'$total') {
            result.update(anything(CollectionStatus.unordered));
          } else if (atEntry && exp.name == r'$index') {
            result.addType(TypeDetails.FP_Integer);
          } else if (atEntry && focus == null) {
            result.update(executeContextType(context, exp.name!, exp, false));
          } else {
            for (final s in focus?.types ?? <String>[]) {
              result.update(executeType(s, null, exp, atEntry));
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
            throw makeException(exp, 'FHIRPATH_NO_FOCUS', ['']);
          }
          result.update(evaluateFunctionType(context, focus, exp));

        case ExpressionNodeKind.unary:
          result.addType(TypeDetails.FP_Integer);
          result.addType(TypeDetails.FP_Decimal);
          result.addType(TypeDetails.FP_Quantity);

        case ExpressionNodeKind.constant:
          result.update(resolveConstantType(context, exp.constant, exp, true));

        case ExpressionNodeKind.group:
          result.update(executeType(context, focus, exp.group!, atEntry));
        case null:
          throw ArgumentError('Invalid arguments passed to executeType');
      }

      exp.types = result;

      if (exp.inner != null) {
        result = executeType(context, result, exp.inner!, false);
      }

      if (exp.proximal && exp.operation != null) {
        var next = exp.opNext;
        var last = exp;
        while (next != null) {
          context = typeContextForParameter(contextOrType);
          TypeDetails work;

          if (last.operation == FpOperation.Is ||
              last.operation == FpOperation.As) {
            if (focus == null) {
              throw makeException(exp, 'FHIRPATH_NO_FOCUS', ['']);
            }
            work = executeTypeContextTypeName(context, focus, next, atEntry);
          } else {
            work = executeType(context, focus, next, atEntry);
          }
          if (result == null) {
            throw ArgumentError('result is null');
          }
          result = operateTypes(result, last.operation!, work, last);
          last = next;
          next = next.opNext;
        }
        exp.opTypes = result;
      }
      if (result == null) {
        throw ArgumentError('result is null');
      }
      return result;
    } else {
      throw ArgumentError('Invalid arguments passed to executeType');
    }
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
        'FHIRPATH_NO_HOST_SERVICES',
        ['Context Reference'],
      );
    }
    return hostServices!
        .resolveConstantType(this, context.appInfo, name, explicitConstant);
  }

  List<FhirBase> executeContextTypeName(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode next,
    bool atEntry,
  ) {
    final result = <FhirBase>[];
    if (next.inner != null) {
      result.add(FhirString('${next.name}.${next.inner!.name}'));
    } else {
      result.add(FhirString(next.name));
    }
    return result;
  }

  TypeDetails executeTypeContextTypeName(
    ExecutionTypeContext context,
    TypeDetails focus,
    ExpressionNode exp,
    bool atEntry,
  ) {
    return TypeDetails(
      CollectionStatus.singleton,
      exp.name == null ? <String>[] : [exp.name!],
    );
  }

  TypeDetails check(
    Object appContext, {
    String? resourceType,
    StructureDefinition? structureDefinition,
    String? context,
    ExpressionNode? expressionNode,
    String? expressionString,
  }) {
    if (expressionString != null && resourceType != null && context != null) {
      // Case 4: resourceType, context, and expressionString provided
      return check(
        appContext,
        resourceType: resourceType,
        context: context,
        expressionNode: parse(expressionString),
      );
    } else if (structureDefinition != null && expressionNode != null) {
      if (context != null) {
        // Case 2: structureDefinition, context, and expressionNode provided
        TypeDetails types;
        if (!context.contains('.')) {
          types = TypeDetails(
            CollectionStatus.singleton,
            [structureDefinition.url!.toString()],
          );
        } else {
          final ed = getElementDefinition(
            structureDefinition,
            context,
            true,
            expressionNode,
          );
          if (ed == null) {
            throw makeException(
              expressionNode,
              'FHIRPATH_UNKNOWN_CONTEXT_ELEMENT',
              [context],
            );
          }
          if (ed.fixedType != null) {
            types = TypeDetails(CollectionStatus.singleton, [ed.fixedType!]);
          } else if ((ed.definition?.type?.isEmpty ?? true) ||
              isAbstractType(ed.definition!.type!)) {
            types = TypeDetails(
              CollectionStatus.singleton,
              ['${structureDefinition.url!}#$context'],
            );
          } else {
            types = TypeDetails(CollectionStatus.singleton);
            for (final t in ed.definition?.type ?? <ElementDefinitionType>[]) {
              types.addType(t.code.toString());
            }
          }
        }
        return executeType(
          ExecutionTypeContext(
            appContext,
            structureDefinition.url!.toString(),
            types,
            types,
          ),
          types,
          expressionNode,
          true,
        );
      } else {
        // Case 3: structureDefinition and expressionNode provided
        return executeType(
          ExecutionTypeContext(
            appContext,
            structureDefinition.url!.toString(),
            null,
            null,
          ),
          null,
          expressionNode,
          true,
        );
      }
    } else if (resourceType != null &&
        context != null &&
        expressionNode != null) {
      // Case 1: resourceType, context, and expressionNode provided
      TypeDetails? types;
      if (!context.contains('.')) {
        final sd = _fetchTypeDefinition(context);
        if (sd == null) {
          throw PathEngineException('Unknown type definition: $context');
        }
        types = TypeDetails(CollectionStatus.singleton, [sd.url!.toString()]);
      } else {
        var ctxt = context.substring(0, context.indexOf('.'));
        if (resourceType.isAbsoluteUrl()) {
          ctxt =
              '${resourceType.substring(0, resourceType.lastIndexOf('/') + 1)}'
              '$ctxt';
        }
        final sd = worker.fetchResource<StructureDefinition>(uri: ctxt);
        if (sd == null) {
          throw makeException(expressionNode, 'Unknown context: $context', []);
        }
        final ed = getElementDefinition(sd, context, true, expressionNode);
        if (ed == null) {
          throw makeException(
            expressionNode,
            'Unknown context element: ',
            [context],
          );
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
        expressionNode,
        true,
      );
    } else {
      throw ArgumentError(
        'Insufficient or incorrect arguments provided to the check method.',
      );
    }
  }

  TypeDetails resolveConstantType(
    ExecutionTypeContext context,
    dynamic constant,
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
        constant.value,
        expr,
        explicitConstant,
      );
    } else if (constant == null) {
      return TypeDetails(CollectionStatus.singleton);
    } else if (constant is String) {
      return resolveStringConstantType(
        context,
        constant,
        expr,
        explicitConstant,
      );
    } else {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
    }
  }

  TypeDetails resolveStringConstantType(
    ExecutionTypeContext context,
    String s,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (s.startsWith('@')) {
      if (s.startsWith('@T')) {
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Time]);
      } else {
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_DateTime],
        );
      }
    } else if (s == '%sct' ||
        s == '%loinc' ||
        s == '%ucum' ||
        s == '%map-codes' ||
        s == '%us-zip' ||
        s.startsWith('%`vs-') ||
        s.startsWith('%`cs-') ||
        s.startsWith('%`ext-')) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
    } else if (s == '%resource') {
      if (context.resource == null) {
        throw makeException(
          expr,
          'FHIRPATH_CANNOT_USE',
          ['%resource', 'no focus resource'],
        );
      }
      return TypeDetails(
        CollectionStatus.singleton,
        context.resource == null ? <String>[] : [context.resource!],
      );
    } else if (s == '%rootResource') {
      if (context.resource == null) {
        throw makeException(
          expr,
          'FHIRPATH_CANNOT_USE',
          [
            '%rootResource',
            'no focus resource',
          ],
        );
      }
      return TypeDetails(
        CollectionStatus.singleton,
        context.resource == null ? <String>[] : [context.resource!],
      );
    } else if (s == '%context') {
      return context.context!;
    } else {
      return resolveVariableOrHostService(context, s, expr, explicitConstant);
    }
  }

  TypeDetails resolveVariableOrHostService(
    ExecutionTypeContext context,
    String s,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    final varName = s.substring(1);
    if (context.hasDefinedVariable(varName)) {
      return context.getDefinedVariable(varName)!;
    } else if (hostServices != null) {
      return hostServices!
          .resolveConstantType(this, context.appInfo, s, explicitConstant);
    } else {
      throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [s]);
    }
  }

  TypeDetails childTypes(
    TypeDetails focus,
    String mask,
    ExpressionNode expr,
  ) {
    final result = TypeDetails(CollectionStatus.unordered);
    for (final f in focus.getTypes()) {
      getChildTypesByName(f, mask, result, expr);
    }
    return result;
  }

  TypeDetails anything(CollectionStatus? status) {
    return TypeDetails(status, allTypes.keys.toList());
  }

  ///
  /// ***************************************
  /// CHILD AND CONTEXT HANDLING
  /// ***************************************
  ///
  void getChildrenByName(FhirBase item, String oldName, List<FhirBase> result) {
    String? tn;
    var name = oldName;

    if (allowPolymorphicNames) {
      // we'll look to see whether we have a polymorphic name
      for (final p in item.children()) {
        if (p.endsWith('X')) {
          final n = p.substring(0, p.length - 1);
          if (name.startsWith(n)) {
            tn = name.substring(n.length);
            name = n;
            break;
          }
        }
      }
    }
    final list = item.listChildrenByName(name);
    if (list.isNotEmpty) {
      for (final v in list) {
        if (tn == null || v.fhirType.equalsIgnoreCase(tn)) {
          result.add(v);
        }
      }
    }
  }

  void getChildTypesByName(
    String? type,
    String name,
    TypeDetails result,
    ExpressionNode expr,
  ) {
    if (type == null || type.isEmpty) {
      throw makeException(expr, 'FHIRPATH_NO_TYPE', ['getChildTypesByName']);
    }
    if (type == 'http://hl7.org/fhir/StructureDefinition/xhtml') {
      return;
    }
    if (type.startsWith(NS_SYSTEM_TYPE)) {
      return;
    }

    if (type == TypeDetails.FP_SimpleTypeInfo) {
      getSimpleTypeChildTypesByName(name, result);
    } else if (type == TypeDetails.FP_ClassInfo) {
      getClassInfoChildTypesByName(name, result);
    } else {
      String? url;
      if (type.contains('#')) {
        url = type.substring(0, type.indexOf('#'));
      } else {
        url = type;
      }
      var tail = '';
      final sd = worker.fetchResource<StructureDefinition>(uri: url);
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
      if (m?.definition != null && hasDataType(m!.definition!)) {
        if (m.fixedType != null) {
          final dt = worker.fetchResource<StructureDefinition>(
            uri: m.fixedType!.sdNs(worker.getOverrideVersionNs()),
          );
          if (dt == null) {
            throw makeException(expr, 'FHIRPATH_NO_TYPE', [
              m.fixedType!.sdNs(worker.getOverrideVersionNs()),
              'getChildTypesByName',
            ]);
          }
          sdl.add(dt);
        } else {
          for (final t in m.definition!.type ?? <ElementDefinitionType>[]) {
            final dt = worker.fetchResource<StructureDefinition>(
              uri: t.code.toString().sdNs(worker.getOverrideVersionNs()),
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
        var path = '${sdi.snapshot?.element[0].path ?? ''}$tail.';
        if (name == '**') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if (ed.path.value?.startsWith(path) ?? false) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isNotEmpty) {
                  String? tn;
                  if (t.code.toString() == 'Element' ||
                      t.code.toString() == 'BackboneElement') {
                    tn = '${sdi.type}#${ed.path}';
                  } else {
                    tn = t.code.toString();
                  }
                  if (t.code.toString() == 'Resource') {
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
                  } else if (!result.hasTypeFromWorker(worker, [tn])) {
                    getChildTypesByName(result.addType(tn), '**', result, expr);
                  }
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
          path = '${sdi.snapshot?.element[0].path ?? ''}$tail.$name';

          final ed =
              getElementDefinition(sdi, path, allowPolymorphicNames, expr);
          if (ed != null) {
            if (ed.fixedType?.isNotEmpty ?? false) {
              result.addType(ed.fixedType!);
            } else {
              for (final t
                  in ed.definition?.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  if ((ed.definition?.id?.value != null &&
                          [
                            'Element.id',
                            'Extension.url',
                          ].contains(ed.definition!.id!.value)) ||
                      (ed.definition?.base?.path.value != null &&
                          [
                            'Resource.id',
                            'Element.id',
                            'Extension.url',
                          ].contains(ed.definition!.base!.path.value))) {
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
                  if (t.profile?.isNotEmpty ?? false) {
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

  ExecutionContext contextForParameter(ExecutionContext context) {
    final newContext = ExecutionContext(
      appInfo: context.appInfo,
      focusResource: context.focusResource,
      rootResource: context.rootResource,
      context: context.context,
      thisItem: context.thisItem,
    )
      ..total = context.total
      ..index = context.index;

    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s]!, worker);
      }
    }
    return newContext;
  }

  ExecutionTypeContext typeContextForParameter(ExecutionTypeContext context) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      context.thisItem,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s]);
      }
    }
    return newContext;
  }

  ExecutionContext changeThisContext(
    ExecutionContext context,
    FhirBase newThis,
  ) {
    final newContext = context.copyWith(thisItem: newThis);
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s]!, worker);
      }
    }
    return newContext;
  }

  ExecutionTypeContext changeThisTypeContext(
    ExecutionTypeContext context,
    TypeDetails newThis,
  ) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      newThis,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s]);
      }
    }
    return newContext;
  }

  ///
  /// ***************************************
  /// ELEMENT AND CLASS INFO HANDLING
  /// ***************************************
  ///
  ElementDefinitionMatch? getElementDefinition(
    StructureDefinition sd,
    String path,
    bool allowTypedName,
    ExpressionNode expr,
  ) {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ed.path.value == path) {
        if (ed.hasContentReference()) {
          return getElementDefinitionById(sd, ed.contentReference!.toString());
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
        final s = path
            .substring(ed.path.value!.length - 3)
            .uncapitalize(); // Assuming uncapitalize is implemented somewhere
        if (primitiveTypes.contains(s)) {
          return ElementDefinitionMatch(ed, s);
        } else {
          return ElementDefinitionMatch(
            ed,
            path.substring(ed.path.value!.length - 3),
          );
        }
      }

      if ((ed.path.value?.contains('.') ?? false) &&
          path.startsWith('${ed.path.value}.') &&
          ed.type != null &&
          ed.type!.isNotEmpty &&
          !isAbstractType(ed.type!)) {
        if (ed.type!.length > 1) {
          throw StateError('Internal typing issue...');
        }

        final nsd = worker.fetchResource<StructureDefinition>(
          uri: ed.type![0].code.toString().sdNs(worker.getOverrideVersionNs()),
        );

        if (nsd == null) {
          throw makeException(expr, 'FHIRPATH_NO_TYPE', [
            ed.type![0].code.value ?? '',
            'getElementDefinition',
          ]);
        }

        return getElementDefinition(
          nsd,
          '${nsd.id?.value}${path.substring(ed.path.value!.length)}',
          allowTypedName,
          expr,
        );
      }

      if (ed.hasContentReference() && path.startsWith('${ed.path.value}.')) {
        final m = getElementDefinitionById(sd, ed.contentReference!.toString());
        if (m?.definition?.path.value != null) {
          return getElementDefinition(
            sd,
            '${m!.definition!.path.value}'
            '${path.substring(ed.path.value!.length)}',
            allowTypedName,
            expr,
          );
        }
      }
    }
    return null;
  }

  ElementDefinitionMatch? getElementDefinitionById(
    StructureDefinition sd,
    String ref,
  ) {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ref == '#${ed.id}') {
        return ElementDefinitionMatch(ed, null);
      }
    }
    return null;
  }

  ///
  /// ***************************************
  /// ERROR AND EXCEPTION HANDLING
  /// ***************************************
  ///
  FHIRException makeException(
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

  FHIRException makeExceptionPlural(
    int num,
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    var fmt = worker.formatMessagePlural(num, constName, args);
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

  ///
  /// ***************************************
  /// PROCESSING CONSTANTS
  /// ***************************************
  ///
  FhirBase? _processConstant(FHIRLexer lexer) {
    if (lexer.isStringConstant()) {
      return FhirString(processConstantString(lexer.take(), lexer))
          .noExtensions();
    } else if (lexer.current?.isInteger ?? false) {
      return FhirInteger(int.parse(lexer.take())).noExtensions();
    } else if (lexer.current?.isDecimal() ?? false) {
      return FhirDecimal(double.parse(lexer.take())).noExtensions();
    } else if (lexer.current?.existsInList({'true', 'false'}) ?? false) {
      return FhirBoolean(lexer.take() == 'true').noExtensions();
    } else if (lexer.current == '{}') {
      lexer.take();
      return null;
    } else if ((lexer.current?.startsWith('%') ?? false) ||
        (lexer.current?.startsWith('@') ?? false)) {
      return FHIRConstant(lexer.take());
    } else {
      throw lexer.error('Invalid Constant ${lexer.current}');
    }
  }

  String processConstantString(String s, FHIRLexer lexer) {
    final buffer = StringBuffer();
    var i = 1; // Start after the opening quote

    while (i < s.length - 1) {
      // Stop before the closing quote
      final ch = s[i];
      if (ch == r'\') {
        i++;
        if (i >= s.length - 1) {
          // Treat incomplete escape sequence as literal backslash
          buffer.write(r'\');
          break;
        }
        switch (s[i]) {
          case 't':
            buffer.write('\t');
          case 'r':
            buffer.write('\r');
          case 'n':
            buffer.write('\n');
          case 'f':
            buffer.write('\f');
          case "'":
            buffer.write("'");
          case '"':
            buffer.write('"');
          case '`':
            buffer.write('`');
          case r'\':
            buffer.write(r'\');
          case '/':
            buffer.write('/');
          case 'u':
            // Check for a complete Unicode sequence (\uXXXX)
            if (i + 4 < s.length - 1) {
              final unicodeValue =
                  int.tryParse(s.substring(i + 1, i + 5), radix: 16);
              if (unicodeValue != null) {
                buffer.write(String.fromCharCode(unicodeValue));
                i += 4; // Skip the Unicode sequence
              } else {
                // Ignore the backslash and the 'u' for invalid sequences
                buffer.write('u');
              }
            } else {
              // Ignore the backslash for incomplete sequences
              buffer.write('u');
            }
          default:
            // Ignore the backslash for unrecognized escape sequences
            buffer.write(s[i]);
            break;
        }
      } else {
        buffer.write(ch);
      }
      i++;
    }

    return buffer.toString();
  }

  ///
  /// ***************************************
  /// uTILITY AND HELPER METHODS
  /// ***************************************
  ///
  bool _checkParameters(
    FHIRLexer lexer,
    SourceLocation location,
    ExpressionNode exp,
    FunctionDetails? details,
  ) {
    switch (exp.function) {
      case FpFunction.Empty:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Not:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Exists:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.SubsetOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.SupersetOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.IsDistinct:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Distinct:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Count:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Where:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Select:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.All:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.Repeat:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Aggregate:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.Item:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.As:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.OfType:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Type:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Is:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Single:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.First:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Last:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Tail:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Skip:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Take:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Union:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Combine:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Intersect:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Exclude:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Iif:
        return checkParamCountBoundary(lexer, location, exp, 2, 3);
      case FpFunction.Lower:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Upper:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToChars:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IndexOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Substring:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.StartsWith:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.EndsWith:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Matches:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.MatchesFull:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.ReplaceMatches:
        return checkParamCount(lexer, location, exp, 2);
      case FpFunction.Contains:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Replace:
        return checkParamCount(lexer, location, exp, 2);
      case FpFunction.Length:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Children:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Descendants:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.MemberOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Trace:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.DefineVariable:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.Check:
        return checkParamCount(lexer, location, exp, 2);
      case FpFunction.Today:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Now:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Resolve:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Extension:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.AllFalse:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.AnyFalse:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.AllTrue:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.AnyTrue:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.HasValue:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Encode:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Decode:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Escape:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Unescape:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Trim:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Split:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Join:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.HtmlChecks1:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.HtmlChecks2:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Comparable:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.ToInteger:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToDecimal:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToString:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToQuantity:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToBoolean:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToDateTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToInteger:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToDecimal:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToString:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToQuantity:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToBoolean:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToDateTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToDate:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConformsTo:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Round:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.Sqrt:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Abs:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Ceiling:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Exp:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Floor:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Ln:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Log:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Power:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Truncate:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.LowBoundary:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.HighBoundary:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.Precision:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Custom:
        return checkParamCountBoundary(
          lexer,
          location,
          exp,
          details?.getMinParameters(),
          details?.maxParameters,
        );
      case null:
      case FpFunction.HasTemplateIdOf:
        throw UnimplementedError();
    }
  }

  bool checkParamCount(
    FHIRLexer lexer,
    SourceLocation location,
    ExpressionNode exp,
    int count,
  ) {
    if (exp.parameters.length != count) {
      throw lexer
          .error('The function "${exp.name}" requires $count parameters');
    }
    return true;
  }

  bool checkParamCountBoundary(
    FHIRLexer lexer,
    SourceLocation location,
    ExpressionNode exp,
    int? countMin,
    int? countMax,
  ) {
    if (countMin == null || countMax == null) {
      throw ArgumentError('countMin and countMax cannot be null');
    }
    if (exp.parameters.length < countMin || exp.parameters.length > countMax) {
      throw lexer
          .error('The function "${exp.name}" requires between $countMin and'
              ' $countMax parameters');
    }
    return true;
  }

  void checkParamTypes(
    ExpressionNode expr,
    String funcName,
    List<TypeDetails> paramTypes,
    List<TypeDetails> typeSet,
  ) {
    var i = 0;
    for (final pt in typeSet) {
      if (i == paramTypes.length) {
        return;
      }
      final actual = paramTypes[i];
      i++;
      for (final a in actual.getTypes()) {
        if (!pt.hasTypeFromWorker(worker, [a])) {
          throw makeException(
            expr,
            'FHIRPATH_WRONG_PARAM_TYPE',
            [funcName, i, a, pt.toString()],
          );
        }
      }
    }
  }

  void checkOrdered(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus == CollectionStatus.unordered) {
      throw makeException(expr, 'FHIRPATH_ORDERED_ONLY', [name]);
    }
  }

  void checkSingleton(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus != CollectionStatus.singleton) {
// ignore: lines_longer_than_80_chars
// typeWarnings.add(new IssueMessage(worker.formatMessage(I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT, name, expr.toString()), I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT));
    }
  }

  bool isExpressionParameter(ExpressionNode exp, int i) {
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

  bool isAbstractType(List<ElementDefinitionType> list) {
    return list.length != 1 ||
        list.first.code.toString().existsInList(
          {'Element', 'BackboneElement', 'Resource', 'DomainResource'},
        );
  }

  TypeDetails? operateTypes(
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
        print('Operation: $operation');
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpOperation.As:
        return TypeDetails.profiledTypes(
          CollectionStatus.singleton,
          right.types,
        );
      case FpOperation.Union:
        return left.union(right);
      case FpOperation.Times:
        final result = TypeDetails(CollectionStatus.singleton);
        if (left.hasTypeFromWorker(worker, ['integer']) &&
            right.hasTypeFromWorker(worker, ['integer'])) {
          result.addType(TypeDetails.FP_Integer);
        } else if (left.hasTypeFromWorker(worker, ['integer', 'decimal']) &&
            right.hasTypeFromWorker(worker, ['integer', 'decimal'])) {
          result.addType(TypeDetails.FP_Decimal);
        }
        return result;
      case FpOperation.DivideBy:
        final result = TypeDetails(CollectionStatus.singleton);
        if (left.hasTypeFromWorker(worker, ['integer']) &&
            right.hasTypeFromWorker(worker, ['integer'])) {
          result.addType(TypeDetails.FP_Decimal);
        } else if (left.hasTypeFromWorker(worker, ['integer', 'decimal']) &&
            right.hasTypeFromWorker(worker, ['integer', 'decimal'])) {
          result.addType(TypeDetails.FP_Decimal);
        }
        return result;
      case FpOperation.Concatenate:
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case FpOperation.Plus:
        final result = TypeDetails(CollectionStatus.singleton);
        if (left.hasTypeFromWorker(worker, ['integer']) &&
            right.hasTypeFromWorker(worker, ['integer'])) {
          result.addType(TypeDetails.FP_Integer);
        } else if (left.hasTypeFromWorker(worker, ['integer', 'decimal']) &&
            right.hasTypeFromWorker(worker, ['integer', 'decimal'])) {
          result.addType(TypeDetails.FP_Decimal);
        } else if (left.hasTypeFromWorker(
              worker,
              ['string', 'id', 'code', 'uri'],
            ) &&
            right.hasTypeFromWorker(worker, ['string', 'id', 'code', 'uri'])) {
          result.addType(TypeDetails.FP_String);
        } else if (left
            .hasTypeFromWorker(worker, ['date', 'dateTime', 'instant'])) {
          if (right.hasTypeFromWorker(worker, ['Quantity'])) {
            result.addType(left.getType());
          } else {
            throw PathEngineException(
              'Error in date arithmetic: Unable to add type '
              '${right.getType()} to ${left.getType()}',
            );
          }
        }
        return result;
      case FpOperation.Minus:
        final result = TypeDetails(CollectionStatus.singleton);
        if (left.hasTypeFromWorker(worker, ['integer']) &&
            right.hasTypeFromWorker(worker, ['integer'])) {
          result.addType(TypeDetails.FP_Integer);
        } else if (left.hasTypeFromWorker(worker, ['integer', 'decimal']) &&
            right.hasTypeFromWorker(worker, ['integer', 'decimal'])) {
          result.addType(TypeDetails.FP_Decimal);
        } else if (left.hasTypeFromWorker(worker, ['Quantity']) &&
            right.hasTypeFromWorker(worker, ['Quantity'])) {
          result.addType(TypeDetails.FP_Quantity);
        } else if (left
            .hasTypeFromWorker(worker, ['date', 'dateTime', 'instant'])) {
          if (right.hasTypeFromWorker(worker, ['Quantity'])) {
            result.addType(left.getType());
          } else {
            throw PathEngineException(
              'Error in date arithmetic: Unable to subtract type '
              '${right.getType()} from ${left.getType()}',
            );
          }
        }
        return result;
      case FpOperation.Div:
      case FpOperation.Mod:
        final result = TypeDetails(CollectionStatus.singleton);
        if (left.hasTypeFromWorker(worker, ['integer']) &&
            right.hasTypeFromWorker(worker, ['integer'])) {
          result.addType(TypeDetails.FP_Integer);
        } else if (left.hasTypeFromWorker(worker, ['integer', 'decimal']) &&
            right.hasTypeFromWorker(worker, ['integer', 'decimal'])) {
          result.addType(TypeDetails.FP_Decimal);
        }
        return result;
    }
  }

  bool hasDataType(ElementDefinition ed) {
    return ed.hasType([]) &&
        !(ed.getType().first.code.toString() == 'Element' ||
            ed.getType().first.code.toString() == 'BackboneElement');
  }

  void checkContextString(
    TypeDetails focus,
    String name,
    ExpressionNode expr,
    bool sing,
  ) {
    if (!focus.hasNoTypes() &&
        !focus.hasTypeFromWorker(worker, ['string']) &&
        !focus.hasTypeFromWorker(worker, ['code']) &&
        !focus.hasTypeFromWorker(worker, ['uri']) &&
        !focus.hasTypeFromWorker(worker, ['canonical']) &&
        !focus.hasTypeFromWorker(worker, ['id'])) {
      throw makeException(
        expr,
        sing ? 'FHIRPATH_STRING_SING_ONLY' : 'FHIRPATH_STRING_ORD_ONLY',
        [name, focus.describe()],
      );
    }
  }

  void checkContextPrimitive(
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
          [name, focus.describe(), primitiveTypes.toString()],
        );
      }
    }
  }

  void checkContextCoded(TypeDetails focus, String name, ExpressionNode expr) {
    if (!focus.hasTypeFromWorker(worker, ['string']) &&
        !focus.hasTypeFromWorker(worker, ['code']) &&
        !focus.hasTypeFromWorker(worker, ['uri']) &&
        !focus.hasTypeFromWorker(worker, ['Coding']) &&
        !focus.hasTypeFromWorker(worker, ['CodeableConcept'])) {
      throw makeException(
        expr,
        'FHIRPATH_CODED_ONLY',
        [name, focus.describe()],
      );
    }
  }

  void checkContextReference(
    TypeDetails focus,
    String name,
    ExpressionNode expr,
  ) {
    if (!focus.hasTypeFromWorker(worker, ['string']) &&
        !focus.hasTypeFromWorker(worker, ['uri']) &&
        !focus.hasTypeFromWorker(worker, ['Reference']) &&
        !focus.hasTypeFromWorker(worker, ['canonical'])) {
      throw makeException(
        expr,
        'FHIRPATH_REFERENCE_ONLY',
        [name, focus.describe()],
      );
    }
  }

  ///
  /// ***************************************
  /// OPERATIONS
  /// ***************************************
  ///
  List<FhirBase>? preOperate(
    List<FhirBase> left,
    FpOperation? operation,
    ExpressionNode expr,
  ) {
    if (left.isEmpty) {
      return null;
    }
    switch (operation) {
      case FpOperation.And:
        return isBoolean(left, false) ? makeBoolean(false) : null;
      case FpOperation.Or:
        return isBoolean(left, true) ? makeBoolean(true) : null;
      case FpOperation.Implies:
        final v = asBoolFromList(left, expr);
        return v == Equality.false_ ? makeBoolean(true) : null;
      // ignore: no_default_cases
      default:
        return null;
    }
  }

  List<FhirBase> operate(
    ExecutionContext context,
    List<FhirBase> left,
    FpOperation? operation,
    List<FhirBase> right,
    ExpressionNode holder,
  ) {
    print('Operation: $operation');
    switch (operation) {
      case FpOperation.Equals:
        return opEquals(left, right, holder);
      case FpOperation.Equivalent:
        return opEquivalent(left, right, holder);
      case FpOperation.NotEquals:
        return opNotEquals(left, right, holder);
      case FpOperation.NotEquivalent:
        return opNotEquivalent(left, right, holder);
      case FpOperation.LessThan:
        return opLessThan(left, right, holder);
      case FpOperation.Greater:
        return opGreater(left, right, holder);
      case FpOperation.LessOrEqual:
        return opLessOrEqual(left, right, holder);
      case FpOperation.GreaterOrEqual:
        return opGreaterOrEqual(left, right, holder);
      case FpOperation.Union:
        return opUnion(left, right, holder);
      case FpOperation.In:
        return opIn(left, right, holder);
      case FpOperation.MemberOf:
        return opMemberOf(context, left, right, holder);
      case FpOperation.Contains:
        return opContains(left, right, holder);
      case FpOperation.Or:
        return opOr(left, right, holder);
      case FpOperation.And:
        return opAnd(left, right, holder);
      case FpOperation.Xor:
        return opXor(left, right, holder);
      case FpOperation.Implies:
        return opImplies(left, right, holder);
      case FpOperation.Plus:
        return opPlus(left, right, holder);
      case FpOperation.Times:
        return opTimes(left, right, holder);
      case FpOperation.Minus:
        return opMinus(left, right, holder);
      case FpOperation.Concatenate:
        return opConcatenate(left, right, holder);
      case FpOperation.DivideBy:
        return opDivideBy(left, right, holder);
      case FpOperation.Div:
        return opDiv(left, right, holder);
      case FpOperation.Mod:
        return opMod(left, right, holder);
      case FpOperation.Is:
        return opIs(left, right, holder);
      case FpOperation.As:
        return opAs(left, right, holder);
      case null:
        throw UnimplementedError();
    }
  }

  List<FhirBase> opEquals(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    print('opEquals: $left == $right');
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length != right.length) {
      return makeBoolean(false);
    }

    var res = true;
    var nil = false;

    for (var i = 0; i < left.length; i++) {
      final eq = doEquals(left[i], right[i]);

      if (eq == null) {
        nil = true;
      } else if (!eq) {
        res = false;
        break;
      }
    }

    if (!res) {
      return makeBoolean(false);
    } else if (nil) {
      return [];
    } else {
      return makeBoolean(true);
    }
  }

  List<FhirBase> opEquivalent(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length != right.length) {
      return makeBoolean(false);
    }

    var res = true;

    for (var i = 0; i < left.length; i++) {
      var found = false;
      for (var j = 0; j < right.length; j++) {
        // TODO(Dokotela): unclear if this is the correct way to handle null
        final equivalent = doEquivalent(left[i], right[j]);
        if (equivalent == null) {
          return <FhirBase>[];
        } else if (equivalent) {
          found = true;
          break;
        }
      }
      if (!found) {
        res = false;
        break;
      }
    }

    return makeBoolean(res);
  }

  List<FhirBase> opNotEquals(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (!legacyMode && (left.isEmpty || right.isEmpty)) {
      return [];
    }

    if (left.length != right.length) {
      return makeBoolean(true);
    }

    var res = true;
    var nil = false;
    for (var i = 0; i < left.length; i++) {
      final eq = doEquals(left[i], right[i]);
      if (eq == null) {
        nil = true;
      } else if (eq) {
        res = false;
        break;
      }
    }

    if (!res) {
      return makeBoolean(res);
    } else if (nil) {
      return [];
    } else {
      return makeBoolean(res);
    }
  }

  List<FhirBase> opNotEquivalent(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length != right.length) {
      return makeBoolean(true);
    }

    var res = true;

    for (var i = 0; i < left.length; i++) {
      var found = false;
      for (var j = 0; j < right.length; j++) {
        if (doEquivalent(left[i], right[j]) ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        res = false;
        break;
      }
    }

    return makeBoolean(!res);
  }

  List<FhirBase> opLessThan(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) < 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l < r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l < r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l < r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.listChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.listChildrenByName('unit');
        }
        var rUnit = r.listChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.listChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opLessThan(
            l.listChildrenByName('value'),
            r.listChildrenByName('value'),
            expr,
          );
        } else {
          if (worker.ucumService == null) {
            return makeBoolean(false);
          } else {
            final lQuantity = qtyToCanonicalDecimal(l as Quantity);
            final rQuantity = qtyToCanonicalDecimal(r as Quantity);
            final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
            final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
            return opLessThan(dl, dr, expr);
          }
        }
      }
    }
    return [];
  }

  List<FhirBase> opGreater(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) > 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l > r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l > r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l > r;

          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.listChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.listChildrenByName('unit');
        }
        var rUnit = r.listChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.listChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opGreater(
            l.listChildrenByName('value'),
            r.listChildrenByName('value'),
            expr,
          );
        } else {
          if (worker.ucumService == null) {
            return makeBoolean(false);
          } else {
            final lQuantity = qtyToCanonicalDecimal(l as Quantity);
            final rQuantity = qtyToCanonicalDecimal(r as Quantity);
            final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
            final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
            return opGreater(dl, dr, expr);
          }
        }
      }
    }
    return [];
  }

  List<FhirBase> opLessOrEqual(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) <= 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l <= r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l <= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l <= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.listChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.listChildrenByName('unit');
        }
        var rUnit = r.listChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.listChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opLessOrEqual(
            l.listChildrenByName('value'),
            r.listChildrenByName('value'),
            expr,
          );
        } else {
          if (worker.ucumService == null) {
            return makeBoolean(false);
          } else {
            final lQuantity = qtyToCanonicalDecimal(l as Quantity);
            final rQuantity = qtyToCanonicalDecimal(r as Quantity);
            final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
            final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
            return opLessOrEqual(dl, dr, expr);
          }
        }
      }
    }
    return [];
  }

  List<FhirBase> opGreaterOrEqual(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) >= 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l >= r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l >= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l >= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.listChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.listChildrenByName('unit');
        }
        var rUnit = r.listChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.listChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opGreaterOrEqual(
            l.listChildrenByName('value'),
            r.listChildrenByName('value'),
            expr,
          );
        } else {
          if (worker.ucumService == null) {
            return makeBoolean(false);
          } else {
            final lQuantity = qtyToCanonicalDecimal(l as Quantity);
            final rQuantity = qtyToCanonicalDecimal(r as Quantity);
            final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
            final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
            return opGreaterOrEqual(dl, dr, expr);
          }
        }
      }
    }
    return [];
  }

  List<FhirBase> opUnion(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    for (final item in left) {
      if (!doContains(result, item)) {
        result.add(item);
      }
    }
    for (final item in right) {
      if (!doContains(result, item)) {
        result.add(item);
      }
    }
    return result;
  }

  List<FhirBase> opIn(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty) {
      return [];
    }
    if (right.isEmpty) {
      return makeBoolean(false);
    }

    var ans = true;
    for (final l in left) {
      var found = false;
      for (final r in right) {
        final eq = doEquals(l, r);
        if (eq ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        ans = false;
        break;
      }
    }
    return makeBoolean(ans);
  }

  List<FhirBase> opMemberOf(
    ExecutionContext context,
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    var ans = false;
    final url = right.first.primitiveValue.toString();
    final vs = hostServices != null
        ? hostServices!.resolveValueSet(this, context.appInfo, url)
        : worker.fetchResource<ValueSet>(uri: url);

    if (vs != null) {
      for (final l in left) {
        if (['code', 'string', 'uri'].contains(l.fhirType)) {
          if (worker
              .validateCode(
                terminologyServiceOptions.withGuessSystem(),
                TypeConvertor.castToCoding(l),
                vs,
              )
              .isOk()) {
            ans = true;
          }
        } else if (l.fhirType == 'Coding') {
          if (worker
              .validateCode(
                terminologyServiceOptions,
                TypeConvertor.castToCoding(l),
                vs,
              )
              .isOk()) {
            ans = true;
          }
        } else if (l.fhirType == 'CodeableConcept') {
          // TODO(Dokotela): invalid, need to correct
          // final cc = TypeConvertor.castToCodeableConcept(l);
          // final vr = worker.validateCode(terminologyServiceOptions, cc, vs);
          // if (vr.isOk()) {
          ans = true;
          // }
        }
      }
    }

    return makeBoolean(ans);
  }

  List<FhirBase> opContains(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    var ans = true;
    for (final r in right) {
      var found = false;
      for (final l in left) {
        final eq = doEquals(l, r);
        if (eq ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        ans = false;
        break;
      }
    }
    return makeBoolean(ans);
  }

  List<FhirBase> opOr(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = asBoolList(left, expr);
    final r = asBoolList(right, expr);
    switch (l) {
      case Equality.true_:
        return makeBoolean(true);
      case Equality.null_:
        return r == Equality.true_ ? makeBoolean(true) : makeNull();
      case Equality.false_:
        switch (r) {
          case Equality.false_:
            return makeBoolean(false);
          case Equality.null_:
            return makeNull();
          case Equality.true_:
            return makeBoolean(true);
        }
    }
  }

  List<FhirBase> opAnd(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = asBoolList(left, expr);
    final r = asBoolList(right, expr);
    switch (l) {
      case Equality.false_:
        return makeBoolean(false);
      case Equality.null_:
        return r == Equality.false_ ? makeBoolean(false) : makeNull();
      case Equality.true_:
        switch (r) {
          case Equality.false_:
            return makeBoolean(false);
          case Equality.null_:
            return makeNull();
          case Equality.true_:
            return makeBoolean(true);
        }
    }
  }

  List<FhirBase> opXor(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = asBoolList(left, expr);
    final r = asBoolList(right, expr);
    switch (l) {
      case Equality.true_:
        switch (r) {
          case Equality.false_:
            return makeBoolean(true);
          case Equality.true_:
            return makeBoolean(false);
          case Equality.null_:
            return makeNull();
        }
      case Equality.null_:
        return makeNull();
      case Equality.false_:
        switch (r) {
          case Equality.false_:
            return makeBoolean(false);
          case Equality.true_:
            return makeBoolean(true);
          case Equality.null_:
            return makeNull();
        }
    }
  }

  List<FhirBase> opImplies(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final eq = asBoolList(left, expr);
    if (eq == Equality.false_) {
      return makeBoolean(true);
    } else if (right.isEmpty) {
      return makeNull();
    } else {
      switch (asBoolList(right, expr)) {
        case Equality.false_:
          return eq == Equality.null_ ? makeNull() : makeBoolean(false);
        case Equality.null_:
          return makeNull();
        case Equality.true_:
          return makeBoolean(true);
      }
    }
  }

  List<FhirBase> opPlus(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['+'],
      );
    }
    if (!left.first.isPrimitive) {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['+', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['+'],
      );
    }
    if (!right.first.isPrimitive &&
        !(left.first.fhirType == 'Quantity' &&
            right.first.fhirType == 'Quantity')) {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['+', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l.fhirType == 'string' && r.fhirType == 'string') {
      result.add(FhirString('${l.primitiveValue}${r.primitiveValue}'));
    } else if (l is FhirNumber && r is FhirNumber) {
      result.add((l + r)!);
    } else if (l is FhirDateTimeBase && r.fhirType == 'Quantity') {
      result.add(dateAdd(l, r as Quantity, false, expr));
    } else {
      throw makeException(
        expr,
        'FHIRPATH_OP_INCOMPATIBLE',
        ['+', l.fhirType, r.fhirType],
      );
    }

    return result;
  }

  List<FhirBase> opTimes(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['*'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['*', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['*'],
      );
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['*', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      result.add((l * r)!);
    } else if (l is Quantity && r is Quantity && worker.ucumService != null) {
      final pl = qtyToPair(l);
      final pr = qtyToPair(r);
      if (pl != null && pr != null) {
        try {
          final p = worker.ucumService!.multiply(pl, pr);
          result.add(pairToQty(p));
        } catch (e) {
          throw PathEngineException(
            e.toString(),
            location: expr.opStart,
            expression: expr.toString(),
          );
        }
      }
    } else {
      throw makeException(
        expr,
        'FHIRPATH_OP_INCOMPATIBLE',
        ['*', l.fhirType, r.fhirType],
      );
    }

    return result;
  }

  List<FhirBase> opMinus(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['-'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        '-',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['-'],
      );
    }
    if (!right.first.isPrimitive &&
        !(left.first is FhirDateTimeBase ||
            left.first.toString() == '0' ||
            left.first.fhirType == 'Quantity')) {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        '-',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      result.add((l - r)!);
    } else if (l is Quantity && r is Quantity) {
      final qty = r.copyWith(value: r.value?.abs().toFhirDecimal);
      result.add(qty);
    } else if (l is FhirDateTimeBase && r.fhirType == 'Quantity') {
      result.add(dateAdd(l as FhirDateTime, r as Quantity, true, expr));
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        '-',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opConcatenate(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['&'],
      );
    }
    if (left.isNotEmpty && !FHIR_TYPES_STRING.contains(left.first.fhirType)) {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['&', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['&'],
      );
    }
    if (right.isNotEmpty && !FHIR_TYPES_STRING.contains(right.first.fhirType)) {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['&', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.isEmpty ? '' : left.first.primitiveValue.toString();
    final r = right.isEmpty ? '' : right.first.primitiveValue.toString();
    result.add(FhirString('$l$r'));

    return result;
  }

  List<FhirBase> opDivideBy(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['/'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        '/',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        '/',
      ]);
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        '/',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      try {
        final d1 = FhirDecimal(l.value);
        final d2 = FhirDecimal(r.value);
        if (d2.value == 0) {
          return <FhirBase>[];
        }
        result.add((d1 / d2)! as FhirDecimal);
      } catch (e) {
        return <FhirBase>[];
      }
    } else if (l is Quantity && r is Quantity && worker.ucumService != null) {
      final pl = qtyToPair(l);
      final pr = qtyToPair(r);
      if (pl != null && pr != null) {
        final p = worker.ucumService!.divideBy(pl, pr);
        result.add(pairToQty(p));
      }
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        '/',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opDiv(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(left.length, expr, 'FHIRPATH_LEFT_VALUE', [
        'div',
      ]);
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        'div',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        'div',
      ]);
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        'div',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirInteger &&
        l.value != null &&
        r is FhirInteger &&
        r.value != null) {
      final divisor = r.value!;
      if (divisor != 0) {
        result.add(FhirInteger(l.value! ~/ divisor));
      }
    } else if ((l is FhirDecimal || l is FhirInteger) &&
        (r is FhirDecimal || r is FhirInteger)) {
      if ((r as FhirNumber).value != 0) {
        result.add(((l as FhirNumber) ~/ r)!);
      }
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        'div',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opMod(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(left.length, expr, 'FHIRPATH_LEFT_VALUE', [
        'mod',
      ]);
    }
    if (!left.first.isPrimitive) {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        'mod',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        'mod',
      ]);
    }
    if (!right.first.isPrimitive) {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        'mod',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l.fhirType == 'integer' && r.fhirType == 'integer') {
      final modulus = r.primitiveValue! as int;
      if (modulus != 0) {
        result.add(FhirInteger((l.primitiveValue! as int) % modulus));
      }
    } else if ((l.fhirType == 'decimal' || l.fhirType == 'integer') &&
        (r.fhirType == 'decimal' || r.fhirType == 'integer')) {
      try {
        final d1 = l as FhirNumber;
        final d2 = r as FhirNumber;
        if (d2.value != 0) {
          result.add((d1 % d2)!);
        }
      } catch (e) {
        throw makeException(expr, 'FHIRPATH_OP_ERROR', ['mod', e.toString()]);
      }
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        'mod',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opIs(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    if (left.isEmpty || right.isEmpty) {
      // No operation needed for empty lists
    } else if (left.length != 1 || right.length != 1) {
      result.add(FhirBoolean(false).noExtensions());
    } else {
      final tn = convertToStringList(right);
      if (left.first is Element) {
        final element = left.first as Element;
        if (element.disallowExtensions ?? false) {
          result.add(
            FhirBoolean(
              element.fhirType.capitalize() == tn ||
                  'System.${element.fhirType.capitalize()}' == tn,
            ).noExtensions(),
          );
        } else {
          final currentType = element.fhirType;
          var sd = _fetchTypeDefinition(currentType);
          while (sd != null) {
            if (tn == sd.type.toString()) {
              return makeBoolean(true);
            }
            sd = worker.fetchResource<StructureDefinition>(
              uri: sd.baseDefinition?.toString(),
            );
          }
          return makeBoolean(false);
        }
      } else if (left.first.fhirType == tn) {
        result.add(FhirBoolean(true).noExtensions());
      }
    }
    return result;
  }

  List<FhirBase> opAs(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    if (right.length != 1) {
      return result;
    }

    final tn = convertToStringList(right);
    if (!isKnownType(tn)) {
      throw PathEngineException('The type $tn is not valid');
    }
    if (!doNotEnforceAsSingletonRule && left.length > 1) {
      throw PathEngineException(
        'Attempt to use "as" on more than one item (${left.length}, "$expr")',
      );
    }

    for (final nextLeft in left) {
      if (compareTypeNames(tn, nextLeft.fhirType)) {
        result.add(nextLeft);
      }
    }
    return result;
  }

  ///
  /// ***************************************
  /// FUNCTIONS
  /// ***************************************
  ///
  List<FhirBase> evaluateFunction(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    switch (exp.function) {
      case FpFunction.Empty:
        return funcEmpty(context, focus, exp);
      case FpFunction.Not:
        return funcNot(context, focus, exp);
      case FpFunction.Exists:
        return funcExists(context, focus, exp);
      case FpFunction.SubsetOf:
        return funcSubsetOf(context, focus, exp);
      case FpFunction.SupersetOf:
        return funcSupersetOf(context, focus, exp);
      case FpFunction.IsDistinct:
        return funcIsDistinct(context, focus, exp);
      case FpFunction.Distinct:
        return funcDistinct(context, focus, exp);
      case FpFunction.Count:
        return funcCount(context, focus, exp);
      case FpFunction.Where:
        return funcWhere(context, focus, exp);
      case FpFunction.Select:
        return funcSelect(context, focus, exp);
      case FpFunction.All:
      // return funcAll(context, focus, exp);
      case FpFunction.Repeat:
      // return funcRepeat(context, focus, exp);
      case FpFunction.Aggregate:
      // return funcAggregate(context, focus, exp);
      case FpFunction.Item:
        return funcItem(context, focus, exp);
      case FpFunction.As:
        return funcAs(context, focus, exp);
      case FpFunction.OfType:
        return funcOfType(context, focus, exp);
      case FpFunction.Type:
        return funcType(context, focus, exp);
      case FpFunction.Is:
        return funcIs(context, focus, exp);
      case FpFunction.Single:
        return funcSingle(context, focus, exp);
      case FpFunction.First:
        return funcFirst(context, focus, exp);
      case FpFunction.Last:
        return funcLast(context, focus, exp);
      case FpFunction.Tail:
        return funcTail(context, focus, exp);
      case FpFunction.Skip:
        return funcSkip(context, focus, exp);
      case FpFunction.Take:
      // return funcTake(context, focus, exp);
      case FpFunction.Union:
      // return funcUnion(context, focus, exp);
      case FpFunction.Combine:
      // return funcCombine(context, focus, exp);
      case FpFunction.Intersect:
      // return funcIntersect(context, focus, exp);
      case FpFunction.Exclude:
      // return funcExclude(context, focus, exp);
      case FpFunction.Iif:
      // return funcIif(context, focus, exp);
      case FpFunction.Lower:
      // return funcLower(context, focus, exp);
      case FpFunction.Upper:
      // return funcUpper(context, focus, exp);
      case FpFunction.ToChars:
      // return funcToChars(context, focus, exp);
      case FpFunction.IndexOf:
      // return funcIndexOf(context, focus, exp);
      case FpFunction.Substring:
      // return funcSubstring(context, focus, exp);
      case FpFunction.StartsWith:
      // return funcStartsWith(context, focus, exp);
      case FpFunction.EndsWith:
      // return funcEndsWith(context, focus, exp);
      case FpFunction.Matches:
        return funcMatches(context, focus, exp);
      case FpFunction.MatchesFull:
        return funcMatchesFull(context, focus, exp);
      case FpFunction.ReplaceMatches:
      // return funcReplaceMatches(context, focus, exp);
      case FpFunction.Contains:
        return funcContains(context, focus, exp);
      case FpFunction.Replace:
      // return funcReplace(context, focus, exp);
      case FpFunction.Length:
      // return funcLength(context, focus, exp);
      case FpFunction.Children:
      // return funcChildren(context, focus, exp);
      case FpFunction.Descendants:
      // return funcDescendants(context, focus, exp);
      case FpFunction.MemberOf:
      // return funcMemberOf(context, focus, exp);
      case FpFunction.Trace:
        return funcTrace(context, focus, exp);
      case FpFunction.DefineVariable:
        return funcDefineVariable(context, focus, exp);
      case FpFunction.Check:
        return funcCheck(context, focus, exp);
      case FpFunction.Today:
        return funcToday(context, focus, exp);
      case FpFunction.Now:
        return funcNow(context, focus, exp);
      case FpFunction.Resolve:
      // return funcResolve(context, focus, exp);
      case FpFunction.Extension:
      // return funcExtension(context, focus, exp);
      case FpFunction.AnyFalse:
      // return funcAnyFalse(context, focus, exp);
      case FpFunction.AllFalse:
      // return funcAllFalse(context, focus, exp);
      case FpFunction.AnyTrue:
        return funcAnyTrue(context, focus, exp);
      case FpFunction.AllTrue:
      // return funcAllTrue(context, focus, exp);
      case FpFunction.HasValue:
      // return funcHasValue(context, focus, exp);
      case FpFunction.Encode:
      // return funcEncode(context, focus, exp);
      case FpFunction.Decode:
      // return funcDecode(context, focus, exp);
      case FpFunction.Escape:
      // return funcEscape(context, focus, exp);
      case FpFunction.Unescape:
      // return funcUnescape(context, focus, exp);
      case FpFunction.Trim:
      // return funcTrim(context, focus, exp);
      case FpFunction.Split:
      // return funcSplit(context, focus, exp);
      case FpFunction.Join:
      // return funcJoin(context, focus, exp);
      case FpFunction.HtmlChecks1:
      // return funcHtmlChecks1(context, focus, exp);
      case FpFunction.HtmlChecks2:
      // return funcHtmlChecks2(context, focus, exp);
      case FpFunction.Comparable:
      // return funcComparable(context, focus, exp);
      case FpFunction.ToInteger:
      // return funcToInteger(context, focus, exp);
      case FpFunction.ToDecimal:
      // return funcToDecimal(context, focus, exp);
      case FpFunction.ToString:
      // return funcToString(context, focus, exp);
      case FpFunction.ToBoolean:
      // return funcToBoolean(context, focus, exp);
      case FpFunction.ToQuantity:
      // return funcToQuantity(context, focus, exp);
      case FpFunction.ToDateTime:
      // return funcToDateTime(context, focus, exp);
      case FpFunction.ToTime:
      // return funcToTime(context, focus, exp);
      case FpFunction.ConvertsToInteger:
      // return funcIsInteger(context, focus, exp);
      case FpFunction.ConvertsToDecimal:
        return funcIsDecimal(context, focus, exp);
      case FpFunction.ConvertsToString:
      // return funcIsString(context, focus, exp);
      case FpFunction.ConvertsToBoolean:
      // return funcIsBoolean(context, focus, exp);
      case FpFunction.ConvertsToQuantity:
      // return funcIsQuantity(context, focus, exp);
      case FpFunction.ConvertsToDateTime:
      // return funcIsDateTime(context, focus, exp);
      case FpFunction.ConvertsToDate:
      // return funcIsDate(context, focus, exp);
      case FpFunction.ConvertsToTime:
      // return funcIsTime(context, focus, exp);
      case FpFunction.ConformsTo:
      // return funcConformsTo(context, focus, exp);
      case FpFunction.Round:
        return funcRound(context, focus, exp);
      case FpFunction.Sqrt:
      // return funcSqrt(context, focus, exp);
      case FpFunction.Abs:
      // return funcAbs(context, focus, exp);
      case FpFunction.Ceiling:
      // return funcCeiling(context, focus, exp);
      case FpFunction.Exp:
      // return funcExp(context, focus, exp);
      case FpFunction.Floor:
      // return funcFloor(context, focus, exp);
      case FpFunction.Ln:
      // return funcLn(context, focus, exp);
      case FpFunction.Log:
      // return funcLog(context, focus, exp);
      case FpFunction.Power:
      // return funcPower(context, focus, exp);
      case FpFunction.Truncate:
      // return funcTruncate(context, focus, exp);
      case FpFunction.LowBoundary:
      // return funcLowBoundary(context, focus, exp);
      case FpFunction.HighBoundary:
      // return funcHighBoundary(context, focus, exp);
      case FpFunction.Precision:
      // return funcPrecision(context, focus, exp);
      case FpFunction.Custom:
        {
          final params = <List<FhirBase>>[];
          for (final p in exp.parameters) {
            params.add(execute(context, focus, p, true));
          }
          return hostServices?.executeFunction(
                this,
                context.appInfo,
                focus,
                exp.name,
                params,
              ) ??
              <FhirBase>[];
        }
      case null:
      case FpFunction.HasTemplateIdOf:
        throw UnimplementedError();
    }
  }

  List<FhirBase> funcEmpty(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return [FhirBoolean(focus.isEmpty).noExtensions()];
  }

  List<FhirBase> funcNot(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final v = asBoolList(focus, exp);

    if (v != Equality.null_) {
      result.add(FhirBoolean(v != Equality.true_));
    }
    return result;
  }

  List<FhirBase> funcExists(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    var empty = true;
    final pc = <FhirBase>[];

    for (final f in focus) {
      if (exp.parameters.length == 1) {
        pc
          ..clear()
          ..add(f);
        final v = asBoolList(
          execute(context.changeThis(f, worker), pc, exp.parameters[0], true),
          exp,
        );
        if (v == Equality.true_) {
          empty = false;
        }
      } else if (!f.isEmpty()) {
        empty = false;
      }
    }

    return [FhirBoolean(!empty).noExtensions()];
  }

  List<FhirBase> funcSubsetOf(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final target = execute(context, focus, exp.parameters[0], true);

    var valid = true;
    for (final item in focus) {
      var found = false;
      for (final t in target) {
        if (FhirBase.compareDeep(item, t)) {
          found = true;
          break;
        }
      }
      if (!found) {
        valid = false;
        break;
      }
    }

    return [FhirBoolean(valid).noExtensions()];
  }

  List<FhirBase> funcIsDistinct(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.isEmpty) {
      return makeBoolean(true);
    }
    if (focus.length == 1) {
      return makeBoolean(true);
    }

    var distinct = true;
    for (var i = 0; i < focus.length; i++) {
      for (var j = i + 1; j < focus.length; j++) {
        final eq = doEquals(focus[j], focus[i]);
        if (eq == null) {
          return [];
        } else if (eq) {
          distinct = false;
          break;
        }
      }
    }
    return makeBoolean(distinct);
  }

  List<FhirBase> funcDistinct(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length <= 1) {
      return focus;
    }

    final result = <FhirBase>[];

    for (var i = 0; i < focus.length; i++) {
      var found = false;

      for (var j = i + 1; j < focus.length; j++) {
        final eq = doEquals(focus[j], focus[i]);
        if (eq == null) return <FhirBase>[];
        if (eq) {
          found = true;
          break;
        }
      }

      if (!found) {
        result.add(focus[i]);
      }
    }
    return result;
  }

  List<FhirBase> funcCount(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return [FhirInteger(focus.length).noExtensions()];
  }

  List<FhirBase> funcWhere(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final pc = <FhirBase>[];

    for (final item in focus) {
      pc
        ..clear()
        ..add(item);
      final v = asBoolFromList(
        executeContextTypeName(
          context.changeThis(item, worker),
          pc,
          exp.parameters[0],
          true,
        ),
        exp,
      );
      if (v == Equality.true_) {
        result.add(item);
      }
    }
    return result;
  }

  List<FhirBase> funcSelect(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final pc = <FhirBase>[];

    for (var i = 0; i < focus.length; i++) {
      final item = focus[i];
      pc
        ..clear()
        ..add(item);
      result.addAll(
        execute(
          context.changeThis(item, worker)..index = i.toFhirInteger,
          pc,
          exp.parameters[0],
          true,
        ),
      );
    }
    return result;
  }

  List<FhirBase> funcItem(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final s = convertToStringList(
      execute(context, focus, exp.parameters[0], true),
    );
    if (Utilities.isInteger(s) && int.parse(s) < focus.length) {
      result.add(focus[int.parse(s)]);
    }
    return result;
  }

  List<FhirBase> funcAs(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    final parameter = expr.parameters[0];
    final tn = parameter.inner != null
        ? '${parameter.name}.${parameter.inner!.name}'
        : 'FHIR.${parameter.name}';

    if (!isKnownType(tn)) {
      throw PathEngineException('The type $tn is not valid');
    }

    if (!doNotEnforceAsSingletonRule && focus.length > 1) {
      throw PathEngineException(
        'Attempt to use as() on more than one item (${focus.length})',
      );
    }

    for (final b in focus) {
      if (tn.startsWith('System.')) {
        if (b is Element &&
            (b.disallowExtensions ?? false) &&
            b.hasType([tn.substring(7)])) {
          result.add(b);
        }
      } else if (tn.startsWith('FHIR.')) {
        final tnp = tn.substring(5);
        if (b.fhirType == tnp) {
          result.add(b);
        } else {
          var sd = _fetchTypeDefinition(b.fhirType);
          while (sd != null) {
            if (compareTypeNames(tnp, sd.type.toString())) {
              result.add(b);
              break;
            }
            sd = sd.kind == StructureDefinitionKind.primitive_type
                ? null
                : worker.fetchResource<StructureDefinition>(
                    uri: sd.baseDefinition?.toString(),
                    canonicalForSource: sd,
                  );
          }
        }
      }
    }

    return result;
  }

  List<FhirBase> funcOfType(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    final parameter = expr.parameters[0];
    final tn = parameter.inner != null
        ? '${parameter.name}.${parameter.inner!.name}'
        : 'FHIR.${parameter.name}';

    if (!isKnownType(tn)) {
      throw PathEngineException('The type $tn is not valid');
    }

    for (final b in focus) {
      if (tn.startsWith('System.')) {
        if (b is Element &&
            (b.disallowExtensions ?? false) &&
            b.hasType([tn.substring(7)])) {
          result.add(b);
        }
      } else if (tn.startsWith('FHIR.')) {
        final tnp = tn.substring(5);
        if (b.fhirType == tnp) {
          result.add(b);
        } else {
          var sd = _fetchTypeDefinition(b.fhirType);
          while (sd != null) {
            if (tnp == sd.type.toString()) {
              result.add(b);
              break;
            }
            sd = sd.kind == StructureDefinitionKind.primitive_type
                ? null
                : worker.fetchResource<StructureDefinition>(
                    uri: sd.baseDefinition?.toString(),
                    canonicalForSource: sd,
                  );
          }
        }
      }
    }

    return result;
  }

  List<FhirBase> funcIs(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty || focus.length > 1) {
      return makeNull();
    }

    String? ns;
    String? n;

    final texp = expr.parameters[0];
    if (texp.kind != ExpressionNodeKind.name) {
      throw makeException(
        expr,
        'FHIRPATH_PARAM_WRONG',
        [
          texp.kind!,
          '0',
          'is',
        ],
      );
    }

    if (texp.inner != null) {
      if (texp.inner!.kind != ExpressionNodeKind.name) {
        throw makeException(
          expr,
          'FHIRPATH_PARAM_WRONG',
          [
            texp.kind!,
            '1',
            'is',
          ],
        );
      }
      ns = texp.name;
      n = texp.inner!.name;
    } else if ([
      'Boolean',
      'Integer',
      'Decimal',
      'String',
      'DateTime',
      'Date',
      'Time',
      'SimpleTypeInfo',
      'ClassInfo',
    ].contains(texp.name)) {
      ns = 'System';
      n = texp.name;
    } else {
      ns = 'FHIR';
      n = texp.name;
    }

    if (ns == 'System') {
      if (focus.first is Resource) {
        return makeBoolean(false);
      }

      if (focus.first is! Element ||
          ((focus.first as Element).disallowExtensions ?? false)) {
        final t = focus.first.fhirType.capitalize();
        if (n == t) {
          return makeBoolean(true);
        }
        if (t == 'Date' && n == 'DateTime') {
          return makeBoolean(true);
        }
        return makeBoolean(false);
      } else {
        return makeBoolean(false);
      }
    } else if (ns == 'FHIR') {
      if (n == focus.first.fhirType) {
        return makeBoolean(true);
      } else {
        var sd = _fetchTypeDefinition(focus.first.fhirType);
        while (sd != null) {
          if (n == sd.type.toString()) {
            return makeBoolean(true);
          }
          sd = worker.fetchResource<StructureDefinition>(
            uri: sd.baseDefinition?.toString(),
          );
        }
        return makeBoolean(false);
      }
    } else {
      return makeBoolean(false);
    }
  }

  List<FhirBase> funcSingle(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length == 1) {
      return focus;
    }
    throw makeException(expr, 'FHIRPATH_NO_COLLECTION', [
      'single',
      focus.length,
    ]);
  }

  List<FhirBase> funcFirst(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.isNotEmpty ? [focus.first] : [];
  }

  List<FhirBase> funcLast(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.isNotEmpty ? [focus.last] : [];
  }

  List<FhirBase> funcTail(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.length > 1 ? focus.sublist(1) : [];
  }

  List<FhirBase> funcSkip(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final n1 = execute(context, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue.toString());

    return focus.sublist(i1);
  }

  List<FhirBase> funcMatches(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final swb = execute(context, focus, exp.parameters[0], true);
    final sw = convertToStringList(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    } else if (focus.length == 1 && sw.isNotEmpty) {
      final st = convertToString(focus.first);
      if (st.isEmpty) {
        result.add(FhirBoolean(false).noExtensions());
      } else {
        final regExp = RegExp(sw, dotAll: true);
        final match = regExp.hasMatch(st);
        result.add(FhirBoolean(match).noExtensions());
      }
    } else {
      result.add(FhirBoolean(false).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcMatchesFull(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final sw =
        convertToStringList(execute(context, focus, exp.parameters[0], true));

    if (focus.length == 1 && sw.isNotEmpty) {
      final st = convertToString(focus.first);
      if (st.isEmpty) {
        result.add(FhirBoolean(false).noExtensions());
      } else {
        final regExp = RegExp(sw, dotAll: true);
        final fullMatch = regExp.matchAsPrefix(st) != null;
        result.add(FhirBoolean(fullMatch).noExtensions());
      }
    } else {
      result.add(FhirBoolean(false).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcContains(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (context.thisItem == null) {
      throw PathEngineException('The context does not have a thisItem');
    }
    final swb = execute(
      context,
      baseToList(context.thisItem!),
      exp.parameters[0],
      true,
    );
    final sw = convertToStringList(swb);

    if (focus.length != 1 || swb.length != 1) {
      return result;
    } else if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first is FhirString) {
      final st = convertToString(focus.first);
      result.add(FhirBoolean(st.contains(sw)).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcTrace(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final nl = execute(context, focus, exp.parameters[0], true);
    final name = nl.first.primitiveValue.toString();

    if (exp.parameters.length == 2) {
      final n2 = execute(context, focus, exp.parameters[1], true);
      writeToLog(name, n2);
    } else {
      writeToLog(name, focus);
    }
    return focus;
  }

  List<FhirBase> funcDefineVariable(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final nl = execute(context, focus, exp.parameters[0], true);
    final name = nl.first.primitiveValue.toString();
    final value = exp.parameters.length == 2
        ? execute(context, focus, exp.parameters[1], true)
        : focus;

    context.setDefinedVariable(name, value, worker);
    return focus;
  }

  List<FhirBase> funcCheck(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    final n1 = execute(context, focus, expr.parameters[0], true);

    if (!convertToBoolean(n1)) {
      final n2 = execute(context, focus, expr.parameters[1], true);
      final name = n2.first.primitiveValue.toString();
      throw FhirPathException('Check failed for $name');
    }
    return focus;
  }

  List<FhirBase> funcToday(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return <FhirBase>[FhirDate.fromDateTime(DateTime.now())];
  }

  List<FhirBase> funcNow(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return <FhirBase>[FhirDateTime.fromDateTime(DateTime.now())];
  }

  List<FhirBase> funcAnyTrue(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];

    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];

      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res = execute(context, pc, exp.parameters[0], true);
        final v = asBoolList(res, exp);
        if (v == Equality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!canConvertToBoolean(item)) {
          throw FHIRException(
            message:
                "Unable to convert '${convertToString(item)}' to a boolean",
          );
        }
        final v = asBool(item, true);
        if (v == Equality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcIsDecimal(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length != 1) {
      result.add(FhirBoolean(false).noExtensions());
    } else if (focus.first is FhirInteger ||
        focus.first is FhirBoolean ||
        focus.first is FhirDecimal) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first is FhirString) {
      result.add(
        FhirBoolean(Utilities.isDecimal(focus.first.toString())).noExtensions(),
      );
    } else {
      result.add(FhirBoolean(false).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcRound(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(focus.length, expr, 'FHIRPATH_FOCUS', [
        'round',
        focus.length,
      ]);
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      int? precision = 0;

      if (expr.parameters.isNotEmpty) {
        final n1 = execute(context, focus, expr.parameters[0], true);
        if (n1.length != 1) {
          throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
            'round',
            '0',
            'Multiple Values',
            'integer',
          ]);
        }
        precision = int.tryParse(n1[0].toString());
      }

      final value = double.tryParse(base.toString());
      if (value == null) {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'round',
          '(focus)',
          base.fhirType,
          'integer or decimal',
        ]);
      }
      if (precision == null) {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'round',
          '(focus)',
          base.fhirType,
          'integer',
        ]);
      }
      result.add(FhirDecimal(double.parse(value.toStringAsFixed(precision))));
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'round',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcSupersetOf(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final target = execute(context, focus, exp.parameters[0], true);

    var valid = true;
    for (final item in target) {
      var found = false;
      for (final t in focus) {
        if (FhirBase.compareDeep(item, t)) {
          found = true;
          break;
        }
      }
      if (!found) {
        valid = false;
        break;
      }
    }

    return [FhirBoolean(valid).noExtensions()];
  }

  List<FhirBase> funcType(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.map(ClassTypeInfo.new).toList();
  }

  ///
  /// ***************************************
  /// UTILITIES
  /// ***************************************
  ///
  List<FhirBase> makeBoolean(bool b) {
    return <FhirBase>[FhirBoolean(b).noExtensions()];
  }

  bool isBoolean(List<FhirBase> list, bool b) {
    return list.length == 1 &&
        list.first is FhirBoolean &&
        (list.first as FhirBoolean).value == b;
  }

  Equality asBoolFromList(List<FhirBase> items, ExpressionNode expr) {
    if (items.isEmpty) {
      return Equality.null_;
    } else if (items.length == 1 && items.first is FhirBoolean) {
      return asBool(items.first, true);
    } else if (items.length == 1) {
      return Equality.true_;
    } else {
      throw makeException(
        expr,
        'FHIRPATH_UNABLE_BOOLEAN',
        items.map((e) => e.toString()).toList(),
      );
    }
  }

  Equality asBool(FhirBase item, bool narrow) {
    if (item is FhirBoolean && item.value != null) {
      return boolToTriState(item.value!);
    } else if (narrow) {
      return Equality.false_;
    } else if (item is FhirNumber && item.value != null) {
      if (item is FhirInteger ||
          item is FhirUnsignedInt ||
          item is FhirPositiveInt) {
        return asBoolFromInt(item.value.toString());
      } else if (item is FhirDecimal) {
        return asBoolFromDec(item.value.toString());
      } else if (item is FhirString) {
        if (['true', 't', 'yes', 'y'].contains((item as FhirString).value)) {
          return Equality.true_;
        } else if (['false', 'f', 'no', 'n']
            .contains((item as FhirString).value)) {
          return Equality.false_;
        } else {
          return Equality.null_;
        }
      }
    }
    return Equality.null_;
  }

  Equality asBoolList(List<FhirBase> items, ExpressionNode expr) {
    if (items.isEmpty) {
      return Equality.null_;
    } else if (items.length == 1 && items.first is FhirBoolean) {
      return asBool(items.first, true);
    } else if (items.length == 1) {
      return Equality.true_;
    } else {
      throw makeException(
        expr,
        'FHIRPATH_UNABLE_BOOLEAN',
        [convertToStringList(items)],
      );
    }
  }

  Equality boolToTriState(bool b) {
    return b ? Equality.true_ : Equality.false_;
  }

  Equality asBoolFromInt(String s) {
    try {
      final i = int.tryParse(s);
      switch (i) {
        case 0:
          return Equality.false_;
        case 1:
          return Equality.true_;
        default:
          return Equality.null_;
      }
    } catch (e) {
      return Equality.null_;
    }
  }

  Equality asBoolFromDec(String s) {
    try {
      final d =
          BigInt.parse(s); // Use BigInt for arbitrary precision numbers in Dart
      if (d == BigInt.zero) {
        return Equality.false_;
      } else if (d == BigInt.one) {
        return Equality.true_;
      } else {
        return Equality.null_;
      }
    } catch (e) {
      return Equality.null_;
    }
  }

  void addTypeAndDescendents(
    List<StructureDefinition> sdl,
    StructureDefinition dt,
    List<StructureDefinition> types,
  ) {
    sdl.add(dt);
    for (final sd in types) {
      if (sd.baseDefinition != null &&
          sd.baseDefinition.toString() == dt.url.toString() &&
          sd.derivation == TypeDerivationRule.specialization) {
        addTypeAndDescendents(sdl, sd, types);
      }
    }
  }

  List<FhirBase> resolveConstantWithBase(
    ExecutionContext context,
    FhirBase? constant,
    bool beforeContext,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (constant == null) {
      return [];
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
      return resolveConstantWithString(
        context,
        c.value,
        beforeContext,
        expr,
        explicitConstant,
      );
    } else if (c.value.startsWith('@')) {
      return [
        processDateConstant(context.appInfo, c.value.substring(1), expr),
      ];
    } else {
      throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [c.value]);
    }
  }

  List<FhirBase> resolveConstantWithString(
    ExecutionContext context,
    String s,
    bool beforeContext,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    switch (s) {
      case '%sct':
        return [FhirString('http://snomed.info/sct')..noExtensions()];
      case '%loinc':
        return [FhirString('http://loinc.org')..noExtensions()];
      case '%ucum':
        return [FhirString('http://unitsofmeasure.org')..noExtensions()];
      case '%resource':
        if (context.focusResource == null) {
          throw makeException(
            expr,
            'FHIRPATH_CANNOT_USE',
            ['%resource', 'no focus resource'],
          );
        }
        return [context.focusResource!];
      case '%rootResource':
        if (context.rootResource == null) {
          throw makeException(
            expr,
            'FHIRPATH_CANNOT_USE',
            ['%rootResource', 'no focus resource'],
          );
        }
        return [context.rootResource!];
      case '%context':
        return context.context == null ? [] : [context.context!];
      case '%us-zip':
        return [FhirString('[0-9]{5}(-[0-9]{4}){0,1}')..noExtensions()];
      default:
        if (s.startsWith('%`vs-')) {
          return [
            FhirString(
              'http://hl7.org/fhir/ValueSet/${s.substring(5, s.length - 1)}',
            )..noExtensions(),
          ];
        } else if (s.startsWith('%`cs-')) {
          return [
            FhirString('http://hl7.org/fhir/${s.substring(5, s.length - 1)}')
              ..noExtensions(),
          ];
        } else if (s.startsWith('%`ext-')) {
          return [
            FhirString(
              'http://hl7.org/fhir/StructureDefinition/${s.substring(6, s.length - 1)}',
            )..noExtensions(),
          ];
        } else if (hostServices == null) {
          throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [s]);
        } else {
          return hostServices!.resolveConstant(
            this,
            context.appInfo,
            s.substring(1),
            beforeContext,
            explicitConstant,
          );
        }
    }
  }

  FhirBase processDateConstant(
    Object? appInfo,
    String value,
    ExpressionNode expr,
  ) {
    FhirBase? result;

    if (value.startsWith('T')) {
      result = FhirTime.tryParse(value.replaceFirst('T', ''));
    } else {
      result = FhirDate.tryParse(value) ??
          FhirDateTime.tryParse(value) ??
          FhirTime.tryParse(value);
    }
    if (result != null) return result;
    throw makeException(
      expr,
      'FHIRPATH_INVALID_DATE',
      [value],
    );
  }

  String removeTrailingZeros(String s) {
    if (s.noString()) {
      return '';
    }

    var i = s.length - 1;
    var done = false;
    var dot = false;

    // Traverse the string from the end
    while (i > 0 && !done) {
      if (s[i] == '.') {
        dot = true;
        i--;
        done = true; // Stop if a dot is encountered
      } else if (!dot && s[i] == '0') {
        i--;
      } else {
        done = true;
      }
    }

    // If no dot is encountered, return the original string
    if (!dot) {
      return s;
    }

    // Otherwise, return the processed substring
    return s.substring(0, i + 1);
  }

  bool decEqual(String left, String right) {
    return removeTrailingZeros(left) == removeTrailingZeros(right);
  }

  bool? datesEqual(FhirDateTimeBase left, FhirDateTimeBase right) {
    return left.isEqual(right);
  }

  bool? doEquals(FhirBase left, FhirBase right) {
    print('doEquals: $left == $right');
    if (left is Quantity && right is Quantity) {
      return qtyEqual(left, right);
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return datesEqual(left, right);
    } else if (left is FhirDecimal || right is FhirDecimal) {
      return decEqual(left.toString(), right.toString());
    } else if (left.isPrimitive && right.isPrimitive) {
      return left.primitiveValue == right.primitiveValue;
    } else {
      return FhirBase.compareDeep(left, right);
    }
  }

  bool? qtyEqual(Quantity left, Quantity right) {
    if (left.value == null && right.value == null) {
      return true;
    }
    if (left.value == null || right.value == null) {
      return null;
    }
    if (worker.ucumService != null) {
      final dl = qtyToCanonicalPair(left);
      final dr = qtyToCanonicalPair(right);

      if (dl != null && dr != null) {
        if (dl.unit == dr.unit) {
          return doEquals(
            FhirDecimal(dl.value.asDouble),
            FhirDecimal(dr.value.asDouble),
          );
        } else {
          return false;
        }
      }
    }
    if (left.code != null || right.code != null) {
      if (!(left.code != null && right.code != null) ||
          left.code != right.code) {
        return null;
      }
    } else if (left.unit == null || right.unit == null) {
      if (!(left.unit != null && right.unit != null) ||
          left.unit != right.unit) {
        return null;
      }
    }
    return doEquals(left, right);
  }

  Pair? qtyToCanonicalPair(Quantity q) {
    String? ucum;
    switch (q.unit?.value) {
      case 'year':
      case 'years':
        ucum = 'a';
      case 'month':
      case 'months':
        ucum = 'mo';
      case 'week':
      case 'weeks':
        ucum = 'wk';
      case 'day':
      case 'days':
        ucum = 'd';
      case 'hour':
      case 'hours':
        ucum = 'h';
      case 'minute':
      case 'minutes':
        ucum = 'min';
      case 'second':
      case 'seconds':
        ucum = 's';
      case 'millisecond':
      case 'milliseconds':
        ucum = 'ms';
    }

    if (q.system?.toString() != 'http://unitsofmeasure.org' && ucum == null) {
      return null;
    }
    try {
      final p = Pair(
        value: UcumDecimal.fromNum(q.value!.value!),
        unit: q.code?.toString() ?? ucum ?? '1',
      );
      return worker.ucumService?.getCanonicalForm(p);
    } catch (e) {
      return null;
    }
  }

  FhirDecimal? qtyToCanonicalDecimal(Quantity q) {
    if (q.system?.toString() != 'http://unitsofmeasure.org') {
      return null;
    }
    try {
      final pair = Pair(
        value: UcumDecimal.fromNum(q.value!.value!),
        unit: q.code?.toString() ?? '1',
      );
      final canonicalPair = worker.ucumService?.getCanonicalForm(pair);
      return FhirDecimal(canonicalPair?.value.asDouble);
    } catch (e) {
      return null;
    }
  }

  Quantity pairToQty(Pair pair) {
    return Quantity(
      value: FhirDecimal(pair.value.asDouble),
      system: FhirUri('http://unitsofmeasure.org'),
      code: pair.unit.toFhirCode,
      disallowExtensions: true,
    );
  }

  Pair? qtyToPair(Quantity q) {
    if (q.system?.toString() != 'http://unitsofmeasure.org') {
      return null;
    }
    try {
      return Pair(
        value: UcumDecimal.fromNum(q.value!.value!),
        unit: q.code?.toString() ?? '1',
      );
    } catch (e) {
      return null;
    }
  }

  bool? qtyEquivalent(Quantity left, Quantity right) {
    if (left.value == null && right.value == null) {
      return true;
    }
    if (left.value == null || right.value == null) {
      return null;
    }
    if (worker.ucumService != null) {
      final dl = qtyToCanonicalPair(left);
      final dr = qtyToCanonicalPair(right);

      if (dl != null && dr != null) {
        if (dl.unit == dr.unit) {
          return doEquivalent(
            FhirDecimal(dl.value.asDouble),
            FhirDecimal(dr.value.asDouble),
          );
        } else {
          return false;
        }
      }
    }
    if (left.code != null || right.code != null) {
      if (!(left.code != null && right.code != null) ||
          left.code != right.code) {
        return null;
      }
    } else if (left.unit == null || right.unit == null) {
      if (!(left.unit != null && right.unit != null) ||
          left.unit != right.unit) {
        return null;
      }
    }
    return doEquivalent(left, right);
  }

  String convertToStringList(List<FhirBase> items) {
    final b = StringBuffer();
    var first = true;
    for (final item in items) {
      if (first) {
        first = false;
      } else {
        b.write(',');
      }

      b.write(convertToString(item));
    }
    return b.toString();
  }

  String convertToString(FhirBase item) {
    if (item is IIdType) {
      return item.getIdPart();
    } else if (item is PrimitiveType) {
      return item.value.toString();
    } else if (item is Quantity) {
      final q = item.copyWith();
      if (q.unit != null &&
          [
            'year',
            'years',
            'month',
            'months',
            'week',
            'weeks',
            'day',
            'days',
            'hour',
            'hours',
            'minute',
            'minutes',
            'second',
            'seconds',
            'millisecond',
            'milliseconds',
          ].contains(q.unit?.value) &&
          (q.system == null ||
              q.system.toString() == 'http://unitsofmeasure.org')) {
        return '${q.value} ${q.unit}';
      }
      if (q.system.toString() == 'http://unitsofmeasure.org') {
        final u = "'${q.code}'";
        return '${q.value} $u';
      } else {
        return item.toString();
      }
    } else {
      return item.toString();
    }
  }

  List<FhirBase> makeNull() => <FhirBase>[];

  bool? doEquivalent(FhirBase left, FhirBase right) {
    print('doEquivalent: $left == $right');
    if (left is Quantity && right is Quantity) {
      return qtyEquivalent(left, right);
    }
    if (left is FhirBoolean && right is FhirBoolean) {
      return doEquals(left, right);
    }
    if (left is FhirNumber && right is FhirNumber) {
      return equivalentNumber(left.value, right.value);
    }
    if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return left.isEquivalent(right);
    }
    if (FHIR_TYPES_STRING.contains(left.fhirType) &&
        FHIR_TYPES_STRING.contains(right.fhirType)) {
      return equivalentString(
        convertToString(left),
        convertToString(right),
      );
    }
    if (left is PrimitiveType && right is PrimitiveType) {
      return equivalentString(
        left.toString(),
        right.toString(),
      );
    }
    if (!left.isPrimitive && !right.isPrimitive) {
      // TODO(Dokotela): Implement this
      throw UnimplementedError();
      // final props = MergedList<Property>(
      //   left.listChildren(),
      //   right.listChildren(),
      //   PropertyMatcher(),
      // );
      // for (final t in props) {
      //   if (t.hasLeft && t.hasRight) {
      //     if (t.left.hasValues() && t.right.hasValues()) {
      //       final values = MergedList<FhirBase>(
      //         t.left.values(),
      //         t.right.values(),
      //       );
      //       for (final v in values) {
      //         if (v.hasLeft && v.hasRight) {
      //           if (!doEquivalent(v.left, v.right)) {
      //             return false;
      //           }
      //         } else if (v.hasLeft || v.hasRight) {
      //           return false;
      //         }
      //       }
      //     } else if (t.left.hasValues() || t.right.hasValues()) {
      //       return false;
      //     }
      //   } else {
      //     return false;
      //   }
      // }
      // return true;
    } else {
      return false;
    }
  }

  bool equivalentNumber(num? lhsNum, num? rhsNum) {
    if (lhsNum == null && rhsNum == null) {
      return true;
    } else if (lhsNum == null || rhsNum == null) {
      return false;
    }
    final sigDigsLhs = lhsNum
        .toStringAsExponential()
        .split('e')
        .first
        .replaceAll('.', '')
        .length;
    final sigDigsRhs = rhsNum
        .toStringAsExponential()
        .split('e')
        .first
        .replaceAll('.', '')
        .length;
    if (sigDigsLhs < sigDigsRhs) {
      return lhsNum.toStringAsPrecision(sigDigsLhs) ==
          rhsNum.toStringAsPrecision(sigDigsLhs);
    } else {
      return lhsNum.toStringAsPrecision(sigDigsRhs) ==
          rhsNum.toStringAsPrecision(sigDigsRhs);
    }
  }

  bool equivalentNumberAsString(String? l, String? r) {
    if ((l == null || l.isEmpty) && (r == null || r.isEmpty)) {
      return true;
    }
    if ((l == null || l.isEmpty) || (r == null || r.isEmpty)) {
      return false;
    }
    if (!l.isDecimal() || !r.isDecimal()) {
      return false;
    }

    final dl = double.parse(l);
    final dr = double.parse(r);

    return dl == dr;
  }

  bool equivalentString(String l, String r) {
    if (Utilities.noString(l) && Utilities.noString(r)) return true;
    if (Utilities.noString(l) || Utilities.noString(r)) return false;
    return l.toLowerCase() == r.toLowerCase();
  }

  FhirDateTimeBase dateAdd(
    FhirDateTimeBase d,
    Quantity q,
    bool negate,
    ExpressionNode holder,
  ) {
    var result = d.copy() as FhirDateTimeBase;

    final value = negate ? -q.value!.value!.toInt() : q.value!.value!.toInt();
    final unit = q.code?.value ?? q.unit?.value;

    switch (unit) {
      case 'years':
      case 'year':
        result = (result + ExtendedDuration(years: value))!;
      case 'a':
        throw PathEngineException(
          'Error in date arithmetic: attempt to add a definite quantity '
          'duration time unit $unit',
        );
      case 'months':
      case 'month':
        result = (result + ExtendedDuration(months: value))!;
      case 'mo':
        throw PathEngineException(
          'Error in date arithmetic: attempt to add a definite quantity '
          'duration time unit $unit',
          location: holder.opStart,
          expression: holder.toString(),
        );
      case 'weeks':
      case 'week':
      case 'wk':
        result = (result + ExtendedDuration(weeks: value))!;
      case 'days':
      case 'day':
      case 'd':
        result = (result + ExtendedDuration(days: value))!;
      case 'hours':
      case 'hour':
      case 'h':
        result = (result + ExtendedDuration(hours: value))!;
      case 'minutes':
      case 'minute':
      case 'min':
        result = (result + ExtendedDuration(minutes: value))!;
      case 'seconds':
      case 'second':
      case 's':
        result = (result + ExtendedDuration(seconds: value))!;
      case 'milliseconds':
      case 'millisecond':
      case 'ms':
        result = (result + ExtendedDuration(milliseconds: value))!;
      default:
        throw PathEngineException(
          'Error in date arithmetic: unrecognized time unit $unit',
        );
    }

    return result;
  }

  int? compareDateTimeElements(
    FhirBase theL,
    FhirBase theR,
    bool theEquivalenceTest,
  ) {
    final left =
        theL is FhirDateTime ? theL : FhirDateTime.tryParse(theL.toString());
    final right =
        theR is FhirDateTime ? theR : FhirDateTime.tryParse(theR.toString());

    if (left == null || right == null) {
      return null;
    }

    return left.compareTo(right);
  }

  int? compareTimeElements(
    FhirBase theL,
    FhirBase theR,
    bool theEquivalenceTest,
  ) {
    final left = theL is FhirTime ? theL : FhirTime.tryParse(theL.toString());
    final right = theR is FhirTime ? theR : FhirTime.tryParse(theR.toString());

    if (left == null || right == null) {
      return null;
    }

    return left.compareTo(right);
  }

  bool doContains(List<FhirBase> list, FhirBase item) {
    for (final test in list) {
      final eq = doEquals(test, item);
      if (eq != null && eq == true) {
        return true;
      }
    }
    return false;
  }

  bool isKnownType(String tn) {
    if (!tn.contains('.')) {
      if ([
        'String',
        'Boolean',
        'Integer',
        'Decimal',
        'Quantity',
        'DateTime',
        'Time',
        'SimpleTypeInfo',
        'ClassInfo',
      ].contains(tn)) {
        return true;
      }
      try {
        return _fetchTypeDefinition(tn) != null;
      } catch (e) {
        return false;
      }
    }
    final t = tn.split('.');
    if (t.length != 2) {
      return false;
    }
    if ('System' == t[0]) {
      return [
        'String',
        'Boolean',
        'Integer',
        'Decimal',
        'Quantity',
        'DateTime',
        'Time',
        'SimpleTypeInfo',
        'ClassInfo',
      ].contains(t[1]);
    } else if ('FHIR' == t[0]) {
      try {
        return _fetchTypeDefinition(t[1]) != null;
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  bool compareTypeNames(String left, String right) {
    if (doNotEnforceAsCaseSensitive) {
      return left.equalsIgnoreCase(right);
    } else {
      return left == right;
    }
  }

  ExecutionTypeContext changeThis(
    ExecutionTypeContext context,
    TypeDetails newThis,
  ) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      newThis,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(s, context.definedVariables![s]);
      }
    }
    return newContext;
  }

  bool canConvertToBoolean(FhirBase item) {
    return item is FhirBoolean ||
        (item is PrimitiveType &&
            <String>[
              'true',
              't',
              'yes',
              'y',
              '1',
              '1.0',
              'false',
              'f',
              'no',
              'n',
              '0',
              '0.0',
            ].contains(item.toString().toLowerCase()));
  }

  List<FhirBase> baseToList(FhirBase b) {
    return [b];
  }

  void writeToLog(String name, List<FhirBase> contents) {
    if (hostServices == null || !hostServices!.fpLog(name, contents)) {
      if (fpLog.length > 0) {
        fpLog.write('; ');
      }
      fpLog
        ..write(name)
        ..write(': ');
      var first = true;
      for (final b in contents) {
        if (first) {
          first = false;
        } else {
          fpLog.write(',');
        }
        fpLog.write(convertToString(b));
      }
    }
  }

  String forLog() {
    if (fpLog.length > 0) {
      return ' ($fpLog)';
    } else {
      return '';
    }
  }

  bool convertToBoolean(List<FhirBase>? items) {
    if (items == null) {
      return false;
    } else if (items.length == 1 && items.first is PrimitiveType) {
      if (items.first is FhirBoolean) {
        return (items.first as FhirBoolean).value ?? false;
      } else if (<String>['true', 't', 'yes', 'y', '1', '1.0']
          .contains(items.first.toString().toLowerCase())) {
        return true;
      } else if (<String>['false', 'f', 'no', 'n', '0', '0.0']
          .contains(items.first.toString().toLowerCase())) {
        return false;
      }
    }
    return items.isNotEmpty;
  }

  bool hasType(FhirBase b, List<String> names) {
    final t = b.fhirType;
    for (final n in names) {
      if (n.equalsIgnoreCase(t)) return true;
    }
    return false;
  }
}
