// ignore_for_file: public_member_api_docs, constant_identifier_names,
// ignore_for_file: lines_longer_than_80_chars, avoid_print

import 'package:fhir_r4/fhir_r4.dart';

// Converted from Java to Dart

class ExpressionNode {
  ExpressionNode(this.uniqueId);

  String uniqueId;
  ExpressionNodeKind? kind;
  String? name;
  FhirBase? constant;
  FpFunction? function;
  List<ExpressionNode> parameters = <ExpressionNode>[];
  ExpressionNode? inner;
  ExpressionNode? group;
  FpOperation? operation;
  bool proximal = false;
  ExpressionNode? opNext;
  SourceLocation? start;
  SourceLocation? end;
  SourceLocation? opStart;
  SourceLocation? opEnd;
  TypeDetails? types;
  TypeDetails? opTypes;

  void printExpressionTree([int depth = 0, Set<ExpressionNode>? visitedNodes]) {
    visitedNodes ??= <ExpressionNode>{};

    if (visitedNodes.contains(this)) {
      print('${'  ' * depth}Circular reference detected at node ID: $uniqueId');
      return;
    }

    visitedNodes.add(this);

    final indent = '  ' * depth;

    print('${indent}Node ID: $uniqueId (Kind: ${kind ?? 'null'})');
    if (name != null) print('$indent  Name: $name');
    if (constant != null) print('$indent  Constant: $constant');
    if (function != null) print('$indent  Function: ${function!.toCode()}');
    if (operation != null) print('$indent  Operation: ${operation!.toCode()}');
    if (start != null) {
      print('$indent  Start Location: ${start!.line}:${start!.column}');
    }
    if (end != null) {
      print('$indent  End Location: ${end!.line}:${end!.column}');
    }
    if (opStart != null) {
      print(
        '$indent  Operation Start Location: ${opStart!.line}:${opStart!.column}',
      );
    }
    if (opEnd != null) {
      print('$indent  Operation End Location: ${opEnd!.line}:${opEnd!.column}');
    }
    if (types != null) print('$indent  Types: $types');
    if (opTypes != null) print('$indent  Operation Types: $opTypes');
    print('$indent  Proximal: $proximal');

    if (group != null) {
      print('$indent  Group:');
      group!.printExpressionTree(depth + 1, visitedNodes);
    }

    if (parameters.isNotEmpty) {
      print('$indent  Parameters:');
      for (final param in parameters) {
        param.printExpressionTree(depth + 2, visitedNodes);
      }
    }

    if (inner != null) {
      print('$indent  Inner:');
      inner!.printExpressionTree(depth + 1, visitedNodes);
    }

    if (opNext != null) {
      print('$indent  Next:');
      opNext!.printExpressionTree(depth + 1, visitedNodes);
    }

    visitedNodes.remove(this);
  }

  @override
  String toString() {
    final b = StringBuffer();
    switch (kind) {
      case ExpressionNodeKind.name:
        b.write(name);
      case ExpressionNodeKind.function:
        if (function == FpFunction.Item) {
          b.write('[');
        } else {
          b
            ..write(name)
            ..write('(');
        }
        var first = true;
        for (final n in parameters) {
          if (first) {
            first = false;
          } else {
            b.write(', ');
          }
          b.write(n.toString());
        }
        if (function == FpFunction.Item) {
          b.write(']');
        } else {
          b.write(')');
        }
      case ExpressionNodeKind.constant:
        if (constant == null) {
          b.write('{}');
        } else if (constant is FhirString) {
          b.write("'${(constant! as FhirString).value?.escapeJson()}'");
        } else if (constant is Quantity) {
          final q = constant! as Quantity;
          b
            ..write(q.value.toString().escapeJson())
            ..write(" '")
            ..write(q.unit?.value?.escapeJson())
            ..write("'");
        } else if (constant is PrimitiveType &&
            constant?.primitiveValue != null) {
          b.write(constant?.primitiveValue?.escapeJson());
        } else {
          b.write(constant.toString().escapeJson());
        }
      case ExpressionNodeKind.group:
        b.write('(');
        b.write(group.toString());
        b.write(')');
      case null:
      case ExpressionNodeKind.unary:
    }
    if (inner != null) {
      if (!(inner!.kind == ExpressionNodeKind.function &&
          inner!.function == FpFunction.Item)) {
        b.write('.');
      }
      b.write(inner!.toString());
    }

    if (operation != null) {
      b
        ..write(' ')
        ..write(operation?.toCode())
        ..write(' ')
        ..write(opNext.toString());
    }

    return b.toString();
  }

