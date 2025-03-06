// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNowPlayingIsarCollection on Isar {
  IsarCollection<NowPlayingIsar> get nowPlayingIsars => this.collection();
}

const NowPlayingIsarSchema = CollectionSchema(
  name: r'NowPlayingIsar',
  id: -122305720723884176,
  properties: {
    r'page': PropertySchema(
      id: 0,
      name: r'page',
      type: IsarType.long,
    ),
    r'totalPage': PropertySchema(
      id: 1,
      name: r'totalPage',
      type: IsarType.long,
    )
  },
  estimateSize: _nowPlayingIsarEstimateSize,
  serialize: _nowPlayingIsarSerialize,
  deserialize: _nowPlayingIsarDeserialize,
  deserializeProp: _nowPlayingIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: 1294167487521933351,
      name: r'movies',
      target: r'MovieIsar',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _nowPlayingIsarGetId,
  getLinks: _nowPlayingIsarGetLinks,
  attach: _nowPlayingIsarAttach,
  version: '3.1.0+1',
);

int _nowPlayingIsarEstimateSize(
  NowPlayingIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nowPlayingIsarSerialize(
  NowPlayingIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.page);
  writer.writeLong(offsets[1], object.totalPage);
}

NowPlayingIsar _nowPlayingIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NowPlayingIsar(
    page: reader.readLongOrNull(offsets[0]),
    totalPage: reader.readLongOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _nowPlayingIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _nowPlayingIsarGetId(NowPlayingIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _nowPlayingIsarGetLinks(NowPlayingIsar object) {
  return [object.movies];
}

void _nowPlayingIsarAttach(
    IsarCollection<dynamic> col, Id id, NowPlayingIsar object) {
  object.id = id;
  object.movies.attach(col, col.isar.collection<MovieIsar>(), r'movies', id);
}

extension NowPlayingIsarQueryWhereSort
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QWhere> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NowPlayingIsarQueryWhere
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QWhereClause> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterWhereClause> idBetween(
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

extension NowPlayingIsarQueryFilter
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QFilterCondition> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      pageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      pageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      pageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      pageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      pageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      pageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'page',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      totalPageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPage',
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      totalPageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPage',
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      totalPageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPage',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      totalPageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPage',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      totalPageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPage',
        value: value,
      ));
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      totalPageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NowPlayingIsarQueryObject
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QFilterCondition> {}

extension NowPlayingIsarQueryLinks
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QFilterCondition> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition> movies(
      FilterQuery<MovieIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterFilterCondition>
      moviesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }
}

extension NowPlayingIsarQuerySortBy
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QSortBy> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> sortByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> sortByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> sortByTotalPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.asc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy>
      sortByTotalPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.desc);
    });
  }
}

extension NowPlayingIsarQuerySortThenBy
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QSortThenBy> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> thenByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> thenByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy> thenByTotalPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.asc);
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QAfterSortBy>
      thenByTotalPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.desc);
    });
  }
}

extension NowPlayingIsarQueryWhereDistinct
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QDistinct> {
  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QDistinct> distinctByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'page');
    });
  }

  QueryBuilder<NowPlayingIsar, NowPlayingIsar, QDistinct>
      distinctByTotalPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPage');
    });
  }
}

extension NowPlayingIsarQueryProperty
    on QueryBuilder<NowPlayingIsar, NowPlayingIsar, QQueryProperty> {
  QueryBuilder<NowPlayingIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NowPlayingIsar, int?, QQueryOperations> pageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'page');
    });
  }

  QueryBuilder<NowPlayingIsar, int?, QQueryOperations> totalPageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPage');
    });
  }
}
