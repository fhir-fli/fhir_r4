import 'package:json_annotation/json_annotation.dart';

/// Operations supported by REST at the type or instance level.
enum TypeRestfulInteraction {
  @JsonValue('read')
  read,
  @JsonValue('vread')
  vread,
  @JsonValue('update')
  update,
  @JsonValue('patch')
  patch,
  @JsonValue('delete')
  delete,
  @JsonValue('history-instance')
  history_instance,
  @JsonValue('history-type')
  history_type,
  @JsonValue('create')
  create,
  @JsonValue('search-type')
  search_type,
;

@override
  String toString() {
      switch(this) {
        case read: return 'read';
        case vread: return 'vread';
        case update: return 'update';
        case patch: return 'patch';
        case delete: return 'delete';
        case history_instance: return 'history-instance';
        case history_type: return 'history-type';
        case create: return 'create';
        case search_type: return 'search-type';
      }
      }
String toJson() => toString();
  TypeRestfulInteraction fromString(String str) {
    switch(str) {
      case 'read': return TypeRestfulInteraction.read;
      case 'vread': return TypeRestfulInteraction.vread;
      case 'update': return TypeRestfulInteraction.update;
      case 'patch': return TypeRestfulInteraction.patch;
      case 'delete': return TypeRestfulInteraction.delete;
      case 'history-instance': return TypeRestfulInteraction.history_instance;
      case 'history-type': return TypeRestfulInteraction.history_type;
      case 'create': return TypeRestfulInteraction.create;
      case 'search-type': return TypeRestfulInteraction.search_type;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 TypeRestfulInteraction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

