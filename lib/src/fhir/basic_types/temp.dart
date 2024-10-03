// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'temp.freezed.dart';
part 'temp.g.dart';

@freezed
class TempClass with _$TempClass {
  TempClass._();

  @Entity()
  factory TempClass({
    @Id(assignable: true) required int id,
    String? name,
  }) = _TempClass;

  factory TempClass.fromJson(Map<String, dynamic> json) =>
      _$TempClassFromJson(json);
}
