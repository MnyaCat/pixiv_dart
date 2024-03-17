import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:image/image.dart';
import 'package:pixiv_dart/src/exceptions.dart';

import 'model/ugoira_metadata.dart';

Future<Command> ugoiraToGifCommand(
  Uint8List ugoiraData,
  UgoiraMetadata metadata, {
  bool executeThread = false,
}) async {
  final ugoira = ZipDecoder().decodeBytes(ugoiraData);
  final command = Command();
  final frames = <Image>[];
  final Future<Image?> Function() getImage;

  if (executeThread) {
    getImage = command.getImageThread;
  } else {
    getImage = command.getImage;
  }
  for (final frame in metadata.frames) {
    // // 見つからなかったらnullが返される
    final frameFile = ugoira.findFile(frame.file);
    // ArchiveFile.contentがdynamicなのでUint8Listに変換する
    // デコードに問題があるとnullが返される
    command.decodeJpg(frameFile!.content as Uint8List);
    final image = await getImage();
    image!.frameDuration = frame.delay;
    frames.add(image);
  }

  return command
    ..addFrames(frames.length, (frameIndex) => frames[frameIndex])
    ..encodeGif();
}

Future<Image> ugoiraToGifImage(
  Uint8List ugoiraData,
  UgoiraMetadata metadata, {
  bool executeThread = false,
}) async {
  final command = await ugoiraToGifCommand(
    ugoiraData,
    metadata,
    executeThread: executeThread,
  );
  final ugoiraImage = await command.getImage();
  if (ugoiraImage == null) {
    throw UgoiraConversionFailed(
      'Failed to convert ugoira to Image. Could not retrieve image data.',
      ugoiraData,
      metadata,
    );
  }
  return ugoiraImage;
}

Future<Uint8List> ugoiraToGifBytes(
  Uint8List ugoiraData,
  UgoiraMetadata metadata, {
  bool executeThread = false,
}) async {
  final command = await ugoiraToGifCommand(
    ugoiraData,
    metadata,
    executeThread: executeThread,
  );
  final ugoiraGif = await command.getBytes();
  if (ugoiraGif == null) {
    throw UgoiraConversionFailed(
      'Failed to convert ugoira to GIF. Could not retrieve image data.',
      ugoiraData,
      metadata,
    );
  }
  return ugoiraGif;
}
