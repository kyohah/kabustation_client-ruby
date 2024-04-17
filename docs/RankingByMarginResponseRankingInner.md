# KabustationClient::RankingByMarginResponseRankingInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_false** | **Integer** | 順位&lt;br&gt;※ランキング内で同じ順位が返却される場合があります（10位が2件など） | [optional] |
| **symbol** | **String** | 銘柄コード | [optional] |
| **symbol_name** | **String** | 銘柄名称 | [optional] |
| **sell_rapid_payment_percentage** | **Float** | 売残（千株） | [optional] |
| **sell_last_week_ratio** | **Float** | 売残前週比 | [optional] |
| **buy_rapid_payment_percentage** | **Float** | 買残（千株） | [optional] |
| **buy_last_week_ratio** | **Float** | 買残前週比 | [optional] |
| **ratio** | **Float** | 倍率 | [optional] |
| **exchange_name** | **String** | 市場名 | [optional] |
| **category_name** | **String** | 業種名 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RankingByMarginResponseRankingInner.new(
  _false: null,
  symbol: null,
  symbol_name: null,
  sell_rapid_payment_percentage: null,
  sell_last_week_ratio: null,
  buy_rapid_payment_percentage: null,
  buy_last_week_ratio: null,
  ratio: null,
  exchange_name: null,
  category_name: null
)
```

