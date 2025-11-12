// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'dart:math';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:ucum/ucum.dart';

/// Internal functions class for FHIRPath engine.
///
/// Handles all FHIRPath functions (empty(), not(), exists(), where(),
/// select(), etc.)
class FhirPathFunctions {
  FhirPathFunctions(
    this.fpContext,
    this.utilities,
    this.operations,
    this.engine,
  );

  final FhirPathContext fpContext;
  final FhirPathUtilities utilities;
  final FhirPathOperations operations;
  final FHIRPathEngine engine;

  /// FUNCTIONS
  /// ***************************************
  ///
  Future<List<FhirBase>> evaluateFunction(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    switch (exp.function) {
      case FpFunction.Empty:
        return funcEmpty(execContext, focus, exp);
      case FpFunction.Not:
        return funcNot(execContext, focus, exp);
      case FpFunction.Exists:
        return funcExists(execContext, focus, exp);
      case FpFunction.SubsetOf:
        return funcSubsetOf(execContext, focus, exp);
      case FpFunction.SupersetOf:
        return funcSupersetOf(execContext, focus, exp);
      case FpFunction.IsDistinct:
        return funcIsDistinct(execContext, focus, exp);
      case FpFunction.Distinct:
        return funcDistinct(execContext, focus, exp);
      case FpFunction.Count:
        return funcCount(execContext, focus, exp);
      case FpFunction.Where:
        return funcWhere(execContext, focus, exp);
      case FpFunction.Select:
        return funcSelect(execContext, focus, exp);
      case FpFunction.All:
        return funcAll(execContext, focus, exp);
      case FpFunction.Repeat:
        return funcRepeat(execContext, focus, exp);
      case FpFunction.Aggregate:
        return funcAggregate(execContext, focus, exp);
      case FpFunction.Item:
        return funcItem(execContext, focus, exp);
      case FpFunction.As:
        return funcAs(execContext, focus, exp);
      case FpFunction.OfType:
        return funcOfType(execContext, focus, exp);
      case FpFunction.Type:
        return funcType(execContext, focus, exp);
      case FpFunction.Is:
        return funcIs(execContext, focus, exp);
      case FpFunction.Single:
        return funcSingle(execContext, focus, exp);
      case FpFunction.First:
        return funcFirst(execContext, focus, exp);
      case FpFunction.Last:
        return funcLast(execContext, focus, exp);
      case FpFunction.Tail:
        return funcTail(execContext, focus, exp);
      case FpFunction.Skip:
        return funcSkip(execContext, focus, exp);
      case FpFunction.Take:
        return funcTake(execContext, focus, exp);
      case FpFunction.Union:
        return funcUnion(execContext, focus, exp);
      case FpFunction.Combine:
        return funcCombine(execContext, focus, exp);
      case FpFunction.Intersect:
        return funcIntersect(execContext, focus, exp);
      case FpFunction.Exclude:
        return funcExclude(execContext, focus, exp);
      case FpFunction.Iif:
        return funcIif(execContext, focus, exp);
      case FpFunction.Lower:
        return funcLower(execContext, focus, exp);
      case FpFunction.Upper:
        return funcUpper(execContext, focus, exp);
      case FpFunction.ToChars:
        return funcToChars(execContext, focus, exp);
      case FpFunction.IndexOf:
        return funcIndexOf(execContext, focus, exp);
      case FpFunction.Substring:
        return funcSubstring(execContext, focus, exp);
      case FpFunction.StartsWith:
        return funcStartsWith(execContext, focus, exp);
      case FpFunction.EndsWith:
        return funcEndsWith(execContext, focus, exp);
      case FpFunction.Matches:
        return funcMatches(execContext, focus, exp);
      case FpFunction.MatchesFull:
        return funcMatchesFull(execContext, focus, exp);
      case FpFunction.ReplaceMatches:
        return funcReplaceMatches(execContext, focus, exp);
      case FpFunction.Contains:
        return funcContains(execContext, focus, exp);
      case FpFunction.Replace:
        return funcReplace(execContext, focus, exp);
      case FpFunction.Length:
        return funcLength(execContext, focus, exp);
      case FpFunction.Children:
        return funcChildren(execContext, focus, exp);
      case FpFunction.Descendants:
        return funcDescendants(execContext, focus, exp);
      case FpFunction.MemberOf:
        return funcMemberOf(execContext, focus, exp);
      case FpFunction.Trace:
        return funcTrace(execContext, focus, exp);
      case FpFunction.DefineVariable:
        return funcDefineVariable(execContext, focus, exp);
      case FpFunction.Check:
        return funcCheck(execContext, focus, exp);
      case FpFunction.Today:
        return funcToday(execContext, focus, exp);
      case FpFunction.Now:
        return funcNow(execContext, focus, exp);
      case FpFunction.TimeOfDay:
        return funcTimeOfDay(execContext, focus, exp);
      case FpFunction.Resolve:
        return funcResolve(execContext, focus, exp);
      case FpFunction.Extension:
        return funcExtension(execContext, focus, exp);
      case FpFunction.AnyFalse:
        return funcAnyFalse(execContext, focus, exp);
      case FpFunction.AllFalse:
        return funcAllFalse(execContext, focus, exp);
      case FpFunction.AnyTrue:
        return funcAnyTrue(execContext, focus, exp);
      case FpFunction.AllTrue:
        return funcAllTrue(execContext, focus, exp);
      case FpFunction.HasValue:
        return funcHasValue(execContext, focus, exp);
      case FpFunction.Encode:
        return funcEncode(execContext, focus, exp);
      case FpFunction.Decode:
        return funcDecode(execContext, focus, exp);
      case FpFunction.Escape:
        return funcEscape(execContext, focus, exp);
      case FpFunction.Unescape:
        return funcUnescape(execContext, focus, exp);
      case FpFunction.Trim:
        return funcTrim(execContext, focus, exp);
      case FpFunction.Split:
        return funcSplit(execContext, focus, exp);
      case FpFunction.Join:
        return funcJoin(execContext, focus, exp);
      case FpFunction.HtmlChecks1:
        return funcHtmlChecks1(execContext, focus, exp);
      case FpFunction.HtmlChecks2:
        return funcHtmlChecks2(execContext, focus, exp);
      case FpFunction.Comparable:
        return funcComparable(execContext, focus, exp);
      case FpFunction.ToInteger:
        return funcToInteger(execContext, focus, exp);
      case FpFunction.ToDecimal:
        return funcToDecimal(execContext, focus, exp);
      case FpFunction.ToString:
        return funcToString(execContext, focus, exp);
      case FpFunction.ToBoolean:
        return funcToBoolean(execContext, focus, exp);
      case FpFunction.ToQuantity:
        return funcToQuantity(execContext, focus, exp);
      case FpFunction.ToDateTime:
        return funcToDateTime(execContext, focus, exp);
      case FpFunction.ToDate:
        return funcToDate(execContext, focus, exp);
      case FpFunction.ToTime:
        return funcToTime(execContext, focus, exp);
      case FpFunction.IsInteger:
        return operations.opIs(focus, ['integer'.toFhirString], exp);
      case FpFunction.ConvertsToInteger:
        return funcIsInteger(focus);
      case FpFunction.IsDecimal:
        return operations.opIs(focus, ['decimal'.toFhirString], exp);
      case FpFunction.ConvertsToDecimal:
        return funcIsDecimal(execContext, focus, exp);
      case FpFunction.IsString:
        return operations.opIs(focus, ['string'.toFhirString], exp);
      case FpFunction.ConvertsToString:
        return funcIsString(focus);
      case FpFunction.IsBoolean:
        return operations.opIs(focus, ['boolean'.toFhirString], exp);
      case FpFunction.ConvertsToBoolean:
        return funcIsBoolean(focus);
      case FpFunction.IsQuantity:
        return operations.opIs(focus, ['Quantity'.toFhirString], exp);
      case FpFunction.ConvertsToQuantity:
        return funcIsQuantity(focus);
      case FpFunction.IsDateTime:
        return operations.opIs(focus, ['dateTime'.toFhirString], exp);
      case FpFunction.ConvertsToDateTime:
        return funcIsDateTime(focus);
      case FpFunction.IsDate:
        return operations.opIs(focus, ['date'.toFhirString], exp);
      case FpFunction.ConvertsToDate:
        return funcIsDate(focus);
      case FpFunction.IsTime:
        return operations.opIs(focus, ['time'.toFhirString], exp);
      case FpFunction.ConvertsToTime:
        return funcIsTime(focus);
      case FpFunction.ConformsTo:
        return funcConformsTo(execContext, focus, exp);
      case FpFunction.Round:
        return funcRound(execContext, focus, exp);
      case FpFunction.Sqrt:
        return funcSqrt(execContext, focus, exp);
      case FpFunction.Abs:
        return funcAbs(execContext, focus, exp);
      case FpFunction.Ceiling:
        return funcCeiling(execContext, focus, exp);
      case FpFunction.Exp:
        return funcExp(execContext, focus, exp);
      case FpFunction.Floor:
        return funcFloor(execContext, focus, exp);
      case FpFunction.Ln:
        return funcLn(execContext, focus, exp);
      case FpFunction.Log:
        return funcLog(execContext, focus, exp);
      case FpFunction.Power:
        return funcPower(execContext, focus, exp);
      case FpFunction.Sum:
        return funcSum(execContext, focus, exp);
      case FpFunction.Truncate:
        return funcTruncate(execContext, focus, exp);
      case FpFunction.LowBoundary:
        return funcLowBoundary(execContext, focus, exp);
      case FpFunction.HighBoundary:
        return funcHighBoundary(execContext, focus, exp);
      case FpFunction.Precision:
        return funcPrecision(execContext, focus, exp);
      case FpFunction.Custom:
        {
          final params = <List<FhirBase>>[];
          for (final p in exp.parameters) {
            params.add(await engine.execute(execContext, focus, p, true));
          }
          return fpContext.hostServices?.executeFunction(
                engine,
                execContext.appInfo,
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
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return [FhirBoolean(focus.isEmpty).noExtensions()];
  }

  List<FhirBase> funcNot(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final v = utilities.asBoolList(focus, exp);

    if (v != FpEquality.null_) {
      result.add(FhirBoolean(v != FpEquality.true_));
    }

    return result;
  }

  Future<List<FhirBase>> funcExists(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    var empty = true;
    final pc = <FhirBase>[];

    for (final f in focus) {
      if (exp.parameters.length == 1) {
        pc
          ..clear()
          ..add(f);
        final v = utilities.asBoolList(
          await engine.execute(
            execContext.changeThis(f, fpContext.worker),
            pc,
            exp.parameters[0],
            true,
          ),
          exp,
        );
        if (v == FpEquality.true_) {
          empty = false;
        }
      } else if (!f.isEmpty()) {
        empty = false;
      }
    }

    return [FhirBoolean(!empty).noExtensions()];
  }

  Future<List<FhirBase>> funcSubsetOf(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final target = await engine.execute(
      execContext,
      execContext.focusResource == null ? focus : [execContext.focusResource!],
      exp.parameters[0],
      true,
    );
    var valid = true;
    for (final item in focus) {
      var found = false;
      for (final t in target) {
        if (t.compareDeep(item, t)) {
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
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.isEmpty) {
      return utilities.makeBoolean(true);
    }
    if (focus.length == 1) {
      return utilities.makeBoolean(true);
    }

    var distinct = true;
    for (var i = 0; i < focus.length; i++) {
      for (var j = i + 1; j < focus.length; j++) {
        final eq = utilities.doEquals(focus[j], focus[i]);
        if (eq == null) {
          return [];
        } else if (eq) {
          distinct = false;
          break;
        }
      }
    }
    return utilities.makeBoolean(distinct);
  }

  List<FhirBase> funcDistinct(
    ExecutionContext execContext,
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
        final eq = utilities.doEquals(focus[j], focus[i]);
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
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return [FhirInteger(focus.length).noExtensions()];
  }

  Future<List<FhirBase>> funcWhere(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final pc = <FhirBase>[];
    for (final item in focus) {
      pc
        ..clear()
        ..add(item);
      if (exp.parameters.isEmpty) {
        throw PathEngineException(
          'Where function must have at least one parameter',
        );
      }
      final v = utilities.asBoolList(
        await engine.execute(
          changeThisExecutionContext(execContext, item),
          pc,
          exp.parameters.first,
          true,
        ),
        exp,
      );
      if (v == FpEquality.true_) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcSelect(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final pc = <FhirBase>[];

    for (var i = 0; i < focus.length; i++) {
      final item = focus[i];
      pc
        ..clear()
        ..add(item);
      result.addAll(
        await engine.execute(
          execContext.changeThis(item, fpContext.worker)
            ..index = i.toFhirInteger,
          pc,
          exp.parameters[0],
          true,
        ),
      );
    }
    return result;
  }

  Future<List<FhirBase>> funcAll(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (exp.parameters.length == 1) {
      final pc = <FhirBase>[];
      var all = true;
      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final eq = utilities.asBoolList(
          await engine.execute(
            execContext.changeThis(item, fpContext.worker),
            pc,
            exp.parameters[0],
            true,
          ),
          exp,
        );
        if (eq != FpEquality.true_) {
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    } else {
      var all = true;
      for (final item in focus) {
        final eq = utilities.asBool(item, true);
        if (eq != FpEquality.true_) {
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcRepeat(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final current = <FhirBase>[...focus];
    final added = <FhirBase>[];
    var more = true;

    while (more) {
      added.clear();
      final pc = <FhirBase>[];

      for (final item in current) {
        pc
          ..clear()
          ..add(item);

        try {
          final ex = await engine.execute(
            execContext.changeThis(item, fpContext.worker),
            pc,
            exp.parameters.first,
            false,
          );

          added.addAll(ex);
        } catch (e) {
          if (e is PathEngineException) {
            rethrow;
          } else {
            throw PathEngineException(
              e.toString(),
              location: exp.opStart,
              expression: exp.toString(),
            );
          }
        }
      }

      more = false;
      current.clear();

      for (final b in added) {
        var isNew = true;

        for (final t in result) {
          if (b.equalsDeep(t)) {
            isNew = false;
            break;
          }
        }

        if (isNew) {
          result.add(b);
          current.add(b);
          more = true;
        }
      }
    }

    return result;
  }

  Future<List<FhirBase>> funcAggregate(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    var total = <FhirBase>[];
    if (exp.parameterCount > 1) {
      total =
          await engine.execute(execContext, focus, exp.parameters[1], false);
    }

    final pc = <FhirBase>[];
    for (final item in focus) {
      final c = execContext.changeThis(item, fpContext.worker)
        ..total = total
        ..next();
      total = await engine.execute(c, pc, exp.parameters[0], true);
    }
    return total;
  }

  Future<List<FhirBase>> funcItem(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final s = utilities.convertListToString(
      await engine.execute(execContext, focus, exp.parameters[0], true),
    );
    if (Utilities.isInteger(s) && int.parse(s) < focus.length) {
      result.add(focus[int.parse(s)]);
    }
    return result;
  }

  List<FhirBase> funcAs(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    throw FhirPathDeprecatedExpressionException(
      'The "as" function is deprecated',
      location: expr.opStart,
    );
    // final result = <FhirBase>[];
    // final parameter = expr.parameters[0];
    // final tn = parameter.inner != null
    //     ? '${parameter.name}.${parameter.inner!.name}'
    //     : 'FHIR.${parameter.name}';

    // if (!isKnownType(tn)) {
    //   throw PathEngineException('The type $tn is not valid');
    // }

    // if (!fpContext.doNotEnforceAsSingletonRule && focus.length > 1) {
    //   throw PathEngineException(
    //     'Attempt to use as() on more than one item (${focus.length})',
    //   );
    // }

    // for (final b in focus) {
    //   if (tn.startsWith('System.')) {
    //     if (b is Element &&
    //         (b.disallowExtensions ?? false) &&
    //         b.hasType([tn.substring(7)])) {
    //       result.add(b);
    //     }
    //   } else if (tn.startsWith('FHIR.')) {
    //     final tnp = tn.substring(5);
    //     if (b.fhirType == tnp) {
    //       result.add(b);
    //     } else {
    //       var sd = engine._fetchTypeDefinition(b.fhirType);
    //       while (sd != null) {
    //         if (compareTypeNames(tnp, sd.type.toString())) {
    //           result.add(b);
    //           break;
    //         }
    //         sd = sd.kind == StructureDefinitionKind.primitive_type
    //             ? null
    //             : fpContext.worker.fetchResource<StructureDefinition>(
    //                 uri: sd.baseDefinition?.toString(),
    //                 canonicalForSource: sd,
    //               );
    //       }
    //     }
    //   }
    // }

    // return result;
  }

  Future<List<FhirBase>> funcOfType(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    final result = <FhirBase>[];
    String? tn;
    if (expr.parameters.isNotEmpty && expr.parameters.first.inner != null) {
      tn = '${expr.parameters.first.name}.${expr.parameters.first.inner!.name}';
    } else if (expr.parameters.isNotEmpty) {
      tn = 'FHIR.${expr.parameters.first.name}';
    }

    if (!(await utilities.isKnownType(tn))) {
      throw PathEngineException('The type $tn is not valid');
    }

    for (final b in focus) {
      if (tn!.startsWith('System.')) {
        if (b is Element && (b.disallowExtensions ?? false)) {
          if (b.hasType([tn.substring(7)])) {
            result.add(b);
          }
        }
      } else if (tn.startsWith('FHIR.')) {
        final tnp = tn.substring(5);
        if (b.fhirType == tnp) {
          result.add(b);
        } else {
          var sd = await fpContext.worker.fetchTypeDefinition(b.fhirType);
          while (sd != null) {
            if (tnp == sd.type.primitiveValue) {
              result.add(b);
              break;
            }
            sd = sd.kind == StructureDefinitionKind.primitiveType
                ? null
                : (await fpContext.worker.fetchResource<StructureDefinition>(
                    uri: sd.baseDefinition?.primitiveValue,
                    canonicalForSource: sd,
                  ))!;
          }
        }
      }
    }

    return result;
  }

  Future<List<FhirBase>> funcIs(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.isEmpty || focus.length > 1) {
      return utilities.makeNull();
    }

    String? ns;
    String? n;

    final texp = expr.parameters[0];
    if (texp.kind != ExpressionNodeKind.name) {
      throw fpContext.makeException(
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
        throw fpContext.makeException(
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
        return utilities.makeBoolean(false);
      }

      if (focus.first is! Element ||
          ((focus.first as Element).disallowExtensions ?? false)) {
        final t = focus.first.fhirType.capitalize();
        if (n == t) {
          return utilities.makeBoolean(true);
        }
        if (t == 'Date' && n == 'DateTime') {
          return utilities.makeBoolean(true);
        }
        return utilities.makeBoolean(false);
      } else {
        return utilities.makeBoolean(false);
      }
    } else if (ns == 'FHIR') {
      if (n == focus.first.fhirType) {
        return utilities.makeBoolean(true);
      } else {
        var sd = await fpContext.fetchTypeDefinition(focus.first.fhirType);
        while (sd != null) {
          if (n == sd.type.toString()) {
            return utilities.makeBoolean(true);
          }
          sd = await fpContext.worker.fetchResource<StructureDefinition>(
            uri: sd.baseDefinition?.toString(),
          );
        }
        return utilities.makeBoolean(false);
      }
    } else {
      return utilities.makeBoolean(false);
    }
  }

  List<FhirBase> funcSingle(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length == 1) {
      return focus;
    } else if (focus.isEmpty) {
      return [];
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_NO_COLLECTION', [
        'single',
        focus.length,
      ]);
    }
  }

  List<FhirBase> funcFirst(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.isNotEmpty ? [focus.first] : [];
  }

  List<FhirBase> funcLast(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.isNotEmpty ? [focus.last] : [];
  }

  List<FhirBase> funcTail(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.length > 1 ? focus.sublist(1) : [];
  }

  Future<List<FhirBase>> funcSkip(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final n1 =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue.toString());

    if (focus.length <= i1) {
      return [];
    }

    return focus.sublist(i1);
  }

  Future<List<FhirBase>> funcTake(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final n1 =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue ?? '0');

    final result = <FhirBase>[];
    for (var i = 0; i < focus.length && i < i1; i++) {
      result.add(focus[i]);
    }
    return result;
  }

  Future<List<FhirBase>> funcUnion(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    for (final item in focus) {
      if (!utilities.doContains(result, item)) {
        result.add(item);
      }
    }

    if (execContext.thisItem == null) {
      throw PathEngineException('The fpContext does not have a thisItem');
    }

    final other = exp.parameters.isEmpty
        ? <FhirBase>[]
        : await engine.execute(
            execContext,
            baseToList(execContext.thisItem!),
            exp.parameters[0],
            true,
          );

    for (final item in other) {
      if (!utilities.doContains(result, item)) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcCombine(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = List<FhirBase>.from(focus);
    if (execContext.thisItem == null) {
      throw PathEngineException('The fpContext does not have a thisItem');
    }

    final other = exp.parameters.isEmpty
        ? <FhirBase>[]
        : await engine.execute(
            execContext,
            baseToList(execContext.thisItem!),
            exp.parameters[0],
            true,
          );

    result.addAll(other);
    return result;
  }

  Future<List<FhirBase>> funcIntersect(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final other =
        await engine.execute(execContext, focus, exp.parameters[0], true);

    for (final item in focus) {
      if (!utilities.doContains(result, item) &&
          utilities.doContains(other, item)) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcExclude(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final other = await engine.execute(
      execContext,
      execContext.focusResource == null ? focus : [execContext.focusResource!],
      exp.parameters[0],
      true,
    );

    for (final item in focus) {
      if (!utilities.doContains(other, item)) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcIif(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    if (focus.length > 1) {
      throw fpContext.makeException(
        exp,
        'FHIRPATH_NO_COLLECTION',
        ['iif', focus.length],
      );
    }

    final n1 = await engine.execute(
      focus.isEmpty
          ? execContext
          : execContext.changeThis(focus.first, fpContext.worker),
      focus,
      exp.parameters[0],
      true,
    );

    final v = utilities.asBoolList(n1, exp);
    if (v == FpEquality.true_) {
      return engine.execute(execContext, focus, exp.parameters[1], true);
    } else if (exp.parameters.length < 3) {
      return [];
    } else {
      return engine.execute(execContext, focus, exp.parameters[2], true);
    }
  }

  List<FhirBase> funcLower(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final s = utilities.convertToString(focus.first);
      if (s.isNotEmpty) {
        result.add(FhirString(s.toLowerCase()).noExtensions());
      }
    }
    return result;
  }

  List<FhirBase> funcUpper(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final s = utilities.convertToString(focus.first);
      if (s.isNotEmpty) {
        result.add(FhirString(s.toUpperCase()).noExtensions());
      }
    }
    return result;
  }

  List<FhirBase> funcToChars(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final s = utilities.convertToString(focus.first);
      for (final c in s.split('')) {
        result.add(FhirString(c).noExtensions());
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcIndexOf(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final sw = utilities.convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty || sw.isEmpty) {
      result.add(FhirInteger(0).noExtensions());
    } else if (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
        fpContext.doImplicitStringConversion) {
      final s = utilities.convertToString(focus.first);
      result.add(FhirInteger(s.indexOf(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcSubstring(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final n1 =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue ?? '0');
    var i2 = -1;

    if (exp.parameterCount == 2) {
      final n2 =
          await engine.execute(execContext, focus, exp.parameters[1], true);
      if (n2.isEmpty ||
          !n2.first.isPrimitive ||
          !n2.first.primitiveValue!.isInteger) {
        return [];
      }
      i2 = int.parse(n2.first.primitiveValue ?? '-1');
    }

    if (focus.length == 1 &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final sw = utilities.convertToString(focus.first);
      if (i1 < 0 || i1 >= sw.length) {
        return [];
      }

      final s = (exp.parameterCount == 2)
          ? sw.substring(i1, (i1 + i2).clamp(0, sw.length))
          : sw.substring(i1);

      if (s.isNotEmpty) {
        result.add(FhirString(s).noExtensions());
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcStartsWith(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final sw = utilities.convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    }

    if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
        fpContext.doImplicitStringConversion) {
      final s = utilities.convertToString(focus.first);
      result.add(FhirBoolean(s.startsWith(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcEndsWith(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final sw = utilities.convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    }

    if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
        fpContext.doImplicitStringConversion) {
      final s = utilities.convertToString(focus.first);
      result.add(FhirBoolean(s.endsWith(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcMatches(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final sw = utilities.convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    } else if (focus.length == 1 && sw.isNotEmpty) {
      final st = utilities.convertToString(focus.first);
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

  Future<List<FhirBase>> funcMatchesFull(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final sw = utilities.convertListToString(
      await engine.execute(execContext, focus, exp.parameters[0], true),
    );

    if (focus.length == 1 && sw.isNotEmpty) {
      final st = utilities.convertToString(focus.first);
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

  Future<List<FhirBase>> funcReplaceMatches(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final regexB =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final regex = utilities.convertListToString(regexB);
    final replB =
        await engine.execute(execContext, focus, exp.parameters[1], true);
    final repl = utilities.convertListToString(replB);

    if (focus.isEmpty || regexB.isEmpty || replB.isEmpty) {
      return result;
    }

    if (focus.length == 1 &&
        !Utilities.noString(regex) &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final s = utilities.convertToString(focus.first);
      result.add(
        FhirString(s.replaceAll(RegExp(regex), repl)).noExtensions(),
      );
    }
    return result;
  }

  Future<List<FhirBase>> funcContains(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (execContext.thisItem == null) {
      throw PathEngineException('The fpContext does not have a thisItem');
    }
    final swb = await engine.execute(
      execContext,
      baseToList(execContext.thisItem!),
      exp.parameters[0],
      true,
    );
    final sw = utilities.convertListToString(swb);

    if (focus.length != 1 || swb.length != 1) {
      return result;
    } else if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first is FhirString) {
      final st = utilities.convertToString(focus.first);
      result.add(FhirBoolean(st.contains(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcReplace(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final tB =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final t = utilities.convertListToString(tB);
    final rB =
        await engine.execute(execContext, focus, exp.parameters[1], true);
    final r = utilities.convertListToString(rB);

    if (focus.isEmpty || tB.isEmpty || rB.isEmpty) {
      return result;
    }

    if (focus.length == 1 &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final f = utilities.convertToString(focus.first);
      if (f.isEmpty) {
        result.add(FhirString('').noExtensions());
      } else {
        result.add(FhirString(f.replaceAll(t, r)).noExtensions());
      }
    } else {
      throw fpContext.makeException(
        exp,
        'FHIRPATH_NO_COLLECTION',
        ['replace', focus.length],
      );
    }
    return result;
  }

  List<FhirBase> funcLength(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(fpContext.FHIR_TYPES_STRING) ||
            fpContext.doImplicitStringConversion)) {
      final s = utilities.convertToString(focus.first);
      result.add(FhirInteger(s.length).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcChildren(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    for (final b in focus) {
      engine.getChildrenByName(b, '*', result);
    }
    return result;
  }

  List<FhirBase> funcDescendants(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final current = <FhirBase>[...focus];
    final added = <FhirBase>[];
    var more = true;
    while (more) {
      added.clear();
      for (final item in current) {
        engine.getChildrenByName(item, '*', added);
      }
      more = added.isNotEmpty;
      result.addAll(added);
      current
        ..clear()
        ..addAll(added);
    }
    return result;
  }

  Future<List<FhirBase>> funcMemberOf(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters[0], true);

    if (nl.length != 1 || focus.length != 1) {
      return [];
    }

    final url = nl.first.primitiveValue;
    if (url == null) {
      return [];
    }
    final vs = fpContext.hostServices != null
        ? fpContext.hostServices!
            .resolveValueSet(engine, execContext.appInfo, url)
        : await fpContext.worker.fetchResource<ValueSet>(uri: url);

    if (vs == null) {
      return [];
    }

    final l = focus.first;
    if (['code', 'string', 'uri'].contains(l.fhirType)) {
      final result = await fpContext.worker.validateCodeWithCoding(
        fpContext.terminologyServiceOptions,
        TypeConvertor.castToCoding(l)!,
        vs,
      );
      return utilities.makeBoolean(
        result.isOk,
      );
    } else if (l.fhirType == 'Coding') {
      final result = await fpContext.worker.validateCodeWithCoding(
        fpContext.terminologyServiceOptions,
        TypeConvertor.castToCoding(l)!,
        vs,
      );
      return utilities.makeBoolean(
        result.isOk,
      );
    } else if (l.fhirType == 'CodeableConcept') {
      final result = await fpContext.worker.validateCodeWithCodeableConcept(
        fpContext.terminologyServiceOptions,
        TypeConvertor.castToCodeableConcept(l)!,
        vs,
      );
      return utilities.makeBoolean(result.isOk);
    }
    return [];
  }

  Future<List<FhirBase>> funcTrace(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final name = nl.first.primitiveValue.toString();

    if (exp.parameters.length == 2) {
      final n2 =
          await engine.execute(execContext, focus, exp.parameters[1], true);
      writeToLog(name, n2);
    } else {
      writeToLog(name, focus);
    }
    return focus;
  }

  Future<List<FhirBase>> funcDefineVariable(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    final name = nl.first.primitiveValue.toString();
    final value = exp.parameters.length == 2
        ? engine.execute(execContext, focus, exp.parameters[1], true)
        : focus;

    execContext.setDefinedVariable(name, value, fpContext.worker);
    return focus;
  }

  Future<List<FhirBase>> funcCheck(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    final n1 =
        await engine.execute(execContext, focus, expr.parameters[0], true);

    if (!utilities.convertToBoolean(n1)) {
      final n2 =
          await engine.execute(execContext, focus, expr.parameters[1], true);
      final name = n2.first.primitiveValue.toString();
      throw FhirPathException('Check failed for $name');
    }
    return focus;
  }

  List<FhirBase> funcToday(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final dateTime = DateTime.now();
    return <FhirBase>[
      FhirDate.fromUnits(
        year: dateTime.year,
        month: dateTime.month,
        day: dateTime.day,
      ),
    ];
  }

  List<FhirBase> funcNow(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return <FhirBase>[FhirDateTime.fromDateTime(DateTime.now())];
  }

  List<FhirBase> funcTimeOfDay(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return <FhirBase>[
      FhirTime.tryParse(DateTime.now().toIso8601String().split('T').last)!,
    ];
  }

  Future<List<FhirBase>> funcAllFalse(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (exp.parameters.length == 1) {
      var all = true;
      final pc = <FhirBase>[];
      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res =
            await engine.execute(execContext, pc, exp.parameters.first, true);
        final v = utilities.asBoolList(res, exp);
        if (v != FpEquality.false_) {
          // Assuming FpEquality.falseValue corresponds to `FpEquality.False`
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    } else {
      var all = true;
      for (final item in focus) {
        if (!utilities.canConvertToBoolean(item)) {
          throw FHIRException(
            message: "Unable to convert '${utilities.convertToString(item)}' "
                'to a boolean',
          );
        }

        final v = utilities.asBool(item, true);
        if (v != FpEquality.false_) {
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcAnyFalse(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];
      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res =
            await engine.execute(execContext, pc, exp.parameters.first, true);
        final v = utilities.asBoolList(res, exp);
        if (v == FpEquality.false_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!utilities.canConvertToBoolean(item)) {
          throw FHIRException(
            message: "Unable to convert '${utilities.convertToString(item)}' "
                'to a boolean',
          );
        }

        final v = utilities.asBool(item, true);
        if (v == FpEquality.false_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcAnyTrue(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];

    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];

      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res =
            await engine.execute(execContext, pc, exp.parameters[0], true);
        final v = utilities.asBoolList(res, exp);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!utilities.canConvertToBoolean(item)) {
          throw FHIRException(
            message: "Unable to convert '${utilities.convertToString(item)}' "
                'to a boolean',
          );
        }
        final v = utilities.asBool(item, true);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcAllTrue(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];

    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];

      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res =
            await engine.execute(execContext, pc, exp.parameters[0], true);
        final v = utilities.asBoolList(res, exp);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!utilities.canConvertToBoolean(item)) {
          throw FHIRException(
            message: "Unable to convert '${utilities.convertToString(item)}' "
                'to a boolean',
          );
        }
        final v = utilities.asBool(item, true);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcResolve(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    FhirBase? refContext;

    for (final item in focus) {
      String? s = utilities.convertToString(item);
      if (item.fhirType == 'Reference') {
        refContext = item;
        final property = item.getChildByName('reference');
        if (property != null && property.hasValues()) {
          for (final child in property.listChildrenNames()) {
            final prop = property.getChildByName(child);
            if (prop != null && prop is PrimitiveType) {
              s = prop.primitiveValue;
              break;
            }
          }
        } else {
          s = null;
        }
      }

      if (item.fhirType == 'canonical') {
        s = item.primitiveValue;
        refContext = item;
      }

      if (s != null) {
        FhirBase? res;
        if (s.startsWith('#')) {
          final property =
              execContext.rootResource?.getChildByName('contained');
          if (property != null) {
            for (final c in property.listChildrenNames()) {
              final val = property.getChildByName(c);
              final id = val is Element
                  ? val.id
                  : val is Resource
                      ? val.id
                      : null;
              if (id != null && chompHash(s) == chompHash(id.valueString)) {
                res = c.toFhirString;
                break;
              }
            }
          }
        } else if (fpContext.hostServices != null && refContext != null) {
          try {
            res = fpContext.hostServices?.resolveReference(
              engine,
              execContext.appInfo ?? '',
              s,
              refContext,
            );
          } catch (e) {
            res = null;
          }
        }

        if (res != null) {
          result.add(res);
        }
      }
    }

    return result;
  }

  String? chompHash(String? theId) {
    var retVal = theId;
    while (retVal?.startsWith('#') ?? false) {
      retVal = retVal!.substring(1);
    }
    return retVal;
  }

  Future<List<FhirBase>> funcExtension(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final url = nl.first.primitiveValue;

    for (final item in focus) {
      final ext = <FhirBase>[];
      engine
        ..getChildrenByName(item, 'extension', ext)
        ..getChildrenByName(item, 'modifierExtension', ext);
      for (final ex in ext) {
        final vl = <FhirBase>[];
        engine.getChildrenByName(ex, 'url', vl);
        if (utilities.convertListToString(vl) == url) {
          result.add(ex);
        }
      }
    }

    return result;
  }

  List<FhirBase> funcHasValue(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length == 1) {
      final s = utilities.convertToString(focus.first);
      return [FhirBoolean(!Utilities.noString(s))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  Future<List<FhirBase>> funcEncode(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'hex') {
          return [FhirString(bytesToHex(cnt.codeUnits))];
        } else if (param == 'base64') {
          return [FhirString(base64Encode(cnt.codeUnits))];
        } else if (param == 'urlbase64') {
          return [FhirString(base64UrlEncode(cnt.codeUnits))];
        }
      }
    }
    return [];
  }

  String bytesToHex(List<int> bytes) {
    const hexArray = '0123456789ABCDEF';
    final hexChars = List<String>.filled(bytes.length * 2, '');

    for (var j = 0; j < bytes.length; j++) {
      final v = bytes[j] & 0xFF;
      hexChars[j * 2] = hexArray[v >> 4];
      hexChars[j * 2 + 1] = hexArray[v & 0x0F];
    }

    return hexChars.join();
  }

  Future<List<FhirBase>> funcDecode(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'hex') {
          return [FhirString(String.fromCharCodes(hexStringToByteArray(cnt)))];
        } else if (param == 'base64') {
          return [FhirString(utf8.decode(base64Decode(cnt)))];
        } else if (param == 'urlbase64') {
          return [FhirString(utf8.decode(base64Url.decode(cnt)))];
        }
      }
    }
    return [];
  }

  List<int> hexStringToByteArray(String s) {
    final len = s.length;
    if (len % 2 != 0) {
      throw ArgumentError('Hex string must have an even number of characters');
    }

    final data = List<int>.filled(len ~/ 2, 0);
    for (var i = 0; i < len; i += 2) {
      final high = int.parse(s[i], radix: 16);
      final low = int.parse(s[i + 1], radix: 16);
      data[i ~/ 2] = (high << 4) + low;
    }
    return data;
  }

  Future<List<FhirBase>> funcEscape(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'html') {
          return [FhirString(cnt.escapeXml())];
        } else if (param == 'json') {
          return [FhirString(cnt.escapeJson())];
        }
      }
    }
    return [];
  }

  Future<List<FhirBase>> funcUnescape(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'html') {
          return [FhirString(cnt.unescapeXml())];
        } else if (param == 'json') {
          return [FhirString(cnt.unescapeJson())];
        }
      }
    }
    return [];
  }

  List<FhirBase> funcTrim(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) return [FhirString(cnt.trim())];
    }
    return [];
  }

  Future<List<FhirBase>> funcSplit(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null && param != null) {
        final parts = cnt.split(param);
        return parts.map(FhirString.new).toList();
      }
    }
    return [];
  }

  Future<List<FhirBase>> funcJoin(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl =
        await engine.execute(execContext, focus, exp.parameters.first, true);
    final delimiter = nl.first.primitiveValue;

    final joined =
        focus.map((item) => item.primitiveValue).join(delimiter ?? '');
    return [FhirString(joined)];
  }

  List<FhirBase> funcHtmlChecks1(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    }
    return [FhirBoolean(false)];
    // final xhtml = focus.first.getXhtml();
    // if (xhtml == null) {
    //   return [FhirBoolean(false)];
    // }
    // return [FhirBoolean(checkHtmlNames(xhtml))];
  }

  List<FhirBase> funcHtmlChecks2(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    }
    return [FhirBoolean(false)];
    // final xhtml = focus.first.getXhtml();
    // if (xhtml == null) {
    //   return [FhirBoolean(false)];
    // }
    // return [FhirBoolean(checkForContent(xhtml))];
  }

  Future<List<FhirBase>> funcComparable(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    if (focus.length != 1 || focus.first.fhirType != 'Quantity') {
      return utilities.makeBoolean(false);
    }

    final nl =
        await engine.execute(execContext, focus, exp.parameters[0], true);
    if (nl.length != 1 || nl.first.fhirType != 'Quantity') {
      return utilities.makeBoolean(false);
    }

    final s1 = getNamedValue(focus.first, 'system');
    final u1 = getNamedValue(focus.first, 'code');
    final s2 = getNamedValue(nl.first, 'system');
    final u2 = getNamedValue(nl.first, 'code');

    if (s1 == null || s2 == null || s1 != s2) {
      return utilities.makeBoolean(false);
    }
    if (u1 == null || u2 == null) {
      return utilities.makeBoolean(false);
    }
    if (u1 == u2) {
      return utilities.makeBoolean(true);
    }
    if (s1 == 'http://unitsofmeasure.org') {
      try {
        return utilities
            .makeBoolean(fpContext.worker.ucumService.isComparable(u1, u2));
      } catch (e) {
        return utilities.makeBoolean(false);
      }
    } else {
      return utilities.makeBoolean(false);
    }
  }

  List<FhirBase> funcToInteger(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final s = utilities.convertListToString(focus);
    final result = <FhirBase>[];
    if (Utilities.isInteger(s)) {
      result.add(FhirInteger(int.parse(s)).noExtensions());
    } else if (s == 'true') {
      result.add(FhirInteger(1).noExtensions());
    } else if (s == 'false') {
      result.add(FhirInteger(0).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcToString(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    for (final item in focus) {
      final value = utilities.convertToString(item);
      result.add(FhirString(value).noExtensions());
    }

    if (result.length > 1) {
      throw fpContext.makeException(
        exp,
        'FHIRPATH_NO_COLLECTION',
        ['toString', result.length],
      );
    }
    return result;
  }

  List<FhirBase> funcToBoolean(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1) {
      final item = focus.first;
      if (item is FhirBoolean) {
        result.add(item);
      } else if (item is FhirInteger) {
        final i = item.valueInt;
        if (i == 0) {
          result.add(FhirBoolean(false).noExtensions());
        } else if (i == 1) {
          result.add(FhirBoolean(true).noExtensions());
        }
      } else if (item is FhirDecimal) {
        final value = item.valueDouble;
        if (value == 0) {
          result.add(FhirBoolean(false).noExtensions());
        } else if (value == 1) {
          result.add(FhirBoolean(true).noExtensions());
        }
      } else if (item is FhirString) {
        final primitiveValue = item.primitiveValue?.toLowerCase();
        if (<String>['true', 't', 'yes', 'y', '1', '1.0']
            .contains(primitiveValue)) {
          result.add(FhirBoolean(true).noExtensions());
        } else if (<String>[
          'false',
          'f',
          'no',
          'n',
          '0',
          '0.0',
        ].contains(primitiveValue)) {
          result.add(FhirBoolean(false).noExtensions());
        }
      }
    }
    return result;
  }

  List<FhirBase> funcToQuantity(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1) {
      final item = focus.first;
      if (item is Quantity) {
        result.add(item);
      } else if (item is FhirString) {
        final q = parseQuantityString(item.primitiveValue);
        if (q != null) {
          result.add(q);
        }
      } else if (item is FhirNumber) {
        result.add(
          Quantity(
            value: FhirDecimal(item.valueNum),
            system: 'http://unitsofmeasure.org'.toFhirUri,
            code: '1'.toFhirCode,
          ),
        );
      }
    }
    return result;
  }

  Quantity? parseQuantityString(String? str) {
    if (str == null) {
      return null;
    }
    var s = str.trim();
    if (s.contains(' ')) {
      final v = s.substring(0, s.indexOf(' ')).trim();

      s = s.substring(s.indexOf(' ')).trim();

      if (!Utilities.isDecimal(v)) {
        return null;
      }

      if (s.startsWith("'") && s.endsWith("'")) {
        return quantityFromUcum(v, s.substring(1, s.length - 1));
      }

      switch (s) {
        case 'year':
        case 'years':
        case 'a':
          return quantityFromUcum(v, 'a');
        case 'month':
        case 'months':
        case 'mo_s':
          return quantityFromUcum(v, 'mo_s');
        case 'week':
        case 'weeks':
        case 'wk':
          return quantityFromUcum(v, 'wk');
        case 'day':
        case 'days':
        case 'd':
          return quantityFromUcum(v, 'd');
        case 'hour':
        case 'hours':
        case 'h':
          return quantityFromUcum(v, 'h');
        case 'minute':
        case 'minutes':
        case 'min':
          return quantityFromUcum(v, 'min');
        case 'second':
        case 'seconds':
        case 's':
          return quantityFromUcum(v, 's');
        case 'millisecond':
        case 'milliseconds':
        case 'ms':
          return quantityFromUcum(v, 'ms');
        default:
          return null;
      }
    } else {
      if (Utilities.isDecimal(s)) {
        return Quantity(
          value: FhirDecimal(int.tryParse(s) ?? double.parse(s)),
          system: FhirUri('http://unitsofmeasure.org'),
          code: FhirCode('1'),
        );
      } else {
        return null;
      }
    }
  }

  List<FhirBase> funcToDateTime(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    } else if (focus.length == 1) {
      if (focus.first is FhirDateTimeBase &&
          (focus.first as FhirDateTimeBase).valueString != null) {
        return [
          FhirDateTime.fromString(
            (focus.first as FhirDateTimeBase).valueString!,
          ),
        ];
      } else if (focus.first is FhirString) {
        final dateTime = (focus.first as FhirString).valueString == null
            ? null
            : FhirDateTime.tryParse((focus.first as FhirString).valueString);
        if (dateTime != null) {
          return [dateTime];
        }
        return [];
      }
    }

    throw fpContext.makeException(
      expr,
      'FHIRPATH_NO_COLLECTION',
      ['toString'],
    );
  }

  List<FhirBase> funcToDate(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    } else if (focus.length == 1) {
      if (focus.first is FhirDateTimeBase) {
        final date =
            FhirDate.tryParse((focus.first as FhirDateTimeBase).valueString);
        if (date != null) {
          return [date];
        }
        return [];
      } else if (focus.first is FhirString) {
        final date = (focus.first as FhirString).valueString == null
            ? null
            : FhirDateTime.tryParse((focus.first as FhirString).valueString);
        if (date != null) {
          return [date];
        }
        return [];
      }
    }

    throw fpContext.makeException(
      expr,
      'FHIRPATH_NO_COLLECTION',
      ['toString'],
    );
  }

  List<FhirBase> funcToTime(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    } else if (focus.length == 1) {
      if (focus.first is FhirTime) {
        return [focus.first];
      } else if (focus.first is FhirString) {
        final time = FhirTime.tryParse(focus.first.toString());
        if (time != null) {
          return [time];
        }
        return [];
      }
    }

    throw fpContext.makeException(
      expr,
      'FHIRPATH_NO_COLLECTION',
      ['toString'],
    );
  }

  List<FhirBase> funcToDecimal(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    final s = utilities.convertListToString(focus);
    final result = <FhirBase>[];
    if (Utilities.isDecimal(s)) {
      result
          .add(FhirDecimal(int.tryParse(s) ?? double.parse(s)).noExtensions());
    } else if (s == 'true') {
      result.add(FhirDecimal(1).noExtensions());
    } else if (s == 'false') {
      result.add(FhirDecimal(0).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcIsDecimal(
    ExecutionContext execContext,
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

  List<FhirBoolean> funcIsInteger(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirInteger || focus.first is FhirBoolean) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      return [FhirBoolean(Utilities.isInteger(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsBoolean(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirInteger) {
      final value = (focus.first as FhirInteger).valueInt;
      return [FhirBoolean(value != null && value >= 0 && value <= 1)];
    } else if (focus.first is FhirDecimal) {
      final value = (focus.first as FhirDecimal).valueDouble;
      return [FhirBoolean(value != null && (value == 0 || value == 1))];
    } else if (focus.first is FhirBoolean) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final value = focus.first.toString().toLowerCase();
      return [FhirBoolean(value == 'true' || value == 'false')];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsDateTime(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirDateTime || focus.first is FhirDate) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final regex = RegExp(
        r'(\d{4}(-\d{2}(-\d{2}(T\d{2}:\d{2}(:\d{2}(\.\d+)?)?(Z|([-+]\d{2}:\d{2})))?)?)?)',
      );
      return [FhirBoolean(regex.hasMatch(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsDate(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirDateTime || focus.first is FhirDate) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final regex = RegExp(
        r'\d{4}(-\d{2}(-\d{2})?)?',
      );
      return [FhirBoolean(regex.hasMatch(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  Future<List<FhirBase>> funcConformsTo(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (fpContext.hostServices == null) {
      throw fpContext.makeException(expr, 'FHIRPATH_HO_HOST_SERVICES', [
        'conformsTo',
      ]);
    }
    final result = <FhirBase>[];
    if (focus.length != 1) {
      result.add(FhirBoolean(false).noExtensions());
    } else {
      final url = utilities.convertListToString(
        await engine.execute(execContext, focus, expr.parameters.first, true),
      );
      result.add(
        FhirBoolean(
          fpContext.hostServices!.conformsToProfile(
            engine,
            execContext.appInfo ?? '',
            focus.first,
            url,
          ),
        ).noExtensions(),
      );
    }
    return result;
  }

  List<FhirBoolean> funcIsTime(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirTime) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final regex = RegExp(
        r'(T)?([01]\d|2[0-3])(:[0-5]\d(:[0-5]\d(\.\d+)?)?)?(Z|([-+](0[0-9]|1[0-3]):[0-5]\d|14:00))?',
      );

      return [FhirBoolean(regex.hasMatch(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsString(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirString ||
        focus.first is FhirInteger ||
        focus.first is FhirDecimal ||
        focus.first is FhirDate ||
        focus.first is FhirDateTime ||
        focus.first is FhirTime ||
        focus.first is FhirBoolean ||
        focus.first is Quantity) {
      return [FhirBoolean(true)];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsQuantity(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirInteger ||
        focus.first is FhirDecimal ||
        focus.first is Quantity ||
        focus.first is FhirBoolean) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final quantity = parseQuantityString(focus.first.toString());
      return [FhirBoolean(quantity != null)];
    } else {
      return [FhirBoolean(false)];
    }
  }

  Future<List<FhirBase>> funcRound(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.length != 1) {
      throw fpContext
          .makeExceptionPlural(focus.length, expr, 'FHIRPATH_FOCUS', [
        'round',
        focus.length,
      ]);
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      int? precision = 0;

      if (expr.parameters.isNotEmpty) {
        final n1 =
            await engine.execute(execContext, focus, expr.parameters[0], true);
        if (n1.length != 1) {
          throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
            'round',
            '0',
            'Multiple Values',
            'integer',
          ]);
        }
        precision = int.tryParse(n1[0].toString());
      }

      final value =
          int.tryParse(base.toString()) ?? double.tryParse(base.toString());
      if (value == null) {
        throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'round',
          '(focus)',
          base.fhirType,
          'integer or decimal',
        ]);
      }
      if (precision == null) {
        throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'round',
          '(focus)',
          base.fhirType,
          'integer',
        ]);
      }
      final valueString = value.toStringAsFixed(precision);
      result.add(
        FhirDecimal(int.tryParse(valueString) ?? double.parse(valueString)),
      );
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'round',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcSqrt(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['sqrt', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (value != null) {
        try {
          final val = sqrt(value);
          if (!val.isNaN) {
            result.add(FhirDecimal(val).noExtensions());
          }
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'sqrt',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcAbs(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['abs', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber && base.valueNum != null) {
      if (base is FhirDecimal) {
        result.add(FhirDecimal(base.abs()).noExtensions());
      } else if (base is FhirInteger) {
        result.add(FhirInteger(base.abs()).noExtensions());
      } else if (base is FhirUnsignedInt) {
        result.add(base.noExtensions());
      } else {
        result.add((base as FhirPositiveInt).noExtensions());
      }
    } else if (base.fhirType == 'Quantity') {
      final qty = base as Quantity;
      final n = qty.value?.abs();
      if (n != null) {
        result.add(qty.copyWith(value: FhirDecimal(n)));
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'abs',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcCeiling(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['ceiling', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = base.valueNum;
      if (value != null) {
        try {
          result.add(FhirInteger(value.ceil()).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'ceiling',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcFloor(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['floor', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = base.valueNum;
      if (value != null) {
        try {
          result.add(FhirInteger(value.floor()).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'floor',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcLn(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['ln', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (value != null) {
        try {
          result.add(FhirDecimal(log(value)).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'ln',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  Future<List<FhirBase>> funcPower(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['power', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      final n1 =
          await engine.execute(execContext, focus, expr.parameters.first, true);
      if (n1.length != 1) {
        throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'power',
          '0',
          'Multiple Values',
          'integer or decimal',
        ]);
      }

      final exponent = int.tryParse(n1[0].primitiveValue ?? '') ??
          double.tryParse(n1[0].primitiveValue ?? '');
      final value = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (exponent != null && value != null) {
        try {
          final res = pow(value, exponent);
          if (!res.isNaN) {
            result.add(FhirDecimal(res).noExtensions());
          }
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'power',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcSum(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    FhirNumber? sum;

    for (final item in focus) {
      if (item is FhirNumber) {
        if (sum == null) {
          sum = item;
        } else {
          sum = sum + item;
        }
      } else {
        throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'sum',
          '(focus)',
          item.fhirType,
          'integer or decimal',
        ]);
      }
    }

    return sum == null ? [] : [sum];
  }

  List<FhirBase> funcExp(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    }
    if (focus.length > 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['exp', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];
    if (base is FhirNumber) {
      final d = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (d != null) {
        try {
          result.add(FhirDecimal(exp(d)).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'exp',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  Future<List<FhirBase>> funcLog(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['log', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];
    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      final n1 =
          await engine.execute(execContext, focus, expr.parameters[0], true);
      if (n1.length != 1) {
        throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'log',
          '0',
          'Multiple Values',
          'integer or decimal',
        ]);
      }
      final e = int.tryParse(n1.first.primitiveValue ?? '') ??
          double.tryParse(n1.first.primitiveValue ?? '');
      final d = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (e != null && d != null) {
        try {
          result.add(FhirDecimal(log(d) / log(e)).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'log',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcTruncate(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['truncate', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];
    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      var s = base.primitiveValue ?? '';
      if (s.contains('.')) {
        s = s.split('.').first;
      }
      result.add(FhirInteger(int.parse(s)).noExtensions());
    } else {
      throw fpContext.makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'truncate',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  Future<List<FhirBase>> funcLowBoundary(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.isEmpty) {
      return utilities.makeNull();
    }
    if (focus.length > 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['lowBoundary', focus.length],
      );
    }

    int? precision;
    if (expr.parameters.isNotEmpty) {
      final n1 =
          await engine.execute(execContext, focus, expr.parameters[0], true);
      if (n1.length != 1) {
        throw fpContext.makeException(
          expr,
          'FHIRPATH_WRONG_PARAM_TYPE',
          ['lowBoundary', '0', 'Multiple Values', 'integer'],
        );
      }
      precision = int.tryParse(n1.first.primitiveValue ?? '');
    }

    final base = focus.first;
    final result = <FhirBase>[];

    if (base.hasType(['decimal', 'integer'])) {
      if (precision == null || (precision >= 0 && precision < 17)) {
        result.add(
          FhirDecimal(
            double.parse(
              (base.primitiveValue ?? '').lowBoundaryForDecimal(
                precision ?? 8,
              ),
            ),
          ).noExtensions(),
        );
      }
    } else if (base.hasType(['date'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').lowBoundaryForDate(
            precision ?? 10,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['dateTime'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').lowBoundaryForDate(
            precision ?? 17,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['time'])) {
      result.add(
        FhirTime(
          (base.primitiveValue ?? '').lowBoundaryForTime(
            precision ?? 9,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['Quantity'])) {
      final value = getNamedValue(base, 'value');
      final copied = (base as Quantity).copyWith(
        value: FhirDecimal(
          double.parse((value ?? '').lowBoundaryForDecimal(precision ?? 8)),
        ),
      );
      result.add(copied);
    } else {
      throw fpContext.makeException(
        expr,
        'FHIRPATH_WRONG_PARAM_TYPE',
        ['lowBoundary', '(focus)', base.fhirType, 'decimal or date'],
      );
    }

    return result;
  }

  Future<List<FhirBase>> funcHighBoundary(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.isEmpty) {
      return utilities.makeNull();
    }
    if (focus.length > 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['highBoundary', focus.length],
      );
    }

    int? precision;
    if (expr.parameters.isNotEmpty) {
      final n1 =
          await engine.execute(execContext, focus, expr.parameters[0], true);
      if (n1.length != 1) {
        throw fpContext.makeException(
          expr,
          'FHIRPATH_WRONG_PARAM_TYPE',
          ['highBoundary', '0', 'Multiple Values', 'integer'],
        );
      }
      precision = int.tryParse(n1.first.primitiveValue ?? '');
    }

    final base = focus.first;
    final result = <FhirBase>[];

    if (base.hasType(['decimal', 'integer'])) {
      if (precision == null || (precision >= 0 && precision < 17)) {
        result.add(
          FhirDecimal(
            double.parse(
              (base.primitiveValue ?? '').highBoundaryForDecimal(
                precision ?? 8,
              ),
            ),
          ).noExtensions(),
        );
      }
    } else if (base.hasType(['date'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').highBoundaryForDate(
            precision ?? 10,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['dateTime'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').highBoundaryForDate(
            precision ?? 17,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['time'])) {
      result.add(
        FhirTime(
          (base.primitiveValue ?? '').highBoundaryForTime(
            precision ?? 9,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['Quantity'])) {
      final value = getNamedValue(base, 'value');
      final copied = (base as Quantity).copyWith(
        value: FhirDecimal(
          double.parse((value ?? '').highBoundaryForDecimal(precision ?? 8)),
        ),
      );
      result.add(copied);
    } else {
      throw fpContext.makeException(
        expr,
        'FHIRPATH_WRONG_PARAM_TYPE',
        ['highBoundary', '(focus)', base.fhirType, 'decimal or date'],
      );
    }

    return result;
  }

  List<FhirBase> funcPrecision(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw fpContext.makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['highBoundary', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];

    if (base.hasType(['decimal'])) {
      result.add(
        FhirInteger(
          (base.primitiveValue ?? '').getDecimalPrecision(),
        ),
      );
    } else if (base.hasType(['date', 'dateTime'])) {
      result.add(
        FhirInteger((base.primitiveValue ?? '').getDatePrecision()),
      );
    } else if (base.hasType(['time'])) {
      result.add(
        FhirInteger((base.primitiveValue ?? '').getTimePrecision()),
      );
    } else {
      throw fpContext.makeException(
        expr,
        'FHIRPATH_WRONG_PARAM_TYPE',
        ['highBoundary', '(focus)', base.fhirType, 'decimal or date'],
      );
    }

    return result;
  }

  String? getNamedValue(FhirBase base, String name) {
    final property = base.getChildByName(name);
    final propertyChildren = property?.listChildrenNames();
    if (property != null && propertyChildren!.length == 1) {
      return property.getChildByName(propertyChildren.first)?.primitiveValue;
    }
    return null;
  }

  Future<List<FhirBase>> funcSupersetOf(
    ExecutionContext execContext,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final target = await engine.execute(
      execContext,
      execContext.focusResource == null ? focus : [execContext.focusResource!],
      exp.parameters[0],
      true,
    );

    var valid = true;
    for (final item in target) {
      var found = false;
      for (final t in focus) {
        if (t.compareDeep(item, t)) {
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
    ExecutionContext execContext,
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

  List<FhirBase> resolveConstantWithBase(
    ExecutionContext execContext,
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
      if (execContext.hasDefinedVariable(varName)) {
        return execContext.getDefinedVariable(varName);
      }
      final resolved = resolveConstantWithString(
        execContext,
        c.value,
        beforeContext,
        expr,
        explicitConstant,
      );
      return resolved;
    } else if (c.value.startsWith('@')) {
      return [
        processDateConstant(execContext.appInfo, c.value.substring(1), expr),
      ];
    } else {
      throw fpContext
          .makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [c.value]);
    }
  }

  List<FhirBase> resolveConstantWithString(
    ExecutionContext execContext,
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
        if (execContext.focusResource == null) {
          throw fpContext.makeException(
            expr,
            'FHIRPATH_CANNOT_USE',
            ['%resource', 'no focus resource'],
          );
        }
        return [execContext.focusResource!];
      case '%rootResource':
        if (execContext.rootResource == null) {
          throw fpContext.makeException(
            expr,
            'FHIRPATH_CANNOT_USE',
            ['%rootResource', 'no focus resource'],
          );
        }
        return [execContext.rootResource!];
      case '%context':
        return execContext.context == null ? [] : [execContext.context!];
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
        } else if (fpContext.hostServices == null) {
          throw fpContext.makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [s]);
        } else {
          return fpContext.hostServices!.resolveConstant(
            engine,
            execContext.appInfo,
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
    } else if (value.contains('T')) {
      result = FhirDateTime.tryParse(value) ?? FhirTime.tryParse(value);
    } else {
      result = FhirDate.tryParse(value) ??
          FhirDateTime.tryParse(value) ??
          FhirTime.tryParse(value);
    }
    if (result != null) return result;
    throw fpContext.makeException(
      expr,
      'FHIRPATH_INVALID_DATE',
      [value],
    );
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

    final dl = int.tryParse(l) ?? double.parse(l);
    final dr = int.tryParse(r) ?? double.parse(r);

    return dl == dr;
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

  ExecutionContext changeThisExecutionContext(
    ExecutionContext execContext,
    FhirBase newThis,
  ) {
    final newContext = ExecutionContext(
      appInfo: execContext.appInfo,
      focusResource: execContext.focusResource,
      rootResource: execContext.rootResource,
      context: execContext.context,
      thisItem: newThis,
    );
    // append all of the defined variables from the context into the new context
    if (execContext.definedVariables != null) {
      for (final s in execContext.definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(
          s,
          execContext.definedVariables![s],
          fpContext.worker,
        );
      }
    }
    return newContext;
  }

  ExecutionTypeContext changeThisExecutionTypeContext(
    ExecutionTypeContext execContext,
    TypeDetails newThis,
  ) {
    final newContext = ExecutionTypeContext(
      execContext.appInfo,
      execContext.resource,
      execContext.context,
      newThis,
    );
    // append all of the defined variables from the context into the new context
    if (execContext.definedVariables != null) {
      for (final s in execContext.definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(s, execContext.definedVariables![s]);
      }
    }
    return newContext;
  }

  List<FhirBase> baseToList(FhirBase b) {
    return [b];
  }

  void writeToLog(String name, List<FhirBase> contents) {
    if (fpContext.hostServices == null ||
        !fpContext.hostServices!.fpLog(name, contents)) {
      if (fpContext.fpLog.length > 0) {
        fpContext.fpLog.write('; ');
      }
      fpContext.fpLog
        ..write(name)
        ..write(': ');
      var first = true;
      for (final b in contents) {
        if (first) {
          first = false;
        } else {
          fpContext.fpLog.write(',');
        }
        fpContext.fpLog.write(utilities.convertToString(b));
      }
    }
  }

  String forLog() {
    if (fpContext.fpLog.length > 0) {
      return ' (${fpContext.fpLog})';
    } else {
      return '';
    }
  }

  bool hasType(FhirBase b, List<String> names) {
    final t = b.fhirType;
    for (final n in names) {
      if (n.equalsIgnoreCase(t)) return true;
    }
    return false;
  }

  Quantity quantityFromUcum(String v, String code) {
    return Quantity(
      value: FhirDecimal(int.tryParse(v) ?? double.parse(v)),
      system: FhirUri('http://unitsofmeasure.org'),
      code: FhirCode(code),
    );
  }
}
