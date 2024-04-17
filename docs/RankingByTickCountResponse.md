# KabustationClient::RankingByTickCountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | 種別 | [optional] |
| **exchange_division** | **String** | 市場 | [optional] |
| **ranking** | [**Array&lt;RankingByTickCountResponseRankingInner&gt;**](RankingByTickCountResponseRankingInner.md) | ランキング | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RankingByTickCountResponse.new(
  type: null,
  exchange_division: null,
  ranking: null
)
```

