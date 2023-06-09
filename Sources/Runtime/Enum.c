#include "Types.h"
#include "Visibility.h"

SWIFT_RUNTIME_ABI
void swift_initEnumMetadataSinglePayload(EnumMetadata *self,
                                         EnumLayoutFlags flags,
                                         const TypeLayout *layout,
                                         unsigned empty_cases) {}

SWIFT_RUNTIME_ABI
unsigned swift_getEnumTagSinglePayloadGeneric(const OpaqueValue *value,
                                              unsigned empty_cases,
                                              const Metadata *type) {
  return 0;
}

SWIFT_RUNTIME_ABI
void swift_storeEnumTagSinglePayloadGeneric(OpaqueValue *value,
                                            unsigned store_case,
                                            unsigned empty_cases,
                                            const Metadata *payload,
                                            StoreExtraInhabitantTagFn *store) {}
