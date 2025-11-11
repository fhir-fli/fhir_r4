// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// Internal operations class for FHIRPath engine.
///
/// Handles all FHIRPath operations (+, -, *, /, ==, !=, <, >, etc.)
class FhirPathOperations {
  FhirPathOperations(this.context, this.utilities, this.engine);

  final FhirPathContext context;
  final FHIRPathEngine engine;
  final FhirPathUtilities utilities;

  /// OPERATIONS
  /// ***************************************
  ///
  List<FhirBase>? preOperate(
    List<FhirBase> left,
    FpOperation? operation,
    ExpressionNode expr,
  ) {
    if (left.isEmpty) return null;
    switch (operation) {
      case FpOperation.And:
        return utilities.isBoolean(left, false)
            ? utilities.makeBoolean(false)
            : null;
      case FpOperation.Or:
        return utilities.isBoolean(left, true)
            ? utilities.makeBoolean(true)
            : null;
      case FpOperation.Implies:
        final v = utilities.asBoolFromList(left, expr);
        return v == FpEquality.false_ ? utilities.makeBoolean(true) : null;
      // ignore: no_default_cases
      default:
        return null;
    }
  }

  Future<List<FhirBase>> operate(
    ExecutionContext execContext,
    List<FhirBase> left,
    FpOperation? operation,
    List<FhirBase> right,
    ExpressionNode holder,
  ) async {
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
        return opMemberOf(execContext, left, right, holder);
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
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length != right.length) {
      return utilities.makeBoolean(false);
    }

    var res = true;
    var nil = false;

    for (var i = 0; i < left.length; i++) {
      final eq = utilities.doEquals(left[i], right[i]);

      if (eq == null) {
        nil = true;
      } else if (!eq) {
        res = false;
        break;
      }
    }

