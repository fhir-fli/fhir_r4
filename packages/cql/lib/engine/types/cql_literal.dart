import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../../cql.dart';

abstract class LiteralType extends CqlExpression {
  LiteralType({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  @override
  String get type;
  String get valueType => '{urn:hl7-org:elm-types:r1}$type';

  static String? typeToLiteral(String type) {
    switch (type) {
      case 'FhirBoolean':
        return 'LiteralBoolean';
      case 'FhirDate':
        return 'LiteralDate';
      case 'FhirDateTime':
        return 'LiteralDateTime';
      case 'FhirDecimal':
        return 'LiteralDecimal';
      case 'FhirInteger':
        return 'LiteralInteger';
      case 'FhirInteger64':
        return 'LiteralLong';
      case 'String':
        return 'LiteralString';
      case 'FhirTime':
        return 'LiteralTime';
      case 'ValidatedQuantity':
        return 'LiteralQuantity';
      case 'ValidatedRatio':
        return 'LiteralRatio';
      case 'Null':
        return 'LiteralNull';
      default:
        return null;
    }
  }

  static List<String> get literalTypes => [
        'LiteralBoolean',
        'LiteralDate',
        'LiteralDateTime',
        'LiteralDecimal',
        'LiteralInteger',
        'LiteralLong',
        'LiteralString',
        'LiteralTime',
        'LiteralQuantity',
        'LiteralRatio',
        'LiteralNull',
      ];
}

class LiteralNull extends LiteralType {
  LiteralNull({super.resultTypeName});

  factory LiteralNull.fromJson(dynamic json) =>
      LiteralNull(resultTypeName: json['resultTypeName']);

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    json['type'] = type;
    return json;
  }

  @override
  Future<String?> execute(Map<String, dynamic> context) async => null;

  @override
  String toString() => 'LiteralNull';

  @override
  String get type => 'Null';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Null'];
}

class LiteralBoolean extends LiteralType {
  final bool value;

  LiteralBoolean(this.value);

  factory LiteralBoolean.fromJson(dynamic json) {
    if (json is bool) {
      return LiteralBoolean(json);
    } else if (json is Map<String, dynamic>) {
      return LiteralBoolean(json['value']);
    } else if (json is String && (json == 'true' || json == 'false')) {
      return LiteralBoolean(json == 'true');
    }
    throw ArgumentError('LiteralBoolean: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  Future<FhirBoolean> execute(Map<String, dynamic> context) async =>
      FhirBoolean(value);

  @override
  String get type => 'Boolean';

  @override
  String toString() => 'LiteralBoolean: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirBoolean'];
}

class LiteralCode extends LiteralType {
  final String code;
  final String? display;
  final String? system;
  final String? version;

  LiteralCode(
    this.code, {
    this.display,
    this.system,
    this.version,
  });

  factory LiteralCode.fromJson(Map<String, dynamic> json) {
    return LiteralCode(
      json['code'],
      display: json['display'],
      system: json['system'],
      version: json['version'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      if (display != null) 'display': display,
      if (system != null) 'system': system,
      if (version != null) 'version': version,
    };
  }

  @override
  String get type => 'Code';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlCode'];

  @override
  Future<CqlCode> execute(Map<String, dynamic> context) async => CqlCode(
        code: code,
        display: display,
        // system: system,
        version: version,
      );
}

class LiteralConcept extends LiteralType {
  final List<LiteralCode> codes;
  final String? display;

  LiteralConcept(
    this.codes, {
    this.display,
  });

  factory LiteralConcept.fromJson(Map<String, dynamic> json) {
    return LiteralConcept(
      (json['codes'] as List)
          .map((code) => LiteralCode.fromJson(code))
          .toList(),
      display: json['display'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'codes': codes.map((code) => code.toJson()).toList(),
      if (display != null) 'display': display,
    };
  }

  @override
  String get type => 'Concept';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlConcept'];

  @override
  Future<CqlConcept> execute(Map<String, dynamic> context) async {
    final codesList = <CqlCode>[];
    for (final code in codes) {
      final codeResult = await code.execute(context);
      codesList.add(codeResult);
    }
    return CqlConcept(display: display, codes: codesList);
  }
}

abstract class LiteralVocabularyType extends LiteralType {
  final String id;
  final String? version;
  final String? name;

  LiteralVocabularyType(
    this.id, {
    this.version,
    this.name,
  });

  factory LiteralVocabularyType.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('codesystem')) {
      return LiteralValueSet.fromJson(json);
    } else {
      return LiteralCodeSystem.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson();
}

class LiteralValueSet extends LiteralVocabularyType {
  final List<LiteralCodeSystem>? codesystem;

  LiteralValueSet(
    super.id, {
    super.version,
    super.name,
    this.codesystem,
  });

