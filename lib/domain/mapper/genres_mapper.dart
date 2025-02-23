import 'package:watch_me/data/entities/local/genres_isar.dart';
import 'package:watch_me/data/entities/remote/genre_ids_response.dart';
import 'package:watch_me/data/entities/remote/genre_response.dart';

import '../entities/genres_entity.dart';

extension GenreMapper on GenreResponse {
  GenreEntity toGenreEntity() {
    return GenreEntity(id: id, name: name);
  }

  // GenreIsar toGenreSchema() {
  //   return GenreIsar(
  //     genre: name,
  //     genreId: id
  //   );
  // }
}

extension GenreIdsMapper on GenreIdsResponse {
  GenresEntity toGenresEntity() {
    return GenresEntity(genres: genres.map((e) => e.toGenreEntity()).toList());
  }

  List<GenreEntity> toGenreListEntity() {
    return genres.map((genre) =>
    GenreEntity(id: genre.id, name: genre.name)).toList();
  }

  // GenresIsar toGenresSchema() {
  //   return GenresIsar(genreList: genres.map((e) => e.toGenreSchema()).toList());
  // }
}

// extension GenreSchemaMapper on GenreIsar {
//   GenreEntity toGenreEntity() {
//     return GenreEntity(id: genreId ?? 0, name: genre ?? "");
//   }
// }

// extension GenresSchemaMapper on GenresIsar {
//   GenresEntity toGenresEntity() {
//     return GenresEntity(genres: genreList.map((e) => e.toGenreEntity()).toList());
//   }
// }

extension GenreListMapper on List<GenreResponse> {
  List<GenreEntity> toGenreEntityList() {
    return map((genre) => 
    GenreEntity(
      id: genre.id, 
      name: genre.name
    )).toList();
  }

  List<GenresIsar> toGenreSchemaList() {
    return map((genre) =>
    GenresIsar(
      name: genre.name,
      genreId: genre.id
    )).toList();
  }
}

extension GenreListSchemaMapper on List<GenresIsar> {
  List<GenreEntity> toGenreEntityList() {
    return map((genre) =>
    GenreEntity(
      id: genre.genreId ?? 0, 
      name: genre.name ?? ""
    )).toList();
  }
}