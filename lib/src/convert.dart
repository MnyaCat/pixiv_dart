import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:image/image.dart';

import 'model/ugoira_metadata.dart';

Future<Command> ugoiraToGifCommand(
  Uint8List ugoiraData,
  UgoiraMetadata metadata,
) async {
  final ugoira = ZipDecoder().decodeBytes(ugoiraData);
  final command = Command();
  final frames = <Image>[];

  for (final frame in metadata.frames) {
    // // 見つからなかったらnullが返される
    final frameFile = ugoira.findFile(frame.file);
    // ArchiveFile.contentがdynamicなのでUint8Listに変換する
    // デコードに問題があるとnullが返される
    command.decodeJpg(frameFile!.content as Uint8List);
    final image = await command.getImage();
    image!.frameDuration = frame.delay;
    frames.add(image);
  }

  return command
    ..addFrames(frames.length, (frameIndex) => frames[frameIndex])
    ..encodeGif();
}

Future<Image?> ugoiraToGifImage(
  Uint8List ugoiraData,
  UgoiraMetadata metadata,
) async {
  final command = await ugoiraToGifCommand(ugoiraData, metadata);
  return command.getImage();
}

Future<Image?> ugoiraToGifImageThread(
  Uint8List ugoiraData,
  UgoiraMetadata metadata,
) async {
  final command = await ugoiraToGifCommand(ugoiraData, metadata);
  return command.getImageThread();
}

Future<Uint8List?> ugoiraToGifBytes(
  Uint8List ugoiraData,
  UgoiraMetadata metadata,
) async {
  final command = await ugoiraToGifCommand(ugoiraData, metadata);
  return command.getBytes();
}

Future<Uint8List?> ugoiraToGifBytesThread(
  Uint8List ugoiraData,
  UgoiraMetadata metadata,
) async {
  final command = await ugoiraToGifCommand(ugoiraData, metadata);
  return command.getBytesThread();
}
