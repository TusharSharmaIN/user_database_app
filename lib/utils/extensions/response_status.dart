

import '../../core/api/api_constants/response_status.dart';

extension ResponseStatus on RESPONSE_STATUS {
  bool isIdle() {
    return this == RESPONSE_STATUS.idle;
  }

  bool isLoading() {
    return (this == RESPONSE_STATUS.loading);
  }

  bool isCompleted() {
    return this == RESPONSE_STATUS.completed;
  }

  bool isError() {
    return this == RESPONSE_STATUS.error;
  }
}
