import 'dart:io';
import 'package:path/path.dart' as path;

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Enter the command\n');
    return;
  }

  final command = arguments.isNotEmpty ? arguments[0] : '';

  switch (command) {
    case 'create':
      copyTDDFiles();
  }
}

void copyTDDFiles() {
  final packageLibDir = Directory('lib');
  final projectLibDir = Directory(path.join(Directory.current.path, 'lib'));

  copyDirectory(packageLibDir, projectLibDir);

  final packageAssetDir = Directory('assets');
  final projectAssetDir =
      Directory(path.join(Directory.current.path, 'assets'));

  copyDirectory(packageAssetDir, projectAssetDir);
}

void copyDirectory(Directory source, Directory destination) {
  if (!destination.existsSync()) {
    destination.createSync(recursive: true);
  }

  source.listSync(recursive: false).forEach((FileSystemEntity entity) {
    if (entity is Directory) {
      final newDirectory =
          Directory(path.join(destination.path, path.basename(entity.path)));
      copyDirectory(entity.absolute, newDirectory.absolute);
    } else if (entity is File) {
      final newFile =
          File(path.join(destination.path, path.basename(entity.path)));
      entity.copySync(newFile.path);
    }
  });
}
