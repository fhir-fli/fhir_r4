// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: non_constant_identifier_names, avoid_renaming_method_parameters
// ignore_for_file: prefer_function_declarations_over_variables
import 'package:antlr4/antlr4.dart';

import '../visitor/cql_visitor.dart';
import '../visitor/cql_base_visitor.dart';

const int RULE_library = 0,
    RULE_definition = 1,
    RULE_libraryDefinition = 2,
    RULE_usingDefinition = 3,
    RULE_includeDefinition = 4,
    RULE_localIdentifier = 5,
    RULE_accessModifier = 6,
    RULE_parameterDefinition = 7,
    RULE_codesystemDefinition = 8,
    RULE_valuesetDefinition = 9,
    RULE_codesystems = 10,
    RULE_codesystemIdentifier = 11,
    RULE_libraryIdentifier = 12,
    RULE_codeDefinition = 13,
    RULE_conceptDefinition = 14,
    RULE_codeIdentifier = 15,
    RULE_codesystemId = 16,
    RULE_valuesetId = 17,
    RULE_versionSpecifier = 18,
    RULE_codeId = 19,
    RULE_typeSpecifier = 20,
    RULE_namedTypeSpecifier = 21,
    RULE_modelIdentifier = 22,
    RULE_listTypeSpecifier = 23,
    RULE_intervalTypeSpecifier = 24,
    RULE_tupleTypeSpecifier = 25,
    RULE_tupleElementDefinition = 26,
    RULE_choiceTypeSpecifier = 27,
    RULE_statement = 28,
    RULE_expressionDefinition = 29,
    RULE_contextDefinition = 30,
    RULE_functionDefinition = 31,
    RULE_operandDefinition = 32,
    RULE_functionBody = 33,
    RULE_querySource = 34,
    RULE_aliasedQuerySource = 35,
    RULE_alias = 36,
    RULE_queryInclusionClause = 37,
    RULE_withClause = 38,
    RULE_withoutClause = 39,
    RULE_retrieve = 40,
    RULE_contextIdentifier = 41,
    RULE_codePath = 42,
    RULE_codeComparator = 43,
    RULE_terminology = 44,
    RULE_qualifier = 45,
    RULE_query = 46,
    RULE_sourceClause = 47,
    RULE_letClause = 48,
    RULE_letClauseItem = 49,
    RULE_whereClause = 50,
    RULE_returnClause = 51,
    RULE_aggregateClause = 52,
    RULE_startingClause = 53,
    RULE_sortClause = 54,
    RULE_sortDirection = 55,
    RULE_sortByItem = 56,
    RULE_qualifiedIdentifier = 57,
    RULE_qualifiedIdentifierExpression = 58,
    RULE_qualifierExpression = 59,
    RULE_simplePath = 60,
    RULE_simpleLiteral = 61,
    RULE_expression = 62,
    RULE_dateTimePrecision = 63,
    RULE_dateTimeComponent = 64,
    RULE_pluralDateTimePrecision = 65,
    RULE_expressionTerm = 66,
    RULE_caseExpressionItem = 67,
    RULE_dateTimePrecisionSpecifier = 68,
    RULE_relativeQualifier = 69,
    RULE_offsetRelativeQualifier = 70,
    RULE_exclusiveRelativeQualifier = 71,
    RULE_quantityOffset = 72,
    RULE_temporalRelationship = 73,
    RULE_intervalOperatorPhrase = 74,
    RULE_term = 75,
    RULE_qualifiedInvocation = 76,
    RULE_qualifiedFunction = 77,
    RULE_invocation = 78,
    RULE_function = 79,
    RULE_ratio = 80,
    RULE_literal = 81,
    RULE_intervalSelector = 82,
    RULE_tupleSelector = 83,
    RULE_tupleElementSelector = 84,
    RULE_instanceSelector = 85,
    RULE_instanceElementSelector = 86,
    RULE_listSelector = 87,
    RULE_displayClause = 88,
    RULE_codeSelector = 89,
    RULE_conceptSelector = 90,
    RULE_keyword = 91,
    RULE_reservedWord = 92,
    RULE_keywordIdentifier = 93,
    RULE_obsoleteIdentifier = 94,
    RULE_functionIdentifier = 95,
    RULE_typeNameIdentifier = 96,
    RULE_referentialIdentifier = 97,
    RULE_referentialOrTypeNameIdentifier = 98,
    RULE_identifierOrFunctionIdentifier = 99,
    RULE_identifier = 100,
    RULE_externalConstant = 101,
    RULE_paramList = 102,
    RULE_quantity = 103,
    RULE_unit = 104;

class cqlParser extends Parser {
  static const int TOKEN_EOF = IntStream.EOF;
  static const int TOKEN_T__0 = 1,
      TOKEN_T__1 = 2,
      TOKEN_T__2 = 3,
      TOKEN_T__3 = 4,
      TOKEN_T__4 = 5,
      TOKEN_T__5 = 6,
      TOKEN_T__6 = 7,
      TOKEN_T__7 = 8,
      TOKEN_T__8 = 9,
      TOKEN_T__9 = 10,
      TOKEN_T__10 = 11,
      TOKEN_T__11 = 12,
      TOKEN_T__12 = 13,
      TOKEN_T__13 = 14,
      TOKEN_T__14 = 15,
      TOKEN_T__15 = 16,
      TOKEN_T__16 = 17,
      TOKEN_T__17 = 18,
      TOKEN_T__18 = 19,
      TOKEN_T__19 = 20,
      TOKEN_T__20 = 21,
      TOKEN_T__21 = 22,
      TOKEN_T__22 = 23,
      TOKEN_T__23 = 24,
      TOKEN_T__24 = 25,
      TOKEN_T__25 = 26,
      TOKEN_T__26 = 27,
      TOKEN_T__27 = 28,
      TOKEN_T__28 = 29,
      TOKEN_T__29 = 30,
      TOKEN_T__30 = 31,
      TOKEN_T__31 = 32,
      TOKEN_T__32 = 33,
      TOKEN_T__33 = 34,
      TOKEN_T__34 = 35,
      TOKEN_T__35 = 36,
      TOKEN_T__36 = 37,
      TOKEN_T__37 = 38,
      TOKEN_T__38 = 39,
      TOKEN_T__39 = 40,
      TOKEN_T__40 = 41,
      TOKEN_T__41 = 42,
      TOKEN_T__42 = 43,
      TOKEN_T__43 = 44,
      TOKEN_T__44 = 45,
      TOKEN_T__45 = 46,
      TOKEN_T__46 = 47,
      TOKEN_T__47 = 48,
      TOKEN_T__48 = 49,
      TOKEN_T__49 = 50,
      TOKEN_T__50 = 51,
      TOKEN_T__51 = 52,
      TOKEN_T__52 = 53,
      TOKEN_T__53 = 54,
      TOKEN_T__54 = 55,
      TOKEN_T__55 = 56,
      TOKEN_T__56 = 57,
      TOKEN_T__57 = 58,
      TOKEN_T__58 = 59,
      TOKEN_T__59 = 60,
      TOKEN_T__60 = 61,
      TOKEN_T__61 = 62,
      TOKEN_T__62 = 63,
      TOKEN_T__63 = 64,
      TOKEN_T__64 = 65,
      TOKEN_T__65 = 66,
      TOKEN_T__66 = 67,
      TOKEN_T__67 = 68,
      TOKEN_T__68 = 69,
      TOKEN_T__69 = 70,
      TOKEN_T__70 = 71,
      TOKEN_T__71 = 72,
      TOKEN_T__72 = 73,
      TOKEN_T__73 = 74,
      TOKEN_T__74 = 75,
      TOKEN_T__75 = 76,
      TOKEN_T__76 = 77,
      TOKEN_T__77 = 78,
      TOKEN_T__78 = 79,
      TOKEN_T__79 = 80,
      TOKEN_T__80 = 81,
      TOKEN_T__81 = 82,
      TOKEN_T__82 = 83,
      TOKEN_T__83 = 84,
      TOKEN_T__84 = 85,
      TOKEN_T__85 = 86,
      TOKEN_T__86 = 87,
      TOKEN_T__87 = 88,
      TOKEN_T__88 = 89,
      TOKEN_T__89 = 90,
      TOKEN_T__90 = 91,
      TOKEN_T__91 = 92,
      TOKEN_T__92 = 93,
      TOKEN_T__93 = 94,
      TOKEN_T__94 = 95,
      TOKEN_T__95 = 96,
      TOKEN_T__96 = 97,
      TOKEN_T__97 = 98,
      TOKEN_T__98 = 99,
      TOKEN_T__99 = 100,
      TOKEN_T__100 = 101,
      TOKEN_T__101 = 102,
      TOKEN_T__102 = 103,
      TOKEN_T__103 = 104,
      TOKEN_T__104 = 105,
      TOKEN_T__105 = 106,
      TOKEN_T__106 = 107,
      TOKEN_T__107 = 108,
      TOKEN_T__108 = 109,
      TOKEN_T__109 = 110,
      TOKEN_T__110 = 111,
      TOKEN_T__111 = 112,
      TOKEN_T__112 = 113,
      TOKEN_T__113 = 114,
      TOKEN_T__114 = 115,
      TOKEN_T__115 = 116,
      TOKEN_T__116 = 117,
      TOKEN_T__117 = 118,
      TOKEN_T__118 = 119,
      TOKEN_T__119 = 120,
      TOKEN_T__120 = 121,
      TOKEN_T__121 = 122,
      TOKEN_T__122 = 123,
      TOKEN_T__123 = 124,
      TOKEN_T__124 = 125,
      TOKEN_T__125 = 126,
      TOKEN_T__126 = 127,
      TOKEN_T__127 = 128,
      TOKEN_T__128 = 129,
      TOKEN_T__129 = 130,
      TOKEN_T__130 = 131,
      TOKEN_T__131 = 132,
      TOKEN_T__132 = 133,
      TOKEN_T__133 = 134,
      TOKEN_T__134 = 135,
      TOKEN_T__135 = 136,
      TOKEN_T__136 = 137,
      TOKEN_T__137 = 138,
      TOKEN_T__138 = 139,
      TOKEN_T__139 = 140,
      TOKEN_T__140 = 141,
      TOKEN_T__141 = 142,
      TOKEN_T__142 = 143,
      TOKEN_T__143 = 144,
      TOKEN_T__144 = 145,
      TOKEN_T__145 = 146,
      TOKEN_T__146 = 147,
      TOKEN_T__147 = 148,
      TOKEN_T__148 = 149,
      TOKEN_T__149 = 150,
      TOKEN_T__150 = 151,
      TOKEN_T__151 = 152,
      TOKEN_T__152 = 153,
      TOKEN_T__153 = 154,
      TOKEN_T__154 = 155,
      TOKEN_T__155 = 156,
      TOKEN_QUOTEDIDENTIFIER = 157,
      TOKEN_DATETIME = 158,
      TOKEN_LONGNUMBER = 159,
      TOKEN_DATE = 160,
      TOKEN_TIME = 161,
      TOKEN_IDENTIFIER = 162,
      TOKEN_DELIMITEDIDENTIFIER = 163,
      TOKEN_STRING = 164,
      TOKEN_NUMBER = 165,
      TOKEN_WS = 166,
      TOKEN_COMMENT = 167,
      TOKEN_LINE_COMMENT = 168;

  static final Vocabulary VOCABULARY =
      VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  final List<String> ruleNames = [
    'library',
    'definition',
    'libraryDefinition',
    'usingDefinition',
    'includeDefinition',
    'localIdentifier',
    'accessModifier',
    'parameterDefinition',
    'codesystemDefinition',
    'valuesetDefinition',
    'codesystems',
    'codesystemIdentifier',
    'libraryIdentifier',
    'codeDefinition',
    'conceptDefinition',
    'codeIdentifier',
    'codesystemId',
    'valuesetId',
    'versionSpecifier',
    'codeId',
    'typeSpecifier',
    'namedTypeSpecifier',
    'modelIdentifier',
    'listTypeSpecifier',
    'intervalTypeSpecifier',
    'tupleTypeSpecifier',
    'tupleElementDefinition',
    'choiceTypeSpecifier',
    'statement',
    'expressionDefinition',
    'contextDefinition',
    'functionDefinition',
    'operandDefinition',
    'functionBody',
    'querySource',
    'aliasedQuerySource',
    'alias',
    'queryInclusionClause',
    'withClause',
    'withoutClause',
    'retrieve',
    'contextIdentifier',
    'codePath',
    'codeComparator',
    'terminology',
    'qualifier',
    'query',
    'sourceClause',
    'letClause',
    'letClauseItem',
    'whereClause',
    'returnClause',
    'aggregateClause',
    'startingClause',
    'sortClause',
    'sortDirection',
    'sortByItem',
    'qualifiedIdentifier',
    'qualifiedIdentifierExpression',
    'qualifierExpression',
    'simplePath',
    'simpleLiteral',
    'expression',
    'dateTimePrecision',
    'dateTimeComponent',
    'pluralDateTimePrecision',
    'expressionTerm',
    'caseExpressionItem',
    'dateTimePrecisionSpecifier',
    'relativeQualifier',
    'offsetRelativeQualifier',
    'exclusiveRelativeQualifier',
    'quantityOffset',
    'temporalRelationship',
    'intervalOperatorPhrase',
    'term',
    'qualifiedInvocation',
    'qualifiedFunction',
    'invocation',
    'function',
    'ratio',
    'literal',
    'intervalSelector',
    'tupleSelector',
    'tupleElementSelector',
    'instanceSelector',
    'instanceElementSelector',
    'listSelector',
    'displayClause',
    'codeSelector',
    'conceptSelector',
    'keyword',
    'reservedWord',
    'keywordIdentifier',
    'obsoleteIdentifier',
    'functionIdentifier',
    'typeNameIdentifier',
    'referentialIdentifier',
    'referentialOrTypeNameIdentifier',
    'identifierOrFunctionIdentifier',
    'identifier',
    'externalConstant',
    'paramList',
    'quantity',
    'unit'
  ];

  static final ATN _ATN = ATNDeserializer().deserialize(_serializedATN);
  static final List<String?> _LITERAL_NAMES = [
    null,
    "'library'",
    "'version'",
    "'using'",
    "'include'",
    "'called'",
    "'public'",
    "'private'",
    "'parameter'",
    "'default'",
    "'codesystem'",
    "':'",
    "'valueset'",
    "'codesystems'",
    "'{'",
    "','",
    "'}'",
    "'.'",
    "'code'",
    "'from'",
    "'concept'",
    "'List'",
    "'<'",
    "'>'",
    "'Interval'",
    "'Tuple'",
    "'Choice'",
    "'define'",
    "'context'",
    "'fluent'",
    "'function'",
    "'('",
    "')'",
    "'returns'",
    "'external'",
    "'with'",
    "'such that'",
    "'without'",
    "'['",
    "'->'",
    "']'",
    "'in'",
    "'='",
    "'~'",
    "'let'",
    "'where'",
    "'return'",
    "'all'",
    "'distinct'",
    "'aggregate'",
    "'starting'",
    "'sort'",
    "'by'",
    "'asc'",
    "'ascending'",
    "'desc'",
    "'descending'",
    "'is'",
    "'not'",
    "'null'",
    "'true'",
    "'false'",
    "'as'",
    "'cast'",
    "'exists'",
    "'properly'",
    "'between'",
    "'and'",
    "'duration'",
    "'difference'",
    "'<='",
    "'>='",
    "'!='",
    "'!~'",
    "'contains'",
    "'or'",
    "'xor'",
    "'implies'",
    "'|'",
    "'union'",
    "'intersect'",
    "'except'",
    "'year'",
    "'month'",
    "'week'",
    "'day'",
    "'hour'",
    "'minute'",
    "'second'",
    "'millisecond'",
    "'date'",
    "'time'",
    "'timezoneoffset'",
    "'years'",
    "'months'",
    "'weeks'",
    "'days'",
    "'hours'",
    "'minutes'",
    "'seconds'",
    "'milliseconds'",
    "'convert'",
    "'to'",
    "'+'",
    "'-'",
    "'start'",
    "'end'",
    "'of'",
    "'width'",
    "'successor'",
    "'predecessor'",
    "'singleton'",
    "'point'",
    "'minimum'",
    "'maximum'",
    "'^'",
    "'*'",
    "'/'",
    "'div'",
    "'mod'",
    "'&'",
    "'if'",
    "'then'",
    "'else'",
    "'case'",
    "'flatten'",
    "'expand'",
    "'collapse'",
    "'per'",
    "'when'",
    "'or before'",
    "'or after'",
    "'or more'",
    "'or less'",
    "'less than'",
    "'more than'",
    "'on or'",
    "'before'",
    "'after'",
    "'or on'",
    "'starts'",
    "'ends'",
    "'occurs'",
    "'same'",
    "'includes'",
    "'during'",
    "'included in'",
    "'within'",
    "'meets'",
    "'overlaps'",
    "'\$this'",
    "'\$index'",
    "'\$total'",
    "'display'",
    "'Code'",
    "'Concept'",
    "'%'"
  ];