  factory LiteralValueSet.fromJson(Map<String, dynamic> json) {
    return LiteralValueSet(
      json['id'],
      version: json['version'],
      name: json['name'],
      codesystem: (json['codesystem'] as List?)
          ?.map((cs) => LiteralCodeSystem.fromJson(cs))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'id': id};
    if (version != null) {
      json['version'] = version;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (codesystem != null) {
      json['codesystem'] = codesystem!.map((cs) => cs.toJson()).toList();
    }
    return json;
  }

  @override
  String get type => 'ValueSet';
}

class LiteralCodeSystem extends LiteralVocabularyType {
  LiteralCodeSystem(
    super.id, {
    super.version,
    super.name,
  });

  factory LiteralCodeSystem.fromJson(Map<String, dynamic> json) {
    return LiteralCodeSystem(
      json['id'],
      version: json['version'],
      name: json['name'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'id': id};
    if (version != null) {
      json['version'] = version;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  @override
  String get type => 'CodeSystem';
}

class LiteralDate extends LiteralType {
  final String value;

  LiteralDate(this.value);

  factory LiteralDate.fromJson(dynamic json) {
    if (json is String) {
      return LiteralDate(json);
    } else if (json is Map<String, dynamic> &&
        DateTime.tryParse(json['value']) != null) {
      return LiteralDate(json['value']);
    }
    throw ArgumentError('LiteralDate: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() {
    final date = FhirDate.fromString(value);
    return {
      'type': type,
      if (date.hasYear) 'year': LiteralInteger(date.year!).toJson(),
      if (date.hasMonth) 'month': LiteralInteger(date.month!).toJson(),
      if (date.hasDay) 'day': LiteralInteger(date.day!).toJson(),
    };
  }

  @override
  Future<FhirDate> execute(Map<String, dynamic> context) async =>
      FhirDate.fromString(value);

  @override
  String get type => 'Date';

  @override
  String toString() => 'LiteralDate: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirDate'];
}

class LiteralDateTime extends LiteralType {
  final String value;

  LiteralDateTime(this.value);

  factory LiteralDateTime.fromJson(dynamic json) {
    if (json is String) {
      return LiteralDateTime(json);
    } else if (json is Map<String, dynamic> &&
        DateTime.tryParse(json['value']) != null) {
      return LiteralDateTime(json['value']);
    }
    throw ArgumentError('LiteralDateTime: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() {
    final dateTime = FhirDateTime.fromString(value);
    return {
      'type': type,
      'year': LiteralInteger(dateTime.year!).toJson(),
      if (dateTime.hasMonth) 'month': LiteralInteger(dateTime.month!).toJson(),
      if (dateTime.hasDay) 'day': LiteralInteger(dateTime.day!).toJson(),
      if (dateTime.hasHours) 'hour': LiteralInteger(dateTime.hour!).toJson(),
      if (dateTime.hasMinutes)
        'minute': LiteralInteger(dateTime.minute!).toJson(),
      if (dateTime.hasSeconds)
        'second': LiteralInteger(dateTime.second!).toJson(),
      if (dateTime.hasMilliseconds)
        'millisecond': LiteralInteger(dateTime.millisecond!).toJson(),
    };
  }

  @override
  String get type => 'DateTime';

  @override
  String toString() => 'LiteralDateTime: $value';

  @override
  Future<FhirDateTime> execute(Map<String, dynamic> context) async =>
      FhirDateTime.fromString(value);

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirDateTime'];
}

class LiteralDecimal extends LiteralType {
  // TODO(Dokotela): in order to properly match decimal places
  final num value;
  final int? sigFigs;

  LiteralDecimal(this.value, {this.sigFigs});

  factory LiteralDecimal.fromString(String stringValue) {
    if (num.tryParse(stringValue) != null) {
      /// Remove any leading and trailing whitespaces
      String number = stringValue.trim();

      /// Check if the number includes a decimal point
      bool isDecimal = number.contains('.');

      /// Remove leading zeros, they are not significant
      number = number.replaceFirst(RegExp(r'^0+'), '');

      /// If the number is in decimal form, remove the decimal point for simplicity
      if (isDecimal) {
        number = number.replaceAll('.', '');
      }

      /// For a non-decimal number, trailing zeros are not significant
      if (!isDecimal) {
        number = number.replaceFirst(RegExp(r'0+$'), '');
      }

      // At this point, all remaining digits are significant
      return LiteralDecimal(num.parse(stringValue), sigFigs: number.length);
    }
    throw 'Incorrectly formed String for type LiteralDecimal: $stringValue';
  }

  factory LiteralDecimal.fromJson(dynamic json) {
    if (json is num) {
      return LiteralDecimal(json.toDouble());
    } else if (json is String && num.tryParse(json) != null) {
      return LiteralDecimal(num.parse(json));
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralDecimal((json['value'] as num).toDouble());
      } else if (json['value'] is String &&
          num.tryParse(json['value']) != null) {
        return LiteralDecimal(num.parse(json['value']));
      }
    }
    throw ArgumentError('LiteralDecimal: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': sigFigs == null
            ? value.toString()
            : value.toStringAsPrecision(sigFigs!),
        'type': 'Literal',
      };

  @override
  Future<FhirDecimal> execute(Map<String, dynamic> context) async =>
      FhirDecimal(value);

  @override
  String get type => 'Decimal';

  @override
  String toString() => 'LiteralDecimal: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirDecimal'];
}

class LiteralInteger extends LiteralType {
  final int value;

  LiteralInteger(this.value);

  factory LiteralInteger.fromJson(dynamic json) {
    if (json is num) {
      return LiteralInteger(json.toInt());
    } else if (json is String && int.tryParse(json) != null) {
      return LiteralInteger(int.parse(json));
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralInteger((json['value'] as num).toInt());
      } else if (json['value'] is String &&
          int.tryParse(json['value']) != null) {
        return LiteralInteger(int.parse(json['value']));
      }
    }
    throw ArgumentError('LiteralInteger: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  Future<FhirInteger> execute(Map<String, dynamic> context) async =>
      FhirInteger(value);

  @override
  String get type => 'Integer';

  @override
  String toString() => 'LiteralInteger: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirInteger'];
}

class LiteralLong extends LiteralType {
  final BigInt value;

  LiteralLong(this.value);

  factory LiteralLong.fromJson(dynamic json) {
    if (json is num) {
      return LiteralLong(BigInt.from(json));
    } else if (json is String && BigInt.tryParse(json) != null) {
      return LiteralLong(BigInt.parse(json));
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralLong(BigInt.from(json['value'] as num));
      } else if (json['value'] is String &&
          BigInt.tryParse(json['value']) != null) {
        return LiteralLong(BigInt.parse(json['value']));
      }
    }
    throw ArgumentError('LiteralLong: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  Future<FhirInteger64> execute(Map<String, dynamic> context) async =>
      FhirInteger64(value);

  @override
  String get type => 'Long';

  @override
  String toString() => 'LiteralLong: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirInteger64'];
}

class LiteralQuantity extends LiteralType {
  final LiteralDecimal value;
  final String? unit;

  LiteralQuantity(this.value, {this.unit});

  factory LiteralQuantity.fromJson(Map<String, dynamic> json) {
    return LiteralQuantity(
      LiteralDecimal.fromJson(json['value']),
      unit: json['unit'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': value.value,
      if (unit != null) 'unit': unit,
      'type': type,
    };
  }

  @override
  Future<ValidatedQuantity> execute(Map<String, dynamic> context) async {
    return ValidatedQuantity(
      value: UcumDecimal.fromString(value.value.toString()),
      unit: unit,
    );
  }

  @override
  String get type => 'Quantity';

  @override
  String toString() => 'LiteralQuantity: ${value.value} $unit';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['ValidatedQuantity'];
}

class LiteralRatio extends LiteralType {
  final LiteralQuantity numerator;
  final LiteralQuantity denominator;

  LiteralRatio(this.numerator, this.denominator);

  factory LiteralRatio.fromJson(Map<String, dynamic> json) {
    return LiteralRatio(
      LiteralQuantity.fromJson(json['numerator']),
      LiteralQuantity.fromJson(json['denominator']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'numerator': numerator.toJson(),
      'denominator': denominator.toJson(),
    };
  }

  @override
  String get type => 'Ratio';
}

class LiteralString extends LiteralType {
  final String value;

  LiteralString(String value)
      : value = value
            .replaceAll(r'\n', '\n')
            .replaceAll(r'\t', '\t')
            .replaceAll(r'\b', '\b')
            .replaceAll(r'\r', '\r')
            .replaceAll(r'\\', '\\')
            .replaceAll(r"\'", "'")
            .replaceAll(r'\"', '"');

  factory LiteralString.fromJson(dynamic json) {
    if (json is String) {
      return LiteralString(json);
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is String) {
        return LiteralString(json['value']);
      }
    }
    throw ArgumentError('LiteralString: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value,
        'type': 'Literal',
      };

  @override
  Future<String> execute(Map<String, dynamic> context) async => value;

  @override
  String get type => 'String';

  @override
  String toString() => 'LiteralString: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];
}

class LiteralTime extends LiteralType {
  final String value;

  LiteralTime(String value)
      : value = value.replaceFirst('@', '').replaceFirst('T', '');

  factory LiteralTime.fromOperandList({required List<CqlExpression> operand}) {
    String value = '';
    if (operand.isNotEmpty) {
      value = (operand[0] as LiteralInteger).value.toString();
      if (operand.length > 1) {
        value += ':${(operand[1] as LiteralInteger).value.toString()}';
        if (operand.length > 2) {
          value += ':${(operand[2] as LiteralInteger).value.toString()}';
          if (operand.length > 3) {
            value += '.${(operand[3] as LiteralInteger).value.toString()}';
          }
        }
      }
    }
    return LiteralTime(value);
  }

  factory LiteralTime.fromJson(dynamic json) {
    if (json is String && FhirTime.tryParse(json) != null) {
      return LiteralTime(
        json,
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is String && FhirTime.tryParse(json['value']) != null) {
        return LiteralTime(
          json['value'],
        );
      }
    }
    throw ArgumentError('LiteralTime: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() {
    final date = FhirTime(value);
    final json = <String, dynamic>{'type': type};
    if (date.hour != null) {
      json['hour'] = LiteralInteger(date.hour!).toJson();
      if (date.minute != null) {
        json['minute'] = LiteralInteger(date.minute!).toJson();
        if (date.second != null) {
          json['second'] = LiteralInteger(date.second!).toJson();
          if (date.millisecond != null) {
            json['millisecond'] = LiteralInteger(date.millisecond!).toJson();
          }
        }
      }
    }
    return json;
  }

  @override
  String get type => 'Time';

  @override
  Future<FhirTime> execute(Map<String, dynamic> context) async =>
      FhirTime(value);

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirTime'];
}

abstract class LiteralCqlInterval extends LiteralType {
  final LiteralBoolean? lowClosed;
  final LiteralBoolean? highClosed;

  LiteralCqlInterval({this.lowClosed, this.highClosed});

  factory LiteralCqlInterval.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('low')) {
      return LiteralIntegerInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralDecimalInterval.fromJson(json);
    } else if (json.containsKey('low')) {
      return LiteralQuantityInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralDateInterval.fromJson(json);
    } else if (json.containsKey('low')) {
      return LiteralDateTimeInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralTimeInterval.fromJson(json);
    } else {
      throw ArgumentError('Invalid interval type');
    }
  }

  @override
  Map<String, dynamic> toJson();
}

class LiteralIntegerInterval extends LiteralCqlInterval {
  final LiteralInteger? low;
  final LiteralInteger? high;

  LiteralIntegerInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralIntegerInterval.fromJson(Map<String, dynamic> json) {
    return LiteralIntegerInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralInteger.fromJson(json['low']),
      high: LiteralInteger.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Integer>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlInterval'];

  @override
  Future<CqlInterval?> execute(Map<String, dynamic> context) async =>
      CqlInterval<FhirInteger>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

class LiteralDecimalInterval extends LiteralCqlInterval {
  final LiteralDecimal? low;
  final LiteralDecimal? high;

  LiteralDecimalInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDecimalInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDecimalInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDecimal.fromJson(json['low']),
      high: LiteralDecimal.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Decimal>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlInterval'];

  @override
  Future<CqlInterval?> execute(Map<String, dynamic> context) async =>
      CqlInterval<FhirDecimal>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

class LiteralQuantityInterval extends LiteralCqlInterval {
  final LiteralQuantity? low;
  final LiteralQuantity? high;

  LiteralQuantityInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralQuantityInterval.fromJson(Map<String, dynamic> json) {
    return LiteralQuantityInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralQuantity.fromJson(json['low']),
      high: LiteralQuantity.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Quantity>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlInterval'];

  @override
  Future<CqlInterval?> execute(Map<String, dynamic> context) async =>
      CqlInterval<ValidatedQuantity>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

class LiteralDateInterval extends LiteralCqlInterval {
  final LiteralDate? low;
  final LiteralDate? high;

  LiteralDateInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDateInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDateInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDate.fromJson(json['low']),
      high: LiteralDate.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Date>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlInterval'];

  @override
  Future<CqlInterval?> execute(Map<String, dynamic> context) async =>
      CqlInterval<FhirDate>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

class LiteralDateTimeInterval extends LiteralCqlInterval {
  final LiteralDateTime? low;
  final LiteralDateTime? high;

  LiteralDateTimeInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDateTimeInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDateTimeInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDateTime.fromJson(json['low']),
      high: LiteralDateTime.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<DateTime>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlInterval'];

  @override
  Future<CqlInterval?> execute(Map<String, dynamic> context) async =>
      CqlInterval<FhirDateTime>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

class LiteralTimeInterval extends LiteralCqlInterval {
  final LiteralTime? low;
  final LiteralTime? high;

  LiteralTimeInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralTimeInterval.fromJson(Map<String, dynamic> json) {
    return LiteralTimeInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralTime.fromJson(json['low']),
      high: LiteralTime.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Time>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['CqlInterval'];

  @override
  Future<CqlInterval?> execute(Map<String, dynamic> context) async =>
      CqlInterval<FhirTime>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}
