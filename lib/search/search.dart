// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars, unnecessary_statements, avoid_dynamic_calls
import 'dart:convert';
import 'dart:io';
// ignore: always_use_package_imports
import '../src/utils/fhir_field_map.dart';
// ignore: always_use_package_imports
import 'utils.dart';

/// The main function that generates Dart code from `search-parameters.json`.
void main() {
  final file = File('search-parameters.json').readAsStringSync();
  final json = jsonDecode(file);

  // A map of resourceType -> a list of expression sub-segment lists
  final expressions = <String, List<String>>{};

  final returnTypes = <String>[];

  // 1) Initialize expressions[resourceType] = []
  for (final t in typesAsStrings) {
    expressions[makeDartClass(t)] = [];
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

      final returnType = resource['type'] as String?;
      if (returnType != null) {
        returnTypes.add(returnType);
      }
      // Store them for that resourceType
      expressions[makeDartClass(resourceType)]!.add(exp);
    }
  }
  final sb = StringBuffer()
    ..writeln('// Generated from FHIR R4 SearchParameter definitions')
    ..writeln(
      '// ignore_for_file: unnecessary_statements, cascade_invocations, lines_longer_than_80_chars',
    )
    ..writeln("import 'package:fhir_r4/fhir_r4.dart';\n")
    ..writeln('extension MakeIterable on FhirBase {')
    ..writeln('  /// Returns an iterable of the given type.')
    ..writeln('  Iterable<T> makeIterable<T extends FhirBase>() {')
    ..writeln('    return <T>[this as T];')
    ..writeln('  }')
    ..writeln('}\n')
    ..writeln('void main() {');
  var total = -1;
  for (final t in typesAsStrings) {
    final type = makeDartClass(t);
    sb.writeln('  final ${_firstLetterToLowerCase(type)} = $type.empty();');
    for (final exp in expressions[type]!) {
      total++;
      sb
        ..writeln(' // $exp (${returnTypes[total]})')
        ..writeln('${_firstLetterToLowerCase(buildDartAccessor(exp))};');
    }
  }
  sb.writeln('  }');
  var sbString = sb.toString();
  sbString = sbString.replaceAll(
    'patient?.deceasedX?.exists() and Patient?.deceased != false',
    'patient.deceasedBoolean?.value != false || patient.deceasedDateTime?.value != null',
  );

  File('search_parameters.dart').writeAsStringSync(sbString);
}

String buildDartAccessor(String exp) {
  final segments = exp.split('.');
  if (segments.isEmpty) return '';
  segments[0] = makeDartClass(segments[0]);
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
          sb.write('?.map((e) => e?.${fhirFieldToDartName(segment)})');
        } else if (segment.contains('[')) {
          final firstSegment = segment.split('[').first;
          sb.write('.$firstSegment?.firstOrNull');
        } else {
          final thisField = resolveSimplePath('$priorPath.$segment');
          final safeSeg = thisField?.type == 'X' ? '${segment}X' : segment;
          sb.write('?.${fhirFieldToDartName(safeSeg)}');
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
          '?.makeIterable<${fhirField.type}>()${whereIsType(type)}',
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
          sb.write(whereEquals('type', type));
        } else {
          final thisField = fhirFieldMap[fhirField.type]?[segment];
          final thisType = thisField?.type;
          if (thisType == null) {
            throw Exception('Type not found in $segment');
          }
          final safeSeg = thisField!.type == 'X' ? '${segment}X' : segment;
          sb.write(
            '.${fhirFieldToDartName(safeSeg)}.makeIterable<$thisType>()${whereEquals('type', type)}',
          );
        }
        isList = true;
      } else {
        final pattern = RegExp(r"where\(system='(.+)'\)");
        if (pattern.hasMatch(segment)) {
          final match = pattern.firstMatch(segment);
          final type = match?.group(1);
          if (type == null) {
            throw Exception('Type not found in $segment');
          }

          if (i != 0 && isList) {
            sb.write(whereEquals('system', type));
          } else {
            final thisField = fhirFieldMap[fhirField.type]?[segment];
            final thisType = thisField?.type;
            if (thisType == null) {
              throw Exception('Type not found in $segment');
            }
            final safeSeg = thisField!.type == 'X' ? '${segment}X' : segment;
            sb.write(
              '.${fhirFieldToDartName(safeSeg)}.makeIterable<$thisType>()${whereEquals('system', type)}',
            );
          }
          isList = true;
        } else if (isList) {
          final thisField = fhirFieldMap[fhirField.type]?[segment];
          if (thisField == null) {
            throw Exception('Field not found in $segment');
          }
          final safeSeg = thisField.type == 'X' ? '${segment}X' : segment;
          if (thisField.isList) {
            sb.write(
              '?.expand((e) => e?.${fhirFieldToDartName(safeSeg)} ?? <${thisField.type}>[])',
            );
          } else {
            sb.write('?.map((e) => e?.${fhirFieldToDartName(safeSeg)})');
          }
        } else {
          final pattern = RegExp(r'as\((.+)\)');
          if (pattern.hasMatch(segment)) {
            final asType = _firstLetterToUpperCase(
              segment.split('as(').last.split(')').first,
            );
            final tempSb = sb.toString();
            sb
              ..clear()
              ..write('${tempSb.substring(0, tempSb.length - 1)}$asType');
          } else {
            final thisField = fhirFieldMap[fhirField.type]?[segment];
            final safeSeg = thisField?.type == 'X' ? '${segment}X' : segment;
            sb.write('?.${fhirFieldToDartName(safeSeg)}');
          }
        }
      }
    }
  }
  return sb.toString();
}

String makeDartClass(String type) =>
    ['Group', 'Endpoint', 'List'].contains(type) ? 'Fhir$type' : type;

String whereIsType(String type) => '''
?.where((e) {
    final ref = e?.reference?.toString().split('/') ?? [];
    return ref.length > 1 && ref[ref.length - 2] == '$type';
  })''';

String whereEquals(String field, String type) =>
    "?.where((e) => e?.$field?.value.toString() == '$type')";

String _firstLetterToLowerCase(String s) {
  return s[0].toLowerCase() + s.substring(1);
}

String _firstLetterToUpperCase(String s) {
  return s[0].toUpperCase() + s.substring(1);
}
