# KabustationClient::WalletMarginSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **margin_account_wallet** | **Float** | 信用新規可能額 | [optional] |
| **depositkeep_rate** | **Float** | 保証金維持率&lt;br&gt;※銘柄指定の場合のみ&lt;br&gt;※銘柄が指定されなかった場合、0.0を返す。 | [optional] |
| **consignment_deposit_rate** | **Float** | 委託保証金率&lt;br&gt;※銘柄指定の場合のみ。&lt;br&gt;※銘柄が指定されなかった場合、Noneを返す。 | [optional] |
| **cash_of_consignment_deposit_rate** | **Float** | 現金委託保証金率&lt;br&gt;※銘柄指定の場合のみ。&lt;br&gt;※銘柄が指定されなかった場合、Noneを返す。 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::WalletMarginSuccess.new(
  margin_account_wallet: null,
  depositkeep_rate: null,
  consignment_deposit_rate: null,
  cash_of_consignment_deposit_rate: null
)
```

