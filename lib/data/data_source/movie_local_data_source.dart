import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:watch_me/data/entities/local/genres_isar.dart';
import 'package:watch_me/data/entities/remote/genre_response.dart';
import 'package:watch_me/domain/mapper/genres_mapper.dart';

class MovieLocalDataSource {
  late Future<Isar> db;

  MovieLocalDataSource() {
    db = _initDb();
  }

  Future<Isar> _initDb() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
      [
        GenresIsarSchema
      ], 
      directory: dir.path
    );
    }

    return Future.value(Isar.getInstance());
    
  }

  Future<void> saveGenres(List<GenreResponse> genres) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.genresIsars.putAll(genres.toGenreSchemaList());
    });
  }

  Future<List<GenresIsar>> getGenres() async {
    final isar = await db;
    return await isar.genresIsars
    .where()
    .findAll();
  }
}