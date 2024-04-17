# KabustationClient::RankingByCategoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | 種別&lt;br&gt; ※業種別値上がり率、業種別値下がり率の場合、市場は「null」になります | [optional] |
| **exchange_division** | **String** | 市場 | [optional] |
| **ranking** | [**Array&lt;RankingByCategoryResponseRankingInner&gt;**](RankingByCategoryResponseRankingInner.md) | ランキング | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RankingByCategoryResponse.new(
  type: null,
  exchange_division: null,
  ranking: null
)
```

