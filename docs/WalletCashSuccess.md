# KabustationClient::WalletCashSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_account_wallet** | **Float** | 現物買付可能額&lt;br&gt; ※auマネーコネクトが有効の場合、auじぶん銀行の残高を含めた合計可能額を表示する&lt;br&gt; ※auマネーコネクトが無効の場合、auカブコム証券の可能額のみを表示する | [optional] |
| **au_kc_stock_account_wallet** | **Float** | うち、auカブコム証券可能額 | [optional] |
| **au_jbn_stock_account_wallet** | **Float** | うち、auじぶん銀行残高&lt;br&gt;※auマネーコネクトが無効の場合、「0」を表示する | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::WalletCashSuccess.new(
  stock_account_wallet: null,
  au_kc_stock_account_wallet: null,
  au_jbn_stock_account_wallet: null
)
```

