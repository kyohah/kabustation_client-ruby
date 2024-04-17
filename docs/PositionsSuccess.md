# KabustationClient::PositionsSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_id** | **String** | 約定番号&lt;br&gt;※現物取引では、nullが返ります。 | [optional] |
| **account_type** | **Integer** | 口座種別 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;一般&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;特定&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;12&lt;/td&gt;           &lt;td&gt;法人&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **symbol** | **String** | 銘柄コード | [optional] |
| **symbol_name** | **String** | 銘柄名 | [optional] |
| **exchange** | **Integer** | 市場コード &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;東証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日通し&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;日中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;夜間&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **exchange_name** | **String** | 市場名 | [optional] |
| **security_type** | **Integer** | 銘柄種別&lt;br&gt;※先物・オプション銘柄の場合のみ | [optional] |
| **execution_day** | **Integer** | 約定日（建玉日）&lt;br&gt;※信用・先物・オプションの場合のみ&lt;br&gt;※現物取引では、nullが返ります。 | [optional] |
| **price** | **Float** | 値段 | [optional] |
| **leaves_qty** | **Float** | 残数量（保有数量） | [optional] |
| **hold_qty** | **Float** | 拘束数量（返済のために拘束されている数量） | [optional] |
| **side** | **String** | 売買区分 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;売&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;買&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **expenses** | **Float** | 諸経費&lt;br&gt;※信用・先物・オプションの場合のみ | [optional] |
| **commission** | **Float** | 手数料&lt;br&gt;※信用・先物・オプションの場合のみ | [optional] |
| **commission_tax** | **Float** | 手数料消費税&lt;br&gt;※信用・先物・オプションの場合のみ | [optional] |
| **expire_day** | **Integer** | 返済期日&lt;br&gt;※信用・先物・オプションの場合のみ | [optional] |
| **margin_trade_type** | **Integer** | 信用取引区分&lt;br&gt;※信用の場合のみ &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;制度信用&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;一般信用（長期）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;一般信用（デイトレ）&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **current_price** | **Float** | 現在値&lt;br&gt;追加情報出力フラグ：falseの場合、null | [optional] |
| **valuation** | **Float** | 評価金額&lt;br&gt;追加情報出力フラグ：falseの場合、null | [optional] |
| **profit_loss** | **Float** | 評価損益額&lt;br&gt;追加情報出力フラグ：falseの場合、null | [optional] |
| **profit_loss_rate** | **Float** | 評価損益率&lt;br&gt;追加情報出力フラグ：falseの場合、null | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::PositionsSuccess.new(
  execution_id: null,
  account_type: null,
  symbol: null,
  symbol_name: null,
  exchange: null,
  exchange_name: null,
  security_type: null,
  execution_day: null,
  price: null,
  leaves_qty: null,
  hold_qty: null,
  side: null,
  expenses: null,
  commission: null,
  commission_tax: null,
  expire_day: null,
  margin_trade_type: null,
  current_price: null,
  valuation: null,
  profit_loss: null,
  profit_loss_rate: null
)
```

