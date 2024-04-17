# KabustationClient::MarginPremiumResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード | [optional] |
| **general_margin** | [**MarginPremiumResponseGeneralMargin**](MarginPremiumResponseGeneralMargin.md) |  | [optional] |
| **day_trade** | [**MarginPremiumResponseDayTrade**](MarginPremiumResponseDayTrade.md) |  | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::MarginPremiumResponse.new(
  symbol: null,
  general_margin: null,
  day_trade: null
)
```

