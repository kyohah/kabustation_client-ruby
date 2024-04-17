# KabustationClient::WalletFutureSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **future_trade_limit** | **Float** | 新規建玉可能額 | [optional] |
| **margin_requirement** | **Float** | 買い必要証拠金額&lt;br&gt;※銘柄指定の場合のみ。&lt;br&gt;※銘柄が指定されなかった場合、空を返す。 | [optional] |
| **margin_requirement_sell** | **Float** | 売り必要証拠金額&lt;br&gt;※銘柄指定の場合のみ。&lt;br&gt;※銘柄が指定されなかった場合、空を返す。 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::WalletFutureSuccess.new(
  future_trade_limit: null,
  margin_requirement: null,
  margin_requirement_sell: null
)
```

