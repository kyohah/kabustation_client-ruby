# KabustationClient::RankingGet200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'kabustation_client'

KabustationClient::RankingGet200Response.openapi_one_of
# =>
# [
#   :'RankingByCategoryResponse',
#   :'RankingByMarginResponse',
#   :'RankingByTickCountResponse',
#   :'RankingByTradeValueResponse',
#   :'RankingByTradeVolumeResponse',
#   :'RankingDefaultResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'kabustation_client'

KabustationClient::RankingGet200Response.build(data)
# => #<RankingByCategoryResponse:0x00007fdd4aab02a0>

KabustationClient::RankingGet200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RankingByCategoryResponse`
- `RankingByMarginResponse`
- `RankingByTickCountResponse`
- `RankingByTradeValueResponse`
- `RankingByTradeVolumeResponse`
- `RankingDefaultResponse`
- `nil` (if no type matches)

