// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters, avoid_print

import 'package:fhir_r4/fhir_r4.dart';

import 'java.dart';

class FHIRPathEngine {
  // Constructor
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

  // Constants
  // ignore: constant_identifier_names
  static const NS_SYSTEM_TYPE = 'http://hl7.org/fhirpath/System.';

  // Fields
  final IWorkerContext worker;
  final StringBuffer log = StringBuffer();
  final Set<String> primitiveTypes = {};
  final Map<String, StructureDefinition> allTypes = {};
  final ValidationOptions terminologyServiceOptions;

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

  void getChildrenByName(FhirBase item, String oldName, List<FhirBase> result) {
    String? tn;
    var name = oldName;
    if (allowPolymorphicNames) {
      // we'll look to see whether we hav a polymorphic name
      for (final p in item.listChildren()) {
        if (p.getName().endsWith('[x]')) {
          final n = p.getName().substring(0, p.getName().length - 3);
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
          // result.add(filterIdType(v));
        }
      }
    }
  }

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
    return parseLexer(lexer);
  }

  ExpressionNode parseLexer(FHIRLexer lexer) {
    final result = _parseExpression(lexer, true);
    if (!lexer.done()) {
      throw lexer.error('Unexpected token "${lexer.current}"');
    }
    result.check();
    return result;
  }

  // Parse a partial path
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
        final sd = worker.fetchTypeDefinition(context);
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
        final sd = worker.fetchResource<StructureDefinition>(ctxt);
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

  FhirException makeExceptionPlural(
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
      if (m?.definition != null && hasDataType(m!.definition!)) {
        if (m.fixedType != null) {
          final dt = worker.fetchResource<StructureDefinition>(
            m.fixedType!.sdNs(worker.getOverrideVersionNs()),
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
              t.code.toString().sdNs(worker.getOverrideVersionNs()),
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

  TypeDetails anything(CollectionStatus? status) {
    return TypeDetails(status, allTypes.keys.toList());
  }

  ExecutionContext contextForParameter(ExecutionContext context) {
    final newContext = ExecutionContext(
      context.appInfo,
      context.focusResource,
      context.rootResource,
      context.context,
      context.thisItem,
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
        newContext.setDefinedVariable(s, context.definedVariables![s]!);
      }
    }
    return newContext;
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
          ed.type![0].code.toString().sdNs(worker.getOverrideVersionNs()),
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

  ExpressionNode _parseExpression(FHIRLexer lexer, bool proximal) {
    var result = ExpressionNode(lexer.nextId().toString());
    ExpressionNode? wrapper;
    final c = lexer.currentStartLocation;
    result.start = lexer.currentLocation;

    // Special: +/- represents a unary operation at this point
    if (['-', '+'].contains(lexer.current)) {
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
        ..constant = processConstant(lexer)
        ..kind = ExpressionNodeKind.constant;

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
          value: result.constant?.primitiveValue() == null ||
                  double.tryParse(result.constant!.primitiveValue()!) == null
              ? null
              : double.parse(result.constant!.primitiveValue()!).toFhirDecimal,
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
                'The token ${lexer.current} is not expected here - either a '
                '"," or a ")" expected');
          }
        }
        result.end = lexer.currentLocation;
        lexer.next();
        checkParameters(lexer, c, result, details);
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
      result = organisePrecedence(lexer, result);
    }
    if (wrapper != null) {
      wrapper.opNext = result;
      result.proximal = false;
      result = wrapper;
    }
    return result;
  }

  ExpressionNode organisePrecedence(FHIRLexer lexer, ExpressionNode oldNode) {
    var node = oldNode;
    node = gatherPrecedence(lexer, node, {
      FpOperation.Times,
      FpOperation.DivideBy,
      FpOperation.Div,
      FpOperation.Mod,
    });
    node = gatherPrecedence(lexer, node, {
      FpOperation.Plus,
      FpOperation.Minus,
      FpOperation.Concatenate,
    });
    node = gatherPrecedence(lexer, node, {FpOperation.Union});
    node = gatherPrecedence(lexer, node, {
      FpOperation.LessThan,
      FpOperation.Greater,
      FpOperation.LessOrEqual,
      FpOperation.GreaterOrEqual,
    });
    node = gatherPrecedence(lexer, node, {FpOperation.Is});
    node = gatherPrecedence(lexer, node, {
      FpOperation.Equals,
      FpOperation.Equivalent,
      FpOperation.NotEquals,
      FpOperation.NotEquivalent,
    });
    node = gatherPrecedence(lexer, node, {FpOperation.And});
    node = gatherPrecedence(lexer, node, {FpOperation.Xor, FpOperation.Or});
    // last: implies
    return node;
  }

  ExpressionNode gatherPrecedence(
    FHIRLexer lexer,
    ExpressionNode oldStart,
    Set<FpOperation> ops,
  ) {
    print('\n--- Entering gatherPrecedence ---');
    print('Initial start node:');
    oldStart.printExpressionTree();

    print('Target operations to process: $ops');

    // Copy the initial start node for processing
    var start = oldStart;
    print('Copied start node:');
    start.printExpressionTree();

    // Determine if there's work to do
    var work = false;
    var focus = start.opNext;
    print('Initial focus node: }');
    focus?.printExpressionTree();

    print('Ops: $ops');
    print('Start operation: ${start.operation}');

    if (ops.contains(start.operation)) {
      work = true;
      focus = focus?.opNext;
      print(
          'Start node operation is in the target ops set: ${start.operation}');
      while (focus != null && focus.operation != null) {
        print('Examining focus node operation: ${focus.operation}');
        print('Ops: $ops');
        print('Focus operation: ${focus.operation}');
        if (!ops.contains(focus.operation)) {
          work = true;
          print('Non-target operation found, work needed: ${focus.operation}');
        }
        focus = focus.opNext;
        print('Moved to next focus node: ');
        focus?.printExpressionTree();
      }
    } else {
      print(
          'Start node operation is NOT in the target ops set: ${start.operation}');
      focus = start.opNext;
      focus?.printExpressionTree();
      while (focus != null && focus.operation != null) {
        print('Examining focus node operation: ${focus.operation}');
        print('Ops: $ops');
        print('Focus operation: ${focus.operation}');
        if (ops.contains(focus.operation)) {
          work = true;
          print('Target operation found, work needed: ${focus.operation}');
        }
        focus = focus.opNext;
        print('Moved to next focus node: ');
        focus?.printExpressionTree();
      }
    }

    print('Work to do: $work');
    if (!work) {
      print('No work to do, returning start node.');
      return start;
    }

    print('Work identified, proceeding with grouping.');

    // Start grouping logic
    ExpressionNode group;
    print('Ops: $ops');
    print('Start operation: ${start.operation}');
    if (ops.contains(start.operation)) {
      print('Start node operation matches target ops. Creating new group.');
      group = newGroup(lexer, start)..proximal = true;
      print('Created group:');
      group.printExpressionTree();
      focus = start;
      start = group;
      print('Updated start to group.');
      start.printExpressionTree();
      print('Updated focus to start.');
      focus.printExpressionTree();
    } else {
      print(
          'Start node operation does not match target ops. Finding entry point.');
      ExpressionNode? node = start;
      print('Initial node:');
      node.printExpressionTree();

      focus = node.opNext;
      print('Initial focus node:');
      focus?.printExpressionTree();
      print('Ops: $ops');
      print('Focus operation: ${focus?.operation}');
      while (focus != null && !ops.contains(focus.operation)) {
        print('Skipping operation: ${focus.operation}');
        node = focus;
        focus = focus.opNext;
        print('Moved to next focus node: ');
        focus?.printExpressionTree();
        print('Next node');
        node.printExpressionTree();
      }
      if (focus == null) {
        print('No matching operation found in the sequence.');
        start.printExpressionTree();
        return start; // Should not happen if `work` is true
      }
      print(
          'Matching operation found: ${focus.operation}. Creating new group.');
      group = newGroup(lexer, focus);
      print('Created group:');
      group.printExpressionTree();
      node?.opNext = group;
      print('Linked new group to previous node.');
      node?.printExpressionTree();
    }

    print('Initial group created:');
    group.printExpressionTree();

    // Continue processing the sequence
    while (focus != null && focus.operation != null) {
      print('Processing focus node:');
      focus.printExpressionTree();

      print('Ops: $ops');
      print('Focus operation: ${focus.operation}');
      while (ops.contains(focus?.operation)) {
        print('Focus operation matches target ops: ${focus!.operation}');
        focus = focus.opNext;
        print('Moved to next focus node: ');
        focus?.printExpressionTree();
      }

      if (focus != null && focus.operation != null) {
        print('Creating a new group for operation: ${focus.operation}');
        group
          ..operation = focus.operation
          ..opNext = focus.opNext;
        print('Updated group with operation: ');
        group.printExpressionTree();
        focus
          ..operation = null
          ..opNext = null;

        print('Updated focus with operation: ');
        focus.printExpressionTree();

        // Start a new group if required
        var node = group;
        print('New node:');
        node.printExpressionTree();
        focus = group.opNext;
        print('New focus node:');
        focus?.printExpressionTree();
        if (focus != null) {
          print('Ops: $ops');
          print('Focus operation: ${focus.operation}');
          while (focus != null && !ops.contains(focus.operation)) {
            print('Skipping operation: ${focus.operation}');
            node = focus;
            print('New node');
            node.printExpressionTree();
            focus = focus.opNext;
            print('Moved to next focus node:');
            focus?.printExpressionTree();
          }
          print('Ops: $ops');
          print('Focus operation: ${focus?.operation}');
          if (focus != null && ops.contains(focus.operation)) {
            print(
                'Matching operation found: ${focus.operation}. Creating new group.');
            group = newGroup(lexer, focus);
            print('Created group:');
            group.printExpressionTree();

            // Link new group to the previous node
            node.opNext = group;
            print('Linked new group to previous node.');
            node.printExpressionTree();

            // Update `start` to point to the new group if it's a root-level operation
            if (focus == start.opNext) {
              start = group;
              print('Updated start to new root group.');
              start.printExpressionTree();
            }
          }
        }
      }
    }

    print('Final start node after processing:');
    start.printExpressionTree();

    return start;
  }

  ExpressionNode newGroup(FHIRLexer lexer, ExpressionNode? next) {
    print('Creating a new group for node: $next');

    // Create the new group node
    final group = ExpressionNode(lexer.nextId().toString())
      ..kind = ExpressionNodeKind.group
      ..operation = next?.operation
      ..proximal = true

      // Attach the entire left-hand side (next) as the group's Inner
      ..group = next
      ..group!.operation = null // Clear the operation from the original node

      // Attach the right-hand side (next.opNext) as the group's Next
      ..opNext = next?.opNext;
    next?.opNext = null; // Detach Next from the original node

    print('New group created:');
    group.printExpressionTree();

    return group;
  }

  FhirBase? processConstant(FHIRLexer lexer) {
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
    var i = 1;

    while (i < s.length - 1) {
      final ch = s[i];
      if (ch == r'\') {
        i++;
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
            i++;
            final unicodeValue = int.parse(s.substring(i, i + 4), radix: 16);
            buffer.write(String.fromCharCode(unicodeValue));
            i += 3;
          default:
            throw lexer.error('Unknown character escape \\${s[i]}');
        }
        i++;
      } else {
        buffer.write(ch);
        i++;
      }
    }

    return buffer.toString();
  }

  bool checkParameters(
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

  bool isAbstractType(List<ElementDefinitionType> list) {
    return list.length != 1 ||
        list.first.code.toString().existsInList(
          {'Element', 'BackboneElement', 'Resource', 'DomainResource'},
        );
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

  bool hasDataType(ElementDefinition ed) {
    return ed.hasType() &&
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
          sd.baseDefinition.toString() == dt.url.toString() &&
          sd.derivation == TypeDerivationRule.specialization) {
        addTypeAndDescendents(sdl, sd, types);
      }
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

  ExecutionContext changeThisContext(
    ExecutionContext context,
    FhirBase newThis,
  ) {
    final newContext = ExecutionContext(
      context.appInfo,
      context.focusResource,
      context.rootResource,
      context.context,
      newThis,
    );
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
        newContext.setDefinedVariable(s, context.definedVariables![s]!);
      }
    }
    return newContext;
  }

  void checkOrdered(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus == CollectionStatus.unordered) {
      throw makeException(expr, 'FHIRPATH_ORDERED_ONLY', [name]);
    }
  }

  void checkSingleton(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus != CollectionStatus.singleton) {
// typeWarnings.add(new IssueMessage(worker.formatMessage(I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT, name, expr.toString()), I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT));
    }
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
}