  String summary() {
    switch (kind) {
      case ExpressionNodeKind.name:
        return '$uniqueId: $name';
      case ExpressionNodeKind.function:
        return '$uniqueId: $function()';
      case ExpressionNodeKind.constant:
        return '$uniqueId: $constant';
      case ExpressionNodeKind.group:
        return '$uniqueId: (Group)';
      case ExpressionNodeKind.unary:
      case null:
        return '?exp-kind?';
    }
  }

  void write(StringBuffer b) {
    switch (kind) {
      case ExpressionNodeKind.name:
        b.write(name);
      case ExpressionNodeKind.constant:
        b.write(constant);
      case ExpressionNodeKind.function:
        b.write(function?.toCode());
        b.write('(');
        var first = true;
        for (final n in parameters) {
          if (!first) {
            b.write(', ');
          }
          first = false;
          n.write(b);
        }
        b.write(')');
      case ExpressionNodeKind.group:
        b.write('(');
        group?.write(b);
        b.write(')');
      case null:
      case ExpressionNodeKind.unary:
    }
    if (inner != null) {
      b.write('.');
      inner!.write(b);
    }
    if (operation != null) {
      b.write(' ${operation!.toCode()} ');
      opNext?.write(b);
    }
  }

  String? check() {
    if (kind == null) {
      return 'Error in expression - node has no kind';
    }
    switch (kind) {
      case ExpressionNodeKind.name:
        if (name?.noString() ?? true) {
          return 'No Name provided @ ${location()}';
        }
      case ExpressionNodeKind.function:
        if (function == null) {
          return 'No Function id provided @ ${location()}';
        }
        for (final n in parameters) {
          final msg = n.check();
          if (msg != null) {
            return msg;
          }
        }
      case ExpressionNodeKind.constant:
        if (constant == null) {
          return 'No Constant provided @ ${location()}';
        }
      case ExpressionNodeKind.group:
        if (group == null) {
          return 'No Group provided @ ${location()}';
        } else {
          final msg = group?.check();
          if (msg != null) {
            return msg;
          }
        }
      case ExpressionNodeKind.unary:
      case null:
    }
    if (inner != null) {
      final msg = inner?.check();
      if (msg != null) {
        return msg;
      }
    }
    if (operation == null) {
      if (opNext != null) {
        return "Next provided when it shouldn't be @ ${location()}";
      }
    } else {
      if (opNext == null) {
        return 'No Next provided @ ${location()}';
      } else {
        opNext?.check();
      }
    }
    return null;
  }

  String location() {
    return '${start?.line ?? ''}, ${start?.column ?? ''}';
  }

  int get parameterCount => parameters.length;

  String canonical() {
    final b = StringBuffer();
    write(b);
    return b.toString();
  }

  bool checkName() {
    if (!(name?.startsWith(r'$') ?? true)) {
      return true;
    } else {
      return [r'$this', r'$total', r'$index'].contains(name);
    }
  }
}

enum ExpressionNodeKind { name, function, constant, group, unary }

