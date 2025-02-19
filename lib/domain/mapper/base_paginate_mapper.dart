import 'package:watch_me/domain/mapper/date_mapper.dart';

import '../../data/entities/remote/base_paginate_response.dart';
import '../entities/base_paginate.dart';

// extension BasePaginateMapper<T, R> on BasePaginateResponse<T> {
//   BasePaginate<R> toBasePaginate(R Function(T?) transformResults) {
//     return BasePaginate<R>(
//       dates: dates?.toDateEntity(),
//       page: page,
//       totalResults: totalResults,
//       totalPages: totalPages,
//       results: transformResults(results),
//     );
//   }
// }