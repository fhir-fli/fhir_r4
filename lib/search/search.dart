// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars, unnecessary_statements, avoid_dynamic_calls
import 'dart:convert';
import 'dart:io';
// ignore: always_use_package_imports
import 'utils.dart';

/// The main function that generates Dart code from `search-parameters.json`.
void main() {
  final file = File('search-parameters.json').readAsStringSync();
  final json = jsonDecode(file);

  // A map of resourceType -> a list of expression sub-segment lists
  final expressions = <String, List<String>>{};

  // 1) Initialize expressions[resourceType] = []
  for (final t in typesAsStrings) {
    expressions[t] = [];
  }

  // 2) Extract sub-segments from each expression in the JSON
  for (final entry in json['entry'] as List<dynamic>) {
    final resource = entry['resource'];
    final expression = resource['expression'] as String?;
    if (expression == null) continue;

    // A single SearchParameter expression might contain multiple FHIRPath
    // pieces separated by ' | '
    final expressionList = expression.split(' | ');
    for (final exp in expressionList) {
      // Fully split on all dots to isolate "where(...)" as its own segment.
      final segments = exp.split('.');
      if (segments.isEmpty) continue;

      // The first segment is typically the resource type, e.g. "Account"
      final resourceType = segments[0];
      if (!typesAsStrings.contains(resourceType)) {
        continue;
      }

      // Store them for that resourceType
      expressions[resourceType]!.add(exp);
    }
  }
  final sb = StringBuffer()
    ..writeln('// Generated from FHIR R4 SearchParameter definitions')
    ..writeln('// ignore_for_file: unnecessary_statements, cascade_invocations')
    ..writeln("import 'package:fhir_r4/fhir_r4.dart';\n")
    ..writeln('extension MakeIterable on FhirBase {')
    ..writeln('  /// Returns an iterable of the given type.')
    ..writeln('  Iterable<FhirBase> makeIterable() {')
    ..writeln('    return <FhirBase>[this];')
    ..writeln('  }')
    ..writeln('}\n')
    ..writeln('void main() {');
  for (final t in typesAsStrings) {
    sb.writeln('  final ${_firstLetterToLowerCase(t)} = $t.empty();');
    for (final exp in expressions[t]!) {
      sb
        ..writeln(' // $exp')
        ..writeln('${_firstLetterToLowerCase(buildDartAccessor(exp))};');
    }
  }
  sb.writeln('  }');

  File('search_parameters.dart').writeAsStringSync(sb.toString());
}

String _firstLetterToLowerCase(String s) {
  return s[0].toLowerCase() + s.substring(1);
}

String buildDartAccessor(String exp) {
  final segments = exp.split('.');
  if (segments.isEmpty) return '';
  final sb = StringBuffer();
  var isList = false;
  for (var i = 0; i < segments.length; i++) {
    final segment = segments[i];
    final priorPath = segments.sublist(0, i).join('.');
    final fhirField = resolveSimplePath(priorPath);
    if (fhirField == null) {
      if (i == 0) {
        sb.write(segment);
      } else {
        if (isList) {
          sb.write('?.map((e) => e.${fhirFieldToDartName(segment)}).toList()');
        } else {
          sb.write('.${fhirFieldToDartName(segment)}');
        }
      }
      continue;
    }
    isList = isList || fhirField.isList;

    final pattern = RegExp(r'where\(resolve\(\) is (.+)\)');
    if (pattern.hasMatch(segment)) {
      final whereSegments = segment.split(' ');
      final type = whereSegments[whereSegments.length - 1].split(')')[0];
      if (i != 0 && isList) {
        sb.write(whereIsType(type));
      } else {
        sb.write(
          '.${fhirFieldToDartName(segment)}.makeIterable${whereIsType(type)}',
        );
      }
      isList = true;
    } else {
      final pattern = RegExp(r"where\(type='(.+)'\)");
      if (pattern.hasMatch(segment)) {
        final match = pattern.firstMatch(segment);
        final type = match?.group(1);
        if (type == null) {
          throw Exception('Type not found in $segment');
        }

        if (i != 0 && isList) {
          sb.write(whereEqualsType(type));
        } else {
          sb.write(
            '.${fhirFieldToDartName(segment)}.makeIterable${whereEqualsType(type)}',
          );
        }
        isList = true;
      } else if (isList) {
        sb.write('?.map((e) => e.${fhirFieldToDartName(segment)}).toList()');
      } else {
        sb.write('.${fhirFieldToDartName(segment)}');
      }
    }
  }
  return sb.toString();
}

String whereIsType(String type) => '''
?.where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == '$type';
  }).toList()''';

String whereEqualsType(String type) =>
    "?.where((e) => e?.type.value.toString() == '$type').toList()";