enum FpFunction {
  Item,
  Custom,
  Empty,
  Not,
  Exists,
  SubsetOf,
  SupersetOf,
  IsDistinct,
  Distinct,
  Count,
  Where,
  Select,
  All,
  Repeat,
  Aggregate,
  As,
  Is,
  Single,
  First,
  Last,
  Tail,
  Skip,
  Take,
  Union,
  Combine,
  Intersect,
  Exclude,
  Iif,
  Upper,
  Lower,
  ToChars,
  IndexOf,
  Substring,
  StartsWith,
  EndsWith,
  Matches,
  MatchesFull,
  ReplaceMatches,
  Contains,
  Replace,
  Length,
  Children,
  Descendants,
  MemberOf,
  Trace,
  DefineVariable,
  Check,
  Today,
  TimeOfDay,
  Now,
  Resolve,
  Extension,
  AllFalse,
  AnyFalse,
  AllTrue,
  AnyTrue,
  HasValue,
  OfType,
  Type,
  ConvertsToBoolean,
  ConvertsToInteger,
  ConvertsToString,
  ConvertsToDecimal,
  ConvertsToQuantity,
  ConvertsToDateTime,
  ConvertsToDate,
  ConvertsToTime,
  ToBoolean,
  ToInteger,
  ToString,
  ToDecimal,
  ToQuantity,
  ToDateTime,
  ToDate,
  ToTime,
  ConformsTo,
  Round,
  Sqrt,
  Abs,
  Ceiling,
  Exp,
  Floor,
  Ln,
  Log,
  Power,
  Sum,
  Truncate,
  Encode,
  Decode,
  Escape,
  Unescape,
  Trim,
  Split,
  Join,
  LowBoundary,
  HighBoundary,
  Precision,
  HtmlChecks1,
  HtmlChecks2,
  Comparable,
  HasTemplateIdOf;

