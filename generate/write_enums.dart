// ignore_for_file: avoid_print

import 'dart:convert';
import 'fhir_generate_extension.dart';

Future<void> writeEnums(
    Set<String> valueSets, Map<String, Map<String, dynamic>> codesAndVS) async {
  int i = 0;
  for (final String valueSetUrl in valueSets) {
    if (!codesAndVS.containsKey(valueSetUrl)) {
      print('No enum values found for ValueSet: $valueSetUrl');
    } else {
      final Map<String, dynamic> valueSet = codesAndVS[valueSetUrl]!;
      final String enumName = _getEnumNameFromValueSet(valueSetUrl, valueSet);

      final List<String> enumValues = _extractEnumValues(valueSet, codesAndVS);
      if (enumValues.isEmpty) {
        print('$i: $enumName: No enum values found for ValueSet: $valueSetUrl'
            '\n${jsonEncode(valueSet)}');
        throw Exception('No enum values found for ValueSet: $valueSetUrl');
      }
      i++;

      // You can uncomment the following lines to continue generating and writing enums
      // final String enumString = _buildEnumString(enumName, enumValues);
      // await _writeEnumToFile(enumName, enumString);
    }
  }
}

String _getEnumNameFromValueSet(
    String valueSetUrl, Map<String, dynamic> valueSet) {
  final String? valueSetName = valueSet['name'] as String?;
  if (valueSetName != null && valueSetName.isNotEmpty) {
    return valueSetName.camelCase.capitalize;
  }

  final String namePart = valueSetUrl.split('/').last.split('|').first;
  return namePart.camelCase.capitalize;
}

// Extract enum values from ValueSet or CodeSystem
List<String> _extractEnumValues(Map<String, dynamic> resource,
    Map<String, Map<String, dynamic>> codesAndVS) {
  final List<String> enumValues = <String>[];

  // Handle ValueSet first
  if (resource['resourceType'] == 'ValueSet') {
    // First check if there is an 'expansion' field
    if (resource.containsKey('expansion')) {
      final List<dynamic> contains = (resource['expansion']
          as Map<String, dynamic>)['contains'] as List<dynamic>;
      for (final dynamic concept in contains) {
        enumValues.add((concept as Map<String, dynamic>)['code'] as String);
      }
    }

    // If no expansion, check the 'compose' field for included concepts
    else if (resource.containsKey('compose')) {
      final List<dynamic> include = (resource['compose']
          as Map<String, dynamic>)['include'] as List<dynamic>;

      for (final dynamic inclusion in include) {
        final List<dynamic>? concepts =
            (inclusion as Map<String, dynamic>)['concept'] as List<dynamic>?;
        for (final dynamic concept in concepts ?? <dynamic>[]) {
          enumValues.add((concept as Map<String, dynamic>)['code'] as String);
        }

        // Handle cases where we only have a system and no explicit concepts
        if (concepts == null || concepts.isEmpty) {
          // Fetch codes from the system
          final String? systemUrl = inclusion['system'] as String?;
          if (systemUrl != null) {
            final Map<String, dynamic>? newCodings = codesAndVS[systemUrl];
            if (newCodings != null) {
              if (newCodings['resourceType'] == 'ValueSet') {
                final List<String> newEnumValues =
                    _extractEnumValues(newCodings, codesAndVS);
                enumValues.addAll(newEnumValues);
              } else if (newCodings['resourceType'] == 'CodeSystem') {
                final List<String> newEnumValues =
                    _extractEnumValuesFromCodeSystem(newCodings);
                enumValues.addAll(newEnumValues);
              }
            }
          }
        }
      }
    }
  }
  // Handle CodeSystem directly
  else if (resource['resourceType'] == 'CodeSystem') {
    final List<String> newEnumValues =
        _extractEnumValuesFromCodeSystem(resource);
    enumValues.addAll(newEnumValues);
  }

  return enumValues;
}

// Extract enum values directly from CodeSystem concepts
List<String> _extractEnumValuesFromCodeSystem(Map<String, dynamic> codeSystem) {
  final List<String> enumValues = <String>[];
  if (codeSystem.containsKey('concept')) {
    final List<dynamic> concepts = codeSystem['concept'] as List<dynamic>;
    for (final dynamic concept in concepts) {
      enumValues.add((concept as Map<String, dynamic>)['code'] as String);
    }
  }
  return enumValues;
}

