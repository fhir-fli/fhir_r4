import 'package:json_annotation/json_annotation.dart';

/// Codes for high level media categories.
enum MediaType {
  /// Display: Image
  /// Definition: The media consists of one or more unmoving images, including photographs, computer-generated graphs and charts, and scanned documents
  @JsonValue('image')
  image,
  /// Display: Video
  /// Definition: The media consists of a series of frames that capture a moving image
  @JsonValue('video')
  video,
  /// Display: Audio
  /// Definition: The media consists of a sound recording
  @JsonValue('audio')
  audio,
;

@override
  String toString() {
      switch(this) {
        case image: return 'image';
        case video: return 'video';
        case audio: return 'audio';
      }
      }
String toJson() => toString();
  MediaType fromString(String str) {
    switch(str) {
      case 'image': return MediaType.image;
      case 'video': return MediaType.video;
      case 'audio': return MediaType.audio;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MediaType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