  static FpFunction? fromCode(String name) {
    switch (name) {
      case 'empty':
        return FpFunction.Empty;
      case 'not':
        return FpFunction.Not;
      case 'exists':
        return FpFunction.Exists;
      case 'subsetOf':
        return FpFunction.SubsetOf;
      case 'supersetOf':
        return FpFunction.SupersetOf;
      case 'isDistinct':
        return FpFunction.IsDistinct;
      case 'distinct':
        return FpFunction.Distinct;
      case 'count':
        return FpFunction.Count;
      case 'where':
        return FpFunction.Where;
      case 'select':
        return FpFunction.Select;
      case 'all':
        return FpFunction.All;
      case 'repeat':
        return FpFunction.Repeat;
      case 'aggregate':
        return FpFunction.Aggregate;
      case 'item':
        return FpFunction.Item;
      case 'as':
        return FpFunction.As;
      case 'is':
        return FpFunction.Is;
      case 'single':
        return FpFunction.Single;
      case 'first':
        return FpFunction.First;
      case 'last':
        return FpFunction.Last;
      case 'tail':
        return FpFunction.Tail;
      case 'skip':
        return FpFunction.Skip;
      case 'take':
        return FpFunction.Take;
      case 'union':
        return FpFunction.Union;
      case 'combine':
        return FpFunction.Combine;
      case 'intersect':
        return FpFunction.Intersect;
      case 'exclude':
        return FpFunction.Exclude;
      case 'iif':
        return FpFunction.Iif;
      case 'lower':
        return FpFunction.Lower;
      case 'upper':
        return FpFunction.Upper;
      case 'toChars':
        return FpFunction.ToChars;
      case 'indexOf':
        return FpFunction.IndexOf;
      case 'substring':
        return FpFunction.Substring;
      case 'startsWith':
        return FpFunction.StartsWith;
      case 'endsWith':
        return FpFunction.EndsWith;
      case 'matches':
        return FpFunction.Matches;
      case 'matchesFull':
        return FpFunction.MatchesFull;
      case 'replaceMatches':
        return FpFunction.ReplaceMatches;
      case 'contains':
        return FpFunction.Contains;
      case 'replace':
        return FpFunction.Replace;
      case 'length':
        return FpFunction.Length;
      case 'children':
        return FpFunction.Children;
      case 'descendants':
        return FpFunction.Descendants;
      case 'memberOf':
        return FpFunction.MemberOf;
      case 'trace':
        return FpFunction.Trace;
      case 'defineVariable':
        return FpFunction.DefineVariable;
      case 'check':
        return FpFunction.Check;
      case 'today':
        return FpFunction.Today;
      case 'timeOfDay':
        return FpFunction.TimeOfDay;
      case 'now':
        return FpFunction.Now;
      case 'resolve':
        return FpFunction.Resolve;
      case 'extension':
        return FpFunction.Extension;
      case 'allFalse':
        return FpFunction.AllFalse;
      case 'anyFalse':
        return FpFunction.AnyFalse;
      case 'allTrue':
        return FpFunction.AllTrue;
      case 'anyTrue':
        return FpFunction.AnyTrue;
      case 'hasValue':
        return FpFunction.HasValue;
      case 'htmlChecks':
        return FpFunction.HtmlChecks1;
      case 'htmlchecks':
        return FpFunction.HtmlChecks1; // support change of care from R3
      case 'htmlChecks2':
        return FpFunction.HtmlChecks2;
      case 'comparable':
        return FpFunction.Comparable;
      case 'encode':
        return FpFunction.Encode;
      case 'decode':
        return FpFunction.Decode;
      case 'escape':
        return FpFunction.Escape;
      case 'unescape':
        return FpFunction.Unescape;
      case 'trim':
        return FpFunction.Trim;
      case 'split':
        return FpFunction.Split;
      case 'join':
        return FpFunction.Join;
      case 'ofType':
        return FpFunction.OfType;
      case 'type':
        return FpFunction.Type;
      case 'toInteger':
        return FpFunction.ToInteger;
      case 'toDecimal':
        return FpFunction.ToDecimal;
      case 'toString':
        return FpFunction.ToString;
      case 'toQuantity':
        return FpFunction.ToQuantity;
      case 'toBoolean':
        return FpFunction.ToBoolean;
      case 'toDateTime':
        return FpFunction.ToDateTime;
      case 'toDate':
        return FpFunction.ToDate;
      case 'toTime':
        return FpFunction.ToTime;
      case 'convertsToInteger':
        return FpFunction.ConvertsToInteger;
      case 'convertsToDecimal':
        return FpFunction.ConvertsToDecimal;
      case 'convertsToString':
        return FpFunction.ConvertsToString;
      case 'convertsToQuantity':
        return FpFunction.ConvertsToQuantity;
      case 'convertsToBoolean':
        return FpFunction.ConvertsToBoolean;
      case 'convertsToDateTime':
        return FpFunction.ConvertsToDateTime;
      case 'convertsToDate':
        return FpFunction.ConvertsToDate;
      case 'convertsToTime':
        return FpFunction.ConvertsToTime;
      case 'conformsTo':
        return FpFunction.ConformsTo;
      case 'round':
        return FpFunction.Round;
      case 'sqrt':
        return FpFunction.Sqrt;
      case 'abs':
        return FpFunction.Abs;
      case 'ceiling':
        return FpFunction.Ceiling;
      case 'exp':
        return FpFunction.Exp;
      case 'floor':
        return FpFunction.Floor;
      case 'ln':
        return FpFunction.Ln;
      case 'log':
        return FpFunction.Log;
      case 'power':
        return FpFunction.Power;
      case 'sum':
        return FpFunction.Sum;
      case 'truncate':
        return FpFunction.Truncate;
      case 'lowBoundary':
        return FpFunction.LowBoundary;
      case 'highBoundary':
        return FpFunction.HighBoundary;
      case 'precision':
        return FpFunction.Precision;
      default:
        return null;
    }
  }