// Future<List<String>> _fetchCodeSystemValues(
//     Map<String, dynamic> valueSet) async {
//   final List<String> enumValues = <String>[];

//   if (valueSet.containsKey('compose')) {
//     final List<dynamic> include = (valueSet['compose']
//         as Map<String, dynamic>)['include'] as List<dynamic>;

//     for (final dynamic inclusion in include) {
//       final String? systemUrl =
//           (inclusion as Map<String, dynamic>)['system'] as String?;

//       if (systemUrl != null) {
//         // Fetch the CodeSystem from the system URL
//         final List<String> codes =
//             await _tryFetchingCodeSystemWithFallback(systemUrl);
//         enumValues.addAll(codes);
//       }
//     }
//   }

//   return enumValues;
// }

// // Try fetching codes, first with |version, then without, then modifying the URL to use 'ValueSet'
// Future<List<String>> _tryFetchingCodeSystemWithFallback(
//     String systemUrl) async {
//   List<String> codes = <String>[];
//   final String url = systemUrl;

//   // Check if the URL already contains a version, otherwise try adding a version
//   if (!url.contains('|')) {
//     codes = await _fetchCodesFromSystem('$url|4.3.0');
//     if (codes.isEmpty) {
//       codes = await _fetchCodesFromSystem(url);
//     }
//   } else {
//     codes = await _fetchCodesFromSystem(url);
//   }

//   // If still empty and it's a 'resource-types', attempt changing 'resource-types' to 'ValueSet'
//   if (codes.isEmpty && url.contains('resource-types')) {
//     final String updatedUrl = url.replaceAll('resource-types', 'ValueSet');
//     codes = await _fetchCodesFromSystem(updatedUrl);
//   }

//   return codes;
// }

// // Fetch codes from the given system URL
// Future<List<String>> _fetchCodesFromSystem(String systemUrl) async {
//   final List<String> codes = <String>[];

//   try {
//     final Uri uri = Uri.parse(systemUrl);
//     final http.Response response =
//         await http.get(uri, headers: <String, String>{
//       'Accept': 'application/json',
//     });

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> codeSystem =
//           jsonDecode(response.body) as Map<String, dynamic>;

//       if (codeSystem.containsKey('concept')) {
//         final List<dynamic> concepts = codeSystem['concept'] as List<dynamic>;
//         for (final dynamic concept in concepts) {
//           codes.add((concept as Map<String, dynamic>)['code'] as String);
//         }
//       }
//     } else {
//       print(
//           'Failed to fetch CodeSystem: ${response.statusCode} for $systemUrl');
//     }
//   } catch (e) {
//     print('Error fetching CodeSystem: $e');
//   }

//   return codes;
// }

// String _buildEnumString(String enumName, List<String> enumValues) {
//   final StringBuffer buffer = StringBuffer();
//   enumName = enumName.camelCase.capitalize;
//   buffer.writeln('enum $enumName {');

//   for (final String value in enumValues) {
//     buffer.writeln('  ${_toEnumValue(value)},');
//   }

//   buffer.writeln(';\n');

//   buffer.writeln("  String toJson() => toString().split('.').last;");
//   buffer.writeln('  static $enumName fromJson(String jsonString) => '
//       "$enumName.values.firstWhere((e) => e.toString().split('.').last == jsonString);");
//   buffer.writeln('  @override');
//   buffer.writeln("  String toString() => super.toString().split('.').last;");
//   buffer.writeln('  static $enumName fromString(String str) => fromJson(str);');
//   buffer.writeln('}\n');

//   return buffer.toString();
// }

// String _toEnumValue(String value) {
//   return value.replaceAll('-', '_').replaceAll(' ', '_').camelCase;
// }

// Future<void> _writeEnumToFile(String enumName, String enumString) async {
//   final String enumFileName = '${enumName.snakeCase}.dart';
//   final String filePath = '../lib/src/fhir/enums/$enumFileName';

//   final File enumFile = File(filePath);
//   if (!enumFile.existsSync()) {
//     enumFile.createSync(recursive: true);
//   }

//   await enumFile.writeAsString(enumString);
// }