    if (!res) {
      return utilities.makeBoolean(false);
    } else if (nil) {
      return [];
    } else {
      return utilities.makeBoolean(true);
    }
  }

  List<FhirBase> opEquivalent(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length != right.length) {
      return utilities.makeBoolean(false);
    }

    var res = true;

    for (var i = 0; i < left.length; i++) {
      var found = false;
      for (var j = 0; j < right.length; j++) {
        if (utilities.doEquivalent(left[i], right[j]) ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        res = false;
        break;
      }
    }

    return utilities.makeBoolean(res);
  }

  List<FhirBase> opNotEquals(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (!context.legacyMode && (left.isEmpty || right.isEmpty)) {
      return [];
    }

    if (left.length != right.length) {
      return utilities.makeBoolean(true);
    }

    var res = true;
    var nil = false;
    for (var i = 0; i < left.length; i++) {
      final eq = utilities.doEquals(left[i], right[i]);
      if (eq == null) {
        nil = true;
      } else if (eq) {
        res = false;
        break;
      }
    }

    if (!res) {
      return utilities.makeBoolean(res);
    } else if (nil) {
      return [];
    } else {
      return utilities.makeBoolean(res);
    }
  }

  List<FhirBase> opNotEquivalent(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length != right.length) {
      return utilities.makeBoolean(true);
    }

    var res = true;

    for (var i = 0; i < left.length; i++) {
      var found = false;
      for (var j = 0; j < right.length; j++) {
        if (utilities.doEquivalent(left[i], right[j]) ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        res = false;
        break;
      }
    }

    return utilities.makeBoolean(!res);
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
        if (context.FHIR_TYPES_STRING.contains(l.fhirType) &&
            context.FHIR_TYPES_STRING.contains(r.fhirType)) {
          return utilities
              .makeBoolean(l.toString().compareTo(r.toString()) < 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return utilities.makeBoolean(l < r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l < r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l < r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else {
          throw context.makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (l.compareDeepLists(lUnit, rUnit, true)) {
          return opLessThan(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = utilities.qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = utilities.qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opLessThan(dl, dr, expr);
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
        if (context.FHIR_TYPES_STRING.contains(l.fhirType) &&
            context.FHIR_TYPES_STRING.contains(r.fhirType)) {
          return utilities
              .makeBoolean(l.toString().compareTo(r.toString()) > 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return utilities.makeBoolean(l > r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l > r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l > r;

          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else {
          throw context.makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (l.compareDeepLists(lUnit, rUnit, true)) {
          return opGreater(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = utilities.qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = utilities.qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opGreater(dl, dr, expr);
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
        if (context.FHIR_TYPES_STRING.contains(l.fhirType) &&
            context.FHIR_TYPES_STRING.contains(r.fhirType)) {
          return utilities
              .makeBoolean(l.toString().compareTo(r.toString()) <= 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return utilities.makeBoolean(l <= r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l <= r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l <= r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else {
          throw context.makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (l.compareDeepLists(lUnit, rUnit, true)) {
          return opLessOrEqual(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = utilities.qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = utilities.qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opLessOrEqual(dl, dr, expr);
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
        if (context.FHIR_TYPES_STRING.contains(l.fhirType) &&
            context.FHIR_TYPES_STRING.contains(r.fhirType)) {
          return utilities
              .makeBoolean(l.toString().compareTo(r.toString()) >= 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return utilities.makeBoolean(l >= r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l >= r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l >= r;
          return comparison == null
              ? <FhirBase>[]
              : utilities.makeBoolean(comparison);
        } else {
          throw context.makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (l.compareDeepLists(lUnit, rUnit, true)) {
          return opGreaterOrEqual(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = utilities.qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = utilities.qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opGreaterOrEqual(dl, dr, expr);
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
      if (!utilities.doContains(result, item)) {
        result.add(item);
      }
    }
    for (final item in right) {
      if (!utilities.doContains(result, item)) {
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
      return utilities.makeBoolean(false);
    }

    var ans = true;
    for (final l in left) {
      var found = false;
      for (final r in right) {
        final eq = utilities.doEquals(l, r);
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
    return utilities.makeBoolean(ans);
  }

  Future<List<FhirBase>> opMemberOf(
    ExecutionContext execContext,
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) async {
    var ans = false;
    final url = right.first.primitiveValue.toString();
    final vs = context.hostServices != null
        ? context.hostServices!
            .resolveValueSet(engine, execContext.appInfo, url)
        : await context.worker.fetchResource<ValueSet>(uri: url);

    if (vs != null) {
      for (final l in left) {
        if (['code', 'string', 'uri'].contains(l.fhirType)) {
          final result = await context.worker.validateCodeWithCoding(
            context.terminologyServiceOptions.withGuessSystem(),
            TypeConvertor.castToCoding(l)!,
            vs,
          );
          if (result.isOk) {
            ans = true;
          }
        } else if (l.fhirType == 'Coding') {
          final result = await context.worker.validateCodeWithCoding(
            context.terminologyServiceOptions,
            TypeConvertor.castToCoding(l)!,
            vs,
          );
          if (result.isOk) {
            ans = true;
          }
        } else if (l.fhirType == 'CodeableConcept') {
          final cc = TypeConvertor.castToCodeableConcept(l);
          final vr = await context.worker.validateCodeWithCodeableConcept(
            context.terminologyServiceOptions,
            cc!,
            vs,
          );
          if (vr.isOk) {
            ans = true;
          }
        }
      }
    }

    return utilities.makeBoolean(ans);
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
        final eq = utilities.doEquals(l, r);
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
    return utilities.makeBoolean(ans);
  }

  List<FhirBase> opOr(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = utilities.asBoolList(left, expr);
    final r = utilities.asBoolList(right, expr);
    switch (l) {
      case FpEquality.true_:
        return utilities.makeBoolean(true);
      case FpEquality.null_:
        return r == FpEquality.true_
            ? utilities.makeBoolean(true)
            : utilities.makeNull();
      case FpEquality.false_:
        switch (r) {
          case FpEquality.false_:
            return utilities.makeBoolean(false);
          case FpEquality.null_:
            return utilities.makeNull();
          case FpEquality.true_:
            return utilities.makeBoolean(true);
        }
    }
  }

  List<FhirBase> opAnd(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = utilities.asBoolList(left, expr);
    final r = utilities.asBoolList(right, expr);
    switch (l) {
      case FpEquality.false_:
        return utilities.makeBoolean(false);
      case FpEquality.null_:
        return r == FpEquality.false_
            ? utilities.makeBoolean(false)
            : utilities.makeNull();
      case FpEquality.true_:
        switch (r) {
          case FpEquality.false_:
            return utilities.makeBoolean(false);
          case FpEquality.null_:
            return utilities.makeNull();
          case FpEquality.true_:
            return utilities.makeBoolean(true);
        }
    }
  }

  List<FhirBase> opXor(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = utilities.asBoolList(left, expr);
    final r = utilities.asBoolList(right, expr);
    switch (l) {
      case FpEquality.true_:
        switch (r) {
          case FpEquality.false_:
            return utilities.makeBoolean(true);
          case FpEquality.true_:
            return utilities.makeBoolean(false);
          case FpEquality.null_:
            return utilities.makeNull();
        }
      case FpEquality.null_:
        return utilities.makeNull();
      case FpEquality.false_:
        switch (r) {
          case FpEquality.false_:
            return utilities.makeBoolean(false);
          case FpEquality.true_:
            return utilities.makeBoolean(true);
          case FpEquality.null_:
            return utilities.makeNull();
        }
    }
  }

  List<FhirBase> opImplies(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final eq = utilities.asBoolList(left, expr);
    if (eq == FpEquality.false_) {
      return utilities.makeBoolean(true);
    } else if (right.isEmpty) {
      return utilities.makeNull();
    } else {
      switch (utilities.asBoolList(right, expr)) {
        case FpEquality.false_:
          return eq == FpEquality.null_
              ? utilities.makeNull()
              : utilities.makeBoolean(false);
        case FpEquality.null_:
          return utilities.makeNull();
        case FpEquality.true_:
          return utilities.makeBoolean(true);
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
      throw context.makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['+'],
      );
    }
    if (!left.first.isPrimitive) {
      throw context.makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['+', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw context.makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['+'],
      );
    }
    if (!right.first.isPrimitive &&
        !((left.first is Quantity && right.first is Quantity) ||
            (left.first is FhirDateTimeBase && right.first is Quantity))) {
      throw context.makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['+', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (context.FHIR_TYPES_STRING.contains(l.fhirType) &&
        context.FHIR_TYPES_STRING.contains(r.fhirType)) {
      result.add(FhirString('${l.primitiveValue}${r.primitiveValue}'));
    } else if (l is FhirNumber && r is FhirNumber) {
      result.add((l + r)!);
    } else if (l is FhirDateTimeBase && r is Quantity) {
      result.add(utilities.dateAdd(l, r, false, expr));
    } else {
      throw context.makeException(
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
      throw context.makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['*'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw context.makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['*', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw context.makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['*'],
      );
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw context.makeException(
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
    } else if (l is Quantity && r is Quantity) {
      final pl = utilities.qtyToPair(l);
      final pr = utilities.qtyToPair(r);
      if (pl != null && pr != null) {
        try {
          final p = context.worker.ucumService.multiply(pl, pr);
          result.add(utilities.pairToQty(p));
        } catch (e) {
          throw PathEngineException(
            e.toString(),
            location: expr.opStart,
            expression: expr.toString(),
          );
        }
      }
    } else {
      throw context.makeException(
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
      throw context.makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['-'],
      );
    }
    if (!left.first.isPrimitive && left.first is! Quantity) {
      throw context.makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['-', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw context.makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['-'],
      );
    }
    if (!right.first.isPrimitive &&
        !((left.first is FhirDateTimeBase ||
                left.first.toString() == '0' ||
                left.first is Quantity) &&
            right.first is Quantity)) {
      throw context.makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['-', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      result.add((l - r)!);
    } else if ((l is FhirNumber || l is Quantity) && r is Quantity) {
      if (l.toString() == '0') {
        final qty = r;
        result.add(
          qty.copyWith(
            value: qty.value?.abs() == null
                ? null
                : qty.value!.abs().toFhirDecimal,
          ),
        );
      }
    } else if (l is FhirDateTimeBase && r is Quantity) {
      result.add(utilities.dateAdd(l, r, true, expr));
    } else {
      throw context.makeException(
        expr,
        'FHIRPATH_OP_INCOMPATIBLE',
        ['-', l.fhirType, r.fhirType],
      );
    }

    return result;
  }

  List<FhirBase> opConcatenate(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length > 1) {
      throw context.makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['&'],
      );
    }
    if (left.isNotEmpty &&
        !context.FHIR_TYPES_STRING.contains(left.first.fhirType)) {
      throw context.makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['&', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw context.makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['&'],
      );
    }
    if (right.isNotEmpty &&
        !context.FHIR_TYPES_STRING.contains(right.first.fhirType)) {
      throw context.makeException(
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
      throw context.makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['/'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw context.makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        '/',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw context
          .makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        '/',
      ]);
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw context.makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        '/',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      try {
        final d1 = FhirDecimal(l.valueNum);
        final d2 = FhirDecimal(r.valueNum);
        if (d2.valueNum == 0) {
          return <FhirBase>[];
        }
        result.add((d1 / d2)! as FhirDecimal);
      } catch (e) {
        return <FhirBase>[];
      }
    } else if (l is Quantity && r is Quantity) {
      final pl = utilities.qtyToPair(l);
      final pr = utilities.qtyToPair(r);
      if (pl != null && pr != null) {
        final p = context.worker.ucumService.divideBy(pl, pr);

        result.add(utilities.pairToQty(p));
      }
    } else {
      throw context.makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
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
      throw context
          .makeExceptionPlural(left.length, expr, 'FHIRPATH_LEFT_VALUE', [
        'div',
      ]);
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw context.makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        'div',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw context
          .makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        'div',
      ]);
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw context.makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        'div',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirInteger &&
        l.valueInt != null &&
        r is FhirInteger &&
        r.valueInt != null) {
      final divisor = r.valueInt!;
      if (divisor != 0) {
        result.add(FhirInteger(l.valueInt! ~/ divisor));
      }
    } else if ((l is FhirDecimal || l is FhirInteger) &&
        (r is FhirDecimal || r is FhirInteger)) {
      if ((r as FhirNumber).valueNum != 0) {
        result.add(((l as FhirNumber) ~/ r)!);
      }
    } else {
      throw context.makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
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
      throw context
          .makeExceptionPlural(left.length, expr, 'FHIRPATH_LEFT_VALUE', [
        'mod',
      ]);
    }
    if (!left.first.isPrimitive) {
      throw context.makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        'mod',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw context
          .makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        'mod',
      ]);
    }
    if (!right.first.isPrimitive) {
      throw context.makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        'mod',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;
    if (l is FhirNumber && r is FhirNumber) {
      if (l is FhirDecimal || r is FhirDecimal) {
        try {
          final d1 = l;
          final d2 = r;
          if (d2.valueNum != 0) {
            result.add((d1 % d2)!);
          }
        } catch (e) {
          throw context
              .makeException(expr, 'FHIRPATH_OP_ERROR', ['mod', e.toString()]);
        }
      } else {
        final modulus = r.valueNum as int?;
        if (modulus != null && modulus != 0) {
          result.add(FhirInteger((l % modulus)!.valueNum));
        }
      }
    } else if ((l.fhirType == 'decimal' || l.fhirType == 'integer') &&
        (r.fhirType == 'decimal' || r.fhirType == 'integer')) {
    } else {
      throw context.makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
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
      final tn = utilities.convertListToString(right);

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

          return utilities.makeBoolean(
            currentType.toLowerCase() == tn.toLowerCase() ||
                currentType == tn.replaceFirst('FHIR.', ''),
          );
        }
      } else if (left.first.fhirType == tn) {
        result.add(FhirBoolean(true).noExtensions());
      } else if (left.first.fhirType == tn.replaceFirst('FHIR.', '')) {
        result.add(FhirBoolean(true).noExtensions());
      }
    }

    return result;
  }

  Future<List<FhirBase>> opAs(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) async {
    final result = <FhirBase>[];
    if (right.length != 1) {
      return result;
    }

    final tn = utilities.convertListToString(right);

    if (!(await utilities.isKnownType(tn))) {
      throw PathEngineException('The type $tn is not valid');
    }
    if (!context.doNotEnforceAsSingletonRule && left.length > 1) {
      throw PathEngineException(
        'Attempt to use "as" on more than one item (${left.length}, "$expr")',
      );
    }

    for (final nextLeft in left) {
      if (utilities.compareTypeNames(tn, nextLeft.fhirType)) {
        result.add(nextLeft);
      }
    }
    return result;
  }
}