  String toCode() {
    switch (this) {
      case FpFunction.Item:
        return 'item';
      case FpFunction.Custom:
        return 'custom';
      case FpFunction.Empty:
        return 'empty';
      case FpFunction.Not:
        return 'not';
      case FpFunction.Exists:
        return 'exists';
      case FpFunction.SubsetOf:
        return 'subsetOf';
      case FpFunction.SupersetOf:
        return 'supersetOf';
      case FpFunction.IsDistinct:
        return 'isDistinct';
      case FpFunction.Distinct:
        return 'distinct';
      case FpFunction.Count:
        return 'count';
      case FpFunction.Where:
        return 'where';
      case FpFunction.Select:
        return 'select';
      case FpFunction.All:
        return 'all';
      case FpFunction.Repeat:
        return 'repeat';
      case FpFunction.Aggregate:
        return 'aggregate';
      case FpFunction.As:
        return 'as';
      case FpFunction.Is:
        return 'is';
      case FpFunction.Single:
        return 'single';
      case FpFunction.First:
        return 'first';
      case FpFunction.Last:
        return 'last';
      case FpFunction.Tail:
        return 'tail';
      case FpFunction.Skip:
        return 'skip';
      case FpFunction.Take:
        return 'take';
      case FpFunction.Union:
        return 'union';
      case FpFunction.Combine:
        return 'combine';
      case FpFunction.Intersect:
        return 'intersect';
      case FpFunction.Exclude:
        return 'exclude';
      case FpFunction.Iif:
        return 'iif';
      case FpFunction.Upper:
        return 'upper';
      case FpFunction.Lower:
        return 'lower';
      case FpFunction.ToChars:
        return 'toChars';
      case FpFunction.IndexOf:
        return 'indexOf';
      case FpFunction.Substring:
        return 'substring';
      case FpFunction.StartsWith:
        return 'startsWith';
      case FpFunction.EndsWith:
        return 'endsWith';
      case FpFunction.Matches:
        return 'matches';
      case FpFunction.MatchesFull:
        return 'matchesFull';
      case FpFunction.ReplaceMatches:
        return 'replaceMatches';
      case FpFunction.Contains:
        return 'contains';
      case FpFunction.Replace:
        return 'replace';
      case FpFunction.Length:
        return 'length';
      case FpFunction.Children:
        return 'children';
      case FpFunction.Descendants:
        return 'descendants';
      case FpFunction.MemberOf:
        return 'memberOf';
      case FpFunction.Trace:
        return 'trace';
      case FpFunction.DefineVariable:
        return 'defineVariable';
      case FpFunction.Check:
        return 'check';
      case FpFunction.Today:
        return 'today';
      case FpFunction.TimeOfDay:
        return 'timeOfDay';
      case FpFunction.Now:
        return 'now';
      case FpFunction.Resolve:
        return 'resolve';
      case FpFunction.Extension:
        return 'extension';
      case FpFunction.AllFalse:
        return 'allFalse';
      case FpFunction.AnyFalse:
        return 'anyFalse';
      case FpFunction.AllTrue:
        return 'allTrue';
      case FpFunction.AnyTrue:
        return 'anyTrue';
      case FpFunction.HasValue:
        return 'hasValue';
      case FpFunction.OfType:
        return 'ofType';
      case FpFunction.Type:
        return 'type';
      case FpFunction.ConvertsToBoolean:
        return 'convertsToBoolean';
      case FpFunction.ConvertsToInteger:
        return 'convertsToInteger';
      case FpFunction.ConvertsToString:
        return 'convertsToString';
      case FpFunction.ConvertsToDecimal:
        return 'convertsToDecimal';
      case FpFunction.ConvertsToQuantity:
        return 'convertsToQuantity';
      case FpFunction.ConvertsToDateTime:
        return 'convertsToDateTime';
      case FpFunction.ConvertsToDate:
        return 'convertsToDate';
      case FpFunction.ConvertsToTime:
        return 'convertsToTime';
      case FpFunction.ToBoolean:
        return 'toBoolean';
      case FpFunction.ToInteger:
        return 'toInteger';
      case FpFunction.ToString:
        return 'toString';
      case FpFunction.ToDecimal:
        return 'toDecimal';
      case FpFunction.ToQuantity:
        return 'toQuantity';
      case FpFunction.ToDateTime:
        return 'toDateTime';
      case FpFunction.ToDate:
        return 'toDate';
      case FpFunction.ToTime:
        return 'toTime';
      case FpFunction.ConformsTo:
        return 'conformsTo';
      case FpFunction.Round:
        return 'round';
      case FpFunction.Sqrt:
        return 'sqrt';
      case FpFunction.Abs:
        return 'abs';
      case FpFunction.Ceiling:
        return 'ceiling';
      case FpFunction.Exp:
        return 'exp';
      case FpFunction.Floor:
        return 'floor';
      case FpFunction.Ln:
        return 'ln';
      case FpFunction.Log:
        return 'log';
      case FpFunction.Power:
        return 'power';
      case FpFunction.Sum:
        return 'sum';
      case FpFunction.Truncate:
        return 'truncate';
      case FpFunction.Encode:
        return 'encode';
      case FpFunction.Decode:
        return 'decode';
      case FpFunction.Escape:
        return 'escape';
      case FpFunction.Unescape:
        return 'unescape';
      case FpFunction.Trim:
        return 'trim';
      case FpFunction.Split:
        return 'split';
      case FpFunction.Join:
        return 'join';
      case FpFunction.LowBoundary:
        return 'lowBoundary';
      case FpFunction.HighBoundary:
        return 'highBoundary';
      case FpFunction.Precision:
        return 'precision';
      case FpFunction.HtmlChecks1:
        return 'htmlChecks';
      case FpFunction.HtmlChecks2:
        return 'htmlChecks2';
      case FpFunction.Comparable:
        return 'comparable';
      case FpFunction.HasTemplateIdOf:
        return 'hasTemplateIdOf';
    }
  }
}

