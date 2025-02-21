// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGenresIsarCollection on Isar {
  IsarCollection<GenresIsar> get genresIsars => this.collection();
}

const GenresIsarSchema = CollectionSchema(
  name: r'GenresIsar',
  id: -5637681504639754762,
  properties: {},
  estimateSize: _genresIsarEstimateSize,
  serialize: _genresIsarSerialize,
  deserialize: _genresIsarDeserialize,
  deserializeProp: _genresIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'genreList': LinkSchema(
      id: -2750367609374884,
      name: r'genreList',
      target: r'GenresIsar',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _genresIsarGetId,
  getLinks: _genresIsarGetLinks,
  attach: _genresIsarAttach,
  version: '3.1.0+1',
);

int _genresIsarEstimateSize(
  GenresIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _genresIsarSerialize(
  GenresIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
GenresIsar _genresIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenresIsar();
  object.id = id;
  return object;
}

P _genresIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _genresIsarGetId(GenresIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _genresIsarGetLinks(GenresIsar object) {
  return [object.genreList];
}

void _genresIsarAttach(IsarCollection<dynamic> col, Id id, GenresIsar object) {
  object.id = id;
  object.genreList
      .attach(col, col.isar.collection<GenresIsar>(), r'genreList', id);
}

extension GenresIsarQueryWhereSort
    on QueryBuilder<GenresIsar, GenresIsar, QWhere> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GenresIsarQueryWhere
    on QueryBuilder<GenresIsar, GenresIsar, QWhereClause> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GenresIsarQueryFilter
    on QueryBuilder<GenresIsar, GenresIsar, QFilterCondition> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GenresIsarQueryObject
    on QueryBuilder<GenresIsar, GenresIsar, QFilterCondition> {}

extension GenresIsarQueryLinks
    on QueryBuilder<GenresIsar, GenresIsar, QFilterCondition> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> genreList(
      FilterQuery<GenresIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'genreList');
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genreList', length, true, length, true);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genreList', 0, true, 0, true);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genreList', 0, false, 999999, true);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genreList', 0, true, length, include);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'genreList', length, include, 999999, true);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'genreList', lower, includeLower, upper, includeUpper);
    });
  }
}

extension GenresIsarQuerySortBy
    on QueryBuilder<GenresIsar, GenresIsar, QSortBy> {}

extension GenresIsarQuerySortThenBy
    on QueryBuilder<GenresIsar, GenresIsar, QSortThenBy> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension GenresIsarQueryWhereDistinct
    on QueryBuilder<GenresIsar, GenresIsar, QDistinct> {}

extension GenresIsarQueryProperty
    on QueryBuilder<GenresIsar, GenresIsar, QQueryProperty> {
  QueryBuilder<GenresIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
