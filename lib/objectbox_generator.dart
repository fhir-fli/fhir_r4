import 'dart:convert';
import 'dart:io';
import 'package:objectbox/internal.dart';
import 'package:objectbox/objectbox.dart';

/// Parses a string in the format 'id:uid' into an [IdUid] object.
IdUid parseIdUid(String idUidString) {
  final parts = idUidString.split(':');
  final id = int.parse(parts[0]);
  final uid = int.parse(parts[1]);
  return IdUid(id, uid);
}

/// Parses a list of JSON properties into a list of [ModelProperty].
List<ModelProperty> parseProperties(List<dynamic> propertiesJson) {
  return propertiesJson.map((dynamic prop) {
    return ModelProperty(
      id: parseIdUid((prop as Map<String, dynamic>)['id'] as String),
      name: prop['name'] as String,
      type: prop['type'] as int,
      flags: prop['flags'] as int,
      indexId: prop['indexId'] != null
          ? parseIdUid(prop['indexId'] as String)
          : null,
      relationTarget: prop['relationTarget'] as String?,
    );
  }).toList();
}

/// Parses a list of JSON relations into a list of [ModelRelation].
List<ModelRelation> parseRelations(List<dynamic> relationsJson) {
  return relationsJson.map((dynamic rel) {
    return ModelRelation(
      id: parseIdUid((rel as Map<String, dynamic>)['id'] as String),
      name: rel['name'] as String,
      targetId: parseIdUid(rel['targetId'] as String),
    );
  }).toList();
}

/// Parses a list of JSON entities into a list of [ModelEntity].
List<ModelEntity> parseEntities(List<dynamic> entitiesJson) {
  return entitiesJson.map((dynamic entity) {
    return ModelEntity(
      id: parseIdUid((entity as Map<String, dynamic>)['id'] as String),
      name: entity['name'] as String,
      lastPropertyId: parseIdUid(entity['lastPropertyId'] as String),
      flags: 0,
      properties: parseProperties(
        entity['properties'] as List<dynamic>,
      ),
      relations: parseRelations(
        entity['relations'] as List<dynamic>,
      ),
      backlinks: <ModelBacklink>[],
    );
  }).toList();
}

/// Generates Dart code from JSON model data.
String generateDartCode(Map<String, dynamic> json) {
  final entities = parseEntities(
    json['entities'] as List<dynamic>,
  );

  final model = ModelInfo(
    entities: entities,
    lastEntityId: parseIdUid(json['lastEntityId'] as String),
    lastIndexId: parseIdUid(json['lastIndexId'] as String),
    lastRelationId: parseIdUid(json['lastRelationId'] as String),
    lastSequenceId: const IdUid(0, 0),
    retiredEntityUids: const [],
    retiredIndexUids: const [],
    retiredPropertyUids: const [],
    retiredRelationUids: const [],
    modelVersion: json['modelVersion'] as int,
    modelVersionParserMinimum: json['modelVersionParserMinimum'] as int,
    version: json['version'] as int,
  );

  return '''
// GENERATED CODE - DO NOT MODIFY BY HAND
// See https://docs.objectbox.io/getting-started#generate-objectbox-code

import 'dart:typed_data';
import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart';
import 'package:objectbox/objectbox.dart';

final List<ModelEntity> _entities = <ModelEntity>[
${entities.map((e) => e.toString()).join(',\n')}
];

ModelDefinition getObjectBoxModel() {
  final model = $model;
  return ModelDefinition(model, {});
}
  ''';
}

/// Reads JSON from a file and generates Dart code.
Future<void> main() async {
  const inputFile = 'objectbox-model.json';
  const outputFile = 'objectbox_generated.dart';

  try {
    final content = await File(inputFile).readAsString();
    final json = jsonDecode(content) as Map<String, dynamic>;

    final dartCode = generateDartCode(json);
    await File(outputFile).writeAsString(dartCode);

    print('Dart code successfully generated at $outputFile');
  } catch (e) {
    print('An error occurred: $e');
  }
}
