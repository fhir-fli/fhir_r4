// ignore_for_file: public_member_api_docs, constant_identifier_names,
// ignore_for_file: lines_longer_than_80_chars

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

