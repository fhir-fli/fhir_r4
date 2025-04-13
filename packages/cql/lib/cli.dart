import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'cql.dart';

const bool print = true;

Future<void> main() async {
  final dir = Directory('lib/cql/libraries');
  final files = await dir.list().toList();
  for (final file in files) {
    log(file.path);
    final cqlFile = await File(file.path).readAsString();

    final parserAndErrors = parse(cqlFile);
    final parser = parserAndErrors.parser;

    try {
      final visitor = CqlBaseVisitor(CqlLibrary());
      visitor.visit(parser.library_());
      final errors = parserAndErrors.errorListener.errors
          .map((e) => e.copyWith(
              libraryId: visitor.library.identifier?.id,
              libraryVersion: visitor.library.identifier?.version))
          .toList();
      visitor.library.annotation ??= [];
      visitor.library.annotation!.addAll(errors);
      await File(file.path
              .replaceAll('cql/libraries', 'cql/libraries_json')
              .replaceAll('.cql', '2.json'))
          .writeAsString(
              jsonPrettyPrint({'library': visitor.library.toJson()}));
      // var resultLibrary = visitor.result['library'];
      // (resultLibrary as Map<String, dynamic>).remove('annotation');
      // if (print) {
      //   log(jsonEncode(visitor.result));
      // }

      // log(visitor.library.execute().toString());
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      await File(file.path
              .replaceAll('cql/libraries', 'cql/libraries_json')
              .replaceAll('.cql', '2.json'))
          .writeAsString('$e: $s');
    }
  }
}

CqlParsersAndErrors parse(String pathExpression) {
  final input = InputStream.fromString(pathExpression);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  final errorListener = ElmErrorListener();
  parser.addErrorListener(errorListener);
  parser.buildParseTree = true;
  return CqlParsersAndErrors(parser, errorListener);
}

class CqlParsersAndErrors {
  final ElmErrorListener errorListener;
  final cqlParser parser;

  CqlParsersAndErrors(this.parser, this.errorListener);
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
