# KabustationClient::WalletOptionSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option_buy_trade_limit** | **Float** | 買新規建玉可能額 | [optional] |
| **option_sell_trade_limit** | **Float** | 売新規建玉可能額 | [optional] |
| **margin_requirement** | **Float** | 必要証拠金額&lt;br&gt;※銘柄指定の場合のみ。&lt;br&gt;※銘柄が指定されなかった場合、空を返す。 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::WalletOptionSuccess.new(
  option_buy_trade_limit: null,
  option_sell_trade_limit: null,
  margin_requirement: null
)
```

