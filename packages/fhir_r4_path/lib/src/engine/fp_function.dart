// ignore_for_file: public_member_api_docs, constant_identifier_names,
// ignore_for_file: lines_longer_than_80_chars

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
  IsBoolean,
  ConvertsToInteger,
  IsInteger,
  ConvertsToString,
  IsString,
  ConvertsToDecimal,
  IsDecimal,
  ConvertsToQuantity,
  IsQuantity,
  ConvertsToDateTime,
  IsDateTime,
  ConvertsToDate,
  IsDate,
  ConvertsToTime,
  IsTime,
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
      case 'isInteger':
        return FpFunction.IsInteger;
      case 'convertsToInteger':
        return FpFunction.ConvertsToInteger;
      case 'isDecimal':
        return FpFunction.IsDecimal;
      case 'convertsToDecimal':
        return FpFunction.ConvertsToDecimal;
      case 'isString':
        return FpFunction.IsString;
      case 'convertsToString':
        return FpFunction.ConvertsToString;
      case 'isQuantity':
        return FpFunction.IsQuantity;
      case 'convertsToQuantity':
        return FpFunction.ConvertsToQuantity;
      case 'isBoolean':
        return FpFunction.IsBoolean;
      case 'convertsToBoolean':
        return FpFunction.ConvertsToBoolean;
      case 'isDateTime':
        return FpFunction.IsDateTime;
      case 'convertsToDateTime':
        return FpFunction.ConvertsToDateTime;
      case 'isDate':
        return FpFunction.IsDate;
      case 'convertsToDate':
        return FpFunction.ConvertsToDate;
      case 'isTime':
        return FpFunction.IsTime;
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
      case FpFunction.IsBoolean:
        return 'isBoolean';
      case FpFunction.ConvertsToBoolean:
        return 'convertsToBoolean';
      case FpFunction.IsInteger:
        return 'isInteger';
      case FpFunction.ConvertsToInteger:
        return 'convertsToInteger';
      case FpFunction.IsString:
        return 'isString';
      case FpFunction.ConvertsToString:
        return 'convertsToString';
      case FpFunction.IsDecimal:
        return 'isDecimal';
      case FpFunction.ConvertsToDecimal:
        return 'convertsToDecimal';
      case FpFunction.IsQuantity:
        return 'isQuantity';
      case FpFunction.ConvertsToQuantity:
        return 'convertsToQuantity';
      case FpFunction.IsDateTime:
        return 'isDateTime';
      case FpFunction.ConvertsToDateTime:
        return 'convertsToDateTime';
      case FpFunction.IsDate:
        return 'isDate';
      case FpFunction.ConvertsToDate:
        return 'convertsToDate';
      case FpFunction.IsTime:
        return 'isTime';
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

