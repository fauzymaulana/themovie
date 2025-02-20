import 'package:watch_me/data/entities/remote/genre_ids_response.dart';
import 'package:watch_me/data/entities/remote/genre_response.dart';

import '../entities/genres_entity.dart';

extension GenreMapper on GenreResponse {
  GenreEntity toGenreEntities() {
    return GenreEntity(id: id, name: name);
  }
}

extension GenreIdsMapper on GenreIdsResponse {
  GenresEntity toGenresEntities() {
    return GenresEntity(genres: genres.map((e) => e.toGenreEntities()).toList());
  }
}