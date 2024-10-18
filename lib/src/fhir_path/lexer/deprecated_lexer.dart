import 'package:fhir_r4/fhir_r4.dart';
import 'package:petitparser/petitparser.dart';

/// These lexers help identify parts of an expression that are no longer
/// supported. When the expression is applied to an object, it will throw
/// an error, but this allows us to give more helpful and specific error
/// messages (also, on the off chance an old system needs to actually
/// allow these, it makes it )

final Parser<AsFunctionParser> asFunctionLexer =
    (string('as(') | string('.as(')).map((_) => AsFunctionParser.empty());

/// identifies as
final Parser<IsFunctionParser> isFunctionLexer =
    (string('as(') | string('.as(')).map((_) => IsFunctionParser.empty());

/// identifies isInteger
final Parser<IsIntegerParser> isIntegerLexer =
    (string('isInteger()') | string('.isInteger()'))
        .map((_) => IsIntegerParser());
