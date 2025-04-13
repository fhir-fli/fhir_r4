// cqlParser parse(String pathExpression) {
//   final input = InputStream.fromString(pathExpression);
//   final lexer = cqlLexer(input);
//   final tokens = CommonTokenStream(lexer);
//   final parser = cqlParser(tokens);
//   parser.addErrorListener(ElmErrorListener());
//   parser.buildParseTree = true;
//   print('b');
//   return parser;
// }

// void printTree(ParseTree? ctx, [String indent = '']) {
//   if (ctx == null) return;
//   print('$indent${ctx.runtimeType} ${ctx.text} ${ctx.toString()}');
//   for (var i = 0; i < ctx.childCount; i++) {
//     final child = ctx.getChild(i);
//     if (child != null) {
//       printTree(ctx.getChild(i)!, '$indent  ');
//     }
//   }
// }

// Future<void> main() async {
//   final librariesAndDefinitionsDir = Directory('libraries_and_definitions');
//   final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
//   for (final file in librariesAndDefinitionsFiles) {
//     if (file is File && file.path.contains('00_Working')) {
//       print(file.path);
//       final pathExpression = await file.readAsString();
//       print('a');
//       final parser = parse(pathExpression);
//       print('d');
//       final visitor = cqlBaseVisitor();
//       visitor.visit(parser.library_());

//       File(file.path
//               .replaceAll(
//                   'libraries_and_definitions', 'libraries_and_definitions_json')
//               .replaceAll('.cql', '2.json'))
//           .writeAsStringSync(jsonPrettyPrint(visitor.result));
//     }
//   }
// }

// String prettyPrintJson(Map<String, dynamic> map) => jsonPrettyPrint(map);

// final simpleCql = '''
// library ChlamydiaScreening_CDS_UsingCommon version '2'

// using QUICK

// include ChlamydiaScreening_Common version '2' called Common

// codesystem "SNOMED": 'http://snomed.info/sct'

// valueset "Reason for not performing Chlamydia Screening": 'TBD'
// ''';