enum FpOperation {
  Equals,
  Equivalent,
  NotEquals,
  NotEquivalent,
  LessThan,
  Greater,
  LessOrEqual,
  GreaterOrEqual,
  Is,
  As,
  Union,
  Or,
  And,
  Xor,
  Implies,
  Times,
  DivideBy,
  Plus,
  Minus,
  Concatenate,
  Div,
  Mod,
  In,
  Contains,
  MemberOf;

  static FpOperation? fromCode(String? name) {
    switch (name) {
      case '=':
        return FpOperation.Equals;
      case '~':
        return FpOperation.Equivalent;
      case '!=':
        return FpOperation.NotEquals;
      case '!~':
        return FpOperation.NotEquivalent;
      case '>':
        return FpOperation.Greater;
      case '<':
        return FpOperation.LessThan;
      case '>=':
        return FpOperation.GreaterOrEqual;
      case '<=':
        return FpOperation.LessOrEqual;
      case '|':
        return FpOperation.Union;
      case 'or':
        return FpOperation.Or;
      case 'and':
        return FpOperation.And;
      case 'xor':
        return FpOperation.Xor;
      case 'is':
        return FpOperation.Is;
      case 'as':
        return FpOperation.As;
      case '*':
        return FpOperation.Times;
      case '/':
        return FpOperation.DivideBy;
      case '+':
        return FpOperation.Plus;
      case '-':
        return FpOperation.Minus;
      case '&':
        return FpOperation.Concatenate;
      case 'implies':
        return FpOperation.Implies;
      case 'div':
        return FpOperation.Div;
      case 'mod':
        return FpOperation.Mod;
      case 'in':
        return FpOperation.In;
      case 'contains':
        return FpOperation.Contains;
      case 'memberOf':
        return FpOperation.MemberOf;
      default:
        return null;
    }
  }

  String toCode() {
    switch (this) {
      case FpOperation.Equals:
        return '=';
      case FpOperation.Equivalent:
        return '~';
      case FpOperation.NotEquals:
        return '!=';
      case FpOperation.NotEquivalent:
        return '!~';
      case FpOperation.Greater:
        return '>';
      case FpOperation.LessThan:
        return '<';
      case FpOperation.GreaterOrEqual:
        return '>=';
      case FpOperation.LessOrEqual:
        return '<=';
      case FpOperation.Union:
        return '|';
      case FpOperation.Or:
        return 'or';
      case FpOperation.And:
        return 'and';
      case FpOperation.Xor:
        return 'xor';
      case FpOperation.Times:
        return '*';
      case FpOperation.DivideBy:
        return '/';
      case FpOperation.Plus:
        return '+';
      case FpOperation.Minus:
        return '-';
      case FpOperation.Concatenate:
        return '&';
      case FpOperation.Implies:
        return 'implies';
      case FpOperation.Is:
        return 'is';
      case FpOperation.As:
        return 'as';
      case FpOperation.Div:
        return 'div';
      case FpOperation.Mod:
        return 'mod';
      case FpOperation.In:
        return 'in';
      case FpOperation.Contains:
        return 'contains';
      case FpOperation.MemberOf:
        return 'memberOf';
    }
  }
}

enum CollectionStatus {
  singleton,
  ordered,
  unordered;

  bool isList() =>
      this == CollectionStatus.ordered || this == CollectionStatus.unordered;
}