  static final List<String?> _SYMBOLIC_NAMES = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    "QUOTEDIDENTIFIER",
    "DATETIME",
    "LONGNUMBER",
    "DATE",
    "TIME",
    "IDENTIFIER",
    "DELIMITEDIDENTIFIER",
    "STRING",
    "NUMBER",
    "WS",
    "COMMENT",
    "LINE_COMMENT"
  ];

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));

  static const List<int> _serializedATN = [
    4,
    1,
    168,
    1179,
    2,
    0,
    7,
    0,
    2,
    1,
    7,
    1,
    2,
    2,
    7,
    2,
    2,
    3,
    7,
    3,
    2,
    4,
    7,
    4,
    2,
    5,
    7,
    5,
    2,
    6,
    7,
    6,
    2,
    7,
    7,
    7,
    2,
    8,
    7,
    8,
    2,
    9,
    7,
    9,
    2,
    10,
    7,
    10,
    2,
    11,
    7,
    11,
    2,
    12,
    7,
    12,
    2,
    13,
    7,
    13,
    2,
    14,
    7,
    14,
    2,
    15,
    7,
    15,
    2,
    16,
    7,
    16,
    2,
    17,
    7,
    17,
    2,
    18,
    7,
    18,
    2,
    19,
    7,
    19,
    2,
    20,
    7,
    20,
    2,
    21,
    7,
    21,
    2,
    22,
    7,
    22,
    2,
    23,
    7,
    23,
    2,
    24,
    7,
    24,
    2,
    25,
    7,
    25,
    2,
    26,
    7,
    26,
    2,
    27,
    7,
    27,
    2,
    28,
    7,
    28,
    2,
    29,
    7,
    29,
    2,
    30,
    7,
    30,
    2,
    31,
    7,
    31,
    2,
    32,
    7,
    32,
    2,
    33,
    7,
    33,
    2,
    34,
    7,
    34,
    2,
    35,
    7,
    35,
    2,
    36,
    7,
    36,
    2,
    37,
    7,
    37,
    2,
    38,
    7,
    38,
    2,
    39,
    7,
    39,
    2,
    40,
    7,
    40,
    2,
    41,
    7,
    41,
    2,
    42,
    7,
    42,
    2,
    43,
    7,
    43,
    2,
    44,
    7,
    44,
    2,
    45,
    7,
    45,
    2,
    46,
    7,
    46,
    2,
    47,
    7,
    47,
    2,
    48,
    7,
    48,
    2,
    49,
    7,
    49,
    2,
    50,
    7,
    50,
    2,
    51,
    7,
    51,
    2,
    52,
    7,
    52,
    2,
    53,
    7,
    53,
    2,
    54,
    7,
    54,
    2,
    55,
    7,
    55,
    2,
    56,
    7,
    56,
    2,
    57,
    7,
    57,
    2,
    58,
    7,
    58,
    2,
    59,
    7,
    59,
    2,
    60,
    7,
    60,
    2,
    61,
    7,
    61,
    2,
    62,
    7,
    62,
    2,
    63,
    7,
    63,
    2,
    64,
    7,
    64,
    2,
    65,
    7,
    65,
    2,
    66,
    7,
    66,
    2,
    67,
    7,
    67,
    2,
    68,
    7,
    68,
    2,
    69,
    7,
    69,
    2,
    70,
    7,
    70,
    2,
    71,
    7,
    71,
    2,
    72,
    7,
    72,
    2,
    73,
    7,
    73,
    2,
    74,
    7,
    74,
    2,
    75,
    7,
    75,
    2,
    76,
    7,
    76,
    2,
    77,
    7,
    77,
    2,
    78,
    7,
    78,
    2,
    79,
    7,
    79,
    2,
    80,
    7,
    80,
    2,
    81,
    7,
    81,
    2,
    82,
    7,
    82,
    2,
    83,
    7,
    83,
    2,
    84,
    7,
    84,
    2,
    85,
    7,
    85,
    2,
    86,
    7,
    86,
    2,
    87,
    7,
    87,
    2,
    88,
    7,
    88,
    2,
    89,
    7,
    89,
    2,
    90,
    7,
    90,
    2,
    91,
    7,
    91,
    2,
    92,
    7,
    92,
    2,
    93,
    7,
    93,
    2,
    94,
    7,
    94,
    2,
    95,
    7,
    95,
    2,
    96,
    7,
    96,
    2,
    97,
    7,
    97,
    2,
    98,
    7,
    98,
    2,
    99,
    7,
    99,
    2,
    100,
    7,
    100,
    2,
    101,
    7,
    101,
    2,
    102,
    7,
    102,
    2,
    103,
    7,
    103,
    2,
    104,
    7,
    104,
    1,
    0,
    3,
    0,
    212,
    8,
    0,
    1,
    0,
    5,
    0,
    215,
    8,
    0,
    10,
    0,
    12,
    0,
    218,
    9,
    0,
    1,
    0,
    5,
    0,
    221,
    8,
    0,
    10,
    0,
    12,
    0,
    224,
    9,
    0,
    1,
    0,
    1,
    0,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    3,
    1,
    235,
    8,
    1,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    3,
    2,
    241,
    8,
    2,
    1,
    3,
    1,
    3,
    1,
    3,
    1,
    3,
    3,
    3,
    247,
    8,
    3,
    1,
    4,
    1,
    4,
    1,
    4,
    1,
    4,
    3,
    4,
    253,
    8,
    4,
    1,
    4,
    1,
    4,
    3,
    4,
    257,
    8,
    4,
    1,
    5,
    1,
    5,
    1,
    6,
    1,
    6,
    1,
    7,
    3,
    7,
    264,
    8,
    7,
    1,
    7,
    1,
    7,
    1,
    7,
    3,
    7,
    269,
    8,
    7,
    1,
    7,
    1,
    7,
    3,
    7,
    273,
    8,
    7,
    1,
    8,
    3,
    8,
    276,
    8,
    8,
    1,
    8,
    1,
    8,
    1,
    8,
    1,
    8,
    1,
    8,
    1,
    8,
    3,
    8,
    284,
    8,
    8,
    1,
    9,
    3,
    9,
    287,
    8,
    9,
    1,
    9,
    1,
    9,
    1,
    9,
    1,
    9,
    1,
    9,
    1,
    9,
    3,
    9,
    295,
    8,
    9,
    1,
    9,
    3,
    9,
    298,
    8,
    9,
    1,
    10,
    1,
    10,
    1,
    10,
    1,
    10,
    1,
    10,
    5,
    10,
    305,
    8,
    10,
    10,
    10,
    12,
    10,
    308,
    9,
    10,
    1,
    10,
    1,
    10,
    1,
    11,
    1,
    11,
    1,
    11,
    3,
    11,
    315,
    8,
    11,
    1,
    11,
    1,
    11,
    1,
    12,
    1,
    12,
    1,
    13,
    3,
    13,
    322,
    8,
    13,
    1,
    13,
    1,
    13,
    1,
    13,
    1,
    13,
    1,
    13,
    1,
    13,
    1,
    13,
    3,
    13,
    331,
    8,
    13,
    1,
    14,
    3,
    14,
    334,
    8,
    14,
    1,
    14,
    1,
    14,
    1,
    14,
    1,
    14,
    1,
    14,
    1,
    14,
    1,
    14,
    5,
    14,
    343,
    8,
    14,
    10,
    14,
    12,
    14,
    346,
    9,
    14,
    1,
    14,
    1,
    14,
    3,
    14,
    350,
    8,
    14,
    1,
    15,
    1,
    15,
    1,
    15,
    3,
    15,
    355,
    8,
    15,
    1,
    15,
    1,
    15,
    1,
    16,
    1,
    16,
    1,
    17,
    1,
    17,
    1,
    18,
    1,
    18,
    1,
    19,
    1,
    19,
    1,
    20,
    1,
    20,
    1,
    20,
    1,
    20,
    1,
    20,
    3,
    20,
    372,
    8,
    20,
    1,
    21,
    1,
    21,
    1,
    21,
    5,
    21,
    377,
    8,
    21,
    10,
    21,
    12,
    21,
    380,
    9,
    21,
    1,
    21,
    1,
    21,
    1,
    22,
    1,
    22,
    1,
    23,
    1,
    23,
    1,
    23,
    1,
    23,
    1,
    23,
    1,
    24,
    1,
    24,
    1,
    24,
    1,
    24,
    1,
    24,
    1,
    25,
    1,
    25,
    1,
    25,
    1,
    25,
    1,
    25,
    5,
    25,
    401,
    8,
    25,
    10,
    25,
    12,
    25,
    404,
    9,
    25,
    1,
    25,
    1,
    25,
    1,
    26,
    1,
    26,
    1,
    26,
    1,
    27,
    1,
    27,
    1,
    27,
    1,
    27,
    1,
    27,
    5,
    27,
    416,
    8,
    27,
    10,
    27,
    12,
    27,
    419,
    9,
    27,
    1,
    27,
    1,
    27,
    1,
    28,
    1,
    28,
    1,
    28,
    3,
    28,
    426,
    8,
    28,
    1,
    29,
    1,
    29,
    3,
    29,
    430,
    8,
    29,
    1,
    29,
    1,
    29,
    1,
    29,
    1,
    29,
    1,
    30,
    1,
    30,
    1,
    30,
    1,
    30,
    3,
    30,
    440,
    8,
    30,
    1,
    30,
    1,
    30,
    1,
    31,
    1,
    31,
    3,
    31,
    446,
    8,
    31,
    1,
    31,
    3,
    31,
    449,
    8,
    31,
    1,
    31,
    1,
    31,
    1,
    31,
    1,
    31,
    1,
    31,
    1,
    31,
    5,
    31,
    457,
    8,
    31,
    10,
    31,
    12,
    31,
    460,
    9,
    31,
    3,
    31,
    462,
    8,
    31,
    1,
    31,
    1,
    31,
    1,
    31,
    3,
    31,
    467,
    8,
    31,
    1,
    31,
    1,
    31,
    1,
    31,
    3,
    31,
    472,
    8,
    31,
    1,
    32,
    1,
    32,
    1,
    32,
    1,
    33,
    1,
    33,
    1,
    34,
    1,
    34,
    1,
    34,
    1,
    34,
    1,
    34,
    1,
    34,
    3,
    34,
    485,
    8,
    34,
    1,
    35,
    1,
    35,
    1,
    35,
    1,
    36,
    1,
    36,
    1,
    37,
    1,
    37,
    3,
    37,
    494,
    8,
    37,
    1,
    38,
    1,
    38,
    1,
    38,
    1,
    38,
    1,
    38,
    1,
    39,
    1,
    39,
    1,
    39,
    1,
    39,
    1,
    39,
    1,
    40,
    1,
    40,
    1,
    40,
    1,
    40,
    3,
    40,
    510,
    8,
    40,
    1,
    40,
    1,
    40,
    1,
    40,
    1,
    40,
    1,
    40,
    3,
    40,
    517,
    8,
    40,
    1,
    40,
    3,
    40,
    520,
    8,
    40,
    1,
    40,
    1,
    40,
    1,
    41,
    1,
    41,
    1,
    42,
    1,
    42,
    1,
    43,
    1,
    43,
    1,
    44,
    1,
    44,
    3,
    44,
    532,
    8,
    44,
    1,
    45,
    1,
    45,
    1,
    46,
    1,
    46,
    3,
    46,
    538,
    8,
    46,
    1,
    46,
    5,
    46,
    541,
    8,
    46,
    10,
    46,
    12,
    46,
    544,
    9,
    46,
    1,
    46,
    3,
    46,
    547,
    8,
    46,
    1,
    46,
    1,
    46,
    3,
    46,
    551,
    8,
    46,
    1,
    46,
    3,
    46,
    554,
    8,
    46,
    1,
    47,
    3,
    47,
    557,
    8,
    47,
    1,
    47,
    1,
    47,
    1,
    47,
    5,
    47,
    562,
    8,
    47,
    10,
    47,
    12,
    47,
    565,
    9,
    47,
    1,
    48,
    1,
    48,
    1,
    48,
    1,
    48,
    5,
    48,
    571,
    8,
    48,
    10,
    48,
    12,
    48,
    574,
    9,
    48,
    1,
    49,
    1,
    49,
    1,
    49,
    1,
    49,
    1,
    50,
    1,
    50,
    1,
    50,
    1,
    51,
    1,
    51,
    3,
    51,
    585,
    8,
    51,
    1,
    51,
    1,
    51,
    1,
    52,
    1,
    52,
    3,
    52,
    591,
    8,
    52,
    1,
    52,
    1,
    52,
    3,
    52,
    595,
    8,
    52,
    1,
    52,
    1,
    52,
    1,
    52,
    1,
    53,
    1,
    53,
    1,
    53,
    1,
    53,
    1,
    53,
    1,
    53,
    1,
    53,
    3,
    53,
    607,
    8,
    53,
    1,
    54,
    1,
    54,
    1,
    54,
    1,
    54,
    1,
    54,
    1,
    54,
    5,
    54,
    615,
    8,
    54,
    10,
    54,
    12,
    54,
    618,
    9,
    54,
    3,
    54,
    620,
    8,
    54,
    1,
    55,
    1,
    55,
    1,
    56,
    1,
    56,
    3,
    56,
    626,
    8,
    56,
    1,
    57,
    1,
    57,
    1,
    57,
    5,
    57,
    631,
    8,
    57,
    10,
    57,
    12,
    57,
    634,
    9,
    57,
    1,
    57,
    1,
    57,
    1,
    58,
    1,
    58,
    1,
    58,
    5,
    58,
    641,
    8,
    58,
    10,
    58,
    12,
    58,
    644,
    9,
    58,
    1,
    58,
    1,
    58,
    1,
    59,
    1,
    59,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    1,
    60,
    5,
    60,
    661,
    8,
    60,
    10,
    60,
    12,
    60,
    664,
    9,
    60,
    1,
    61,
    1,
    61,
    3,
    61,
    668,
    8,
    61,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    3,
    62,
    685,
    8,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    3,
    62,
    701,
    8,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    3,
    62,
    716,
    8,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    3,
    62,
    734,
    8,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    3,
    62,
    742,
    8,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    1,
    62,
    5,
    62,
    749,
    8,
    62,
    10,
    62,
    12,
    62,
    752,
    9,
    62,
    1,
    63,
    1,
    63,
    1,
    64,
    1,
    64,
    1,
    64,
    1,
    64,
    3,
    64,
    760,
    8,
    64,
    1,
    65,
    1,
    65,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    3,
    66,
    771,
    8,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    3,
    66,
    820,
    8,
    66,
    1,
    66,
    4,
    66,
    823,
    8,
    66,
    11,
    66,
    12,
    66,
    824,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    3,
    66,
    838,
    8,
    66,
    3,
    66,
    840,
    8,
    66,
    3,
    66,
    842,
    8,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    1,
    66,
    5,
    66,
    861,
    8,
    66,
    10,
    66,
    12,
    66,
    864,
    9,
    66,
    1,
    67,
    1,
    67,
    1,
    67,
    1,
    67,
    1,
    67,
    1,
    68,
    1,
    68,
    1,
    68,
    1,
    69,
    1,
    69,
    1,
    70,
    1,
    70,
    1,
    71,
    1,
    71,
    1,
    72,
    1,
    72,
    3,
    72,
    882,
    8,
    72,
    1,
    72,
    1,
    72,
    1,
    72,
    3,
    72,
    887,
    8,
    72,
    1,
    73,
    3,
    73,
    890,
    8,
    73,
    1,
    73,
    1,
    73,
    1,
    73,
    3,
    73,
    895,
    8,
    73,
    3,
    73,
    897,
    8,
    73,
    1,
    74,
    3,
    74,
    900,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    904,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    908,
    8,
    74,
    1,
    74,
    3,
    74,
    911,
    8,
    74,
    1,
    74,
    3,
    74,
    914,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    918,
    8,
    74,
    1,
    74,
    3,
    74,
    921,
    8,
    74,
    1,
    74,
    3,
    74,
    924,
    8,
    74,
    1,
    74,
    3,
    74,
    927,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    931,
    8,
    74,
    1,
    74,
    3,
    74,
    934,
    8,
    74,
    1,
    74,
    3,
    74,
    937,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    941,
    8,
    74,
    1,
    74,
    3,
    74,
    944,
    8,
    74,
    1,
    74,
    3,
    74,
    947,
    8,
    74,
    1,
    74,
    3,
    74,
    950,
    8,
    74,
    1,
    74,
    1,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    956,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    960,
    8,
    74,
    1,
    74,
    3,
    74,
    963,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    967,
    8,
    74,
    1,
    74,
    3,
    74,
    970,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    974,
    8,
    74,
    1,
    74,
    1,
    74,
    3,
    74,
    978,
    8,
    74,
    3,
    74,
    980,
    8,
    74,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    1,
    75,
    3,
    75,
    995,
    8,
    75,
    1,
    76,
    1,
    76,
    3,
    76,
    999,
    8,
    76,
    1,
    77,
    1,
    77,
    1,
    77,
    3,
    77,
    1004,
    8,
    77,
    1,
    77,
    1,
    77,
    1,
    78,
    1,
    78,
    1,
    78,
    1,
    78,
    1,
    78,
    3,
    78,
    1013,
    8,
    78,
    1,
    79,
    1,
    79,
    1,
    79,
    3,
    79,
    1018,
    8,
    79,
    1,
    79,
    1,
    79,
    1,
    80,
    1,
    80,
    1,
    80,
    1,
    80,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    1,
    81,
    3,
    81,
    1036,
    8,
    81,
    1,
    82,
    1,
    82,
    1,
    82,
    1,
    82,
    1,
    82,
    1,
    82,
    1,
    82,
    1,
    83,
    3,
    83,
    1046,
    8,
    83,
    1,
    83,
    1,
    83,
    1,
    83,
    1,
    83,
    1,
    83,
    5,
    83,
    1053,
    8,
    83,
    10,
    83,
    12,
    83,
    1056,
    9,
    83,
    3,
    83,
    1058,
    8,
    83,
    1,
    83,
    1,
    83,
    1,
    84,
    1,
    84,
    1,
    84,
    1,
    84,
    1,
    85,
    1,
    85,
    1,
    85,
    1,
    85,
    1,
    85,
    1,
    85,
    5,
    85,
    1072,
    8,
    85,
    10,
    85,
    12,
    85,
    1075,
    9,
    85,
    3,
    85,
    1077,
    8,
    85,
    1,
    85,
    1,
    85,
    1,
    86,
    1,
    86,
    1,
    86,
    1,
    86,
    1,
    87,
    1,
    87,
    1,
    87,
    1,
    87,
    1,
    87,
    3,
    87,
    1090,
    8,
    87,
    3,
    87,
    1092,
    8,
    87,
    1,
    87,
    1,
    87,
    1,
    87,
    1,
    87,
    5,
    87,
    1098,
    8,
    87,
    10,
    87,
    12,
    87,
    1101,
    9,
    87,
    3,
    87,
    1103,
    8,
    87,
    1,
    87,
    1,
    87,
    1,
    88,
    1,
    88,
    1,
    88,
    1,
    89,
    1,
    89,
    1,
    89,
    1,
    89,
    1,
    89,
    3,
    89,
    1115,
    8,
    89,
    1,
    90,
    1,
    90,
    1,
    90,
    1,
    90,
    1,
    90,
    5,
    90,
    1122,
    8,
    90,
    10,
    90,
    12,
    90,
    1125,
    9,
    90,
    1,
    90,
    1,
    90,
    3,
    90,
    1129,
    8,
    90,
    1,
    91,
    1,
    91,
    1,
    92,
    1,
    92,
    1,
    93,
    1,
    93,
    1,
    94,
    1,
    94,
    1,
    95,
    1,
    95,
    1,
    96,
    1,
    96,
    1,
    97,
    1,
    97,
    3,
    97,
    1145,
    8,
    97,
    1,
    98,
    1,
    98,
    3,
    98,
    1149,
    8,
    98,
    1,
    99,
    1,
    99,
    3,
    99,
    1153,
    8,
    99,
    1,
    100,
    1,
    100,
    1,
    101,
    1,
    101,
    1,
    101,
    3,
    101,
    1160,
    8,
    101,
    1,
    102,
    1,
    102,
    1,
    102,
    5,
    102,
    1165,
    8,
    102,
    10,
    102,
    12,
    102,
    1168,
    9,
    102,
    1,
    103,
    1,
    103,
    3,
    103,
    1172,
    8,
    103,
    1,
    104,
    1,
    104,
    1,
    104,
    3,
    104,
    1177,
    8,
    104,
    1,
    104,
    0,
    3,
    120,
    124,
    132,
    105,
    0,
    2,
    4,
    6,
    8,
    10,
    12,
    14,
    16,
    18,
    20,
    22,
    24,
    26,
    28,
    30,
    32,
    34,
    36,
    38,
    40,
    42,
    44,
    46,
    48,
    50,
    52,
    54,
    56,
    58,
    60,
    62,
    64,
    66,
    68,
    70,
    72,
    74,
    76,
    78,
    80,
    82,
    84,
    86,
    88,
    90,
    92,
    94,
    96,
    98,
    100,
    102,
    104,
    106,
    108,
    110,
    112,
    114,
    116,
    118,
    120,
    122,
    124,
    126,
    128,
    130,
    132,
    134,
    136,
    138,
    140,
    142,
    144,
    146,
    148,
    150,
    152,
    154,
    156,
    158,
    160,
    162,
    164,
    166,
    168,
    170,
    172,
    174,
    176,
    178,
    180,
    182,
    184,
    186,
    188,
    190,
    192,
    194,
    196,
    198,
    200,
    202,
    204,
    206,
    208,
    0,
    36,
    1,
    0,
    6,
    7,
    1,
    0,
    41,
    43,
    1,
    0,
    47,
    48,
    1,
    0,
    53,
    56,
    2,
    0,
    22,
    23,
    70,
    71,
    2,
    0,
    42,
    43,
    72,
    73,
    2,
    0,
    41,
    41,
    74,
    74,
    1,
    0,
    75,
    76,
    1,
    0,
    78,
    81,
    1,
    0,
    59,
    61,
    2,
    0,
    57,
    57,
    62,
    62,
    1,
    0,
    82,
    89,
    1,
    0,
    93,
    100,
    1,
    0,
    103,
    104,
    1,
    0,
    105,
    106,
    1,
    0,
    113,
    114,
    2,
    0,
    48,
    48,
    125,
    125,
    1,
    0,
    126,
    127,
    1,
    0,
    116,
    119,
    2,
    0,
    103,
    104,
    120,
    120,
    1,
    0,
    130,
    131,
    1,
    0,
    132,
    133,
    1,
    0,
    134,
    135,
    1,
    0,
    137,
    138,
    1,
    0,
    140,
    142,
    1,
    0,
    145,
    146,
    1,
    0,
    60,
    61,
    2,
    0,
    31,
    31,
    38,
    38,
    2,
    0,
    32,
    32,
    40,
    40,
    15,
    0,
    1,
    10,
    12,
    13,
    18,
    21,
    24,
    25,
    27,
    30,
    35,
    37,
    41,
    41,
    44,
    69,
    74,
    77,
    79,
    102,
    105,
    114,
    118,
    119,
    121,
    133,
    136,
    149,
    153,
    155,
    19,
    0,
    19,
    19,
    21,
    21,
    24,
    25,
    35,
    37,
    41,
    41,
    44,
    44,
    46,
    49,
    51,
    51,
    57,
    69,
    75,
    75,
    82,
    89,
    93,
    102,
    107,
    107,
    111,
    114,
    121,
    129,
    136,
    139,
    142,
    143,
    145,
    147,
    154,
    155,
    20,
    0,
    1,
    10,
    12,
    13,
    18,
    18,
    20,
    20,
    27,
    30,
    45,
    45,
    50,
    50,
    52,
    56,
    74,
    74,
    76,
    77,
    79,
    81,
    90,
    92,
    105,
    106,
    108,
    110,
    118,
    119,
    130,
    133,
    140,
    141,
    144,
    144,
    148,
    149,
    153,
    153,
    11,
    0,
    2,
    2,
    18,
    18,
    20,
    20,
    45,
    45,
    47,
    48,
    58,
    58,
    64,
    64,
    74,
    74,
    90,
    92,
    105,
    106,
    153,
    155,
    16,
    0,
    1,
    10,
    12,
    13,
    18,
    21,
    24,
    25,
    27,
    30,
    35,
    37,
    41,
    41,
    44,
    69,
    74,
    77,
    79,
    102,
    105,
    114,
    118,
    119,
    121,
    133,
    137,
    138,
    140,
    149,
    153,
    155,
    2,
    0,
    90,
    91,
    154,
    155,
    2,
    0,
    157,
    157,
    162,
    163,
    1280,
    0,
    211,
    1,
    0,
    0,
    0,
    2,
    234,
    1,
    0,
    0,
    0,
    4,
    236,
    1,
    0,
    0,
    0,
    6,
    242,
    1,
    0,
    0,
    0,
    8,
    248,
    1,
    0,
    0,
    0,
    10,
    258,
    1,
    0,
    0,
    0,
    12,
    260,
    1,
    0,
    0,
    0,
    14,
    263,
    1,
    0,
    0,
    0,
    16,
    275,
    1,
    0,
    0,
    0,
    18,
    286,
    1,
    0,
    0,
    0,
    20,
    299,
    1,
    0,
    0,
    0,
    22,
    314,
    1,
    0,
    0,
    0,
    24,
    318,
    1,
    0,
    0,
    0,
    26,
    321,
    1,
    0,
    0,
    0,
    28,
    333,
    1,
    0,
    0,
    0,
    30,
    354,
    1,
    0,
    0,
    0,
    32,
    358,
    1,
    0,
    0,
    0,
    34,
    360,
    1,
    0,
    0,
    0,
    36,
    362,
    1,
    0,
    0,
    0,
    38,
    364,
    1,
    0,
    0,
    0,
    40,
    371,
    1,
    0,
    0,
    0,
    42,
    378,
    1,
    0,
    0,
    0,
    44,
    383,
    1,
    0,
    0,
    0,
    46,
    385,
    1,
    0,
    0,
    0,
    48,
    390,
    1,
    0,
    0,
    0,
    50,
    395,
    1,
    0,
    0,
    0,
    52,
    407,
    1,
    0,
    0,
    0,
    54,
    410,
    1,
    0,
    0,
    0,
    56,
    425,
    1,
    0,
    0,
    0,
    58,
    427,
    1,
    0,
    0,
    0,
    60,
    435,
    1,
    0,
    0,
    0,
    62,
    443,
    1,
    0,
    0,
    0,
    64,
    473,
    1,
    0,
    0,
    0,
    66,
    476,
    1,
    0,
    0,
    0,
    68,
    484,
    1,
    0,
    0,
    0,
    70,
    486,
    1,
    0,
    0,
    0,
    72,
    489,
    1,
    0,
    0,
    0,
    74,
    493,
    1,
    0,
    0,
    0,
    76,
    495,
    1,
    0,
    0,
    0,
    78,
    500,
    1,
    0,
    0,
    0,
    80,
    505,
    1,
    0,
    0,
    0,
    82,
    523,
    1,
    0,
    0,
    0,
    84,
    525,
    1,
    0,
    0,
    0,
    86,
    527,
    1,
    0,
    0,
    0,
    88,
    531,
    1,
    0,
    0,
    0,
    90,
    533,
    1,
    0,
    0,
    0,
    92,
    535,
    1,
    0,
    0,
    0,
    94,
    556,
    1,
    0,
    0,
    0,
    96,
    566,
    1,
    0,
    0,
    0,
    98,
    575,
    1,
    0,
    0,
    0,
    100,
    579,
    1,
    0,
    0,
    0,
    102,
    582,
    1,
    0,
    0,
    0,
    104,
    588,
    1,
    0,
    0,
    0,
    106,
    599,
    1,
    0,
    0,
    0,
    108,
    608,
    1,
    0,
    0,
    0,
    110,
    621,
    1,
    0,
    0,
    0,
    112,
    623,
    1,
    0,
    0,
    0,
    114,
    632,
    1,
    0,
    0,
    0,
    116,
    642,
    1,
    0,
    0,
    0,
    118,
    647,
    1,
    0,
    0,
    0,
    120,
    649,
    1,
    0,
    0,
    0,
    122,
    667,
    1,
    0,
    0,
    0,
    124,
    700,
    1,
    0,
    0,
    0,
    126,
    753,
    1,
    0,
    0,
    0,
    128,
    759,
    1,
    0,
    0,
    0,
    130,
    761,
    1,
    0,
    0,
    0,
    132,
    841,
    1,
    0,
    0,
    0,
    134,
    865,
    1,
    0,
    0,
    0,
    136,
    870,
    1,
    0,
    0,
    0,
    138,
    873,
    1,
    0,
    0,
    0,
    140,
    875,
    1,
    0,
    0,
    0,
    142,
    877,
    1,
    0,
    0,
    0,
    144,
    886,
    1,
    0,
    0,
    0,
    146,
    896,
    1,
    0,
    0,
    0,
    148,
    979,
    1,
    0,
    0,
    0,
    150,
    994,
    1,
    0,
    0,
    0,
    152,
    998,
    1,
    0,
    0,
    0,
    154,
    1000,
    1,
    0,
    0,
    0,
    156,
    1012,
    1,
    0,
    0,
    0,
    158,
    1014,
    1,
    0,
    0,
    0,
    160,
    1021,
    1,
    0,
    0,
    0,
    162,
    1035,
    1,
    0,
    0,
    0,
    164,
    1037,
    1,
    0,
    0,
    0,
    166,
    1045,
    1,
    0,
    0,
    0,
    168,
    1061,
    1,
    0,
    0,
    0,
    170,
    1065,
    1,
    0,
    0,
    0,
    172,
    1080,
    1,
    0,
    0,
    0,
    174,
    1091,
    1,
    0,
    0,
    0,
    176,
    1106,
    1,
    0,
    0,
    0,
    178,
    1109,
    1,
    0,
    0,
    0,
    180,
    1116,
    1,
    0,
    0,
    0,
    182,
    1130,
    1,
    0,
    0,
    0,
    184,
    1132,
    1,
    0,
    0,
    0,
    186,
    1134,
    1,
    0,
    0,
    0,
    188,
    1136,
    1,
    0,
    0,
    0,
    190,
    1138,
    1,
    0,
    0,
    0,
    192,
    1140,
    1,
    0,
    0,
    0,
    194,
    1144,
    1,
    0,
    0,
    0,
    196,
    1148,
    1,
    0,
    0,
    0,
    198,
    1152,
    1,
    0,
    0,
    0,
    200,
    1154,
    1,
    0,
    0,
    0,
    202,
    1156,
    1,
    0,
    0,
    0,
    204,
    1161,
    1,
    0,
    0,
    0,
    206,
    1169,
    1,
    0,
    0,
    0,
    208,
    1176,
    1,
    0,
    0,
    0,
    210,
    212,
    3,
    4,
    2,
    0,
    211,
    210,
    1,
    0,
    0,
    0,
    211,
    212,
    1,
    0,
    0,
    0,
    212,
    216,
    1,
    0,
    0,
    0,
    213,
    215,
    3,
    2,
    1,
    0,
    214,
    213,
    1,
    0,
    0,
    0,
    215,
    218,
    1,
    0,
    0,
    0,
    216,
    214,
    1,
    0,
    0,
    0,
    216,
    217,
    1,
    0,
    0,
    0,
    217,
    222,
    1,
    0,
    0,
    0,
    218,
    216,
    1,
    0,
    0,
    0,
    219,
    221,
    3,
    56,
    28,
    0,
    220,
    219,
    1,
    0,
    0,
    0,
    221,
    224,
    1,
    0,
    0,
    0,
    222,
    220,
    1,
    0,
    0,
    0,
    222,
    223,
    1,
    0,
    0,
    0,
    223,
    225,
    1,
    0,
    0,
    0,
    224,
    222,
    1,
    0,
    0,
    0,
    225,
    226,
    5,
    0,
    0,
    1,
    226,
    1,
    1,
    0,
    0,
    0,
    227,
    235,
    3,
    6,
    3,
    0,
    228,
    235,
    3,
    8,
    4,
    0,
    229,
    235,
    3,
    16,
    8,
    0,
    230,
    235,
    3,
    18,
    9,
    0,
    231,
    235,
    3,
    26,
    13,
    0,
    232,
    235,
    3,
    28,
    14,
    0,
    233,
    235,
    3,
    14,
    7,
    0,
    234,
    227,
    1,
    0,
    0,
    0,
    234,
    228,
    1,
    0,
    0,
    0,
    234,
    229,
    1,
    0,
    0,
    0,
    234,
    230,
    1,
    0,
    0,
    0,
    234,
    231,
    1,
    0,
    0,
    0,
    234,
    232,
    1,
    0,
    0,
    0,
    234,
    233,
    1,
    0,
    0,
    0,
    235,
    3,
    1,
    0,
    0,
    0,
    236,
    237,
    5,
    1,
    0,
    0,
    237,
    240,
    3,
    114,
    57,
    0,
    238,
    239,
    5,
    2,
    0,
    0,
    239,
    241,
    3,
    36,
    18,
    0,
    240,
    238,
    1,
    0,
    0,
    0,
    240,
    241,
    1,
    0,
    0,
    0,
    241,
    5,
    1,
    0,
    0,
    0,
    242,
    243,
    5,
    3,
    0,
    0,
    243,
    246,
    3,
    44,
    22,
    0,
    244,
    245,
    5,
    2,
    0,
    0,
    245,
    247,
    3,
    36,
    18,
    0,
    246,
    244,
    1,
    0,
    0,
    0,
    246,
    247,
    1,
    0,
    0,
    0,
    247,
    7,
    1,
    0,
    0,
    0,
    248,
    249,
    5,
    4,
    0,
    0,
    249,
    252,
    3,
    114,
    57,
    0,
    250,
    251,
    5,
    2,
    0,
    0,
    251,
    253,
    3,
    36,
    18,
    0,
    252,
    250,
    1,
    0,
    0,
    0,
    252,
    253,
    1,
    0,
    0,
    0,
    253,
    256,
    1,
    0,
    0,
    0,
    254,
    255,
    5,
    5,
    0,
    0,
    255,
    257,
    3,
    10,
    5,
    0,
    256,
    254,
    1,
    0,
    0,
    0,
    256,
    257,
    1,
    0,
    0,
    0,
    257,
    9,
    1,
    0,
    0,
    0,
    258,
    259,
    3,
    200,
    100,
    0,
    259,
    11,
    1,
    0,
    0,
    0,
    260,
    261,
    7,
    0,
    0,
    0,
    261,
    13,
    1,
    0,
    0,
    0,
    262,
    264,
    3,
    12,
    6,
    0,
    263,
    262,
    1,
    0,
    0,
    0,
    263,
    264,
    1,
    0,
    0,
    0,
    264,
    265,
    1,
    0,
    0,
    0,
    265,
    266,
    5,
    8,
    0,
    0,
    266,
    268,
    3,
    200,
    100,
    0,
    267,
    269,
    3,
    40,
    20,
    0,
    268,
    267,
    1,
    0,
    0,
    0,
    268,
    269,
    1,
    0,
    0,
    0,
    269,
    272,
    1,
    0,
    0,
    0,
    270,
    271,
    5,
    9,
    0,
    0,
    271,
    273,
    3,
    124,
    62,
    0,
    272,
    270,
    1,
    0,
    0,
    0,
    272,
    273,
    1,
    0,
    0,
    0,
    273,
    15,
    1,
    0,
    0,
    0,
    274,
    276,
    3,
    12,
    6,
    0,
    275,
    274,
    1,
    0,
    0,
    0,
    275,
    276,
    1,
    0,
    0,
    0,
    276,
    277,
    1,
    0,
    0,
    0,
    277,
    278,
    5,
    10,
    0,
    0,
    278,
    279,
    3,
    200,
    100,
    0,
    279,
    280,
    5,
    11,
    0,
    0,
    280,
    283,
    3,
    32,
    16,
    0,
    281,
    282,
    5,
    2,
    0,
    0,
    282,
    284,
    3,
    36,
    18,
    0,
    283,
    281,
    1,
    0,
    0,
    0,
    283,
    284,
    1,
    0,
    0,
    0,
    284,
    17,
    1,
    0,
    0,
    0,
    285,
    287,
    3,
    12,
    6,
    0,
    286,
    285,
    1,
    0,
    0,
    0,
    286,
    287,
    1,
    0,
    0,
    0,
    287,
    288,
    1,
    0,
    0,
    0,
    288,
    289,
    5,
    12,
    0,
    0,
    289,
    290,
    3,
    200,
    100,
    0,
    290,
    291,
    5,
    11,
    0,
    0,
    291,
    294,
    3,
    34,
    17,
    0,
    292,
    293,
    5,
    2,
    0,
    0,
    293,
    295,
    3,
    36,
    18,
    0,
    294,
    292,
    1,
    0,
    0,
    0,
    294,
    295,
    1,
    0,
    0,
    0,
    295,
    297,
    1,
    0,
    0,
    0,
    296,
    298,
    3,
    20,
    10,
    0,
    297,
    296,
    1,
    0,
    0,
    0,
    297,
    298,
    1,
    0,
    0,
    0,
    298,
    19,
    1,
    0,
    0,
    0,
    299,
    300,
    5,
    13,
    0,
    0,
    300,
    301,
    5,
    14,
    0,
    0,
    301,
    306,
    3,
    22,
    11,
    0,
    302,
    303,
    5,
    15,
    0,
    0,
    303,
    305,
    3,
    22,
    11,
    0,
    304,
    302,
    1,
    0,
    0,
    0,
    305,
    308,
    1,
    0,
    0,
    0,
    306,
    304,
    1,
    0,
    0,
    0,
    306,
    307,
    1,
    0,
    0,
    0,
    307,
    309,
    1,
    0,
    0,
    0,
    308,
    306,
    1,
    0,
    0,
    0,
    309,
    310,
    5,
    16,
    0,
    0,
    310,
    21,
    1,
    0,
    0,
    0,
    311,
    312,
    3,
    24,
    12,
    0,
    312,
    313,
    5,
    17,
    0,
    0,
    313,
    315,
    1,
    0,
    0,
    0,
    314,
    311,
    1,
    0,
    0,
    0,
    314,
    315,
    1,
    0,
    0,
    0,
    315,
    316,
    1,
    0,
    0,
    0,
    316,
    317,
    3,
    200,
    100,
    0,
    317,
    23,
    1,
    0,
    0,
    0,
    318,
    319,
    3,
    200,
    100,
    0,
    319,
    25,
    1,
    0,
    0,
    0,
    320,
    322,
    3,
    12,
    6,
    0,
    321,
    320,
    1,
    0,
    0,
    0,
    321,
    322,
    1,
    0,
    0,
    0,
    322,
    323,
    1,
    0,
    0,
    0,
    323,
    324,
    5,
    18,
    0,
    0,
    324,
    325,
    3,
    200,
    100,
    0,
    325,
    326,
    5,
    11,
    0,
    0,
    326,
    327,
    3,
    38,
    19,
    0,
    327,
    328,
    5,
    19,
    0,
    0,
    328,
    330,
    3,
    22,
    11,
    0,
    329,
    331,
    3,
    176,
    88,
    0,
    330,
    329,
    1,
    0,
    0,
    0,
    330,
    331,
    1,
    0,
    0,
    0,
    331,
    27,
    1,
    0,
    0,
    0,
    332,
    334,
    3,
    12,
    6,
    0,
    333,
    332,
    1,
    0,
    0,
    0,
    333,
    334,
    1,
    0,
    0,
    0,
    334,
    335,
    1,
    0,
    0,
    0,
    335,
    336,
    5,
    20,
    0,
    0,
    336,
    337,
    3,
    200,
    100,
    0,
    337,
    338,
    5,
    11,
    0,
    0,
    338,
    339,
    5,
    14,
    0,
    0,
    339,
    344,
    3,
    30,
    15,
    0,
    340,
    341,
    5,
    15,
    0,
    0,
    341,
    343,
    3,
    30,
    15,
    0,
    342,
    340,
    1,
    0,
    0,
    0,
    343,
    346,
    1,
    0,
    0,
    0,
    344,
    342,
    1,
    0,
    0,
    0,
    344,
    345,
    1,
    0,
    0,
    0,
    345,
    347,
    1,
    0,
    0,
    0,
    346,
    344,
    1,
    0,
    0,
    0,
    347,
    349,
    5,
    16,
    0,
    0,
    348,
    350,
    3,
    176,
    88,
    0,
    349,
    348,
    1,
    0,
    0,
    0,
    349,
    350,
    1,
    0,
    0,
    0,
    350,
    29,
    1,
    0,
    0,
    0,
    351,
    352,
    3,
    24,
    12,
    0,
    352,
    353,
    5,
    17,
    0,
    0,
    353,
    355,
    1,
    0,
    0,
    0,
    354,
    351,
    1,
    0,
    0,
    0,
    354,
    355,
    1,
    0,
    0,
    0,
    355,
    356,
    1,
    0,
    0,
    0,
    356,
    357,
    3,
    200,
    100,
    0,
    357,
    31,
    1,
    0,
    0,
    0,
    358,
    359,
    5,
    164,
    0,
    0,
    359,
    33,
    1,
    0,
    0,
    0,
    360,
    361,
    5,
    164,
    0,
    0,
    361,
    35,
    1,
    0,
    0,
    0,
    362,
    363,
    5,
    164,
    0,
    0,
    363,
    37,
    1,
    0,
    0,
    0,
    364,
    365,
    5,
    164,
    0,
    0,
    365,
    39,
    1,
    0,
    0,
    0,
    366,
    372,
    3,
    42,
    21,
    0,
    367,
    372,
    3,
    46,
    23,
    0,
    368,
    372,
    3,
    48,
    24,
    0,
    369,
    372,
    3,
    50,
    25,
    0,
    370,
    372,
    3,
    54,
    27,
    0,
    371,
    366,
    1,
    0,
    0,
    0,
    371,
    367,
    1,
    0,
    0,
    0,
    371,
    368,
    1,
    0,
    0,
    0,
    371,
    369,
    1,
    0,
    0,
    0,
    371,
    370,
    1,
    0,
    0,
    0,
    372,
    41,
    1,
    0,
    0,
    0,
    373,
    374,
    3,
    90,
    45,
    0,
    374,
    375,
    5,
    17,
    0,
    0,
    375,
    377,
    1,
    0,
    0,
    0,
    376,
    373,
    1,
    0,
    0,
    0,
    377,
    380,
    1,
    0,
    0,
    0,
    378,
    376,
    1,
    0,
    0,
    0,
    378,
    379,
    1,
    0,
    0,
    0,
    379,
    381,
    1,
    0,
    0,
    0,
    380,
    378,
    1,
    0,
    0,
    0,
    381,
    382,
    3,
    196,
    98,
    0,
    382,
    43,
    1,
    0,
    0,
    0,
    383,
    384,
    3,
    200,
    100,
    0,
    384,
    45,
    1,
    0,
    0,
    0,
    385,
    386,
    5,
    21,
    0,
    0,
    386,
    387,
    5,
    22,
    0,
    0,
    387,
    388,
    3,
    40,
    20,
    0,
    388,
    389,
    5,
    23,
    0,
    0,
    389,
    47,
    1,
    0,
    0,
    0,
    390,
    391,
    5,
    24,
    0,
    0,
    391,
    392,
    5,
    22,
    0,
    0,
    392,
    393,
    3,
    40,
    20,
    0,
    393,
    394,
    5,
    23,
    0,
    0,
    394,
    49,
    1,
    0,
    0,
    0,
    395,
    396,
    5,
    25,
    0,
    0,
    396,
    397,
    5,
    14,
    0,
    0,
    397,
    402,
    3,
    52,
    26,
    0,
    398,
    399,
    5,
    15,
    0,
    0,
    399,
    401,
    3,
    52,
    26,
    0,
    400,
    398,
    1,
    0,
    0,
    0,
    401,
    404,
    1,
    0,
    0,
    0,
    402,
    400,
    1,
    0,
    0,
    0,
    402,
    403,
    1,
    0,
    0,
    0,
    403,
    405,
    1,
    0,
    0,
    0,
    404,
    402,
    1,
    0,
    0,
    0,
    405,
    406,
    5,
    16,
    0,
    0,
    406,
    51,
    1,
    0,
    0,
    0,
    407,
    408,
    3,
    194,
    97,
    0,
    408,
    409,
    3,
    40,
    20,
    0,
    409,
    53,
    1,
    0,
    0,
    0,
    410,
    411,
    5,
    26,
    0,
    0,
    411,
    412,
    5,
    22,
    0,
    0,
    412,
    417,
    3,
    40,
    20,
    0,
    413,
    414,
    5,
    15,
    0,
    0,
    414,
    416,
    3,
    40,
    20,
    0,
    415,
    413,
    1,
    0,
    0,
    0,
    416,
    419,
    1,
    0,
    0,
    0,
    417,
    415,
    1,
    0,
    0,
    0,
    417,
    418,
    1,
    0,
    0,
    0,
    418,
    420,
    1,
    0,
    0,
    0,
    419,
    417,
    1,
    0,
    0,
    0,
    420,
    421,
    5,
    23,
    0,
    0,
    421,
    55,
    1,
    0,
    0,
    0,
    422,
    426,
    3,
    58,
    29,
    0,
    423,
    426,
    3,
    60,
    30,
    0,
    424,
    426,
    3,
    62,
    31,
    0,
    425,
    422,
    1,
    0,
    0,
    0,
    425,
    423,
    1,
    0,
    0,
    0,
    425,
    424,
    1,
    0,
    0,
    0,
    426,
    57,
    1,
    0,
    0,
    0,
    427,
    429,
    5,
    27,
    0,
    0,
    428,
    430,
    3,
    12,
    6,
    0,
    429,
    428,
    1,
    0,
    0,
    0,
    429,
    430,
    1,
    0,
    0,
    0,
    430,
    431,
    1,
    0,
    0,
    0,
    431,
    432,
    3,
    200,
    100,
    0,
    432,
    433,
    5,
    11,
    0,
    0,
    433,
    434,
    3,
    124,
    62,
    0,
    434,
    59,
    1,
    0,
    0,
    0,
    435,
    439,
    5,
    28,
    0,
    0,
    436,
    437,
    3,
    44,
    22,
    0,
    437,
    438,
    5,
    17,
    0,
    0,
    438,
    440,
    1,
    0,
    0,
    0,
    439,
    436,
    1,
    0,
    0,
    0,
    439,
    440,
    1,
    0,
    0,
    0,
    440,
    441,
    1,
    0,
    0,
    0,
    441,
    442,
    3,
    200,
    100,
    0,
    442,
    61,
    1,
    0,
    0,
    0,
    443,
    445,
    5,
    27,
    0,
    0,
    444,
    446,
    3,
    12,
    6,
    0,
    445,
    444,
    1,
    0,
    0,
    0,
    445,
    446,
    1,
    0,
    0,
    0,
    446,
    448,
    1,
    0,
    0,
    0,
    447,
    449,
    5,
    29,
    0,
    0,
    448,
    447,
    1,
    0,
    0,
    0,
    448,
    449,
    1,
    0,
    0,
    0,
    449,
    450,
    1,
    0,
    0,
    0,
    450,
    451,
    5,
    30,
    0,
    0,
    451,
    452,
    3,
    198,
    99,
    0,
    452,
    461,
    5,
    31,
    0,
    0,
    453,
    458,
    3,
    64,
    32,
    0,
    454,
    455,
    5,
    15,
    0,
    0,
    455,
    457,
    3,
    64,
    32,
    0,
    456,
    454,
    1,
    0,
    0,
    0,
    457,
    460,
    1,
    0,
    0,
    0,
    458,
    456,
    1,
    0,
    0,
    0,
    458,
    459,
    1,
    0,
    0,
    0,
    459,
    462,
    1,
    0,
    0,
    0,
    460,
    458,
    1,
    0,
    0,
    0,
    461,
    453,
    1,
    0,
    0,
    0,
    461,
    462,
    1,
    0,
    0,
    0,
    462,
    463,
    1,
    0,
    0,
    0,
    463,
    466,
    5,
    32,
    0,
    0,
    464,
    465,
    5,
    33,
    0,
    0,
    465,
    467,
    3,
    40,
    20,
    0,
    466,
    464,
    1,
    0,
    0,
    0,
    466,
    467,
    1,
    0,
    0,
    0,
    467,
    468,
    1,
    0,
    0,
    0,
    468,
    471,
    5,
    11,
    0,
    0,
    469,
    472,
    3,
    66,
    33,
    0,
    470,
    472,
    5,
    34,
    0,
    0,
    471,
    469,
    1,
    0,
    0,
    0,
    471,
    470,
    1,
    0,
    0,
    0,
    472,
    63,
    1,
    0,
    0,
    0,
    473,
    474,
    3,
    194,
    97,
    0,
    474,
    475,
    3,
    40,
    20,
    0,
    475,
    65,
    1,
    0,
    0,
    0,
    476,
    477,
    3,
    124,
    62,
    0,
    477,
    67,
    1,
    0,
    0,
    0,
    478,
    485,
    3,
    80,
    40,
    0,
    479,
    485,
    3,
    116,
    58,
    0,
    480,
    481,
    5,
    31,
    0,
    0,
    481,
    482,
    3,
    124,
    62,
    0,
    482,
    483,
    5,
    32,
    0,
    0,
    483,
    485,
    1,
    0,
    0,
    0,
    484,
    478,
    1,
    0,
    0,
    0,
    484,
    479,
    1,
    0,
    0,
    0,
    484,
    480,
    1,
    0,
    0,
    0,
    485,
    69,
    1,
    0,
    0,
    0,
    486,
    487,
    3,
    68,
    34,
    0,
    487,
    488,
    3,
    72,
    36,
    0,
    488,
    71,
    1,
    0,
    0,
    0,
    489,
    490,
    3,
    200,
    100,
    0,
    490,
    73,
    1,
    0,
    0,
    0,
    491,
    494,
    3,
    76,
    38,
    0,
    492,
    494,
    3,
    78,
    39,
    0,
    493,
    491,
    1,
    0,
    0,
    0,
    493,
    492,
    1,
    0,
    0,
    0,
    494,
    75,
    1,
    0,
    0,
    0,
    495,
    496,
    5,
    35,
    0,
    0,
    496,
    497,
    3,
    70,
    35,
    0,
    497,
    498,
    5,
    36,
    0,
    0,
    498,
    499,
    3,
    124,
    62,
    0,
    499,
    77,
    1,
    0,
    0,
    0,
    500,
    501,
    5,
    37,
    0,
    0,
    501,
    502,
    3,
    70,
    35,
    0,
    502,
    503,
    5,
    36,
    0,
    0,
    503,
    504,
    3,
    124,
    62,
    0,
    504,
    79,
    1,
    0,
    0,
    0,
    505,
    509,
    5,
    38,
    0,
    0,
    506,
    507,
    3,
    82,
    41,
    0,
    507,
    508,
    5,
    39,
    0,
    0,
    508,
    510,
    1,
    0,
    0,
    0,
    509,
    506,
    1,
    0,
    0,
    0,
    509,
    510,
    1,
    0,
    0,
    0,
    510,
    511,
    1,
    0,
    0,
    0,
    511,
    519,
    3,
    42,
    21,
    0,
    512,
    516,
    5,
    11,
    0,
    0,
    513,
    514,
    3,
    84,
    42,
    0,
    514,
    515,
    3,
    86,
    43,
    0,
    515,
    517,
    1,
    0,
    0,
    0,
    516,
    513,
    1,
    0,
    0,
    0,
    516,
    517,
    1,
    0,
    0,
    0,
    517,
    518,
    1,
    0,
    0,
    0,
    518,
    520,
    3,
    88,
    44,
    0,
    519,
    512,
    1,
    0,
    0,
    0,
    519,
    520,
    1,
    0,
    0,
    0,
    520,
    521,
    1,
    0,
    0,
    0,
    521,
    522,
    5,
    40,
    0,
    0,
    522,
    81,
    1,
    0,
    0,
    0,
    523,
    524,
    3,
    116,
    58,
    0,
    524,
    83,
    1,
    0,
    0,
    0,
    525,
    526,
    3,
    120,
    60,
    0,
    526,
    85,
    1,
    0,
    0,
    0,
    527,
    528,
    7,
    1,
    0,
    0,
    528,
    87,
    1,
    0,
    0,
    0,
    529,
    532,
    3,
    116,
    58,
    0,
    530,
    532,
    3,
    124,
    62,
    0,
    531,
    529,
    1,
    0,
    0,
    0,
    531,
    530,
    1,
    0,
    0,
    0,
    532,
    89,
    1,
    0,
    0,
    0,
    533,
    534,
    3,
    200,
    100,
    0,
    534,
    91,
    1,
    0,
    0,
    0,
    535,
    537,
    3,
    94,
    47,
    0,
    536,
    538,
    3,
    96,
    48,
    0,
    537,
    536,
    1,
    0,
    0,
    0,
    537,
    538,
    1,
    0,
    0,
    0,
    538,
    542,
    1,
    0,
    0,
    0,
    539,
    541,
    3,
    74,
    37,
    0,
    540,
    539,
    1,
    0,
    0,
    0,
    541,
    544,
    1,
    0,
    0,
    0,
    542,
    540,
    1,
    0,
    0,
    0,
    542,
    543,
    1,
    0,
    0,
    0,
    543,
    546,
    1,
    0,
    0,
    0,
    544,
    542,
    1,
    0,
    0,
    0,
    545,
    547,
    3,
    100,
    50,
    0,
    546,
    545,
    1,
    0,
    0,
    0,
    546,
    547,
    1,
    0,
    0,
    0,
    547,
    550,
    1,
    0,
    0,
    0,
    548,
    551,
    3,
    104,
    52,
    0,
    549,
    551,
    3,
    102,
    51,
    0,
    550,
    548,
    1,
    0,
    0,
    0,
    550,
    549,
    1,
    0,
    0,
    0,
    550,
    551,
    1,
    0,
    0,
    0,
    551,
    553,
    1,
    0,
    0,
    0,
    552,
    554,
    3,
    108,
    54,
    0,
    553,
    552,
    1,
    0,
    0,
    0,
    553,
    554,
    1,
    0,
    0,
    0,
    554,
    93,
    1,
    0,
    0,
    0,
    555,
    557,
    5,
    19,
    0,
    0,
    556,
    555,
    1,
    0,
    0,
    0,
    556,
    557,
    1,
    0,
    0,
    0,
    557,
    558,
    1,
    0,
    0,
    0,
    558,
    563,
    3,
    70,
    35,
    0,
    559,
    560,
    5,
    15,
    0,
    0,
    560,
    562,
    3,
    70,
    35,
    0,
    561,
    559,
    1,
    0,
    0,
    0,
    562,
    565,
    1,
    0,
    0,
    0,
    563,
    561,
    1,
    0,
    0,
    0,
    563,
    564,
    1,
    0,
    0,
    0,
    564,
    95,
    1,
    0,
    0,
    0,
    565,
    563,
    1,
    0,
    0,
    0,
    566,
    567,
    5,
    44,
    0,
    0,
    567,
    572,
    3,
    98,
    49,
    0,
    568,
    569,
    5,
    15,
    0,
    0,
    569,
    571,
    3,
    98,
    49,
    0,
    570,
    568,
    1,
    0,
    0,
    0,
    571,
    574,
    1,
    0,
    0,
    0,
    572,
    570,
    1,
    0,
    0,
    0,
    572,
    573,
    1,
    0,
    0,
    0,
    573,
    97,
    1,
    0,
    0,
    0,
    574,
    572,
    1,
    0,
    0,
    0,
    575,
    576,
    3,
    200,
    100,
    0,
    576,
    577,
    5,
    11,
    0,
    0,
    577,
    578,
    3,
    124,
    62,
    0,
    578,
    99,
    1,
    0,
    0,
    0,
    579,
    580,
    5,
    45,
    0,
    0,
    580,
    581,
    3,
    124,
    62,
    0,
    581,
    101,
    1,
    0,
    0,
    0,
    582,
    584,
    5,
    46,
    0,
    0,
    583,
    585,
    7,
    2,
    0,
    0,
    584,
    583,
    1,
    0,
    0,
    0,
    584,
    585,
    1,
    0,
    0,
    0,
    585,
    586,
    1,
    0,
    0,
    0,
    586,
    587,
    3,
    124,
    62,
    0,
    587,
    103,
    1,
    0,
    0,
    0,
    588,
    590,
    5,
    49,
    0,
    0,
    589,
    591,
    7,
    2,
    0,
    0,
    590,
    589,
    1,
    0,
    0,
    0,
    590,
    591,
    1,
    0,
    0,
    0,
    591,
    592,
    1,
    0,
    0,
    0,
    592,
    594,
    3,
    200,
    100,
    0,
    593,
    595,
    3,
    106,
    53,
    0,
    594,
    593,
    1,
    0,
    0,
    0,
    594,
    595,
    1,
    0,
    0,
    0,
    595,
    596,
    1,
    0,
    0,
    0,
    596,
    597,
    5,
    11,
    0,
    0,
    597,
    598,
    3,
    124,
    62,
    0,
    598,
    105,
    1,
    0,
    0,
    0,
    599,
    606,
    5,
    50,
    0,
    0,
    600,
    607,
    3,
    122,
    61,
    0,
    601,
    607,
    3,
    206,
    103,
    0,
    602,
    603,
    5,
    31,
    0,
    0,
    603,
    604,
    3,
    124,
    62,
    0,
    604,
    605,
    5,
    32,
    0,
    0,
    605,
    607,
    1,
    0,
    0,
    0,
    606,
    600,
    1,
    0,
    0,
    0,
    606,
    601,
    1,
    0,
    0,
    0,
    606,
    602,
    1,
    0,
    0,
    0,
    607,
    107,
    1,
    0,
    0,
    0,
    608,
    619,
    5,
    51,
    0,
    0,
    609,
    620,
    3,
    110,
    55,
    0,
    610,
    611,
    5,
    52,
    0,
    0,
    611,
    616,
    3,
    112,
    56,
    0,
    612,
    613,
    5,
    15,
    0,
    0,
    613,
    615,
    3,
    112,
    56,
    0,
    614,
    612,
    1,
    0,
    0,
    0,
    615,
    618,
    1,
    0,
    0,
    0,
    616,
    614,
    1,
    0,
    0,
    0,
    616,
    617,
    1,
    0,
    0,
    0,
    617,
    620,
    1,
    0,
    0,
    0,
    618,
    616,
    1,
    0,
    0,
    0,
    619,
    609,
    1,
    0,
    0,
    0,
    619,
    610,
    1,
    0,
    0,
    0,
    620,
    109,
    1,
    0,
    0,
    0,
    621,
    622,
    7,
    3,
    0,
    0,
    622,
    111,
    1,
    0,
    0,
    0,
    623,
    625,
    3,
    132,
    66,
    0,
    624,
    626,
    3,
    110,
    55,
    0,
    625,
    624,
    1,
    0,
    0,
    0,
    625,
    626,
    1,
    0,
    0,
    0,
    626,
    113,
    1,
    0,
    0,
    0,
    627,
    628,
    3,
    90,
    45,
    0,
    628,
    629,
    5,
    17,
    0,
    0,
    629,
    631,
    1,
    0,
    0,
    0,
    630,
    627,
    1,
    0,
    0,
    0,
    631,
    634,
    1,
    0,
    0,
    0,
    632,
    630,
    1,
    0,
    0,
    0,
    632,
    633,
    1,
    0,
    0,
    0,
    633,
    635,
    1,
    0,
    0,
    0,
    634,
    632,
    1,
    0,
    0,
    0,
    635,
    636,
    3,
    200,
    100,
    0,
    636,
    115,
    1,
    0,
    0,
    0,
    637,
    638,
    3,
    118,
    59,
    0,
    638,
    639,
    5,
    17,
    0,
    0,
    639,
    641,
    1,
    0,
    0,
    0,
    640,
    637,
    1,
    0,
    0,
    0,
    641,
    644,
    1,
    0,
    0,
    0,
    642,
    640,
    1,
    0,
    0,
    0,
    642,
    643,
    1,
    0,
    0,
    0,
    643,
    645,
    1,
    0,
    0,
    0,
    644,
    642,
    1,
    0,
    0,
    0,
    645,
    646,
    3,
    194,
    97,
    0,
    646,
    117,
    1,
    0,
    0,
    0,
    647,
    648,
    3,
    194,
    97,
    0,
    648,
    119,
    1,
    0,
    0,
    0,
    649,
    650,
    6,
    60,
    -1,
    0,
    650,
    651,
    3,
    194,
    97,
    0,
    651,
    662,
    1,
    0,
    0,
    0,
    652,
    653,
    10,
    2,
    0,
    0,
    653,
    654,
    5,
    17,
    0,
    0,
    654,
    661,
    3,
    194,
    97,
    0,
    655,
    656,
    10,
    1,
    0,
    0,
    656,
    657,
    5,
    38,
    0,
    0,
    657,
    658,
    3,
    122,
    61,
    0,
    658,
    659,
    5,
    40,
    0,
    0,
    659,
    661,
    1,
    0,
    0,
    0,
    660,
    652,
    1,
    0,
    0,
    0,
    660,
    655,
    1,
    0,
    0,
    0,
    661,
    664,
    1,
    0,
    0,
    0,
    662,
    660,
    1,
    0,
    0,
    0,
    662,
    663,
    1,
    0,
    0,
    0,
    663,
    121,
    1,
    0,
    0,
    0,
    664,
    662,
    1,
    0,
    0,
    0,
    665,
    668,
    5,
    164,
    0,
    0,
    666,
    668,
    5,
    165,
    0,
    0,
    667,
    665,
    1,
    0,
    0,
    0,
    667,
    666,
    1,
    0,
    0,
    0,
    668,
    123,
    1,
    0,
    0,
    0,
    669,
    670,
    6,
    62,
    -1,
    0,
    670,
    701,
    3,
    132,
    66,
    0,
    671,
    701,
    3,
    80,
    40,
    0,
    672,
    701,
    3,
    92,
    46,
    0,
    673,
    674,
    5,
    63,
    0,
    0,
    674,
    675,
    3,
    124,
    62,
    0,
    675,
    676,
    5,
    62,
    0,
    0,
    676,
    677,
    3,
    40,
    20,
    0,
    677,
    701,
    1,
    0,
    0,
    0,
    678,
    679,
    5,
    58,
    0,
    0,
    679,
    701,
    3,
    124,
    62,
    13,
    680,
    681,
    5,
    64,
    0,
    0,
    681,
    701,
    3,
    124,
    62,
    12,
    682,
    683,
    5,
    68,
    0,
    0,
    683,
    685,
    5,
    41,
    0,
    0,
    684,
    682,
    1,
    0,
    0,
    0,
    684,
    685,
    1,
    0,
    0,
    0,
    685,
    686,
    1,
    0,
    0,
    0,
    686,
    687,
    3,
    130,
    65,
    0,
    687,
    688,
    5,
    66,
    0,
    0,
    688,
    689,
    3,
    132,
    66,
    0,
    689,
    690,
    5,
    67,
    0,
    0,
    690,
    691,
    3,
    132,
    66,
    0,
    691,
    701,
    1,
    0,
    0,
    0,
    692,
    693,
    5,
    69,
    0,
    0,
    693,
    694,
    5,
    41,
    0,
    0,
    694,
    695,
    3,
    130,
    65,
    0,
    695,
    696,
    5,
    66,
    0,
    0,
    696,
    697,
    3,
    132,
    66,
    0,
    697,
    698,
    5,
    67,
    0,
    0,
    698,
    699,
    3,
    132,
    66,
    0,
    699,
    701,
    1,
    0,
    0,
    0,
    700,
    669,
    1,
    0,
    0,
    0,
    700,
    671,
    1,
    0,
    0,
    0,
    700,
    672,
    1,
    0,
    0,
    0,
    700,
    673,
    1,
    0,
    0,
    0,
    700,
    678,
    1,
    0,
    0,
    0,
    700,
    680,
    1,
    0,
    0,
    0,
    700,
    684,
    1,
    0,
    0,
    0,
    700,
    692,
    1,
    0,
    0,
    0,
    701,
    750,
    1,
    0,
    0,
    0,
    702,
    703,
    10,
    8,
    0,
    0,
    703,
    704,
    7,
    4,
    0,
    0,
    704,
    749,
    3,
    124,
    62,
    9,
    705,
    706,
    10,
    7,
    0,
    0,
    706,
    707,
    3,
    148,
    74,
    0,
    707,
    708,
    3,
    124,
    62,
    8,
    708,
    749,
    1,
    0,
    0,
    0,
    709,
    710,
    10,
    6,
    0,
    0,
    710,
    711,
    7,
    5,
    0,
    0,
    711,
    749,
    3,
    124,
    62,
    7,
    712,
    713,
    10,
    5,
    0,
    0,
    713,
    715,
    7,
    6,
    0,
    0,
    714,
    716,
    3,
    136,
    68,
    0,
    715,
    714,
    1,
    0,
    0,
    0,
    715,
    716,
    1,
    0,
    0,
    0,
    716,
    717,
    1,
    0,
    0,
    0,
    717,
    749,
    3,
    124,
    62,
    6,
    718,
    719,
    10,
    4,
    0,
    0,
    719,
    720,
    5,
    67,
    0,
    0,
    720,
    749,
    3,
    124,
    62,
    5,
    721,
    722,
    10,
    3,
    0,
    0,
    722,
    723,
    7,
    7,
    0,
    0,
    723,
    749,
    3,
    124,
    62,
    4,
    724,
    725,
    10,
    2,
    0,
    0,
    725,
    726,
    5,
    77,
    0,
    0,
    726,
    749,
    3,
    124,
    62,
    3,
    727,
    728,
    10,
    1,
    0,
    0,
    728,
    729,
    7,
    8,
    0,
    0,
    729,
    749,
    3,
    124,
    62,
    2,
    730,
    731,
    10,
    16,
    0,
    0,
    731,
    733,
    5,
    57,
    0,
    0,
    732,
    734,
    5,
    58,
    0,
    0,
    733,
    732,
    1,
    0,
    0,
    0,
    733,
    734,
    1,
    0,
    0,
    0,
    734,
    735,
    1,
    0,
    0,
    0,
    735,
    749,
    7,
    9,
    0,
    0,
    736,
    737,
    10,
    15,
    0,
    0,
    737,
    738,
    7,
    10,
    0,
    0,
    738,
    749,
    3,
    40,
    20,
    0,
    739,
    741,
    10,
    11,
    0,
    0,
    740,
    742,
    5,
    65,
    0,
    0,
    741,
    740,
    1,
    0,
    0,
    0,
    741,
    742,
    1,
    0,
    0,
    0,
    742,
    743,
    1,
    0,
    0,
    0,
    743,
    744,
    5,
    66,
    0,
    0,
    744,
    745,
    3,
    132,
    66,
    0,
    745,
    746,
    5,
    67,
    0,
    0,
    746,
    747,
    3,
    132,
    66,
    0,
    747,
    749,
    1,
    0,
    0,
    0,
    748,
    702,
    1,
    0,
    0,
    0,
    748,
    705,
    1,
    0,
    0,
    0,
    748,
    709,
    1,
    0,
    0,
    0,
    748,
    712,
    1,
    0,
    0,
    0,
    748,
    718,
    1,
    0,
    0,
    0,
    748,
    721,
    1,
    0,
    0,
    0,
    748,
    724,
    1,
    0,
    0,
    0,
    748,
    727,
    1,
    0,
    0,
    0,
    748,
    730,
    1,
    0,
    0,
    0,
    748,
    736,
    1,
    0,
    0,
    0,
    748,
    739,
    1,
    0,
    0,
    0,
    749,
    752,
    1,
    0,
    0,
    0,
    750,
    748,
    1,
    0,
    0,
    0,
    750,
    751,
    1,
    0,
    0,
    0,
    751,
    125,
    1,
    0,
    0,
    0,
    752,
    750,
    1,
    0,
    0,
    0,
    753,
    754,
    7,
    11,
    0,
    0,
    754,
    127,
    1,
    0,
    0,
    0,
    755,
    760,
    3,
    126,
    63,
    0,
    756,
    760,
    5,
    90,
    0,
    0,
    757,
    760,
    5,
    91,
    0,
    0,
    758,
    760,
    5,
    92,
    0,
    0,
    759,
    755,
    1,
    0,
    0,
    0,
    759,
    756,
    1,
    0,
    0,
    0,
    759,
    757,
    1,
    0,
    0,
    0,
    759,
    758,
    1,
    0,
    0,
    0,
    760,
    129,
    1,
    0,
    0,
    0,
    761,
    762,
    7,
    12,
    0,
    0,
    762,
    131,
    1,
    0,
    0,
    0,
    763,
    764,
    6,
    66,
    -1,
    0,
    764,
    842,
    3,
    150,
    75,
    0,
    765,
    766,
    5,
    101,
    0,
    0,
    766,
    767,
    3,
    124,
    62,
    0,
    767,
    770,
    5,
    102,
    0,
    0,
    768,
    771,
    3,
    40,
    20,
    0,
    769,
    771,
    3,
    208,
    104,
    0,
    770,
    768,
    1,
    0,
    0,
    0,
    770,
    769,
    1,
    0,
    0,
    0,
    771,
    842,
    1,
    0,
    0,
    0,
    772,
    773,
    7,
    13,
    0,
    0,
    773,
    842,
    3,
    132,
    66,
    18,
    774,
    775,
    7,
    14,
    0,
    0,
    775,
    776,
    5,
    107,
    0,
    0,
    776,
    842,
    3,
    132,
    66,
    17,
    777,
    778,
    3,
    128,
    64,
    0,
    778,
    779,
    5,
    19,
    0,
    0,
    779,
    780,
    3,
    132,
    66,
    16,
    780,
    842,
    1,
    0,
    0,
    0,
    781,
    782,
    5,
    68,
    0,
    0,
    782,
    783,
    5,
    41,
    0,
    0,
    783,
    784,
    3,
    130,
    65,
    0,
    784,
    785,
    5,
    107,
    0,
    0,
    785,
    786,
    3,
    132,
    66,
    15,
    786,
    842,
    1,
    0,
    0,
    0,
    787,
    788,
    5,
    69,
    0,
    0,
    788,
    789,
    5,
    41,
    0,
    0,
    789,
    790,
    3,
    130,
    65,
    0,
    790,
    791,
    5,
    107,
    0,
    0,
    791,
    792,
    3,
    132,
    66,
    14,
    792,
    842,
    1,
    0,
    0,
    0,
    793,
    794,
    5,
    108,
    0,
    0,
    794,
    795,
    5,
    107,
    0,
    0,
    795,
    842,
    3,
    132,
    66,
    13,
    796,
    797,
    5,
    109,
    0,
    0,
    797,
    798,
    5,
    107,
    0,
    0,
    798,
    842,
    3,
    132,
    66,
    12,
    799,
    800,
    5,
    110,
    0,
    0,
    800,
    801,
    5,
    107,
    0,
    0,
    801,
    842,
    3,
    132,
    66,
    11,
    802,
    803,
    5,
    111,
    0,
    0,
    803,
    804,
    5,
    19,
    0,
    0,
    804,
    842,
    3,
    132,
    66,
    10,
    805,
    806,
    5,
    112,
    0,
    0,
    806,
    807,
    5,
    19,
    0,
    0,
    807,
    842,
    3,
    132,
    66,
    9,
    808,
    809,
    7,
    15,
    0,
    0,
    809,
    842,
    3,
    42,
    21,
    0,
    810,
    811,
    5,
    121,
    0,
    0,
    811,
    812,
    3,
    124,
    62,
    0,
    812,
    813,
    5,
    122,
    0,
    0,
    813,
    814,
    3,
    124,
    62,
    0,
    814,
    815,
    5,
    123,
    0,
    0,
    815,
    816,
    3,
    124,
    62,
    0,
    816,
    842,
    1,
    0,
    0,
    0,
    817,
    819,
    5,
    124,
    0,
    0,
    818,
    820,
    3,
    124,
    62,
    0,
    819,
    818,
    1,
    0,
    0,
    0,
    819,
    820,
    1,
    0,
    0,
    0,
    820,
    822,
    1,
    0,
    0,
    0,
    821,
    823,
    3,
    134,
    67,
    0,
    822,
    821,
    1,
    0,
    0,
    0,
    823,
    824,
    1,
    0,
    0,
    0,
    824,
    822,
    1,
    0,
    0,
    0,
    824,
    825,
    1,
    0,
    0,
    0,
    825,
    826,
    1,
    0,
    0,
    0,
    826,
    827,
    5,
    123,
    0,
    0,
    827,
    828,
    3,
    124,
    62,
    0,
    828,
    829,
    5,
    106,
    0,
    0,
    829,
    842,
    1,
    0,
    0,
    0,
    830,
    831,
    7,
    16,
    0,
    0,
    831,
    842,
    3,
    124,
    62,
    0,
    832,
    833,
    7,
    17,
    0,
    0,
    833,
    839,
    3,
    124,
    62,
    0,
    834,
    837,
    5,
    128,
    0,
    0,
    835,
    838,
    3,
    126,
    63,
    0,
    836,
    838,
    3,
    124,
    62,
    0,
    837,
    835,
    1,
    0,
    0,
    0,
    837,
    836,
    1,
    0,
    0,
    0,
    838,
    840,
    1,
    0,
    0,
    0,
    839,
    834,
    1,
    0,
    0,
    0,
    839,
    840,
    1,
    0,
    0,
    0,
    840,
    842,
    1,
    0,
    0,
    0,
    841,
    763,
    1,
    0,
    0,
    0,
    841,
    765,
    1,
    0,
    0,
    0,
    841,
    772,
    1,
    0,
    0,
    0,
    841,
    774,
    1,
    0,
    0,
    0,
    841,
    777,
    1,
    0,
    0,
    0,
    841,
    781,
    1,
    0,
    0,
    0,
    841,
    787,
    1,
    0,
    0,
    0,
    841,
    793,
    1,
    0,
    0,
    0,
    841,
    796,
    1,
    0,
    0,
    0,
    841,
    799,
    1,
    0,
    0,
    0,
    841,
    802,
    1,
    0,
    0,
    0,
    841,
    805,
    1,
    0,
    0,
    0,
    841,
    808,
    1,
    0,
    0,
    0,
    841,
    810,
    1,
    0,
    0,
    0,
    841,
    817,
    1,
    0,
    0,
    0,
    841,
    830,
    1,
    0,
    0,
    0,
    841,
    832,
    1,
    0,
    0,
    0,
    842,
    862,
    1,
    0,
    0,
    0,
    843,
    844,
    10,
    7,
    0,
    0,
    844,
    845,
    5,
    115,
    0,
    0,
    845,
    861,
    3,
    132,
    66,
    8,
    846,
    847,
    10,
    6,
    0,
    0,
    847,
    848,
    7,
    18,
    0,
    0,
    848,
    861,
    3,
    132,
    66,
    7,
    849,
    850,
    10,
    5,
    0,
    0,
    850,
    851,
    7,
    19,
    0,
    0,
    851,
    861,
    3,
    132,
    66,
    6,
    852,
    853,
    10,
    21,
    0,
    0,
    853,
    854,
    5,
    17,
    0,
    0,
    854,
    861,
    3,
    152,
    76,
    0,
    855,
    856,
    10,
    20,
    0,
    0,
    856,
    857,
    5,
    38,
    0,
    0,
    857,
    858,
    3,
    124,
    62,
    0,
    858,
    859,
    5,
    40,
    0,
    0,
    859,
    861,
    1,
    0,
    0,
    0,
    860,
    843,
    1,
    0,
    0,
    0,
    860,
    846,
    1,
    0,
    0,
    0,
    860,
    849,
    1,
    0,
    0,
    0,
    860,
    852,
    1,
    0,
    0,
    0,
    860,
    855,
    1,
    0,
    0,
    0,
    861,
    864,
    1,
    0,
    0,
    0,
    862,
    860,
    1,
    0,
    0,
    0,
    862,
    863,
    1,
    0,
    0,
    0,
    863,
    133,
    1,
    0,
    0,
    0,
    864,
    862,
    1,
    0,
    0,
    0,
    865,
    866,
    5,
    129,
    0,
    0,
    866,
    867,
    3,
    124,
    62,
    0,
    867,
    868,
    5,
    122,
    0,
    0,
    868,
    869,
    3,
    124,
    62,
    0,
    869,
    135,
    1,
    0,
    0,
    0,
    870,
    871,
    3,
    126,
    63,
    0,
    871,
    872,
    5,
    107,
    0,
    0,
    872,
    137,
    1,
    0,
    0,
    0,
    873,
    874,
    7,
    20,
    0,
    0,
    874,
    139,
    1,
    0,
    0,
    0,
    875,
    876,
    7,
    21,
    0,
    0,
    876,
    141,
    1,
    0,
    0,
    0,
    877,
    878,
    7,
    22,
    0,
    0,
    878,
    143,
    1,
    0,
    0,
    0,
    879,
    881,
    3,
    206,
    103,
    0,
    880,
    882,
    3,
    140,
    70,
    0,
    881,
    880,
    1,
    0,
    0,
    0,
    881,
    882,
    1,
    0,
    0,
    0,
    882,
    887,
    1,
    0,
    0,
    0,
    883,
    884,
    3,
    142,
    71,
    0,
    884,
    885,
    3,
    206,
    103,
    0,
    885,
    887,
    1,
    0,
    0,
    0,
    886,
    879,
    1,
    0,
    0,
    0,
    886,
    883,
    1,
    0,
    0,
    0,
    887,
    145,
    1,
    0,
    0,
    0,
    888,
    890,
    5,
    136,
    0,
    0,
    889,
    888,
    1,
    0,
    0,
    0,
    889,
    890,
    1,
    0,
    0,
    0,
    890,
    891,
    1,
    0,
    0,
    0,
    891,
    897,
    7,
    23,
    0,
    0,
    892,
    894,
    7,
    23,
    0,
    0,
    893,
    895,
    5,
    139,
    0,
    0,
    894,
    893,
    1,
    0,
    0,
    0,
    894,
    895,
    1,
    0,
    0,
    0,
    895,
    897,
    1,
    0,
    0,
    0,
    896,
    889,
    1,
    0,
    0,
    0,
    896,
    892,
    1,
    0,
    0,
    0,
    897,
    147,
    1,
    0,
    0,
    0,
    898,
    900,
    7,
    24,
    0,
    0,
    899,
    898,
    1,
    0,
    0,
    0,
    899,
    900,
    1,
    0,
    0,
    0,
    900,
    901,
    1,
    0,
    0,
    0,
    901,
    903,
    5,
    143,
    0,
    0,
    902,
    904,
    3,
    126,
    63,
    0,
    903,
    902,
    1,
    0,
    0,
    0,
    903,
    904,
    1,
    0,
    0,
    0,
    904,
    907,
    1,
    0,
    0,
    0,
    905,
    908,
    3,
    138,
    69,
    0,
    906,
    908,
    5,
    62,
    0,
    0,
    907,
    905,
    1,
    0,
    0,
    0,
    907,
    906,
    1,
    0,
    0,
    0,
    908,
    910,
    1,
    0,
    0,
    0,
    909,
    911,
    7,
    14,
    0,
    0,
    910,
    909,
    1,
    0,
    0,
    0,
    910,
    911,
    1,
    0,
    0,
    0,
    911,
    980,
    1,
    0,
    0,
    0,
    912,
    914,
    5,
    65,
    0,
    0,
    913,
    912,
    1,
    0,
    0,
    0,
    913,
    914,
    1,
    0,
    0,
    0,
    914,
    915,
    1,
    0,
    0,
    0,
    915,
    917,
    5,
    144,
    0,
    0,
    916,
    918,
    3,
    136,
    68,
    0,
    917,
    916,
    1,
    0,
    0,
    0,
    917,
    918,
    1,
    0,
    0,
    0,
    918,
    920,
    1,
    0,
    0,
    0,
    919,
    921,
    7,
    14,
    0,
    0,
    920,
    919,
    1,
    0,
    0,
    0,
    920,
    921,
    1,
    0,
    0,
    0,
    921,
    980,
    1,
    0,
    0,
    0,
    922,
    924,
    7,
    24,
    0,
    0,
    923,
    922,
    1,
    0,
    0,
    0,
    923,
    924,
    1,
    0,
    0,
    0,
    924,
    926,
    1,
    0,
    0,
    0,
    925,
    927,
    5,
    65,
    0,
    0,
    926,
    925,
    1,
    0,
    0,
    0,
    926,
    927,
    1,
    0,
    0,
    0,
    927,
    928,
    1,
    0,
    0,
    0,
    928,
    930,
    7,
    25,
    0,
    0,
    929,
    931,
    3,
    136,
    68,
    0,
    930,
    929,
    1,
    0,
    0,
    0,
    930,
    931,
    1,
    0,
    0,
    0,
    931,
    980,
    1,
    0,
    0,
    0,
    932,
    934,
    7,
    24,
    0,
    0,
    933,
    932,
    1,
    0,
    0,
    0,
    933,
    934,
    1,
    0,
    0,
    0,
    934,
    936,
    1,
    0,
    0,
    0,
    935,
    937,
    3,
    144,
    72,
    0,
    936,
    935,
    1,
    0,
    0,
    0,
    936,
    937,
    1,
    0,
    0,
    0,
    937,
    938,
    1,
    0,
    0,
    0,
    938,
    940,
    3,
    146,
    73,
    0,
    939,
    941,
    3,
    136,
    68,
    0,
    940,
    939,
    1,
    0,
    0,
    0,
    940,
    941,
    1,
    0,
    0,
    0,
    941,
    943,
    1,
    0,
    0,
    0,
    942,
    944,
    7,
    14,
    0,
    0,
    943,
    942,
    1,
    0,
    0,
    0,
    943,
    944,
    1,
    0,
    0,
    0,
    944,
    980,
    1,
    0,
    0,
    0,
    945,
    947,
    7,
    24,
    0,
    0,
    946,
    945,
    1,
    0,
    0,
    0,
    946,
    947,
    1,
    0,
    0,
    0,
    947,
    949,
    1,
    0,
    0,
    0,
    948,
    950,
    5,
    65,
    0,
    0,
    949,
    948,
    1,
    0,
    0,
    0,
    949,
    950,
    1,
    0,
    0,
    0,
    950,
    951,
    1,
    0,
    0,
    0,
    951,
    952,
    5,
    147,
    0,
    0,
    952,
    953,
    3,
    206,
    103,
    0,
    953,
    955,
    5,
    107,
    0,
    0,
    954,
    956,
    7,
    14,
    0,
    0,
    955,
    954,
    1,
    0,
    0,
    0,
    955,
    956,
    1,
    0,
    0,
    0,
    956,
    980,
    1,
    0,
    0,
    0,
    957,
    959,
    5,
    148,
    0,
    0,
    958,
    960,
    7,
    23,
    0,
    0,
    959,
    958,
    1,
    0,
    0,
    0,
    959,
    960,
    1,
    0,
    0,
    0,
    960,
    962,
    1,
    0,
    0,
    0,
    961,
    963,
    3,
    136,
    68,
    0,
    962,
    961,
    1,
    0,
    0,
    0,
    962,
    963,
    1,
    0,
    0,
    0,
    963,
    980,
    1,
    0,
    0,
    0,
    964,
    966,
    5,
    149,
    0,
    0,
    965,
    967,
    7,
    23,
    0,
    0,
    966,
    965,
    1,
    0,
    0,
    0,
    966,
    967,
    1,
    0,
    0,
    0,
    967,
    969,
    1,
    0,
    0,
    0,
    968,
    970,
    3,
    136,
    68,
    0,
    969,
    968,
    1,
    0,
    0,
    0,
    969,
    970,
    1,
    0,
    0,
    0,
    970,
    980,
    1,
    0,
    0,
    0,
    971,
    973,
    5,
    140,
    0,
    0,
    972,
    974,
    3,
    136,
    68,
    0,
    973,
    972,
    1,
    0,
    0,
    0,
    973,
    974,
    1,
    0,
    0,
    0,
    974,
    980,
    1,
    0,
    0,
    0,
    975,
    977,
    5,
    141,
    0,
    0,
    976,
    978,
    3,
    136,
    68,
    0,
    977,
    976,
    1,
    0,
    0,
    0,
    977,
    978,
    1,
    0,
    0,
    0,
    978,
    980,
    1,
    0,
    0,
    0,
    979,
    899,
    1,
    0,
    0,
    0,
    979,
    913,
    1,
    0,
    0,
    0,
    979,
    923,
    1,
    0,
    0,
    0,
    979,
    933,
    1,
    0,
    0,
    0,
    979,
    946,
    1,
    0,
    0,
    0,
    979,
    957,
    1,
    0,
    0,
    0,
    979,
    964,
    1,
    0,
    0,
    0,
    979,
    971,
    1,
    0,
    0,
    0,
    979,
    975,
    1,
    0,
    0,
    0,
    980,
    149,
    1,
    0,
    0,
    0,
    981,
    995,
    3,
    156,
    78,
    0,
    982,
    995,
    3,
    162,
    81,
    0,
    983,
    995,
    3,
    202,
    101,
    0,
    984,
    995,
    3,
    164,
    82,
    0,
    985,
    995,
    3,
    166,
    83,
    0,
    986,
    995,
    3,
    170,
    85,
    0,
    987,
    995,
    3,
    174,
    87,
    0,
    988,
    995,
    3,
    178,
    89,
    0,
    989,
    995,
    3,
    180,
    90,
    0,
    990,
    991,
    5,
    31,
    0,
    0,
    991,
    992,
    3,
    124,
    62,
    0,
    992,
    993,
    5,
    32,
    0,
    0,
    993,
    995,
    1,
    0,
    0,
    0,
    994,
    981,
    1,
    0,
    0,
    0,
    994,
    982,
    1,
    0,
    0,
    0,
    994,
    983,
    1,
    0,
    0,
    0,
    994,
    984,
    1,
    0,
    0,
    0,
    994,
    985,
    1,
    0,
    0,
    0,
    994,
    986,
    1,
    0,
    0,
    0,
    994,
    987,
    1,
    0,
    0,
    0,
    994,
    988,
    1,
    0,
    0,
    0,
    994,
    989,
    1,
    0,
    0,
    0,
    994,
    990,
    1,
    0,
    0,
    0,
    995,
    151,
    1,
    0,
    0,
    0,
    996,
    999,
    3,
    194,
    97,
    0,
    997,
    999,
    3,
    154,
    77,
    0,
    998,
    996,
    1,
    0,
    0,
    0,
    998,
    997,
    1,
    0,
    0,
    0,
    999,
    153,
    1,
    0,
    0,
    0,
    1000,
    1001,
    3,
    198,
    99,
    0,
    1001,
    1003,
    5,
    31,
    0,
    0,
    1002,
    1004,
    3,
    204,
    102,
    0,
    1003,
    1002,
    1,
    0,
    0,
    0,
    1003,
    1004,
    1,
    0,
    0,
    0,
    1004,
    1005,
    1,
    0,
    0,
    0,
    1005,
    1006,
    5,
    32,
    0,
    0,
    1006,
    155,
    1,
    0,
    0,
    0,
    1007,
    1013,
    3,
    194,
    97,
    0,
    1008,
    1013,
    3,
    158,
    79,
    0,
    1009,
    1013,
    5,
    150,
    0,
    0,
    1010,
    1013,
    5,
    151,
    0,
    0,
    1011,
    1013,
    5,
    152,
    0,
    0,
    1012,
    1007,
    1,
    0,
    0,
    0,
    1012,
    1008,
    1,
    0,
    0,
    0,
    1012,
    1009,
    1,
    0,
    0,
    0,
    1012,
    1010,
    1,
    0,
    0,
    0,
    1012,
    1011,
    1,
    0,
    0,
    0,
    1013,
    157,
    1,
    0,
    0,
    0,
    1014,
    1015,
    3,
    194,
    97,
    0,
    1015,
    1017,
    5,
    31,
    0,
    0,
    1016,
    1018,
    3,
    204,
    102,
    0,
    1017,
    1016,
    1,
    0,
    0,
    0,
    1017,
    1018,
    1,
    0,
    0,
    0,
    1018,
    1019,
    1,
    0,
    0,
    0,
    1019,
    1020,
    5,
    32,
    0,
    0,
    1020,
    159,
    1,
    0,
    0,
    0,
    1021,
    1022,
    3,
    206,
    103,
    0,
    1022,
    1023,
    5,
    11,
    0,
    0,
    1023,
    1024,
    3,
    206,
    103,
    0,
    1024,
    161,
    1,
    0,
    0,
    0,
    1025,
    1036,
    7,
    26,
    0,
    0,
    1026,
    1036,
    5,
    59,
    0,
    0,
    1027,
    1036,
    5,
    164,
    0,
    0,
    1028,
    1036,
    5,
    165,
    0,
    0,
    1029,
    1036,
    5,
    159,
    0,
    0,
    1030,
    1036,
    5,
    158,
    0,
    0,
    1031,
    1036,
    5,
    160,
    0,
    0,
    1032,
    1036,
    5,
    161,
    0,
    0,
    1033,
    1036,
    3,
    206,
    103,
    0,
    1034,
    1036,
    3,
    160,
    80,
    0,
    1035,
    1025,
    1,
    0,
    0,
    0,
    1035,
    1026,
    1,
    0,
    0,
    0,
    1035,
    1027,
    1,
    0,
    0,
    0,
    1035,
    1028,
    1,
    0,
    0,
    0,
    1035,
    1029,
    1,
    0,
    0,
    0,
    1035,
    1030,
    1,
    0,
    0,
    0,
    1035,
    1031,
    1,
    0,
    0,
    0,
    1035,
    1032,
    1,
    0,
    0,
    0,
    1035,
    1033,
    1,
    0,
    0,
    0,
    1035,
    1034,
    1,
    0,
    0,
    0,
    1036,
    163,
    1,
    0,
    0,
    0,
    1037,
    1038,
    5,
    24,
    0,
    0,
    1038,
    1039,
    7,
    27,
    0,
    0,
    1039,
    1040,
    3,
    124,
    62,
    0,
    1040,
    1041,
    5,
    15,
    0,
    0,
    1041,
    1042,
    3,
    124,
    62,
    0,
    1042,
    1043,
    7,
    28,
    0,
    0,
    1043,
    165,
    1,
    0,
    0,
    0,
    1044,
    1046,
    5,
    25,
    0,
    0,
    1045,
    1044,
    1,
    0,
    0,
    0,
    1045,
    1046,
    1,
    0,
    0,
    0,
    1046,
    1047,
    1,
    0,
    0,
    0,
    1047,
    1057,
    5,
    14,
    0,
    0,
    1048,
    1058,
    5,
    11,
    0,
    0,
    1049,
    1054,
    3,
    168,
    84,
    0,
    1050,
    1051,
    5,
    15,
    0,
    0,
    1051,
    1053,
    3,
    168,
    84,
    0,
    1052,
    1050,
    1,
    0,
    0,
    0,
    1053,
    1056,
    1,
    0,
    0,
    0,
    1054,
    1052,
    1,
    0,
    0,
    0,
    1054,
    1055,
    1,
    0,
    0,
    0,
    1055,
    1058,
    1,
    0,
    0,
    0,
    1056,
    1054,
    1,
    0,
    0,
    0,
    1057,
    1048,
    1,
    0,
    0,
    0,
    1057,
    1049,
    1,
    0,
    0,
    0,
    1058,
    1059,
    1,
    0,
    0,
    0,
    1059,
    1060,
    5,
    16,
    0,
    0,
    1060,
    167,
    1,
    0,
    0,
    0,
    1061,
    1062,
    3,
    194,
    97,
    0,
    1062,
    1063,
    5,
    11,
    0,
    0,
    1063,
    1064,
    3,
    124,
    62,
    0,
    1064,
    169,
    1,
    0,
    0,
    0,
    1065,
    1066,
    3,
    42,
    21,
    0,
    1066,
    1076,
    5,
    14,
    0,
    0,
    1067,
    1077,
    5,
    11,
    0,
    0,
    1068,
    1073,
    3,
    172,
    86,
    0,
    1069,
    1070,
    5,
    15,
    0,
    0,
    1070,
    1072,
    3,
    172,
    86,
    0,
    1071,
    1069,
    1,
    0,
    0,
    0,
    1072,
    1075,
    1,
    0,
    0,
    0,
    1073,
    1071,
    1,
    0,
    0,
    0,
    1073,
    1074,
    1,
    0,
    0,
    0,
    1074,
    1077,
    1,
    0,
    0,
    0,
    1075,
    1073,
    1,
    0,
    0,
    0,
    1076,
    1067,
    1,
    0,
    0,
    0,
    1076,
    1068,
    1,
    0,
    0,
    0,
    1077,
    1078,
    1,
    0,
    0,
    0,
    1078,
    1079,
    5,
    16,
    0,
    0,
    1079,
    171,
    1,
    0,
    0,
    0,
    1080,
    1081,
    3,
    194,
    97,
    0,
    1081,
    1082,
    5,
    11,
    0,
    0,
    1082,
    1083,
    3,
    124,
    62,
    0,
    1083,
    173,
    1,
    0,
    0,
    0,
    1084,
    1089,
    5,
    21,
    0,
    0,
    1085,
    1086,
    5,
    22,
    0,
    0,
    1086,
    1087,
    3,
    40,
    20,
    0,
    1087,
    1088,
    5,
    23,
    0,
    0,
    1088,
    1090,
    1,
    0,
    0,
    0,
    1089,
    1085,
    1,
    0,
    0,
    0,
    1089,
    1090,
    1,
    0,
    0,
    0,
    1090,
    1092,
    1,
    0,
    0,
    0,
    1091,
    1084,
    1,
    0,
    0,
    0,
    1091,
    1092,
    1,
    0,
    0,
    0,
    1092,
    1093,
    1,
    0,
    0,
    0,
    1093,
    1102,
    5,
    14,
    0,
    0,
    1094,
    1099,
    3,
    124,
    62,
    0,
    1095,
    1096,
    5,
    15,
    0,
    0,
    1096,
    1098,
    3,
    124,
    62,
    0,
    1097,
    1095,
    1,
    0,
    0,
    0,
    1098,
    1101,
    1,
    0,
    0,
    0,
    1099,
    1097,
    1,
    0,
    0,
    0,
    1099,
    1100,
    1,
    0,
    0,
    0,
    1100,
    1103,
    1,
    0,
    0,
    0,
    1101,
    1099,
    1,
    0,
    0,
    0,
    1102,
    1094,
    1,
    0,
    0,
    0,
    1102,
    1103,
    1,
    0,
    0,
    0,
    1103,
    1104,
    1,
    0,
    0,
    0,
    1104,
    1105,
    5,
    16,
    0,
    0,
    1105,
    175,
    1,
    0,
    0,
    0,
    1106,
    1107,
    5,
    153,
    0,
    0,
    1107,
    1108,
    5,
    164,
    0,
    0,
    1108,
    177,
    1,
    0,
    0,
    0,
    1109,
    1110,
    5,
    154,
    0,
    0,
    1110,
    1111,
    5,
    164,
    0,
    0,
    1111,
    1112,
    5,
    19,
    0,
    0,
    1112,
    1114,
    3,
    22,
    11,
    0,
    1113,
    1115,
    3,
    176,
    88,
    0,
    1114,
    1113,
    1,
    0,
    0,
    0,
    1114,
    1115,
    1,
    0,
    0,
    0,
    1115,
    179,
    1,
    0,
    0,
    0,
    1116,
    1117,
    5,
    155,
    0,
    0,
    1117,
    1118,
    5,
    14,
    0,
    0,
    1118,
    1123,
    3,
    178,
    89,
    0,
    1119,
    1120,
    5,
    15,
    0,
    0,
    1120,
    1122,
    3,
    178,
    89,
    0,
    1121,
    1119,
    1,
    0,
    0,
    0,
    1122,
    1125,
    1,
    0,
    0,
    0,
    1123,
    1121,
    1,
    0,
    0,
    0,
    1123,
    1124,
    1,
    0,
    0,
    0,
    1124,
    1126,
    1,
    0,
    0,
    0,
    1125,
    1123,
    1,
    0,
    0,
    0,
    1126,
    1128,
    5,
    16,
    0,
    0,
    1127,
    1129,
    3,
    176,
    88,
    0,
    1128,
    1127,
    1,
    0,
    0,
    0,
    1128,
    1129,
    1,
    0,
    0,
    0,
    1129,
    181,
    1,
    0,
    0,
    0,
    1130,
    1131,
    7,
    29,
    0,
    0,
    1131,
    183,
    1,
    0,
    0,
    0,
    1132,
    1133,
    7,
    30,
    0,
    0,
    1133,
    185,
    1,
    0,
    0,
    0,
    1134,
    1135,
    7,
    31,
    0,
    0,
    1135,
    187,
    1,
    0,
    0,
    0,
    1136,
    1137,
    7,
    32,
    0,
    0,
    1137,
    189,
    1,
    0,
    0,
    0,
    1138,
    1139,
    7,
    33,
    0,
    0,
    1139,
    191,
    1,
    0,
    0,
    0,
    1140,
    1141,
    7,
    34,
    0,
    0,
    1141,
    193,
    1,
    0,
    0,
    0,
    1142,
    1145,
    3,
    200,
    100,
    0,
    1143,
    1145,
    3,
    186,
    93,
    0,
    1144,
    1142,
    1,
    0,
    0,
    0,
    1144,
    1143,
    1,
    0,
    0,
    0,
    1145,
    195,
    1,
    0,
    0,
    0,
    1146,
    1149,
    3,
    194,
    97,
    0,
    1147,
    1149,
    3,
    192,
    96,
    0,
    1148,
    1146,
    1,
    0,
    0,
    0,
    1148,
    1147,
    1,
    0,
    0,
    0,
    1149,
    197,
    1,
    0,
    0,
    0,
    1150,
    1153,
    3,
    200,
    100,
    0,
    1151,
    1153,
    3,
    190,
    95,
    0,
    1152,
    1150,
    1,
    0,
    0,
    0,
    1152,
    1151,
    1,
    0,
    0,
    0,
    1153,
    199,
    1,
    0,
    0,
    0,
    1154,
    1155,
    7,
    35,
    0,
    0,
    1155,
    201,
    1,
    0,
    0,
    0,
    1156,
    1159,
    5,
    156,
    0,
    0,
    1157,
    1160,
    3,
    200,
    100,
    0,
    1158,
    1160,
    5,
    164,
    0,
    0,
    1159,
    1157,
    1,
    0,
    0,
    0,
    1159,
    1158,
    1,
    0,
    0,
    0,
    1160,
    203,
    1,
    0,
    0,
    0,
    1161,
    1166,
    3,
    124,
    62,
    0,
    1162,
    1163,
    5,
    15,
    0,
    0,
    1163,
    1165,
    3,
    124,
    62,
    0,
    1164,
    1162,
    1,
    0,
    0,
    0,
    1165,
    1168,
    1,
    0,
    0,
    0,
    1166,
    1164,
    1,
    0,
    0,
    0,
    1166,
    1167,
    1,
    0,
    0,
    0,
    1167,
    205,
    1,
    0,
    0,
    0,
    1168,
    1166,
    1,
    0,
    0,
    0,
    1169,
    1171,
    5,
    165,
    0,
    0,
    1170,
    1172,
    3,
    208,
    104,
    0,
    1171,
    1170,
    1,
    0,
    0,
    0,
    1171,
    1172,
    1,
    0,
    0,
    0,
    1172,
    207,
    1,
    0,
    0,
    0,
    1173,
    1177,
    3,
    126,
    63,
    0,
    1174,
    1177,
    3,
    130,
    65,
    0,
    1175,
    1177,
    5,
    164,
    0,
    0,
    1176,
    1173,
    1,
    0,
    0,
    0,
    1176,
    1174,
    1,
    0,
    0,
    0,
    1176,
    1175,
    1,
    0,
    0,
    0,
    1177,
    209,
    1,
    0,
    0,
    0,
    133,
    211,
    216,
    222,
    234,
    240,
    246,
    252,
    256,
    263,
    268,
    272,
    275,
    283,
    286,
    294,
    297,
    306,
    314,
    321,
    330,
    333,
    344,
    349,
    354,
    371,
    378,
    402,
    417,
    425,
    429,
    439,
    445,
    448,
    458,
    461,
    466,
    471,
    484,
    493,
    509,
    516,
    519,
    531,
    537,
    542,
    546,
    550,
    553,
    556,
    563,
    572,
    584,
    590,
    594,
    606,
    616,
    619,
    625,
    632,
    642,
    660,
    662,
    667,
    684,
    700,
    715,
    733,
    741,
    748,
    750,
    759,
    770,
    819,
    824,
    837,
    839,
    841,
    860,
    862,
    881,
    886,
    889,
    894,
    896,
    899,
    903,
    907,
    910,
    913,
    917,
    920,
    923,
    926,
    930,
    933,
    936,
    940,
    943,
    946,
    949,
    955,
    959,
    962,
    966,
    969,
    973,
    977,
    979,
    994,
    998,
    1003,
    1012,
    1017,
    1035,
    1045,
    1054,
    1057,
    1073,
    1076,
    1089,
    1091,
    1099,
    1102,
    1114,
    1123,
    1128,
    1144,
    1148,
    1152,
    1159,
    1166,
    1171,
    1176
  ];

  static final PredictionContextCache _sharedContextCache =
      PredictionContextCache();

  cqlParser(super.input) {
    interpreter =
        ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  @override
  ATN getATN() {
    return _ATN;
  }

  @override
  String get grammarFileName => 'cql.g4';

  @override
  bool sempred(RuleContext? localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 60:
        return _simplePath_sempred(localctx as SimplePathContext?, predIndex);
      case 62:
        return _expression_sempred(localctx as ExpressionContext?, predIndex);
      case 66:
        return _expressionTerm_sempred(
            localctx as ExpressionTermContext?, predIndex);
    }
    return true;
  }

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  static final checkVersion =
      () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);

  LibraryContext library_() {
    dynamic localctx = LibraryContext(context, state);
    enterRule(localctx, 0, RULE_library);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 211;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__0) {
        state = 210;
        libraryDefinition();
      }

      state = 216;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while ((((la) & ~0x3f) == 0 && ((1 << la) & 1316312) != 0)) {
        state = 213;
        definition();
        state = 218;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 222;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__26 || la == TOKEN_T__27) {
        state = 219;
        statement();
        state = 224;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 225;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DefinitionContext definition() {
    dynamic localctx = DefinitionContext(context, state);
    enterRule(localctx, 2, RULE_definition);
    try {
      state = 234;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
        case 1:
          enterOuterAlt(localctx, 1);
          state = 227;
          usingDefinition();
          break;
        case 2:
          enterOuterAlt(localctx, 2);
          state = 228;
          includeDefinition();
          break;
        case 3:
          enterOuterAlt(localctx, 3);
          state = 229;
          codesystemDefinition();
          break;
        case 4:
          enterOuterAlt(localctx, 4);
          state = 230;
          valuesetDefinition();
          break;
        case 5:
          enterOuterAlt(localctx, 5);
          state = 231;
          codeDefinition();
          break;
        case 6:
          enterOuterAlt(localctx, 6);
          state = 232;
          conceptDefinition();
          break;
        case 7:
          enterOuterAlt(localctx, 7);
          state = 233;
          parameterDefinition();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  LibraryDefinitionContext libraryDefinition() {
    dynamic localctx = LibraryDefinitionContext(context, state);
    enterRule(localctx, 4, RULE_libraryDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 236;
      match(TOKEN_T__0);
      state = 237;
      qualifiedIdentifier();
      state = 240;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__1) {
        state = 238;
        match(TOKEN_T__1);
        state = 239;
        versionSpecifier();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  UsingDefinitionContext usingDefinition() {
    dynamic localctx = UsingDefinitionContext(context, state);
    enterRule(localctx, 6, RULE_usingDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 242;
      match(TOKEN_T__2);
      state = 243;
      modelIdentifier();
      state = 246;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__1) {
        state = 244;
        match(TOKEN_T__1);
        state = 245;
        versionSpecifier();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  IncludeDefinitionContext includeDefinition() {
    dynamic localctx = IncludeDefinitionContext(context, state);
    enterRule(localctx, 8, RULE_includeDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 248;
      match(TOKEN_T__3);
      state = 249;
      qualifiedIdentifier();
      state = 252;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__1) {
        state = 250;
        match(TOKEN_T__1);
        state = 251;
        versionSpecifier();
      }

      state = 256;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__4) {
        state = 254;
        match(TOKEN_T__4);
        state = 255;
        localIdentifier();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  LocalIdentifierContext localIdentifier() {
    dynamic localctx = LocalIdentifierContext(context, state);
    enterRule(localctx, 10, RULE_localIdentifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 258;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  AccessModifierContext accessModifier() {
    dynamic localctx = AccessModifierContext(context, state);
    enterRule(localctx, 12, RULE_accessModifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 260;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__5 || la == TOKEN_T__6)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ParameterDefinitionContext parameterDefinition() {
    dynamic localctx = ParameterDefinitionContext(context, state);
    enterRule(localctx, 14, RULE_parameterDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 263;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 262;
        accessModifier();
      }

      state = 265;
      match(TOKEN_T__7);
      state = 266;
      identifier();
      state = 268;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
        case 1:
          state = 267;
          typeSpecifier();
          break;
      }
      state = 272;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__8) {
        state = 270;
        match(TOKEN_T__8);
        state = 271;
        expression(0);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodesystemDefinitionContext codesystemDefinition() {
    dynamic localctx = CodesystemDefinitionContext(context, state);
    enterRule(localctx, 16, RULE_codesystemDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 275;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 274;
        accessModifier();
      }

      state = 277;
      match(TOKEN_T__9);
      state = 278;
      identifier();
      state = 279;
      match(TOKEN_T__10);
      state = 280;
      codesystemId();
      state = 283;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__1) {
        state = 281;
        match(TOKEN_T__1);
        state = 282;
        versionSpecifier();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ValuesetDefinitionContext valuesetDefinition() {
    dynamic localctx = ValuesetDefinitionContext(context, state);
    enterRule(localctx, 18, RULE_valuesetDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 286;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 285;
        accessModifier();
      }

      state = 288;
      match(TOKEN_T__11);
      state = 289;
      identifier();
      state = 290;
      match(TOKEN_T__10);
      state = 291;
      valuesetId();
      state = 294;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__1) {
        state = 292;
        match(TOKEN_T__1);
        state = 293;
        versionSpecifier();
      }

      state = 297;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__12) {
        state = 296;
        codesystems();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodesystemsContext codesystems() {
    dynamic localctx = CodesystemsContext(context, state);
    enterRule(localctx, 20, RULE_codesystems);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 299;
      match(TOKEN_T__12);
      state = 300;
      match(TOKEN_T__13);
      state = 301;
      codesystemIdentifier();
      state = 306;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__14) {
        state = 302;
        match(TOKEN_T__14);
        state = 303;
        codesystemIdentifier();
        state = 308;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 309;
      match(TOKEN_T__15);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodesystemIdentifierContext codesystemIdentifier() {
    dynamic localctx = CodesystemIdentifierContext(context, state);
    enterRule(localctx, 22, RULE_codesystemIdentifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 314;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 17, context)) {
        case 1:
          state = 311;
          libraryIdentifier();
          state = 312;
          match(TOKEN_T__16);
          break;
      }
      state = 316;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  LibraryIdentifierContext libraryIdentifier() {
    dynamic localctx = LibraryIdentifierContext(context, state);
    enterRule(localctx, 24, RULE_libraryIdentifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 318;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodeDefinitionContext codeDefinition() {
    dynamic localctx = CodeDefinitionContext(context, state);
    enterRule(localctx, 26, RULE_codeDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 321;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 320;
        accessModifier();
      }

      state = 323;
      match(TOKEN_T__17);
      state = 324;
      identifier();
      state = 325;
      match(TOKEN_T__10);
      state = 326;
      codeId();
      state = 327;
      match(TOKEN_T__18);
      state = 328;
      codesystemIdentifier();
      state = 330;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__152) {
        state = 329;
        displayClause();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ConceptDefinitionContext conceptDefinition() {
    dynamic localctx = ConceptDefinitionContext(context, state);
    enterRule(localctx, 28, RULE_conceptDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 333;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 332;
        accessModifier();
      }

      state = 335;
      match(TOKEN_T__19);
      state = 336;
      identifier();
      state = 337;
      match(TOKEN_T__10);
      state = 338;
      match(TOKEN_T__13);
      state = 339;
      codeIdentifier();
      state = 344;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__14) {
        state = 340;
        match(TOKEN_T__14);
        state = 341;
        codeIdentifier();
        state = 346;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 347;
      match(TOKEN_T__15);
      state = 349;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__152) {
        state = 348;
        displayClause();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodeIdentifierContext codeIdentifier() {
    dynamic localctx = CodeIdentifierContext(context, state);
    enterRule(localctx, 30, RULE_codeIdentifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 354;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 23, context)) {
        case 1:
          state = 351;
          libraryIdentifier();
          state = 352;
          match(TOKEN_T__16);
          break;
      }
      state = 356;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodesystemIdContext codesystemId() {
    dynamic localctx = CodesystemIdContext(context, state);
    enterRule(localctx, 32, RULE_codesystemId);
    try {
      enterOuterAlt(localctx, 1);
      state = 358;
      match(TOKEN_STRING);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ValuesetIdContext valuesetId() {
    dynamic localctx = ValuesetIdContext(context, state);
    enterRule(localctx, 34, RULE_valuesetId);
    try {
      enterOuterAlt(localctx, 1);
      state = 360;
      match(TOKEN_STRING);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  VersionSpecifierContext versionSpecifier() {
    dynamic localctx = VersionSpecifierContext(context, state);
    enterRule(localctx, 36, RULE_versionSpecifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 362;
      match(TOKEN_STRING);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodeIdContext codeId() {
    dynamic localctx = CodeIdContext(context, state);
    enterRule(localctx, 38, RULE_codeId);
    try {
      enterOuterAlt(localctx, 1);
      state = 364;
      match(TOKEN_STRING);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TypeSpecifierContext typeSpecifier() {
    dynamic localctx = TypeSpecifierContext(context, state);
    enterRule(localctx, 40, RULE_typeSpecifier);
    try {
      state = 371;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__17:
        case TOKEN_T__19:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__44:
        case TOKEN_T__49:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__73:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__143:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__152:
        case TOKEN_T__153:
        case TOKEN_T__154:
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          enterOuterAlt(localctx, 1);
          state = 366;
          namedTypeSpecifier();
          break;
        case TOKEN_T__20:
          enterOuterAlt(localctx, 2);
          state = 367;
          listTypeSpecifier();
          break;
        case TOKEN_T__23:
          enterOuterAlt(localctx, 3);
          state = 368;
          intervalTypeSpecifier();
          break;
        case TOKEN_T__24:
          enterOuterAlt(localctx, 4);
          state = 369;
          tupleTypeSpecifier();
          break;
        case TOKEN_T__25:
          enterOuterAlt(localctx, 5);
          state = 370;
          choiceTypeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  NamedTypeSpecifierContext namedTypeSpecifier() {
    dynamic localctx = NamedTypeSpecifierContext(context, state);
    enterRule(localctx, 42, RULE_namedTypeSpecifier);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 378;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 25, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 373;
          qualifier();
          state = 374;
          match(TOKEN_T__16);
        }
        state = 380;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 25, context);
      }
      state = 381;
      referentialOrTypeNameIdentifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ModelIdentifierContext modelIdentifier() {
    dynamic localctx = ModelIdentifierContext(context, state);
    enterRule(localctx, 44, RULE_modelIdentifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 383;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ListTypeSpecifierContext listTypeSpecifier() {
    dynamic localctx = ListTypeSpecifierContext(context, state);
    enterRule(localctx, 46, RULE_listTypeSpecifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 385;
      match(TOKEN_T__20);
      state = 386;
      match(TOKEN_T__21);
      state = 387;
      typeSpecifier();
      state = 388;
      match(TOKEN_T__22);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  IntervalTypeSpecifierContext intervalTypeSpecifier() {
    dynamic localctx = IntervalTypeSpecifierContext(context, state);
    enterRule(localctx, 48, RULE_intervalTypeSpecifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 390;
      match(TOKEN_T__23);
      state = 391;
      match(TOKEN_T__21);
      state = 392;
      typeSpecifier();
      state = 393;
      match(TOKEN_T__22);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TupleTypeSpecifierContext tupleTypeSpecifier() {
    dynamic localctx = TupleTypeSpecifierContext(context, state);
    enterRule(localctx, 50, RULE_tupleTypeSpecifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 395;
      match(TOKEN_T__24);
      state = 396;
      match(TOKEN_T__13);
      state = 397;
      tupleElementDefinition();
      state = 402;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__14) {
        state = 398;
        match(TOKEN_T__14);
        state = 399;
        tupleElementDefinition();
        state = 404;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 405;
      match(TOKEN_T__15);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TupleElementDefinitionContext tupleElementDefinition() {
    dynamic localctx = TupleElementDefinitionContext(context, state);
    enterRule(localctx, 52, RULE_tupleElementDefinition);
    try {
      enterOuterAlt(localctx, 1);
      state = 407;
      referentialIdentifier();
      state = 408;
      typeSpecifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ChoiceTypeSpecifierContext choiceTypeSpecifier() {
    dynamic localctx = ChoiceTypeSpecifierContext(context, state);
    enterRule(localctx, 54, RULE_choiceTypeSpecifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 410;
      match(TOKEN_T__25);
      state = 411;
      match(TOKEN_T__21);
      state = 412;
      typeSpecifier();
      state = 417;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__14) {
        state = 413;
        match(TOKEN_T__14);
        state = 414;
        typeSpecifier();
        state = 419;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 420;
      match(TOKEN_T__22);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  StatementContext statement() {
    dynamic localctx = StatementContext(context, state);
    enterRule(localctx, 56, RULE_statement);
    try {
      state = 425;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
        case 1:
          enterOuterAlt(localctx, 1);
          state = 422;
          expressionDefinition();
          break;
        case 2:
          enterOuterAlt(localctx, 2);
          state = 423;
          contextDefinition();
          break;
        case 3:
          enterOuterAlt(localctx, 3);
          state = 424;
          functionDefinition();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ExpressionDefinitionContext expressionDefinition() {
    dynamic localctx = ExpressionDefinitionContext(context, state);
    enterRule(localctx, 58, RULE_expressionDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 427;
      match(TOKEN_T__26);
      state = 429;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 428;
        accessModifier();
      }

      state = 431;
      identifier();
      state = 432;
      match(TOKEN_T__10);
      state = 433;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ContextDefinitionContext contextDefinition() {
    dynamic localctx = ContextDefinitionContext(context, state);
    enterRule(localctx, 60, RULE_contextDefinition);
    try {
      enterOuterAlt(localctx, 1);
      state = 435;
      match(TOKEN_T__27);
      state = 439;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 30, context)) {
        case 1:
          state = 436;
          modelIdentifier();
          state = 437;
          match(TOKEN_T__16);
          break;
      }
      state = 441;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  FunctionDefinitionContext functionDefinition() {
    dynamic localctx = FunctionDefinitionContext(context, state);
    enterRule(localctx, 62, RULE_functionDefinition);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 443;
      match(TOKEN_T__26);
      state = 445;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__5 || la == TOKEN_T__6) {
        state = 444;
        accessModifier();
      }

      state = 448;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__28) {
        state = 447;
        match(TOKEN_T__28);
      }

      state = 450;
      match(TOKEN_T__29);
      state = 451;
      identifierOrFunctionIdentifier();
      state = 452;
      match(TOKEN_T__30);
      state = 461;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if ((((la) & ~0x3f) == 0 && ((1 << la) & 140772674742007806) != 0) ||
          ((((la - 74)) & ~0x3f) == 0 &&
              ((1 << (la - 74)) & 1080916813829046509) != 0) ||
          ((((la - 140)) & ~0x3f) == 0 &&
              ((1 << (la - 140)) & 12722963) != 0)) {
        state = 453;
        operandDefinition();
        state = 458;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        while (la == TOKEN_T__14) {
          state = 454;
          match(TOKEN_T__14);
          state = 455;
          operandDefinition();
          state = 460;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
        }
      }

      state = 463;
      match(TOKEN_T__31);
      state = 466;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__32) {
        state = 464;
        match(TOKEN_T__32);
        state = 465;
        typeSpecifier();
      }

      state = 468;
      match(TOKEN_T__10);
      state = 471;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__13:
        case TOKEN_T__17:
        case TOKEN_T__18:
        case TOKEN_T__19:
        case TOKEN_T__20:
        case TOKEN_T__23:
        case TOKEN_T__24:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__30:
        case TOKEN_T__37:
        case TOKEN_T__44:
        case TOKEN_T__47:
        case TOKEN_T__49:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__57:
        case TOKEN_T__58:
        case TOKEN_T__59:
        case TOKEN_T__60:
        case TOKEN_T__62:
        case TOKEN_T__63:
        case TOKEN_T__67:
        case TOKEN_T__68:
        case TOKEN_T__73:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__81:
        case TOKEN_T__82:
        case TOKEN_T__83:
        case TOKEN_T__84:
        case TOKEN_T__85:
        case TOKEN_T__86:
        case TOKEN_T__87:
        case TOKEN_T__88:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__92:
        case TOKEN_T__93:
        case TOKEN_T__94:
        case TOKEN_T__95:
        case TOKEN_T__96:
        case TOKEN_T__97:
        case TOKEN_T__98:
        case TOKEN_T__99:
        case TOKEN_T__100:
        case TOKEN_T__102:
        case TOKEN_T__103:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__110:
        case TOKEN_T__111:
        case TOKEN_T__112:
        case TOKEN_T__113:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__120:
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__143:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__149:
        case TOKEN_T__150:
        case TOKEN_T__151:
        case TOKEN_T__152:
        case TOKEN_T__153:
        case TOKEN_T__154:
        case TOKEN_T__155:
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_DATETIME:
        case TOKEN_LONGNUMBER:
        case TOKEN_DATE:
        case TOKEN_TIME:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
        case TOKEN_STRING:
        case TOKEN_NUMBER:
          state = 469;
          functionBody();
          break;
        case TOKEN_T__33:
          state = 470;
          match(TOKEN_T__33);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  OperandDefinitionContext operandDefinition() {
    dynamic localctx = OperandDefinitionContext(context, state);
    enterRule(localctx, 64, RULE_operandDefinition);
    try {
      enterOuterAlt(localctx, 1);
      state = 473;
      referentialIdentifier();
      state = 474;
      typeSpecifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  FunctionBodyContext functionBody() {
    dynamic localctx = FunctionBodyContext(context, state);
    enterRule(localctx, 66, RULE_functionBody);
    try {
      enterOuterAlt(localctx, 1);
      state = 476;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QuerySourceContext querySource() {
    dynamic localctx = QuerySourceContext(context, state);
    enterRule(localctx, 68, RULE_querySource);
    try {
      state = 484;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__37:
          enterOuterAlt(localctx, 1);
          state = 478;
          retrieve();
          break;
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__17:
        case TOKEN_T__19:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__44:
        case TOKEN_T__49:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__73:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__143:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__152:
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          enterOuterAlt(localctx, 2);
          state = 479;
          qualifiedIdentifierExpression();
          break;
        case TOKEN_T__30:
          enterOuterAlt(localctx, 3);
          state = 480;
          match(TOKEN_T__30);
          state = 481;
          expression(0);
          state = 482;
          match(TOKEN_T__31);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  AliasedQuerySourceContext aliasedQuerySource() {
    dynamic localctx = AliasedQuerySourceContext(context, state);
    enterRule(localctx, 70, RULE_aliasedQuerySource);
    try {
      enterOuterAlt(localctx, 1);
      state = 486;
      querySource();
      state = 487;
      alias();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  AliasContext alias() {
    dynamic localctx = AliasContext(context, state);
    enterRule(localctx, 72, RULE_alias);
    try {
      enterOuterAlt(localctx, 1);
      state = 489;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QueryInclusionClauseContext queryInclusionClause() {
    dynamic localctx = QueryInclusionClauseContext(context, state);
    enterRule(localctx, 74, RULE_queryInclusionClause);
    try {
      state = 493;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__34:
          enterOuterAlt(localctx, 1);
          state = 491;
          withClause();
          break;
        case TOKEN_T__36:
          enterOuterAlt(localctx, 2);
          state = 492;
          withoutClause();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  WithClauseContext withClause() {
    dynamic localctx = WithClauseContext(context, state);
    enterRule(localctx, 76, RULE_withClause);
    try {
      enterOuterAlt(localctx, 1);
      state = 495;
      match(TOKEN_T__34);
      state = 496;
      aliasedQuerySource();
      state = 497;
      match(TOKEN_T__35);
      state = 498;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  WithoutClauseContext withoutClause() {
    dynamic localctx = WithoutClauseContext(context, state);
    enterRule(localctx, 78, RULE_withoutClause);
    try {
      enterOuterAlt(localctx, 1);
      state = 500;
      match(TOKEN_T__36);
      state = 501;
      aliasedQuerySource();
      state = 502;
      match(TOKEN_T__35);
      state = 503;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  RetrieveContext retrieve() {
    dynamic localctx = RetrieveContext(context, state);
    enterRule(localctx, 80, RULE_retrieve);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 505;
      match(TOKEN_T__37);
      state = 509;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
        case 1:
          state = 506;
          contextIdentifier();
          state = 507;
          match(TOKEN_T__38);
          break;
      }
      state = 511;
      namedTypeSpecifier();
      state = 519;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__10) {
        state = 512;
        match(TOKEN_T__10);
        state = 516;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
          case 1:
            state = 513;
            codePath();
            state = 514;
            codeComparator();
            break;
        }
        state = 518;
        terminology();
      }

      state = 521;
      match(TOKEN_T__39);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ContextIdentifierContext contextIdentifier() {
    dynamic localctx = ContextIdentifierContext(context, state);
    enterRule(localctx, 82, RULE_contextIdentifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 523;
      qualifiedIdentifierExpression();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodePathContext codePath() {
    dynamic localctx = CodePathContext(context, state);
    enterRule(localctx, 84, RULE_codePath);
    try {
      enterOuterAlt(localctx, 1);
      state = 525;
      simplePath(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodeComparatorContext codeComparator() {
    dynamic localctx = CodeComparatorContext(context, state);
    enterRule(localctx, 86, RULE_codeComparator);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 527;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & 15393162788864) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TerminologyContext terminology() {
    dynamic localctx = TerminologyContext(context, state);
    enterRule(localctx, 88, RULE_terminology);
    try {
      state = 531;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 42, context)) {
        case 1:
          enterOuterAlt(localctx, 1);
          state = 529;
          qualifiedIdentifierExpression();
          break;
        case 2:
          enterOuterAlt(localctx, 2);
          state = 530;
          expression(0);
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QualifierContext qualifier() {
    dynamic localctx = QualifierContext(context, state);
    enterRule(localctx, 90, RULE_qualifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 533;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QueryContext query() {
    dynamic localctx = QueryContext(context, state);
    enterRule(localctx, 92, RULE_query);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 535;
      sourceClause();
      state = 537;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 43, context)) {
        case 1:
          state = 536;
          letClause();
          break;
      }
      state = 542;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 44, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 539;
          queryInclusionClause();
        }
        state = 544;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 44, context);
      }
      state = 546;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 45, context)) {
        case 1:
          state = 545;
          whereClause();
          break;
      }
      state = 550;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 46, context)) {
        case 1:
          state = 548;
          aggregateClause();
          break;
        case 2:
          state = 549;
          returnClause();
          break;
      }
      state = 553;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 47, context)) {
        case 1:
          state = 552;
          sortClause();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  SourceClauseContext sourceClause() {
    dynamic localctx = SourceClauseContext(context, state);
    enterRule(localctx, 94, RULE_sourceClause);
    int la;
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 556;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__18) {
        state = 555;
        match(TOKEN_T__18);
      }

      state = 558;
      aliasedQuerySource();
      state = 563;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 49, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 559;
          match(TOKEN_T__14);
          state = 560;
          aliasedQuerySource();
        }
        state = 565;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 49, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  LetClauseContext letClause() {
    dynamic localctx = LetClauseContext(context, state);
    enterRule(localctx, 96, RULE_letClause);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 566;
      match(TOKEN_T__43);
      state = 567;
      letClauseItem();
      state = 572;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 50, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 568;
          match(TOKEN_T__14);
          state = 569;
          letClauseItem();
        }
        state = 574;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 50, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  LetClauseItemContext letClauseItem() {
    dynamic localctx = LetClauseItemContext(context, state);
    enterRule(localctx, 98, RULE_letClauseItem);
    try {
      enterOuterAlt(localctx, 1);
      state = 575;
      identifier();
      state = 576;
      match(TOKEN_T__10);
      state = 577;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  WhereClauseContext whereClause() {
    dynamic localctx = WhereClauseContext(context, state);
    enterRule(localctx, 100, RULE_whereClause);
    try {
      enterOuterAlt(localctx, 1);
      state = 579;
      match(TOKEN_T__44);
      state = 580;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ReturnClauseContext returnClause() {
    dynamic localctx = ReturnClauseContext(context, state);
    enterRule(localctx, 102, RULE_returnClause);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 582;
      match(TOKEN_T__45);
      state = 584;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 51, context)) {
        case 1:
          state = 583;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__46 || la == TOKEN_T__47)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
      }
      state = 586;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  AggregateClauseContext aggregateClause() {
    dynamic localctx = AggregateClauseContext(context, state);
    enterRule(localctx, 104, RULE_aggregateClause);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 588;
      match(TOKEN_T__48);
      state = 590;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__46 || la == TOKEN_T__47) {
        state = 589;
        la = tokenStream.LA(1)!;
        if (!(la == TOKEN_T__46 || la == TOKEN_T__47)) {
          errorHandler.recoverInline(this);
        } else {
          if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
      }

      state = 592;
      identifier();
      state = 594;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__49) {
        state = 593;
        startingClause();
      }

      state = 596;
      match(TOKEN_T__10);
      state = 597;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  StartingClauseContext startingClause() {
    dynamic localctx = StartingClauseContext(context, state);
    enterRule(localctx, 106, RULE_startingClause);
    try {
      enterOuterAlt(localctx, 1);
      state = 599;
      match(TOKEN_T__49);
      state = 606;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 54, context)) {
        case 1:
          state = 600;
          simpleLiteral();
          break;
        case 2:
          state = 601;
          quantity();
          break;
        case 3:
          state = 602;
          match(TOKEN_T__30);
          state = 603;
          expression(0);
          state = 604;
          match(TOKEN_T__31);
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  SortClauseContext sortClause() {
    dynamic localctx = SortClauseContext(context, state);
    enterRule(localctx, 108, RULE_sortClause);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 608;
      match(TOKEN_T__50);
      state = 619;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
          state = 609;
          sortDirection();
          break;
        case TOKEN_T__51:
          state = 610;
          match(TOKEN_T__51);
          state = 611;
          sortByItem();
          state = 616;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 55, context);
          while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
            if (alt == 1) {
              state = 612;
              match(TOKEN_T__14);
              state = 613;
              sortByItem();
            }
            state = 618;
            errorHandler.sync(this);
            alt = interpreter!.adaptivePredict(tokenStream, 55, context);
          }
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  SortDirectionContext sortDirection() {
    dynamic localctx = SortDirectionContext(context, state);
    enterRule(localctx, 110, RULE_sortDirection);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 621;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & 135107988821114880) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  SortByItemContext sortByItem() {
    dynamic localctx = SortByItemContext(context, state);
    enterRule(localctx, 112, RULE_sortByItem);
    try {
      enterOuterAlt(localctx, 1);
      state = 623;
      expressionTerm(0);
      state = 625;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
        case 1:
          state = 624;
          sortDirection();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QualifiedIdentifierContext qualifiedIdentifier() {
    dynamic localctx = QualifiedIdentifierContext(context, state);
    enterRule(localctx, 114, RULE_qualifiedIdentifier);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 632;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 58, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 627;
          qualifier();
          state = 628;
          match(TOKEN_T__16);
        }
        state = 634;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 58, context);
      }
      state = 635;
      identifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QualifiedIdentifierExpressionContext qualifiedIdentifierExpression() {
    dynamic localctx = QualifiedIdentifierExpressionContext(context, state);
    enterRule(localctx, 116, RULE_qualifiedIdentifierExpression);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 642;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 59, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 637;
          qualifierExpression();
          state = 638;
          match(TOKEN_T__16);
        }
        state = 644;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 59, context);
      }
      state = 645;
      referentialIdentifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QualifierExpressionContext qualifierExpression() {
    dynamic localctx = QualifierExpressionContext(context, state);
    enterRule(localctx, 118, RULE_qualifierExpression);
    try {
      enterOuterAlt(localctx, 1);
      state = 647;
      referentialIdentifier();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  SimplePathContext simplePath([int p = 0]) {
    final parentctx = context;
    final parentState = state;
    dynamic localctx = SimplePathContext(context, parentState);
    var prevctx = localctx;
    var startState = 120;
    enterRecursionRule(localctx, 120, RULE_simplePath, p);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      localctx = SimplePathReferentialIdentifierContext(localctx);
      context = localctx;
      prevctx = localctx;

      state = 650;
      referentialIdentifier();
      context!.stop = tokenStream.LT(-1);
      state = 662;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 61, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          prevctx = localctx;
          state = 660;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 60, context)) {
            case 1:
              localctx = SimplePathQualifiedIdentifierContext(
                  SimplePathContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_simplePath);
              state = 652;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 653;
              match(TOKEN_T__16);
              state = 654;
              referentialIdentifier();
              break;
            case 2:
              localctx = SimplePathIndexerContext(
                  SimplePathContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_simplePath);
              state = 655;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 656;
              match(TOKEN_T__37);
              state = 657;
              simpleLiteral();
              state = 658;
              match(TOKEN_T__39);
              break;
          }
        }
        state = 664;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 61, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(parentctx);
    }
    return localctx;
  }

  SimpleLiteralContext simpleLiteral() {
    dynamic localctx = SimpleLiteralContext(context, state);
    enterRule(localctx, 122, RULE_simpleLiteral);
    try {
      state = 667;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_STRING:
          localctx = SimpleStringLiteralContext(localctx);
          enterOuterAlt(localctx, 1);
          state = 665;
          match(TOKEN_STRING);
          break;
        case TOKEN_NUMBER:
          localctx = SimpleNumberLiteralContext(localctx);
          enterOuterAlt(localctx, 2);
          state = 666;
          match(TOKEN_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ExpressionContext expression([int p = 0]) {
    final parentctx = context;
    final parentState = state;
    dynamic localctx = ExpressionContext(context, parentState);
    var prevctx = localctx;
    var startState = 124;
    enterRecursionRule(localctx, 124, RULE_expression, p);
    int la;
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 700;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 64, context)) {
        case 1:
          localctx = TermExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;

          state = 670;
          expressionTerm(0);
          break;
        case 2:
          localctx = RetrieveExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 671;
          retrieve();
          break;
        case 3:
          localctx = QueryExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 672;
          query();
          break;
        case 4:
          localctx = CastExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 673;
          match(TOKEN_T__62);
          state = 674;
          expression(0);
          state = 675;
          match(TOKEN_T__61);
          state = 676;
          typeSpecifier();
          break;
        case 5:
          localctx = NotExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 678;
          match(TOKEN_T__57);
          state = 679;
          expression(13);
          break;
        case 6:
          localctx = ExistenceExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 680;
          match(TOKEN_T__63);
          state = 681;
          expression(12);
          break;
        case 7:
          localctx = DurationBetweenExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 684;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__67) {
            state = 682;
            match(TOKEN_T__67);
            state = 683;
            match(TOKEN_T__40);
          }

          state = 686;
          pluralDateTimePrecision();
          state = 687;
          match(TOKEN_T__65);
          state = 688;
          expressionTerm(0);
          state = 689;
          match(TOKEN_T__66);
          state = 690;
          expressionTerm(0);
          break;
        case 8:
          localctx = DifferenceBetweenExpressionContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 692;
          match(TOKEN_T__68);
          state = 693;
          match(TOKEN_T__40);
          state = 694;
          pluralDateTimePrecision();
          state = 695;
          match(TOKEN_T__65);
          state = 696;
          expressionTerm(0);
          state = 697;
          match(TOKEN_T__66);
          state = 698;
          expressionTerm(0);
          break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 750;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 69, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          prevctx = localctx;
          state = 748;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 68, context)) {
            case 1:
              localctx = InequalityExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 702;
              if (!(precpred(context, 8))) {
                throw FailedPredicateException(this, "precpred(context, 8)");
              }
              state = 703;
              la = tokenStream.LA(1)!;
              if (!(((((la - 22)) & ~0x3f) == 0 &&
                  ((1 << (la - 22)) & 844424930131971) != 0))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 704;
              expression(9);
              break;
            case 2:
              localctx = TimingExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 705;
              if (!(precpred(context, 7))) {
                throw FailedPredicateException(this, "precpred(context, 7)");
              }
              state = 706;
              intervalOperatorPhrase();
              state = 707;
              expression(8);
              break;
            case 3:
              localctx = EqualityExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 709;
              if (!(precpred(context, 6))) {
                throw FailedPredicateException(this, "precpred(context, 6)");
              }
              state = 710;
              la = tokenStream.LA(1)!;
              if (!(((((la - 42)) & ~0x3f) == 0 &&
                  ((1 << (la - 42)) & 3221225475) != 0))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 711;
              expression(7);
              break;
            case 4:
              localctx = MembershipExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 712;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 713;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__40 || la == TOKEN_T__73)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 715;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 65, context)) {
                case 1:
                  state = 714;
                  dateTimePrecisionSpecifier();
                  break;
              }
              state = 717;
              expression(6);
              break;
            case 5:
              localctx = AndExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 718;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 719;
              match(TOKEN_T__66);
              state = 720;
              expression(5);
              break;
            case 6:
              localctx = OrExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 721;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 722;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__74 || la == TOKEN_T__75)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 723;
              expression(4);
              break;
            case 7:
              localctx = ImpliesExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 724;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 725;
              match(TOKEN_T__76);
              state = 726;
              expression(3);
              break;
            case 8:
              localctx = InFixSetExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 727;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 728;
              la = tokenStream.LA(1)!;
              if (!(((((la - 78)) & ~0x3f) == 0 &&
                  ((1 << (la - 78)) & 15) != 0))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 729;
              expression(2);
              break;
            case 9:
              localctx = BooleanExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 730;
              if (!(precpred(context, 16))) {
                throw FailedPredicateException(this, "precpred(context, 16)");
              }
              state = 731;
              match(TOKEN_T__56);
              state = 733;
              errorHandler.sync(this);
              la = tokenStream.LA(1)!;
              if (la == TOKEN_T__57) {
                state = 732;
                match(TOKEN_T__57);
              }

              state = 735;
              la = tokenStream.LA(1)!;
              if (!((((la) & ~0x3f) == 0 &&
                  ((1 << la) & 4035225266123964416) != 0))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case 10:
              localctx = TypeExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 736;
              if (!(precpred(context, 15))) {
                throw FailedPredicateException(this, "precpred(context, 15)");
              }
              state = 737;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__56 || la == TOKEN_T__61)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 738;
              typeSpecifier();
              break;
            case 11:
              localctx = BetweenExpressionContext(
                  ExpressionContext(parentctx, parentState));
              pushNewRecursionContext(localctx, startState, RULE_expression);
              state = 739;
              if (!(precpred(context, 11))) {
                throw FailedPredicateException(this, "precpred(context, 11)");
              }
              state = 741;
              errorHandler.sync(this);
              la = tokenStream.LA(1)!;
              if (la == TOKEN_T__64) {
                state = 740;
                match(TOKEN_T__64);
              }

              state = 743;
              match(TOKEN_T__65);
              state = 744;
              expressionTerm(0);
              state = 745;
              match(TOKEN_T__66);
              state = 746;
              expressionTerm(0);
              break;
          }
        }
        state = 752;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 69, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(parentctx);
    }
    return localctx;
  }

  DateTimePrecisionContext dateTimePrecision() {
    dynamic localctx = DateTimePrecisionContext(context, state);
    enterRule(localctx, 126, RULE_dateTimePrecision);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 753;
      la = tokenStream.LA(1)!;
      if (!(((((la - 82)) & ~0x3f) == 0 && ((1 << (la - 82)) & 255) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DateTimeComponentContext dateTimeComponent() {
    dynamic localctx = DateTimeComponentContext(context, state);
    enterRule(localctx, 128, RULE_dateTimeComponent);
    try {
      state = 759;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__81:
        case TOKEN_T__82:
        case TOKEN_T__83:
        case TOKEN_T__84:
        case TOKEN_T__85:
        case TOKEN_T__86:
        case TOKEN_T__87:
        case TOKEN_T__88:
          enterOuterAlt(localctx, 1);
          state = 755;
          dateTimePrecision();
          break;
        case TOKEN_T__89:
          enterOuterAlt(localctx, 2);
          state = 756;
          match(TOKEN_T__89);
          break;
        case TOKEN_T__90:
          enterOuterAlt(localctx, 3);
          state = 757;
          match(TOKEN_T__90);
          break;
        case TOKEN_T__91:
          enterOuterAlt(localctx, 4);
          state = 758;
          match(TOKEN_T__91);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  PluralDateTimePrecisionContext pluralDateTimePrecision() {
    dynamic localctx = PluralDateTimePrecisionContext(context, state);
    enterRule(localctx, 130, RULE_pluralDateTimePrecision);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 761;
      la = tokenStream.LA(1)!;
      if (!(((((la - 93)) & ~0x3f) == 0 && ((1 << (la - 93)) & 255) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ExpressionTermContext expressionTerm([int p = 0]) {
    final parentctx = context;
    final parentState = state;
    dynamic localctx = ExpressionTermContext(context, parentState);
    var prevctx = localctx;
    var startState = 132;
    enterRecursionRule(localctx, 132, RULE_expressionTerm, p);
    int la;
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 841;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 76, context)) {
        case 1:
          localctx = TermExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;

          state = 764;
          term();
          break;
        case 2:
          localctx = ConversionExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 765;
          match(TOKEN_T__100);
          state = 766;
          expression(0);
          state = 767;
          match(TOKEN_T__101);
          state = 770;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__0:
            case TOKEN_T__1:
            case TOKEN_T__2:
            case TOKEN_T__3:
            case TOKEN_T__4:
            case TOKEN_T__5:
            case TOKEN_T__6:
            case TOKEN_T__7:
            case TOKEN_T__8:
            case TOKEN_T__9:
            case TOKEN_T__11:
            case TOKEN_T__12:
            case TOKEN_T__17:
            case TOKEN_T__19:
            case TOKEN_T__20:
            case TOKEN_T__23:
            case TOKEN_T__24:
            case TOKEN_T__25:
            case TOKEN_T__26:
            case TOKEN_T__27:
            case TOKEN_T__28:
            case TOKEN_T__29:
            case TOKEN_T__44:
            case TOKEN_T__49:
            case TOKEN_T__51:
            case TOKEN_T__52:
            case TOKEN_T__53:
            case TOKEN_T__54:
            case TOKEN_T__55:
            case TOKEN_T__73:
            case TOKEN_T__75:
            case TOKEN_T__76:
            case TOKEN_T__78:
            case TOKEN_T__79:
            case TOKEN_T__80:
            case TOKEN_T__89:
            case TOKEN_T__90:
            case TOKEN_T__91:
            case TOKEN_T__104:
            case TOKEN_T__105:
            case TOKEN_T__107:
            case TOKEN_T__108:
            case TOKEN_T__109:
            case TOKEN_T__117:
            case TOKEN_T__118:
            case TOKEN_T__129:
            case TOKEN_T__130:
            case TOKEN_T__131:
            case TOKEN_T__132:
            case TOKEN_T__139:
            case TOKEN_T__140:
            case TOKEN_T__143:
            case TOKEN_T__147:
            case TOKEN_T__148:
            case TOKEN_T__152:
            case TOKEN_T__153:
            case TOKEN_T__154:
            case TOKEN_QUOTEDIDENTIFIER:
            case TOKEN_IDENTIFIER:
            case TOKEN_DELIMITEDIDENTIFIER:
              state = 768;
              typeSpecifier();
              break;
            case TOKEN_T__81:
            case TOKEN_T__82:
            case TOKEN_T__83:
            case TOKEN_T__84:
            case TOKEN_T__85:
            case TOKEN_T__86:
            case TOKEN_T__87:
            case TOKEN_T__88:
            case TOKEN_T__92:
            case TOKEN_T__93:
            case TOKEN_T__94:
            case TOKEN_T__95:
            case TOKEN_T__96:
            case TOKEN_T__97:
            case TOKEN_T__98:
            case TOKEN_T__99:
            case TOKEN_STRING:
              state = 769;
              unit();
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 3:
          localctx = PolarityExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 772;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__102 || la == TOKEN_T__103)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 773;
          expressionTerm(18);
          break;
        case 4:
          localctx = TimeBoundaryExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 774;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__104 || la == TOKEN_T__105)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 775;
          match(TOKEN_T__106);
          state = 776;
          expressionTerm(17);
          break;
        case 5:
          localctx = TimeUnitExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 777;
          dateTimeComponent();
          state = 778;
          match(TOKEN_T__18);
          state = 779;
          expressionTerm(16);
          break;
        case 6:
          localctx = DurationExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 781;
          match(TOKEN_T__67);
          state = 782;
          match(TOKEN_T__40);
          state = 783;
          pluralDateTimePrecision();
          state = 784;
          match(TOKEN_T__106);
          state = 785;
          expressionTerm(15);
          break;
        case 7:
          localctx = DifferenceExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 787;
          match(TOKEN_T__68);
          state = 788;
          match(TOKEN_T__40);
          state = 789;
          pluralDateTimePrecision();
          state = 790;
          match(TOKEN_T__106);
          state = 791;
          expressionTerm(14);
          break;
        case 8:
          localctx = WidthExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 793;
          match(TOKEN_T__107);
          state = 794;
          match(TOKEN_T__106);
          state = 795;
          expressionTerm(13);
          break;
        case 9:
          localctx = SuccessorExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 796;
          match(TOKEN_T__108);
          state = 797;
          match(TOKEN_T__106);
          state = 798;
          expressionTerm(12);
          break;
        case 10:
          localctx = PredecessorExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 799;
          match(TOKEN_T__109);
          state = 800;
          match(TOKEN_T__106);
          state = 801;
          expressionTerm(11);
          break;
        case 11:
          localctx = ElementExtractorExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 802;
          match(TOKEN_T__110);
          state = 803;
          match(TOKEN_T__18);
          state = 804;
          expressionTerm(10);
          break;
        case 12:
          localctx = PointExtractorExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 805;
          match(TOKEN_T__111);
          state = 806;
          match(TOKEN_T__18);
          state = 807;
          expressionTerm(9);
          break;
        case 13:
          localctx = TypeExtentExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 808;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__112 || la == TOKEN_T__113)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 809;
          namedTypeSpecifier();
          break;
        case 14:
          localctx = IfThenElseExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 810;
          match(TOKEN_T__120);
          state = 811;
          expression(0);
          state = 812;
          match(TOKEN_T__121);
          state = 813;
          expression(0);
          state = 814;
          match(TOKEN_T__122);
          state = 815;
          expression(0);
          break;
        case 15:
          localctx = CaseExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 817;
          match(TOKEN_T__123);
          state = 819;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if ((((la) & ~0x3f) == 0 &&
                  ((1 << la) & -4758861967782021122) != 0) ||
              ((((la - 64)) & ~0x3f) == 0 &&
                  ((1 << (la - 64)) & -952520392159808463) != 0) ||
              ((((la - 130)) & ~0x3f) == 0 &&
                  ((1 << (la - 130)) & 68719234063) != 0)) {
            state = 818;
            expression(0);
          }

          state = 822;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          do {
            state = 821;
            caseExpressionItem();
            state = 824;
            errorHandler.sync(this);
            la = tokenStream.LA(1)!;
          } while (la == TOKEN_T__128);
          state = 826;
          match(TOKEN_T__122);
          state = 827;
          expression(0);
          state = 828;
          match(TOKEN_T__105);
          break;
        case 16:
          localctx = AggregateExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 830;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__47 || la == TOKEN_T__124)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 831;
          expression(0);
          break;
        case 17:
          localctx = SetAggregateExpressionTermContext(localctx);
          context = localctx;
          prevctx = localctx;
          state = 832;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__125 || la == TOKEN_T__126)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 833;
          expression(0);
          state = 839;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 75, context)) {
            case 1:
              state = 834;
              match(TOKEN_T__127);
              state = 837;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 74, context)) {
                case 1:
                  state = 835;
                  dateTimePrecision();
                  break;
                case 2:
                  state = 836;
                  expression(0);
                  break;
              }
              break;
          }
          break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 862;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 78, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          prevctx = localctx;
          state = 860;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 77, context)) {
            case 1:
              localctx = PowerExpressionTermContext(
                  ExpressionTermContext(parentctx, parentState));
              pushNewRecursionContext(
                  localctx, startState, RULE_expressionTerm);
              state = 843;
              if (!(precpred(context, 7))) {
                throw FailedPredicateException(this, "precpred(context, 7)");
              }
              state = 844;
              match(TOKEN_T__114);
              state = 845;
              expressionTerm(8);
              break;
            case 2:
              localctx = MultiplicationExpressionTermContext(
                  ExpressionTermContext(parentctx, parentState));
              pushNewRecursionContext(
                  localctx, startState, RULE_expressionTerm);
              state = 846;
              if (!(precpred(context, 6))) {
                throw FailedPredicateException(this, "precpred(context, 6)");
              }
              state = 847;
              la = tokenStream.LA(1)!;
              if (!(((((la - 116)) & ~0x3f) == 0 &&
                  ((1 << (la - 116)) & 15) != 0))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 848;
              expressionTerm(7);
              break;
            case 3:
              localctx = AdditionExpressionTermContext(
                  ExpressionTermContext(parentctx, parentState));
              pushNewRecursionContext(
                  localctx, startState, RULE_expressionTerm);
              state = 849;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 850;
              la = tokenStream.LA(1)!;
              if (!(((((la - 103)) & ~0x3f) == 0 &&
                  ((1 << (la - 103)) & 131075) != 0))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 851;
              expressionTerm(6);
              break;
            case 4:
              localctx = InvocationExpressionTermContext(
                  ExpressionTermContext(parentctx, parentState));
              pushNewRecursionContext(
                  localctx, startState, RULE_expressionTerm);
              state = 852;
              if (!(precpred(context, 21))) {
                throw FailedPredicateException(this, "precpred(context, 21)");
              }
              state = 853;
              match(TOKEN_T__16);
              state = 854;
              qualifiedInvocation();
              break;
            case 5:
              localctx = IndexedExpressionTermContext(
                  ExpressionTermContext(parentctx, parentState));
              pushNewRecursionContext(
                  localctx, startState, RULE_expressionTerm);
              state = 855;
              if (!(precpred(context, 20))) {
                throw FailedPredicateException(this, "precpred(context, 20)");
              }
              state = 856;
              match(TOKEN_T__37);
              state = 857;
              expression(0);
              state = 858;
              match(TOKEN_T__39);
              break;
          }
        }
        state = 864;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 78, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(parentctx);
    }
    return localctx;
  }

  CaseExpressionItemContext caseExpressionItem() {
    dynamic localctx = CaseExpressionItemContext(context, state);
    enterRule(localctx, 134, RULE_caseExpressionItem);
    try {
      enterOuterAlt(localctx, 1);
      state = 865;
      match(TOKEN_T__128);
      state = 866;
      expression(0);
      state = 867;
      match(TOKEN_T__121);
      state = 868;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DateTimePrecisionSpecifierContext dateTimePrecisionSpecifier() {
    dynamic localctx = DateTimePrecisionSpecifierContext(context, state);
    enterRule(localctx, 136, RULE_dateTimePrecisionSpecifier);
    try {
      enterOuterAlt(localctx, 1);
      state = 870;
      dateTimePrecision();
      state = 871;
      match(TOKEN_T__106);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  RelativeQualifierContext relativeQualifier() {
    dynamic localctx = RelativeQualifierContext(context, state);
    enterRule(localctx, 138, RULE_relativeQualifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 873;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__129 || la == TOKEN_T__130)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  OffsetRelativeQualifierContext offsetRelativeQualifier() {
    dynamic localctx = OffsetRelativeQualifierContext(context, state);
    enterRule(localctx, 140, RULE_offsetRelativeQualifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 875;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__131 || la == TOKEN_T__132)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ExclusiveRelativeQualifierContext exclusiveRelativeQualifier() {
    dynamic localctx = ExclusiveRelativeQualifierContext(context, state);
    enterRule(localctx, 142, RULE_exclusiveRelativeQualifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 877;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__133 || la == TOKEN_T__134)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QuantityOffsetContext quantityOffset() {
    dynamic localctx = QuantityOffsetContext(context, state);
    enterRule(localctx, 144, RULE_quantityOffset);
    int la;
    try {
      state = 886;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_NUMBER:
          enterOuterAlt(localctx, 1);
          state = 879;
          quantity();
          state = 881;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__131 || la == TOKEN_T__132) {
            state = 880;
            offsetRelativeQualifier();
          }

          break;
        case TOKEN_T__133:
        case TOKEN_T__134:
          enterOuterAlt(localctx, 2);
          state = 883;
          exclusiveRelativeQualifier();
          state = 884;
          quantity();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TemporalRelationshipContext temporalRelationship() {
    dynamic localctx = TemporalRelationshipContext(context, state);
    enterRule(localctx, 146, RULE_temporalRelationship);
    int la;
    try {
      state = 896;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 83, context)) {
        case 1:
          enterOuterAlt(localctx, 1);
          state = 889;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__135) {
            state = 888;
            match(TOKEN_T__135);
          }

          state = 891;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__136 || la == TOKEN_T__137)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case 2:
          enterOuterAlt(localctx, 2);
          state = 892;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__136 || la == TOKEN_T__137)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 894;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__138) {
            state = 893;
            match(TOKEN_T__138);
          }

          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  IntervalOperatorPhraseContext intervalOperatorPhrase() {
    dynamic localctx = IntervalOperatorPhraseContext(context, state);
    enterRule(localctx, 148, RULE_intervalOperatorPhrase);
    int la;
    try {
      state = 979;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 107, context)) {
        case 1:
          localctx = ConcurrentWithIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 1);
          state = 899;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (((((la - 140)) & ~0x3f) == 0 && ((1 << (la - 140)) & 7) != 0)) {
            state = 898;
            la = tokenStream.LA(1)!;
            if (!(((((la - 140)) & ~0x3f) == 0 &&
                ((1 << (la - 140)) & 7) != 0))) {
              errorHandler.recoverInline(this);
            } else {
              if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
          }

          state = 901;
          match(TOKEN_T__142);
          state = 903;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (((((la - 82)) & ~0x3f) == 0 && ((1 << (la - 82)) & 255) != 0)) {
            state = 902;
            dateTimePrecision();
          }

          state = 907;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__129:
            case TOKEN_T__130:
              state = 905;
              relativeQualifier();
              break;
            case TOKEN_T__61:
              state = 906;
              match(TOKEN_T__61);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 910;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 87, context)) {
            case 1:
              state = 909;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__104 || la == TOKEN_T__105)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
          }
          break;
        case 2:
          localctx = IncludesIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 2);
          state = 913;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__64) {
            state = 912;
            match(TOKEN_T__64);
          }

          state = 915;
          match(TOKEN_T__143);
          state = 917;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 89, context)) {
            case 1:
              state = 916;
              dateTimePrecisionSpecifier();
              break;
          }
          state = 920;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 90, context)) {
            case 1:
              state = 919;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__104 || la == TOKEN_T__105)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
          }
          break;
        case 3:
          localctx = IncludedInIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 3);
          state = 923;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (((((la - 140)) & ~0x3f) == 0 && ((1 << (la - 140)) & 7) != 0)) {
            state = 922;
            la = tokenStream.LA(1)!;
            if (!(((((la - 140)) & ~0x3f) == 0 &&
                ((1 << (la - 140)) & 7) != 0))) {
              errorHandler.recoverInline(this);
            } else {
              if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
          }

          state = 926;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__64) {
            state = 925;
            match(TOKEN_T__64);
          }

          state = 928;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__144 || la == TOKEN_T__145)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 930;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 93, context)) {
            case 1:
              state = 929;
              dateTimePrecisionSpecifier();
              break;
          }
          break;
        case 4:
          localctx = BeforeOrAfterIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 4);
          state = 933;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (((((la - 140)) & ~0x3f) == 0 && ((1 << (la - 140)) & 7) != 0)) {
            state = 932;
            la = tokenStream.LA(1)!;
            if (!(((((la - 140)) & ~0x3f) == 0 &&
                ((1 << (la - 140)) & 7) != 0))) {
              errorHandler.recoverInline(this);
            } else {
              if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
          }

          state = 936;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (((((la - 134)) & ~0x3f) == 0 &&
              ((1 << (la - 134)) & 2147483651) != 0)) {
            state = 935;
            quantityOffset();
          }

          state = 938;
          temporalRelationship();
          state = 940;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 96, context)) {
            case 1:
              state = 939;
              dateTimePrecisionSpecifier();
              break;
          }
          state = 943;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 97, context)) {
            case 1:
              state = 942;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__104 || la == TOKEN_T__105)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
          }
          break;
        case 5:
          localctx = WithinIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 5);
          state = 946;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (((((la - 140)) & ~0x3f) == 0 && ((1 << (la - 140)) & 7) != 0)) {
            state = 945;
            la = tokenStream.LA(1)!;
            if (!(((((la - 140)) & ~0x3f) == 0 &&
                ((1 << (la - 140)) & 7) != 0))) {
              errorHandler.recoverInline(this);
            } else {
              if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
          }

          state = 949;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__64) {
            state = 948;
            match(TOKEN_T__64);
          }

          state = 951;
          match(TOKEN_T__146);
          state = 952;
          quantity();
          state = 953;
          match(TOKEN_T__106);
          state = 955;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 100, context)) {
            case 1:
              state = 954;
              la = tokenStream.LA(1)!;
              if (!(la == TOKEN_T__104 || la == TOKEN_T__105)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
          }
          break;
        case 6:
          localctx = MeetsIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 6);
          state = 957;
          match(TOKEN_T__147);
          state = 959;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__136 || la == TOKEN_T__137) {
            state = 958;
            la = tokenStream.LA(1)!;
            if (!(la == TOKEN_T__136 || la == TOKEN_T__137)) {
              errorHandler.recoverInline(this);
            } else {
              if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
          }

          state = 962;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 102, context)) {
            case 1:
              state = 961;
              dateTimePrecisionSpecifier();
              break;
          }
          break;
        case 7:
          localctx = OverlapsIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 7);
          state = 964;
          match(TOKEN_T__148);
          state = 966;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          if (la == TOKEN_T__136 || la == TOKEN_T__137) {
            state = 965;
            la = tokenStream.LA(1)!;
            if (!(la == TOKEN_T__136 || la == TOKEN_T__137)) {
              errorHandler.recoverInline(this);
            } else {
              if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
          }

          state = 969;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 104, context)) {
            case 1:
              state = 968;
              dateTimePrecisionSpecifier();
              break;
          }
          break;
        case 8:
          localctx = StartsIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 8);
          state = 971;
          match(TOKEN_T__139);
          state = 973;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 105, context)) {
            case 1:
              state = 972;
              dateTimePrecisionSpecifier();
              break;
          }
          break;
        case 9:
          localctx = EndsIntervalOperatorPhraseContext(localctx);
          enterOuterAlt(localctx, 9);
          state = 975;
          match(TOKEN_T__140);
          state = 977;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 106, context)) {
            case 1:
              state = 976;
              dateTimePrecisionSpecifier();
              break;
          }
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TermContext term() {
    dynamic localctx = TermContext(context, state);
    enterRule(localctx, 150, RULE_term);
    try {
      state = 994;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 108, context)) {
        case 1:
          localctx = InvocationTermContext(localctx);
          enterOuterAlt(localctx, 1);
          state = 981;
          invocation();
          break;
        case 2:
          localctx = LiteralTermContext(localctx);
          enterOuterAlt(localctx, 2);
          state = 982;
          literal();
          break;
        case 3:
          localctx = ExternalConstantTermContext(localctx);
          enterOuterAlt(localctx, 3);
          state = 983;
          externalConstant();
          break;
        case 4:
          localctx = IntervalSelectorTermContext(localctx);
          enterOuterAlt(localctx, 4);
          state = 984;
          intervalSelector();
          break;
        case 5:
          localctx = TupleSelectorTermContext(localctx);
          enterOuterAlt(localctx, 5);
          state = 985;
          tupleSelector();
          break;
        case 6:
          localctx = InstanceSelectorTermContext(localctx);
          enterOuterAlt(localctx, 6);
          state = 986;
          instanceSelector();
          break;
        case 7:
          localctx = ListSelectorTermContext(localctx);
          enterOuterAlt(localctx, 7);
          state = 987;
          listSelector();
          break;
        case 8:
          localctx = CodeSelectorTermContext(localctx);
          enterOuterAlt(localctx, 8);
          state = 988;
          codeSelector();
          break;
        case 9:
          localctx = ConceptSelectorTermContext(localctx);
          enterOuterAlt(localctx, 9);
          state = 989;
          conceptSelector();
          break;
        case 10:
          localctx = ParenthesizedTermContext(localctx);
          enterOuterAlt(localctx, 10);
          state = 990;
          match(TOKEN_T__30);
          state = 991;
          expression(0);
          state = 992;
          match(TOKEN_T__31);
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QualifiedInvocationContext qualifiedInvocation() {
    dynamic localctx = QualifiedInvocationContext(context, state);
    enterRule(localctx, 152, RULE_qualifiedInvocation);
    try {
      state = 998;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 109, context)) {
        case 1:
          localctx = QualifiedMemberInvocationContext(localctx);
          enterOuterAlt(localctx, 1);
          state = 996;
          referentialIdentifier();
          break;
        case 2:
          localctx = QualifiedFunctionInvocationContext(localctx);
          enterOuterAlt(localctx, 2);
          state = 997;
          qualifiedFunction();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QualifiedFunctionContext qualifiedFunction() {
    dynamic localctx = QualifiedFunctionContext(context, state);
    enterRule(localctx, 154, RULE_qualifiedFunction);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1000;
      identifierOrFunctionIdentifier();
      state = 1001;
      match(TOKEN_T__30);
      state = 1003;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if ((((la) & ~0x3f) == 0 && ((1 << la) & -4758861967782021122) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & -952520392159808463) != 0) ||
          ((((la - 130)) & ~0x3f) == 0 &&
              ((1 << (la - 130)) & 68719234063) != 0)) {
        state = 1002;
        paramList();
      }

      state = 1005;
      match(TOKEN_T__31);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  InvocationContext invocation() {
    dynamic localctx = InvocationContext(context, state);
    enterRule(localctx, 156, RULE_invocation);
    try {
      state = 1012;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 111, context)) {
        case 1:
          localctx = MemberInvocationContext(localctx);
          enterOuterAlt(localctx, 1);
          state = 1007;
          referentialIdentifier();
          break;
        case 2:
          localctx = FunctionInvocationContext(localctx);
          enterOuterAlt(localctx, 2);
          state = 1008;
          function();
          break;
        case 3:
          localctx = ThisInvocationContext(localctx);
          enterOuterAlt(localctx, 3);
          state = 1009;
          match(TOKEN_T__149);
          break;
        case 4:
          localctx = IndexInvocationContext(localctx);
          enterOuterAlt(localctx, 4);
          state = 1010;
          match(TOKEN_T__150);
          break;
        case 5:
          localctx = TotalInvocationContext(localctx);
          enterOuterAlt(localctx, 5);
          state = 1011;
          match(TOKEN_T__151);
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  FunctionContext function() {
    dynamic localctx = FunctionContext(context, state);
    enterRule(localctx, 158, RULE_function);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1014;
      referentialIdentifier();
      state = 1015;
      match(TOKEN_T__30);
      state = 1017;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if ((((la) & ~0x3f) == 0 && ((1 << la) & -4758861967782021122) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & -952520392159808463) != 0) ||
          ((((la - 130)) & ~0x3f) == 0 &&
              ((1 << (la - 130)) & 68719234063) != 0)) {
        state = 1016;
        paramList();
      }

      state = 1019;
      match(TOKEN_T__31);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  RatioContext ratio() {
    dynamic localctx = RatioContext(context, state);
    enterRule(localctx, 160, RULE_ratio);
    try {
      enterOuterAlt(localctx, 1);
      state = 1021;
      quantity();
      state = 1022;
      match(TOKEN_T__10);
      state = 1023;
      quantity();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  LiteralContext literal() {
    dynamic localctx = LiteralContext(context, state);
    enterRule(localctx, 162, RULE_literal);
    int la;
    try {
      state = 1035;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 113, context)) {
        case 1:
          localctx = BooleanLiteralContext(localctx);
          enterOuterAlt(localctx, 1);
          state = 1025;
          la = tokenStream.LA(1)!;
          if (!(la == TOKEN_T__59 || la == TOKEN_T__60)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case 2:
          localctx = NullLiteralContext(localctx);
          enterOuterAlt(localctx, 2);
          state = 1026;
          match(TOKEN_T__58);
          break;
        case 3:
          localctx = StringLiteralContext(localctx);
          enterOuterAlt(localctx, 3);
          state = 1027;
          match(TOKEN_STRING);
          break;
        case 4:
          localctx = NumberLiteralContext(localctx);
          enterOuterAlt(localctx, 4);
          state = 1028;
          match(TOKEN_NUMBER);
          break;
        case 5:
          localctx = LongNumberLiteralContext(localctx);
          enterOuterAlt(localctx, 5);
          state = 1029;
          match(TOKEN_LONGNUMBER);
          break;
        case 6:
          localctx = DateTimeLiteralContext(localctx);
          enterOuterAlt(localctx, 6);
          state = 1030;
          match(TOKEN_DATETIME);
          break;
        case 7:
          localctx = DateLiteralContext(localctx);
          enterOuterAlt(localctx, 7);
          state = 1031;
          match(TOKEN_DATE);
          break;
        case 8:
          localctx = TimeLiteralContext(localctx);
          enterOuterAlt(localctx, 8);
          state = 1032;
          match(TOKEN_TIME);
          break;
        case 9:
          localctx = QuantityLiteralContext(localctx);
          enterOuterAlt(localctx, 9);
          state = 1033;
          quantity();
          break;
        case 10:
          localctx = RatioLiteralContext(localctx);
          enterOuterAlt(localctx, 10);
          state = 1034;
          ratio();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  IntervalSelectorContext intervalSelector() {
    dynamic localctx = IntervalSelectorContext(context, state);
    enterRule(localctx, 164, RULE_intervalSelector);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1037;
      match(TOKEN_T__23);
      state = 1038;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__30 || la == TOKEN_T__37)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 1039;
      expression(0);
      state = 1040;
      match(TOKEN_T__14);
      state = 1041;
      expression(0);
      state = 1042;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__31 || la == TOKEN_T__39)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TupleSelectorContext tupleSelector() {
    dynamic localctx = TupleSelectorContext(context, state);
    enterRule(localctx, 166, RULE_tupleSelector);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1045;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__24) {
        state = 1044;
        match(TOKEN_T__24);
      }

      state = 1047;
      match(TOKEN_T__13);
      state = 1057;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__10:
          state = 1048;
          match(TOKEN_T__10);
          break;
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__17:
        case TOKEN_T__19:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__44:
        case TOKEN_T__49:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__73:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__143:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__152:
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          state = 1049;
          tupleElementSelector();
          state = 1054;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          while (la == TOKEN_T__14) {
            state = 1050;
            match(TOKEN_T__14);
            state = 1051;
            tupleElementSelector();
            state = 1056;
            errorHandler.sync(this);
            la = tokenStream.LA(1)!;
          }
          break;
        default:
          throw NoViableAltException(this);
      }
      state = 1059;
      match(TOKEN_T__15);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TupleElementSelectorContext tupleElementSelector() {
    dynamic localctx = TupleElementSelectorContext(context, state);
    enterRule(localctx, 168, RULE_tupleElementSelector);
    try {
      enterOuterAlt(localctx, 1);
      state = 1061;
      referentialIdentifier();
      state = 1062;
      match(TOKEN_T__10);
      state = 1063;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  InstanceSelectorContext instanceSelector() {
    dynamic localctx = InstanceSelectorContext(context, state);
    enterRule(localctx, 170, RULE_instanceSelector);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1065;
      namedTypeSpecifier();
      state = 1066;
      match(TOKEN_T__13);
      state = 1076;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__10:
          state = 1067;
          match(TOKEN_T__10);
          break;
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__17:
        case TOKEN_T__19:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__44:
        case TOKEN_T__49:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__73:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__143:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__152:
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          state = 1068;
          instanceElementSelector();
          state = 1073;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          while (la == TOKEN_T__14) {
            state = 1069;
            match(TOKEN_T__14);
            state = 1070;
            instanceElementSelector();
            state = 1075;
            errorHandler.sync(this);
            la = tokenStream.LA(1)!;
          }
          break;
        default:
          throw NoViableAltException(this);
      }
      state = 1078;
      match(TOKEN_T__15);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  InstanceElementSelectorContext instanceElementSelector() {
    dynamic localctx = InstanceElementSelectorContext(context, state);
    enterRule(localctx, 172, RULE_instanceElementSelector);
    try {
      enterOuterAlt(localctx, 1);
      state = 1080;
      referentialIdentifier();
      state = 1081;
      match(TOKEN_T__10);
      state = 1082;
      expression(0);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ListSelectorContext listSelector() {
    dynamic localctx = ListSelectorContext(context, state);
    enterRule(localctx, 174, RULE_listSelector);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1091;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_T__20) {
        state = 1084;
        match(TOKEN_T__20);
        state = 1089;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        if (la == TOKEN_T__21) {
          state = 1085;
          match(TOKEN_T__21);
          state = 1086;
          typeSpecifier();
          state = 1087;
          match(TOKEN_T__22);
        }
      }

      state = 1093;
      match(TOKEN_T__13);
      state = 1102;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if ((((la) & ~0x3f) == 0 && ((1 << la) & -4758861967782021122) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & -952520392159808463) != 0) ||
          ((((la - 130)) & ~0x3f) == 0 &&
              ((1 << (la - 130)) & 68719234063) != 0)) {
        state = 1094;
        expression(0);
        state = 1099;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        while (la == TOKEN_T__14) {
          state = 1095;
          match(TOKEN_T__14);
          state = 1096;
          expression(0);
          state = 1101;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
        }
      }

      state = 1104;
      match(TOKEN_T__15);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DisplayClauseContext displayClause() {
    dynamic localctx = DisplayClauseContext(context, state);
    enterRule(localctx, 176, RULE_displayClause);
    try {
      enterOuterAlt(localctx, 1);
      state = 1106;
      match(TOKEN_T__152);
      state = 1107;
      match(TOKEN_STRING);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  CodeSelectorContext codeSelector() {
    dynamic localctx = CodeSelectorContext(context, state);
    enterRule(localctx, 178, RULE_codeSelector);
    try {
      enterOuterAlt(localctx, 1);
      state = 1109;
      match(TOKEN_T__153);
      state = 1110;
      match(TOKEN_STRING);
      state = 1111;
      match(TOKEN_T__18);
      state = 1112;
      codesystemIdentifier();
      state = 1114;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 123, context)) {
        case 1:
          state = 1113;
          displayClause();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ConceptSelectorContext conceptSelector() {
    dynamic localctx = ConceptSelectorContext(context, state);
    enterRule(localctx, 180, RULE_conceptSelector);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1116;
      match(TOKEN_T__154);
      state = 1117;
      match(TOKEN_T__13);
      state = 1118;
      codeSelector();
      state = 1123;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__14) {
        state = 1119;
        match(TOKEN_T__14);
        state = 1120;
        codeSelector();
        state = 1125;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 1126;
      match(TOKEN_T__15);
      state = 1128;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 125, context)) {
        case 1:
          state = 1127;
          displayClause();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  KeywordContext keyword() {
    dynamic localctx = KeywordContext(context, state);
    enterRule(localctx, 182, RULE_keyword);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1130;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & -15150577076226) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & -87821842001183681) != 0) ||
          ((((la - 128)) & ~0x3f) == 0 &&
              ((1 << (la - 128)) & 239075135) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ReservedWordContext reservedWord() {
    dynamic localctx = ReservedWordContext(context, state);
    enterRule(localctx, 184, RULE_reservedWord);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1132;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & -140787825319084032) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & -141994780371711937) != 0) ||
          ((((la - 128)) & ~0x3f) == 0 &&
              ((1 << (la - 128)) & 202297091) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  KeywordIdentifierContext keywordIdentifier() {
    dynamic localctx = KeywordIdentifierContext(context, state);
    enterRule(localctx, 186, RULE_keywordIdentifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1134;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & 140772674742007806) != 0) ||
          ((((la - 74)) & ~0x3f) == 0 &&
              ((1 << (la - 74)) & 1080916813829046509) != 0) ||
          ((((la - 140)) & ~0x3f) == 0 && ((1 << (la - 140)) & 8979) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ObsoleteIdentifierContext obsoleteIdentifier() {
    dynamic localctx = ObsoleteIdentifierContext(context, state);
    enterRule(localctx, 188, RULE_obsoleteIdentifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1136;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & 288687772990177284) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & 6597539529729) != 0) ||
          ((((la - 153)) & ~0x3f) == 0 && ((1 << (la - 153)) & 7) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  FunctionIdentifierContext functionIdentifier() {
    dynamic localctx = FunctionIdentifierContext(context, state);
    enterRule(localctx, 190, RULE_functionIdentifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1138;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((1 << la) & -15150577076226) != 0) ||
          ((((la - 64)) & ~0x3f) == 0 &&
              ((1 << (la - 64)) & -87821842001183681) != 0) ||
          ((((la - 128)) & ~0x3f) == 0 &&
              ((1 << (la - 128)) & 239072831) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TypeNameIdentifierContext typeNameIdentifier() {
    dynamic localctx = TypeNameIdentifierContext(context, state);
    enterRule(localctx, 192, RULE_typeNameIdentifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1140;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_T__89 ||
          la == TOKEN_T__90 ||
          la == TOKEN_T__153 ||
          la == TOKEN_T__154)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ReferentialIdentifierContext referentialIdentifier() {
    dynamic localctx = ReferentialIdentifierContext(context, state);
    enterRule(localctx, 194, RULE_referentialIdentifier);
    try {
      state = 1144;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          enterOuterAlt(localctx, 1);
          state = 1142;
          identifier();
          break;
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__17:
        case TOKEN_T__19:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__44:
        case TOKEN_T__49:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__73:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__143:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__152:
          enterOuterAlt(localctx, 2);
          state = 1143;
          keywordIdentifier();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ReferentialOrTypeNameIdentifierContext referentialOrTypeNameIdentifier() {
    dynamic localctx = ReferentialOrTypeNameIdentifierContext(context, state);
    enterRule(localctx, 196, RULE_referentialOrTypeNameIdentifier);
    try {
      state = 1148;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 127, context)) {
        case 1:
          enterOuterAlt(localctx, 1);
          state = 1146;
          referentialIdentifier();
          break;
        case 2:
          enterOuterAlt(localctx, 2);
          state = 1147;
          typeNameIdentifier();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  IdentifierOrFunctionIdentifierContext identifierOrFunctionIdentifier() {
    dynamic localctx = IdentifierOrFunctionIdentifierContext(context, state);
    enterRule(localctx, 198, RULE_identifierOrFunctionIdentifier);
    try {
      state = 1152;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          enterOuterAlt(localctx, 1);
          state = 1150;
          identifier();
          break;
        case TOKEN_T__0:
        case TOKEN_T__1:
        case TOKEN_T__2:
        case TOKEN_T__3:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__6:
        case TOKEN_T__7:
        case TOKEN_T__8:
        case TOKEN_T__9:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__17:
        case TOKEN_T__18:
        case TOKEN_T__19:
        case TOKEN_T__20:
        case TOKEN_T__23:
        case TOKEN_T__24:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__34:
        case TOKEN_T__35:
        case TOKEN_T__36:
        case TOKEN_T__40:
        case TOKEN_T__43:
        case TOKEN_T__44:
        case TOKEN_T__45:
        case TOKEN_T__46:
        case TOKEN_T__47:
        case TOKEN_T__48:
        case TOKEN_T__49:
        case TOKEN_T__50:
        case TOKEN_T__51:
        case TOKEN_T__52:
        case TOKEN_T__53:
        case TOKEN_T__54:
        case TOKEN_T__55:
        case TOKEN_T__56:
        case TOKEN_T__57:
        case TOKEN_T__58:
        case TOKEN_T__59:
        case TOKEN_T__60:
        case TOKEN_T__61:
        case TOKEN_T__62:
        case TOKEN_T__63:
        case TOKEN_T__64:
        case TOKEN_T__65:
        case TOKEN_T__66:
        case TOKEN_T__67:
        case TOKEN_T__68:
        case TOKEN_T__73:
        case TOKEN_T__74:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__81:
        case TOKEN_T__82:
        case TOKEN_T__83:
        case TOKEN_T__84:
        case TOKEN_T__85:
        case TOKEN_T__86:
        case TOKEN_T__87:
        case TOKEN_T__88:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__92:
        case TOKEN_T__93:
        case TOKEN_T__94:
        case TOKEN_T__95:
        case TOKEN_T__96:
        case TOKEN_T__97:
        case TOKEN_T__98:
        case TOKEN_T__99:
        case TOKEN_T__100:
        case TOKEN_T__101:
        case TOKEN_T__104:
        case TOKEN_T__105:
        case TOKEN_T__106:
        case TOKEN_T__107:
        case TOKEN_T__108:
        case TOKEN_T__109:
        case TOKEN_T__110:
        case TOKEN_T__111:
        case TOKEN_T__112:
        case TOKEN_T__113:
        case TOKEN_T__117:
        case TOKEN_T__118:
        case TOKEN_T__120:
        case TOKEN_T__121:
        case TOKEN_T__122:
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__127:
        case TOKEN_T__128:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__136:
        case TOKEN_T__137:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__141:
        case TOKEN_T__142:
        case TOKEN_T__143:
        case TOKEN_T__144:
        case TOKEN_T__145:
        case TOKEN_T__146:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__152:
        case TOKEN_T__153:
        case TOKEN_T__154:
          enterOuterAlt(localctx, 2);
          state = 1151;
          functionIdentifier();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  IdentifierContext identifier() {
    dynamic localctx = IdentifierContext(context, state);
    enterRule(localctx, 200, RULE_identifier);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1154;
      la = tokenStream.LA(1)!;
      if (!(((((la - 157)) & ~0x3f) == 0 && ((1 << (la - 157)) & 97) != 0))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ExternalConstantContext externalConstant() {
    dynamic localctx = ExternalConstantContext(context, state);
    enterRule(localctx, 202, RULE_externalConstant);
    try {
      enterOuterAlt(localctx, 1);
      state = 1156;
      match(TOKEN_T__155);
      state = 1159;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_QUOTEDIDENTIFIER:
        case TOKEN_IDENTIFIER:
        case TOKEN_DELIMITEDIDENTIFIER:
          state = 1157;
          identifier();
          break;
        case TOKEN_STRING:
          state = 1158;
          match(TOKEN_STRING);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ParamListContext paramList() {
    dynamic localctx = ParamListContext(context, state);
    enterRule(localctx, 204, RULE_paramList);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 1161;
      expression(0);
      state = 1166;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while (la == TOKEN_T__14) {
        state = 1162;
        match(TOKEN_T__14);
        state = 1163;
        expression(0);
        state = 1168;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  QuantityContext quantity() {
    dynamic localctx = QuantityContext(context, state);
    enterRule(localctx, 206, RULE_quantity);
    try {
      enterOuterAlt(localctx, 1);
      state = 1169;
      match(TOKEN_NUMBER);
      state = 1171;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 131, context)) {
        case 1:
          state = 1170;
          unit();
          break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  UnitContext unit() {
    dynamic localctx = UnitContext(context, state);
    enterRule(localctx, 208, RULE_unit);
    try {
      state = 1176;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__81:
        case TOKEN_T__82:
        case TOKEN_T__83:
        case TOKEN_T__84:
        case TOKEN_T__85:
        case TOKEN_T__86:
        case TOKEN_T__87:
        case TOKEN_T__88:
          enterOuterAlt(localctx, 1);
          state = 1173;
          dateTimePrecision();
          break;
        case TOKEN_T__92:
        case TOKEN_T__93:
        case TOKEN_T__94:
        case TOKEN_T__95:
        case TOKEN_T__96:
        case TOKEN_T__97:
        case TOKEN_T__98:
        case TOKEN_T__99:
          enterOuterAlt(localctx, 2);
          state = 1174;
          pluralDateTimePrecision();
          break;
        case TOKEN_STRING:
          enterOuterAlt(localctx, 3);
          state = 1175;
          match(TOKEN_STRING);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  bool _simplePath_sempred(dynamic localctx, int predIndex) {
    switch (predIndex) {
      case 0:
        return precpred(context, 2);
      case 1:
        return precpred(context, 1);
    }
    return true;
  }

  bool _expression_sempred(dynamic localctx, int predIndex) {
    switch (predIndex) {
      case 2:
        return precpred(context, 8);
      case 3:
        return precpred(context, 7);
      case 4:
        return precpred(context, 6);
      case 5:
        return precpred(context, 5);
      case 6:
        return precpred(context, 4);
      case 7:
        return precpred(context, 3);
      case 8:
        return precpred(context, 2);
      case 9:
        return precpred(context, 1);
      case 10:
        return precpred(context, 16);
      case 11:
        return precpred(context, 15);
      case 12:
        return precpred(context, 11);
    }
    return true;
  }

  bool _expressionTerm_sempred(dynamic localctx, int predIndex) {
    switch (predIndex) {
      case 13:
        return precpred(context, 7);
      case 14:
        return precpred(context, 6);
      case 15:
        return precpred(context, 5);
      case 16:
        return precpred(context, 21);
      case 17:
        return precpred(context, 20);
    }
    return true;
  }
}

class LibraryContext extends ParserRuleContext {
  LibraryContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLibrary(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_library;

  TerminalNode? EOF() => getToken(cqlParser.TOKEN_EOF, 0);

  LibraryDefinitionContext? libraryDefinition() =>
      getRuleContext<LibraryDefinitionContext>(0);

  List<DefinitionContext> definitions() => getRuleContexts<DefinitionContext>();

  DefinitionContext? definition(int i) => getRuleContext<DefinitionContext>(i);

  List<StatementContext> statements() => getRuleContexts<StatementContext>();

  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
}

class DefinitionContext extends ParserRuleContext {
  DefinitionContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_definition;

  UsingDefinitionContext? usingDefinition() =>
      getRuleContext<UsingDefinitionContext>(0);

  IncludeDefinitionContext? includeDefinition() =>
      getRuleContext<IncludeDefinitionContext>(0);

  CodesystemDefinitionContext? codesystemDefinition() =>
      getRuleContext<CodesystemDefinitionContext>(0);

  ValuesetDefinitionContext? valuesetDefinition() =>
      getRuleContext<ValuesetDefinitionContext>(0);

  CodeDefinitionContext? codeDefinition() =>
      getRuleContext<CodeDefinitionContext>(0);

  ConceptDefinitionContext? conceptDefinition() =>
      getRuleContext<ConceptDefinitionContext>(0);

  ParameterDefinitionContext? parameterDefinition() =>
      getRuleContext<ParameterDefinitionContext>(0);
}

class LibraryDefinitionContext extends ParserRuleContext {
  LibraryDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLibraryDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_libraryDefinition;

  QualifiedIdentifierContext? qualifiedIdentifier() =>
      getRuleContext<QualifiedIdentifierContext>(0);

  VersionSpecifierContext? versionSpecifier() =>
      getRuleContext<VersionSpecifierContext>(0);
}

class UsingDefinitionContext extends ParserRuleContext {
  UsingDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitUsingDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_usingDefinition;

  ModelIdentifierContext? modelIdentifier() =>
      getRuleContext<ModelIdentifierContext>(0);

  VersionSpecifierContext? versionSpecifier() =>
      getRuleContext<VersionSpecifierContext>(0);
}

class IncludeDefinitionContext extends ParserRuleContext {
  IncludeDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIncludeDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_includeDefinition;

  QualifiedIdentifierContext? qualifiedIdentifier() =>
      getRuleContext<QualifiedIdentifierContext>(0);

  VersionSpecifierContext? versionSpecifier() =>
      getRuleContext<VersionSpecifierContext>(0);

  LocalIdentifierContext? localIdentifier() =>
      getRuleContext<LocalIdentifierContext>(0);
}

class LocalIdentifierContext extends ParserRuleContext {
  LocalIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLocalIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_localIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);
}

class AccessModifierContext extends ParserRuleContext {
  AccessModifierContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAccessModifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_accessModifier;
}

class ParameterDefinitionContext extends ParserRuleContext {
  ParameterDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitParameterDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_parameterDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class CodesystemDefinitionContext extends ParserRuleContext {
  CodesystemDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodesystemDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codesystemDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  CodesystemIdContext? codesystemId() => getRuleContext<CodesystemIdContext>(0);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);

  VersionSpecifierContext? versionSpecifier() =>
      getRuleContext<VersionSpecifierContext>(0);
}

class ValuesetDefinitionContext extends ParserRuleContext {
  ValuesetDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitValuesetDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_valuesetDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  ValuesetIdContext? valuesetId() => getRuleContext<ValuesetIdContext>(0);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);

  VersionSpecifierContext? versionSpecifier() =>
      getRuleContext<VersionSpecifierContext>(0);

  CodesystemsContext? codesystems() => getRuleContext<CodesystemsContext>(0);
}

class CodesystemsContext extends ParserRuleContext {
  CodesystemsContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodesystems(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codesystems;

  List<CodesystemIdentifierContext> codesystemIdentifiers() =>
      getRuleContexts<CodesystemIdentifierContext>();

  CodesystemIdentifierContext? codesystemIdentifier(int i) =>
      getRuleContext<CodesystemIdentifierContext>(i);
}

class CodesystemIdentifierContext extends ParserRuleContext {
  CodesystemIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodesystemIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codesystemIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  LibraryIdentifierContext? libraryIdentifier() =>
      getRuleContext<LibraryIdentifierContext>(0);
}

class LibraryIdentifierContext extends ParserRuleContext {
  LibraryIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLibraryIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_libraryIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);
}

class CodeDefinitionContext extends ParserRuleContext {
  CodeDefinitionContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodeDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codeDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  CodeIdContext? codeId() => getRuleContext<CodeIdContext>(0);

  CodesystemIdentifierContext? codesystemIdentifier() =>
      getRuleContext<CodesystemIdentifierContext>(0);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);

  DisplayClauseContext? displayClause() =>
      getRuleContext<DisplayClauseContext>(0);
}

class ConceptDefinitionContext extends ParserRuleContext {
  ConceptDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitConceptDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_conceptDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  List<CodeIdentifierContext> codeIdentifiers() =>
      getRuleContexts<CodeIdentifierContext>();

  CodeIdentifierContext? codeIdentifier(int i) =>
      getRuleContext<CodeIdentifierContext>(i);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);

  DisplayClauseContext? displayClause() =>
      getRuleContext<DisplayClauseContext>(0);
}

class CodeIdentifierContext extends ParserRuleContext {
  CodeIdentifierContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodeIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codeIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  LibraryIdentifierContext? libraryIdentifier() =>
      getRuleContext<LibraryIdentifierContext>(0);
}

class CodesystemIdContext extends ParserRuleContext {
  CodesystemIdContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodesystemId(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codesystemId;

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class ValuesetIdContext extends ParserRuleContext {
  ValuesetIdContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitValuesetId(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_valuesetId;

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class VersionSpecifierContext extends ParserRuleContext {
  VersionSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitVersionSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_versionSpecifier;

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class CodeIdContext extends ParserRuleContext {
  CodeIdContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodeId(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codeId;

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class TypeSpecifierContext extends ParserRuleContext {
  TypeSpecifierContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTypeSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_typeSpecifier;

  NamedTypeSpecifierContext? namedTypeSpecifier() =>
      getRuleContext<NamedTypeSpecifierContext>(0);

  ListTypeSpecifierContext? listTypeSpecifier() =>
      getRuleContext<ListTypeSpecifierContext>(0);

  IntervalTypeSpecifierContext? intervalTypeSpecifier() =>
      getRuleContext<IntervalTypeSpecifierContext>(0);

  TupleTypeSpecifierContext? tupleTypeSpecifier() =>
      getRuleContext<TupleTypeSpecifierContext>(0);

  ChoiceTypeSpecifierContext? choiceTypeSpecifier() =>
      getRuleContext<ChoiceTypeSpecifierContext>(0);
}

class NamedTypeSpecifierContext extends ParserRuleContext {
  NamedTypeSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitNamedTypeSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_namedTypeSpecifier;

  ReferentialOrTypeNameIdentifierContext? referentialOrTypeNameIdentifier() =>
      getRuleContext<ReferentialOrTypeNameIdentifierContext>(0);

  List<QualifierContext> qualifiers() => getRuleContexts<QualifierContext>();

  QualifierContext? qualifier(int i) => getRuleContext<QualifierContext>(i);
}

class ModelIdentifierContext extends ParserRuleContext {
  ModelIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitModelIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_modelIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);
}

class ListTypeSpecifierContext extends ParserRuleContext {
  ListTypeSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitListTypeSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_listTypeSpecifier;

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class IntervalTypeSpecifierContext extends ParserRuleContext {
  IntervalTypeSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIntervalTypeSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_intervalTypeSpecifier;

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class TupleTypeSpecifierContext extends ParserRuleContext {
  TupleTypeSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTupleTypeSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_tupleTypeSpecifier;

  List<TupleElementDefinitionContext> tupleElementDefinitions() =>
      getRuleContexts<TupleElementDefinitionContext>();

  TupleElementDefinitionContext? tupleElementDefinition(int i) =>
      getRuleContext<TupleElementDefinitionContext>(i);
}

class TupleElementDefinitionContext extends ParserRuleContext {
  TupleElementDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTupleElementDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_tupleElementDefinition;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class ChoiceTypeSpecifierContext extends ParserRuleContext {
  ChoiceTypeSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitChoiceTypeSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_choiceTypeSpecifier;

  List<TypeSpecifierContext> typeSpecifiers() =>
      getRuleContexts<TypeSpecifierContext>();

  TypeSpecifierContext? typeSpecifier(int i) =>
      getRuleContext<TypeSpecifierContext>(i);
}

class StatementContext extends ParserRuleContext {
  StatementContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitStatement(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_statement;

  ExpressionDefinitionContext? expressionDefinition() =>
      getRuleContext<ExpressionDefinitionContext>(0);

  ContextDefinitionContext? contextDefinition() =>
      getRuleContext<ContextDefinitionContext>(0);

  FunctionDefinitionContext? functionDefinition() =>
      getRuleContext<FunctionDefinitionContext>(0);
}

class ExpressionDefinitionContext extends ParserRuleContext {
  ExpressionDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitExpressionDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_expressionDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);
}

class ContextDefinitionContext extends ParserRuleContext {
  ContextDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitContextDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_contextDefinition;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  ModelIdentifierContext? modelIdentifier() =>
      getRuleContext<ModelIdentifierContext>(0);
}

class FunctionDefinitionContext extends ParserRuleContext {
  FunctionDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitFunctionDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_functionDefinition;

  IdentifierOrFunctionIdentifierContext? identifierOrFunctionIdentifier() =>
      getRuleContext<IdentifierOrFunctionIdentifierContext>(0);

  FunctionBodyContext? functionBody() => getRuleContext<FunctionBodyContext>(0);

  AccessModifierContext? accessModifier() =>
      getRuleContext<AccessModifierContext>(0);

  List<OperandDefinitionContext> operandDefinitions() =>
      getRuleContexts<OperandDefinitionContext>();

  OperandDefinitionContext? operandDefinition(int i) =>
      getRuleContext<OperandDefinitionContext>(i);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class OperandDefinitionContext extends ParserRuleContext {
  OperandDefinitionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitOperandDefinition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_operandDefinition;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class FunctionBodyContext extends ParserRuleContext {
  FunctionBodyContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitFunctionBody(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_functionBody;

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class QuerySourceContext extends ParserRuleContext {
  QuerySourceContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQuerySource(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_querySource;

  RetrieveContext? retrieve() => getRuleContext<RetrieveContext>(0);

  QualifiedIdentifierExpressionContext? qualifiedIdentifierExpression() =>
      getRuleContext<QualifiedIdentifierExpressionContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class AliasedQuerySourceContext extends ParserRuleContext {
  AliasedQuerySourceContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAliasedQuerySource(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_aliasedQuerySource;

  QuerySourceContext? querySource() => getRuleContext<QuerySourceContext>(0);

  AliasContext? alias() => getRuleContext<AliasContext>(0);
}

class AliasContext extends ParserRuleContext {
  AliasContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAlias(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_alias;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);
}

class QueryInclusionClauseContext extends ParserRuleContext {
  QueryInclusionClauseContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQueryInclusionClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_queryInclusionClause;

  WithClauseContext? withClause() => getRuleContext<WithClauseContext>(0);

  WithoutClauseContext? withoutClause() =>
      getRuleContext<WithoutClauseContext>(0);
}

class WithClauseContext extends ParserRuleContext {
  WithClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitWithClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_withClause;

  AliasedQuerySourceContext? aliasedQuerySource() =>
      getRuleContext<AliasedQuerySourceContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class WithoutClauseContext extends ParserRuleContext {
  WithoutClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitWithoutClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_withoutClause;

  AliasedQuerySourceContext? aliasedQuerySource() =>
      getRuleContext<AliasedQuerySourceContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class RetrieveContext extends ParserRuleContext {
  RetrieveContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitRetrieve(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_retrieve;

  NamedTypeSpecifierContext? namedTypeSpecifier() =>
      getRuleContext<NamedTypeSpecifierContext>(0);

  ContextIdentifierContext? contextIdentifier() =>
      getRuleContext<ContextIdentifierContext>(0);

  TerminologyContext? terminology() => getRuleContext<TerminologyContext>(0);

  CodePathContext? codePath() => getRuleContext<CodePathContext>(0);

  CodeComparatorContext? codeComparator() =>
      getRuleContext<CodeComparatorContext>(0);
}

class ContextIdentifierContext extends ParserRuleContext {
  ContextIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitContextIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_contextIdentifier;

  QualifiedIdentifierExpressionContext? qualifiedIdentifierExpression() =>
      getRuleContext<QualifiedIdentifierExpressionContext>(0);
}

class CodePathContext extends ParserRuleContext {
  CodePathContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodePath(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codePath;

  SimplePathContext? simplePath() => getRuleContext<SimplePathContext>(0);
}

class CodeComparatorContext extends ParserRuleContext {
  CodeComparatorContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodeComparator(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codeComparator;
}

class TerminologyContext extends ParserRuleContext {
  TerminologyContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTerminology(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_terminology;

  QualifiedIdentifierExpressionContext? qualifiedIdentifierExpression() =>
      getRuleContext<QualifiedIdentifierExpressionContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class QualifierContext extends ParserRuleContext {
  QualifierContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_qualifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);
}

class QueryContext extends ParserRuleContext {
  QueryContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQuery(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_query;

  SourceClauseContext? sourceClause() => getRuleContext<SourceClauseContext>(0);

  LetClauseContext? letClause() => getRuleContext<LetClauseContext>(0);

  List<QueryInclusionClauseContext> queryInclusionClauses() =>
      getRuleContexts<QueryInclusionClauseContext>();

  QueryInclusionClauseContext? queryInclusionClause(int i) =>
      getRuleContext<QueryInclusionClauseContext>(i);

  WhereClauseContext? whereClause() => getRuleContext<WhereClauseContext>(0);

  AggregateClauseContext? aggregateClause() =>
      getRuleContext<AggregateClauseContext>(0);

  ReturnClauseContext? returnClause() => getRuleContext<ReturnClauseContext>(0);

  SortClauseContext? sortClause() => getRuleContext<SortClauseContext>(0);
}

class SourceClauseContext extends ParserRuleContext {
  SourceClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSourceClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_sourceClause;

  List<AliasedQuerySourceContext> aliasedQuerySources() =>
      getRuleContexts<AliasedQuerySourceContext>();

  AliasedQuerySourceContext? aliasedQuerySource(int i) =>
      getRuleContext<AliasedQuerySourceContext>(i);
}

class LetClauseContext extends ParserRuleContext {
  LetClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLetClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_letClause;

  List<LetClauseItemContext> letClauseItems() =>
      getRuleContexts<LetClauseItemContext>();

  LetClauseItemContext? letClauseItem(int i) =>
      getRuleContext<LetClauseItemContext>(i);
}

class LetClauseItemContext extends ParserRuleContext {
  LetClauseItemContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLetClauseItem(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_letClauseItem;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class WhereClauseContext extends ParserRuleContext {
  WhereClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitWhereClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_whereClause;

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class ReturnClauseContext extends ParserRuleContext {
  ReturnClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitReturnClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_returnClause;

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class AggregateClauseContext extends ParserRuleContext {
  AggregateClauseContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAggregateClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_aggregateClause;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);

  StartingClauseContext? startingClause() =>
      getRuleContext<StartingClauseContext>(0);
}

class StartingClauseContext extends ParserRuleContext {
  StartingClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitStartingClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_startingClause;

  SimpleLiteralContext? simpleLiteral() =>
      getRuleContext<SimpleLiteralContext>(0);

  QuantityContext? quantity() => getRuleContext<QuantityContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class SortClauseContext extends ParserRuleContext {
  SortClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSortClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_sortClause;

  SortDirectionContext? sortDirection() =>
      getRuleContext<SortDirectionContext>(0);

  List<SortByItemContext> sortByItems() => getRuleContexts<SortByItemContext>();

  SortByItemContext? sortByItem(int i) => getRuleContext<SortByItemContext>(i);
}

class SortDirectionContext extends ParserRuleContext {
  SortDirectionContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSortDirection(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_sortDirection;
}

class SortByItemContext extends ParserRuleContext {
  SortByItemContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSortByItem(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_sortByItem;

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);

  SortDirectionContext? sortDirection() =>
      getRuleContext<SortDirectionContext>(0);
}

class QualifiedIdentifierContext extends ParserRuleContext {
  QualifiedIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifiedIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_qualifiedIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  List<QualifierContext> qualifiers() => getRuleContexts<QualifierContext>();

  QualifierContext? qualifier(int i) => getRuleContext<QualifierContext>(i);
}

class QualifiedIdentifierExpressionContext extends ParserRuleContext {
  QualifiedIdentifierExpressionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifiedIdentifierExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_qualifiedIdentifierExpression;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  List<QualifierExpressionContext> qualifierExpressions() =>
      getRuleContexts<QualifierExpressionContext>();

  QualifierExpressionContext? qualifierExpression(int i) =>
      getRuleContext<QualifierExpressionContext>(i);
}

class QualifierExpressionContext extends ParserRuleContext {
  QualifierExpressionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifierExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_qualifierExpression;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);
}

class SimplePathContext extends ParserRuleContext {
  SimplePathContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_simplePath;
}

class SimpleLiteralContext extends ParserRuleContext {
  SimpleLiteralContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_simpleLiteral;
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_expression;
}

class DateTimePrecisionContext extends ParserRuleContext {
  DateTimePrecisionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDateTimePrecision(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_dateTimePrecision;
}

class DateTimeComponentContext extends ParserRuleContext {
  DateTimeComponentContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDateTimeComponent(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_dateTimeComponent;

  DateTimePrecisionContext? dateTimePrecision() =>
      getRuleContext<DateTimePrecisionContext>(0);
}

class PluralDateTimePrecisionContext extends ParserRuleContext {
  PluralDateTimePrecisionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitPluralDateTimePrecision(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_pluralDateTimePrecision;
}

class ExpressionTermContext extends ParserRuleContext {
  ExpressionTermContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_expressionTerm;
}

class CaseExpressionItemContext extends ParserRuleContext {
  CaseExpressionItemContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCaseExpressionItem(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_caseExpressionItem;

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class DateTimePrecisionSpecifierContext extends ParserRuleContext {
  DateTimePrecisionSpecifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDateTimePrecisionSpecifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_dateTimePrecisionSpecifier;

  DateTimePrecisionContext? dateTimePrecision() =>
      getRuleContext<DateTimePrecisionContext>(0);
}

class RelativeQualifierContext extends ParserRuleContext {
  RelativeQualifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitRelativeQualifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_relativeQualifier;
}

class OffsetRelativeQualifierContext extends ParserRuleContext {
  OffsetRelativeQualifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitOffsetRelativeQualifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_offsetRelativeQualifier;
}

class ExclusiveRelativeQualifierContext extends ParserRuleContext {
  ExclusiveRelativeQualifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitExclusiveRelativeQualifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_exclusiveRelativeQualifier;
}

class QuantityOffsetContext extends ParserRuleContext {
  QuantityOffsetContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQuantityOffset(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_quantityOffset;

  QuantityContext? quantity() => getRuleContext<QuantityContext>(0);

  OffsetRelativeQualifierContext? offsetRelativeQualifier() =>
      getRuleContext<OffsetRelativeQualifierContext>(0);

  ExclusiveRelativeQualifierContext? exclusiveRelativeQualifier() =>
      getRuleContext<ExclusiveRelativeQualifierContext>(0);
}

class TemporalRelationshipContext extends ParserRuleContext {
  TemporalRelationshipContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTemporalRelationship(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_temporalRelationship;
}

class IntervalOperatorPhraseContext extends ParserRuleContext {
  IntervalOperatorPhraseContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_intervalOperatorPhrase;
}

class TermContext extends ParserRuleContext {
  TermContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_term;
}

class QualifiedInvocationContext extends ParserRuleContext {
  QualifiedInvocationContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_qualifiedInvocation;
}

class QualifiedFunctionContext extends ParserRuleContext {
  QualifiedFunctionContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifiedFunction(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_qualifiedFunction;

  IdentifierOrFunctionIdentifierContext? identifierOrFunctionIdentifier() =>
      getRuleContext<IdentifierOrFunctionIdentifierContext>(0);

  ParamListContext? paramList() => getRuleContext<ParamListContext>(0);
}

class InvocationContext extends ParserRuleContext {
  InvocationContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_invocation;
}

class FunctionContext extends ParserRuleContext {
  FunctionContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitFunction(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_function;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  ParamListContext? paramList() => getRuleContext<ParamListContext>(0);
}

class RatioContext extends ParserRuleContext {
  RatioContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitRatio(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_ratio;

  List<QuantityContext> quantitys() => getRuleContexts<QuantityContext>();

  QuantityContext? quantity(int i) => getRuleContext<QuantityContext>(i);
}

class LiteralContext extends ParserRuleContext {
  LiteralContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  int get ruleIndex => RULE_literal;
}

class IntervalSelectorContext extends ParserRuleContext {
  IntervalSelectorContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIntervalSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_intervalSelector;

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class TupleSelectorContext extends ParserRuleContext {
  TupleSelectorContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTupleSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_tupleSelector;

  List<TupleElementSelectorContext> tupleElementSelectors() =>
      getRuleContexts<TupleElementSelectorContext>();

  TupleElementSelectorContext? tupleElementSelector(int i) =>
      getRuleContext<TupleElementSelectorContext>(i);
}

class TupleElementSelectorContext extends ParserRuleContext {
  TupleElementSelectorContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTupleElementSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_tupleElementSelector;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class InstanceSelectorContext extends ParserRuleContext {
  InstanceSelectorContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInstanceSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_instanceSelector;

  NamedTypeSpecifierContext? namedTypeSpecifier() =>
      getRuleContext<NamedTypeSpecifierContext>(0);

  List<InstanceElementSelectorContext> instanceElementSelectors() =>
      getRuleContexts<InstanceElementSelectorContext>();

  InstanceElementSelectorContext? instanceElementSelector(int i) =>
      getRuleContext<InstanceElementSelectorContext>(i);
}

class InstanceElementSelectorContext extends ParserRuleContext {
  InstanceElementSelectorContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInstanceElementSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_instanceElementSelector;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class ListSelectorContext extends ParserRuleContext {
  ListSelectorContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitListSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_listSelector;

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class DisplayClauseContext extends ParserRuleContext {
  DisplayClauseContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDisplayClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_displayClause;

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class CodeSelectorContext extends ParserRuleContext {
  CodeSelectorContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodeSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_codeSelector;

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);

  CodesystemIdentifierContext? codesystemIdentifier() =>
      getRuleContext<CodesystemIdentifierContext>(0);

  DisplayClauseContext? displayClause() =>
      getRuleContext<DisplayClauseContext>(0);
}

class ConceptSelectorContext extends ParserRuleContext {
  ConceptSelectorContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitConceptSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_conceptSelector;

  List<CodeSelectorContext> codeSelectors() =>
      getRuleContexts<CodeSelectorContext>();

  CodeSelectorContext? codeSelector(int i) =>
      getRuleContext<CodeSelectorContext>(i);

  DisplayClauseContext? displayClause() =>
      getRuleContext<DisplayClauseContext>(0);
}

class KeywordContext extends ParserRuleContext {
  KeywordContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitKeyword(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_keyword;
}

class ReservedWordContext extends ParserRuleContext {
  ReservedWordContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitReservedWord(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_reservedWord;
}

class KeywordIdentifierContext extends ParserRuleContext {
  KeywordIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitKeywordIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_keywordIdentifier;
}

class ObsoleteIdentifierContext extends ParserRuleContext {
  ObsoleteIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitObsoleteIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_obsoleteIdentifier;
}

class FunctionIdentifierContext extends ParserRuleContext {
  FunctionIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitFunctionIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_functionIdentifier;
}

class TypeNameIdentifierContext extends ParserRuleContext {
  TypeNameIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTypeNameIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_typeNameIdentifier;
}

class ReferentialIdentifierContext extends ParserRuleContext {
  ReferentialIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitReferentialIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_referentialIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  KeywordIdentifierContext? keywordIdentifier() =>
      getRuleContext<KeywordIdentifierContext>(0);
}

class ReferentialOrTypeNameIdentifierContext extends ParserRuleContext {
  ReferentialOrTypeNameIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitReferentialOrTypeNameIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_referentialOrTypeNameIdentifier;

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);

  TypeNameIdentifierContext? typeNameIdentifier() =>
      getRuleContext<TypeNameIdentifierContext>(0);
}

class IdentifierOrFunctionIdentifierContext extends ParserRuleContext {
  IdentifierOrFunctionIdentifierContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIdentifierOrFunctionIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_identifierOrFunctionIdentifier;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  FunctionIdentifierContext? functionIdentifier() =>
      getRuleContext<FunctionIdentifierContext>(0);
}

class IdentifierContext extends ParserRuleContext {
  IdentifierContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_identifier;

  TerminalNode? IDENTIFIER() => getToken(cqlParser.TOKEN_IDENTIFIER, 0);

  TerminalNode? DELIMITEDIDENTIFIER() =>
      getToken(cqlParser.TOKEN_DELIMITEDIDENTIFIER, 0);

  TerminalNode? QUOTEDIDENTIFIER() =>
      getToken(cqlParser.TOKEN_QUOTEDIDENTIFIER, 0);
}

class ExternalConstantContext extends ParserRuleContext {
  ExternalConstantContext(
      [ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitExternalConstant(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_externalConstant;

  IdentifierContext? identifier() => getRuleContext<IdentifierContext>(0);

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class ParamListContext extends ParserRuleContext {
  ParamListContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitParamList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_paramList;

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class QuantityContext extends ParserRuleContext {
  QuantityContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQuantity(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_quantity;

  TerminalNode? NUMBER() => getToken(cqlParser.TOKEN_NUMBER, 0);

  UnitContext? unit() => getRuleContext<UnitContext>(0);
}

class UnitContext extends ParserRuleContext {
  UnitContext([ParserRuleContext? super.parent, super.invokingState]);

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitUnit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  @override
  int get ruleIndex => RULE_unit;

  DateTimePrecisionContext? dateTimePrecision() =>
      getRuleContext<DateTimePrecisionContext>(0);

  PluralDateTimePrecisionContext? pluralDateTimePrecision() =>
      getRuleContext<PluralDateTimePrecisionContext>(0);

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class SimplePathIndexerContext extends SimplePathContext {
  SimplePathIndexerContext(SimplePathContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSimplePathIndexer(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  SimplePathContext? simplePath() => getRuleContext<SimplePathContext>(0);

  SimpleLiteralContext? simpleLiteral() =>
      getRuleContext<SimpleLiteralContext>(0);
}

class SimplePathQualifiedIdentifierContext extends SimplePathContext {
  SimplePathQualifiedIdentifierContext(SimplePathContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSimplePathQualifiedIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  SimplePathContext? simplePath() => getRuleContext<SimplePathContext>(0);

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);
}

class SimplePathReferentialIdentifierContext extends SimplePathContext {
  SimplePathReferentialIdentifierContext(SimplePathContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSimplePathReferentialIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);
}

class SimpleNumberLiteralContext extends SimpleLiteralContext {
  SimpleNumberLiteralContext(SimpleLiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSimpleNumberLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? NUMBER() => getToken(cqlParser.TOKEN_NUMBER, 0);
}

class SimpleStringLiteralContext extends SimpleLiteralContext {
  SimpleStringLiteralContext(SimpleLiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSimpleStringLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class DurationBetweenExpressionContext extends ExpressionContext {
  DurationBetweenExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDurationBetweenExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  PluralDateTimePrecisionContext? pluralDateTimePrecision() =>
      getRuleContext<PluralDateTimePrecisionContext>(0);

  List<ExpressionTermContext> expressionTerms() =>
      getRuleContexts<ExpressionTermContext>();

  ExpressionTermContext? expressionTerm(int i) =>
      getRuleContext<ExpressionTermContext>(i);
}

class InFixSetExpressionContext extends ExpressionContext {
  InFixSetExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInFixSetExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class RetrieveExpressionContext extends ExpressionContext {
  RetrieveExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitRetrieveExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  RetrieveContext? retrieve() => getRuleContext<RetrieveContext>(0);
}

class TimingExpressionContext extends ExpressionContext {
  TimingExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTimingExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);

  IntervalOperatorPhraseContext? intervalOperatorPhrase() =>
      getRuleContext<IntervalOperatorPhraseContext>(0);
}

class QueryExpressionContext extends ExpressionContext {
  QueryExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQueryExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  QueryContext? query() => getRuleContext<QueryContext>(0);
}

class NotExpressionContext extends ExpressionContext {
  NotExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitNotExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class BooleanExpressionContext extends ExpressionContext {
  BooleanExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitBooleanExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class OrExpressionContext extends ExpressionContext {
  OrExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitOrExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class CastExpressionContext extends ExpressionContext {
  CastExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCastExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class AndExpressionContext extends ExpressionContext {
  AndExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAndExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class BetweenExpressionContext extends ExpressionContext {
  BetweenExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitBetweenExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);

  List<ExpressionTermContext> expressionTerms() =>
      getRuleContexts<ExpressionTermContext>();

  ExpressionTermContext? expressionTerm(int i) =>
      getRuleContext<ExpressionTermContext>(i);
}

class MembershipExpressionContext extends ExpressionContext {
  MembershipExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitMembershipExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class DifferenceBetweenExpressionContext extends ExpressionContext {
  DifferenceBetweenExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDifferenceBetweenExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  PluralDateTimePrecisionContext? pluralDateTimePrecision() =>
      getRuleContext<PluralDateTimePrecisionContext>(0);

  List<ExpressionTermContext> expressionTerms() =>
      getRuleContexts<ExpressionTermContext>();

  ExpressionTermContext? expressionTerm(int i) =>
      getRuleContext<ExpressionTermContext>(i);
}

class InequalityExpressionContext extends ExpressionContext {
  InequalityExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInequalityExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class EqualityExpressionContext extends ExpressionContext {
  EqualityExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitEqualityExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class ExistenceExpressionContext extends ExpressionContext {
  ExistenceExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitExistenceExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class ImpliesExpressionContext extends ExpressionContext {
  ImpliesExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitImpliesExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class TermExpressionContext extends ExpressionContext {
  TermExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTermExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class TypeExpressionContext extends ExpressionContext {
  TypeExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTypeExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);
}

class AdditionExpressionTermContext extends ExpressionTermContext {
  AdditionExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAdditionExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionTermContext> expressionTerms() =>
      getRuleContexts<ExpressionTermContext>();

  ExpressionTermContext? expressionTerm(int i) =>
      getRuleContext<ExpressionTermContext>(i);
}

class IndexedExpressionTermContext extends ExpressionTermContext {
  IndexedExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIndexedExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class WidthExpressionTermContext extends ExpressionTermContext {
  WidthExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitWidthExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class SetAggregateExpressionTermContext extends ExpressionTermContext {
  SetAggregateExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSetAggregateExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);

  DateTimePrecisionContext? dateTimePrecision() =>
      getRuleContext<DateTimePrecisionContext>(0);
}

class TimeUnitExpressionTermContext extends ExpressionTermContext {
  TimeUnitExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTimeUnitExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimeComponentContext? dateTimeComponent() =>
      getRuleContext<DateTimeComponentContext>(0);

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class IfThenElseExpressionTermContext extends ExpressionTermContext {
  IfThenElseExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIfThenElseExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
}

class TimeBoundaryExpressionTermContext extends ExpressionTermContext {
  TimeBoundaryExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTimeBoundaryExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class ElementExtractorExpressionTermContext extends ExpressionTermContext {
  ElementExtractorExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitElementExtractorExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class ConversionExpressionTermContext extends ExpressionTermContext {
  ConversionExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitConversionExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);

  TypeSpecifierContext? typeSpecifier() =>
      getRuleContext<TypeSpecifierContext>(0);

  UnitContext? unit() => getRuleContext<UnitContext>(0);
}

class TypeExtentExpressionTermContext extends ExpressionTermContext {
  TypeExtentExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTypeExtentExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  NamedTypeSpecifierContext? namedTypeSpecifier() =>
      getRuleContext<NamedTypeSpecifierContext>(0);
}

class PredecessorExpressionTermContext extends ExpressionTermContext {
  PredecessorExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitPredecessorExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class PointExtractorExpressionTermContext extends ExpressionTermContext {
  PointExtractorExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitPointExtractorExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class MultiplicationExpressionTermContext extends ExpressionTermContext {
  MultiplicationExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitMultiplicationExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionTermContext> expressionTerms() =>
      getRuleContexts<ExpressionTermContext>();

  ExpressionTermContext? expressionTerm(int i) =>
      getRuleContext<ExpressionTermContext>(i);
}

class AggregateExpressionTermContext extends ExpressionTermContext {
  AggregateExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitAggregateExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class DurationExpressionTermContext extends ExpressionTermContext {
  DurationExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDurationExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  PluralDateTimePrecisionContext? pluralDateTimePrecision() =>
      getRuleContext<PluralDateTimePrecisionContext>(0);

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class DifferenceExpressionTermContext extends ExpressionTermContext {
  DifferenceExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDifferenceExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  PluralDateTimePrecisionContext? pluralDateTimePrecision() =>
      getRuleContext<PluralDateTimePrecisionContext>(0);

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class CaseExpressionTermContext extends ExpressionTermContext {
  CaseExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCaseExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);

  List<CaseExpressionItemContext> caseExpressionItems() =>
      getRuleContexts<CaseExpressionItemContext>();

  CaseExpressionItemContext? caseExpressionItem(int i) =>
      getRuleContext<CaseExpressionItemContext>(i);
}

class PowerExpressionTermContext extends ExpressionTermContext {
  PowerExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitPowerExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  List<ExpressionTermContext> expressionTerms() =>
      getRuleContexts<ExpressionTermContext>();

  ExpressionTermContext? expressionTerm(int i) =>
      getRuleContext<ExpressionTermContext>(i);
}

class SuccessorExpressionTermContext extends ExpressionTermContext {
  SuccessorExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitSuccessorExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class PolarityExpressionTermContext extends ExpressionTermContext {
  PolarityExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitPolarityExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);
}

class TermExpressionTermContext extends ExpressionTermContext {
  TermExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTermExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TermContext? term() => getRuleContext<TermContext>(0);
}

class InvocationExpressionTermContext extends ExpressionTermContext {
  InvocationExpressionTermContext(ExpressionTermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInvocationExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionTermContext? expressionTerm() =>
      getRuleContext<ExpressionTermContext>(0);

  QualifiedInvocationContext? qualifiedInvocation() =>
      getRuleContext<QualifiedInvocationContext>(0);
}

class WithinIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  WithinIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitWithinIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  QuantityContext? quantity() => getRuleContext<QuantityContext>(0);
}

class IncludedInIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  IncludedInIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIncludedInIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class EndsIntervalOperatorPhraseContext extends IntervalOperatorPhraseContext {
  EndsIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitEndsIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class ConcurrentWithIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  ConcurrentWithIntervalOperatorPhraseContext(
      IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitConcurrentWithIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  RelativeQualifierContext? relativeQualifier() =>
      getRuleContext<RelativeQualifierContext>(0);

  DateTimePrecisionContext? dateTimePrecision() =>
      getRuleContext<DateTimePrecisionContext>(0);
}

class OverlapsIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  OverlapsIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitOverlapsIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class IncludesIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  IncludesIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIncludesIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class BeforeOrAfterIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  BeforeOrAfterIntervalOperatorPhraseContext(
      IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitBeforeOrAfterIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TemporalRelationshipContext? temporalRelationship() =>
      getRuleContext<TemporalRelationshipContext>(0);

  QuantityOffsetContext? quantityOffset() =>
      getRuleContext<QuantityOffsetContext>(0);

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class MeetsIntervalOperatorPhraseContext extends IntervalOperatorPhraseContext {
  MeetsIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitMeetsIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class StartsIntervalOperatorPhraseContext
    extends IntervalOperatorPhraseContext {
  StartsIntervalOperatorPhraseContext(IntervalOperatorPhraseContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitStartsIntervalOperatorPhrase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  DateTimePrecisionSpecifierContext? dateTimePrecisionSpecifier() =>
      getRuleContext<DateTimePrecisionSpecifierContext>(0);
}

class ExternalConstantTermContext extends TermContext {
  ExternalConstantTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitExternalConstantTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExternalConstantContext? externalConstant() =>
      getRuleContext<ExternalConstantContext>(0);
}

class TupleSelectorTermContext extends TermContext {
  TupleSelectorTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTupleSelectorTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TupleSelectorContext? tupleSelector() =>
      getRuleContext<TupleSelectorContext>(0);
}

class LiteralTermContext extends TermContext {
  LiteralTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLiteralTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
}

class ConceptSelectorTermContext extends TermContext {
  ConceptSelectorTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitConceptSelectorTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ConceptSelectorContext? conceptSelector() =>
      getRuleContext<ConceptSelectorContext>(0);
}

class ParenthesizedTermContext extends TermContext {
  ParenthesizedTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitParenthesizedTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
}

class CodeSelectorTermContext extends TermContext {
  CodeSelectorTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitCodeSelectorTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  CodeSelectorContext? codeSelector() => getRuleContext<CodeSelectorContext>(0);
}

class InvocationTermContext extends TermContext {
  InvocationTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInvocationTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  InvocationContext? invocation() => getRuleContext<InvocationContext>(0);
}

class InstanceSelectorTermContext extends TermContext {
  InstanceSelectorTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitInstanceSelectorTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  InstanceSelectorContext? instanceSelector() =>
      getRuleContext<InstanceSelectorContext>(0);
}

class IntervalSelectorTermContext extends TermContext {
  IntervalSelectorTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIntervalSelectorTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  IntervalSelectorContext? intervalSelector() =>
      getRuleContext<IntervalSelectorContext>(0);
}

class ListSelectorTermContext extends TermContext {
  ListSelectorTermContext(TermContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitListSelectorTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ListSelectorContext? listSelector() => getRuleContext<ListSelectorContext>(0);
}

class QualifiedFunctionInvocationContext extends QualifiedInvocationContext {
  QualifiedFunctionInvocationContext(QualifiedInvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifiedFunctionInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  QualifiedFunctionContext? qualifiedFunction() =>
      getRuleContext<QualifiedFunctionContext>(0);
}

class QualifiedMemberInvocationContext extends QualifiedInvocationContext {
  QualifiedMemberInvocationContext(QualifiedInvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQualifiedMemberInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);
}

class TotalInvocationContext extends InvocationContext {
  TotalInvocationContext(InvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTotalInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ThisInvocationContext extends InvocationContext {
  ThisInvocationContext(InvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitThisInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IndexInvocationContext extends InvocationContext {
  IndexInvocationContext(InvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitIndexInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionInvocationContext extends InvocationContext {
  FunctionInvocationContext(InvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitFunctionInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  FunctionContext? function() => getRuleContext<FunctionContext>(0);
}

class MemberInvocationContext extends InvocationContext {
  MemberInvocationContext(InvocationContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitMemberInvocation(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  ReferentialIdentifierContext? referentialIdentifier() =>
      getRuleContext<ReferentialIdentifierContext>(0);
}

class TimeLiteralContext extends LiteralContext {
  TimeLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitTimeLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? TIME() => getToken(cqlParser.TOKEN_TIME, 0);
}

class NullLiteralContext extends LiteralContext {
  NullLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitNullLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RatioLiteralContext extends LiteralContext {
  RatioLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitRatioLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  RatioContext? ratio() => getRuleContext<RatioContext>(0);
}

class DateTimeLiteralContext extends LiteralContext {
  DateTimeLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDateTimeLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? DATETIME() => getToken(cqlParser.TOKEN_DATETIME, 0);
}

class StringLiteralContext extends LiteralContext {
  StringLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitStringLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? STRING() => getToken(cqlParser.TOKEN_STRING, 0);
}

class DateLiteralContext extends LiteralContext {
  DateLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitDateLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? DATE() => getToken(cqlParser.TOKEN_DATE, 0);
}

class BooleanLiteralContext extends LiteralContext {
  BooleanLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitBooleanLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class NumberLiteralContext extends LiteralContext {
  NumberLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitNumberLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? NUMBER() => getToken(cqlParser.TOKEN_NUMBER, 0);
}

class LongNumberLiteralContext extends LiteralContext {
  LongNumberLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitLongNumberLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  TerminalNode? LONGNUMBER() => getToken(cqlParser.TOKEN_LONGNUMBER, 0);
}

class QuantityLiteralContext extends LiteralContext {
  QuantityLiteralContext(LiteralContext ctx) {
    copyFrom(ctx);
  }

  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is CqlVisitor<T>) {
      return visitor.visitQuantityLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }

  QuantityContext? quantity() => getRuleContext<QuantityContext>(0);
}
