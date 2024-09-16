// Package imports:
import 'package:petitparser/petitparser.dart';

// Project imports:
import '../../../fhir_r4.dart';

/// Lexers for identifying special items
final ChoiceParser<dynamic> specialLexer = bracketsIndexLexer |
    indexLexer |
    thisLexer |
    totalLexer |
    emptySetLexer |
    dotLexer;

/// Lexers for identifying key words
final ChoiceParser<dynamic> wordOperationLexer = impliesLexer |
    orStringLexer |
    xorLexer |
    andStringLexer |
    containsOperatorLexer |
    inLexer |
    asLexer |
    isLexer |
    modLexer |
    divStringLexer;

/// Lexers for identifying key symbols
final ChoiceParser<dynamic> symbolOperationLexer = notEquivalentLexer |
    notEqualsLexer |
    equivalentLexer |
    equalsLexer |
    lessEqualLexer |
    greaterEqualLexer |
    lessLexer |
    greaterLexer |
    unionOperatorLexer |
    stringConcatenationLexer |
    minusLexer |
    plusLexer |
    divSignLexer |
    starLexer |
    commaLexer;

/// All lexers for functions that accept arguments
final ChoiceParser<dynamic> functionLexer = unionFunctionLexer |
    combineLexer |
    toQuantityLexer |
    convertsToQuantityLexer |
    existsLexer |
    allLexer |
    subsetOfLexer |
    supersetOfLexer |
    whereLexer |
    selectLexer |
    repeatLexer |
    ofTypeLexer |
    extensionLexer |
    logLexer |
    powerLexer |
    roundLexer |
    indexOfLexer |
    substringLexer |
    startsWithLexer |
    endsWithLexer |
    containsFunctionLexer |
    replaceLexer |
    matchesLexer |
    replaceMatchesLexer |
    skipLexer |
    takeLexer |
    intersectLexer |
    excludeLexer |
    traceLexer |
    aggregateLexer |
    iifLexer |
    deprecatedLexer;

/// Lexer for all types of white space
final ChoiceParser<dynamic> wsLexer = WS | COMMENT | LINE_COMMENT;

/// Lexers identifying special formatting of certain types of data
final ChoiceParser<dynamic> literalLexer = quantityLiteral |
    STRING |
    envVariableLexer |
    DELIMITEDIDENTIFIER |
    DOUBLEQUOTEDIDENTIFIER |
    booleanLiteral |
    IDENTIFIER |
    NUMBER |
    DATETIME |
    DATE |
    TIME;

/// All lexers for functions that don't accept arguments
final ChoiceParser<dynamic> simpleLexer = htmlCheckerLexer |
    toBooleanLexer |
    convertsToBooleanLexer |
    toIntegerLexer |
    convertsToIntegerLexer |
    toDateLexer |
    convertsToDateLexer |
    toDateTimeLexer |
    convertsToDateTimeLexer |
    toDecimalLexer |
    convertsToDecimalLexer |
    toStringLexer |
    convertsToStringLexer |
    toTimeLexer |
    convertsToTimeLexer |
    emptyLexer |
    notLexer |
    hasValueLexer |
    allTrueLexer |
    anyTrueLexer |
    allFalseLexer |
    anyFalseLexer |
    countLexer |
    distinctLexer |
    isDistinctLexer |
    absLexer |
    ceilingLexer |
    expLexer |
    floorLexer |
    lnLexer |
    sqrtLexer |
    truncateLexer |
    upperLexer |
    lowerLexer |
    lengthLexer |
    toCharsLexer |
    singleLexer |
    firstLexer |
    lastLexer |
    tailLexer |
    childrenLexer |
    descendantsLexer |
    nowLexer |
    timeOfDayLexer |
    todayLexer |
    sumLexer |
    minLexer |
    maxLexer |
    avgLexer |
    answersLexer |
    ordinalLexer |
    isIntegerLexer;

/// Deprecated - these Lexers will throw errors, but this allows us
/// to provide more useful error messages
final ChoiceParser<dynamic> deprecatedLexer = asFunctionLexer | isFunctionLexer;
