# KabustationClient::RequestSendOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | 注文パスワード |  |
| **symbol** | **String** | 銘柄コード |  |
| **exchange** | **Integer** | 市場コード &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;東証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **security_type** | **Integer** | 商品種別 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;株式&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **side** | **String** | 売買区分 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;売&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;買&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **cash_margin** | **Integer** | 信用区分 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;現物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;新規&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;返済&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **margin_trade_type** | **Integer** | 信用取引区分&lt;br&gt;※現物取引の場合は指定不要。&lt;br&gt;※信用取引の場合、必須。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;制度信用&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;一般信用（長期）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;一般信用（デイトレ）&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **margin_premium_unit** | **Float** | １株あたりのプレミアム料(円)&lt;br&gt;  ※プレミアム料の刻値は、プレミアム料取得APIのレスポンスにある\&quot;TickMarginPremium\&quot;にてご確認ください。&lt;br&gt; ※入札受付中(19:30～20:30)プレミアム料入札可能銘柄の場合、「MarginPremiumUnit」は必須となります。&lt;br&gt; ※入札受付中(19:30～20:30)のプレミアム料入札可能銘柄以外の場合は、「MarginPremiumUnit」の記載は無視されます。&lt;br&gt; ※入札受付中以外の時間帯では、「MarginPremiumUnit」の記載は無視されます。 | [optional] |
| **deliv_type** | **Integer** | 受渡区分&lt;br&gt;※現物買は指定必須。&lt;br&gt;※現物売は「0(指定なし)」を設定&lt;br&gt;※信用新規は「0(指定なし)」を設定&lt;br&gt;※信用返済は指定必須 &lt;br&gt;※auマネーコネクトが有効の場合にのみ、「3」を設定可能 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0&lt;/td&gt;           &lt;td&gt;指定なし&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;お預り金&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;auマネーコネクト&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **fund_type** | **String** | 資産区分（預り区分）&lt;br&gt;※現物買は、指定必須。&lt;br&gt;※現物売は、「&#39;  &#39;」 半角スペース2つを指定必須。&lt;br&gt;※信用新規と信用返済は、「11」を指定するか、または指定なしでも可。指定しない場合は「11」が自動的にセットされます。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;(半角スペース2つ)&lt;/td&gt;           &lt;td&gt;現物売の場合&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;02&lt;/td&gt;           &lt;td&gt;保護&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;AA&lt;/td&gt;           &lt;td&gt;信用代用&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;11&lt;/td&gt;           &lt;td&gt;信用取引&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **account_type** | **Integer** | 口座種別 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;一般&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;特定&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;12&lt;/td&gt;           &lt;td&gt;法人&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **qty** | **Integer** | 注文数量&lt;br&gt;※信用一括返済の場合、返済したい合計数量を入力してください。 |  |
| **close_position_order** | **Integer** | 決済順序&lt;br&gt;※信用返済の場合、必須。&lt;br&gt;※ClosePositionOrderとClosePositionsはどちらか一方のみ指定可能。&lt;br&gt;※ClosePositionOrderとClosePositionsを両方指定した場合、エラー。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0&lt;/td&gt;           &lt;td&gt;日付（古い順）、損益（高い順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;日付（古い順）、損益（低い順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日付（新しい順）、損益（高い順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;日付（新しい順）、損益（低い順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;損益（高い順）、日付（古い順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;損益（高い順）、日付（新しい順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;損益（低い順）、日付（古い順）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;7&lt;/td&gt;           &lt;td&gt;損益（低い順）、日付（新しい順）&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **close_positions** | [**Array&lt;Positions&gt;**](Positions.md) | 返済建玉指定&lt;br&gt;※信用返済の場合、必須。&lt;br&gt;※ClosePositionOrderとClosePositionsはどちらか一方のみ指定可能。&lt;br&gt;※ClosePositionOrderとClosePositionsを両方指定した場合、エラー。&lt;br&gt;※信用一括返済の場合、各建玉IDと返済したい数量を入力してください。&lt;br&gt;※建玉IDは「E」から始まる番号です。 | [optional] |
| **front_order_type** | **Integer** | 執行条件 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;           &lt;th&gt;”Price\&quot;の指定&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;10&lt;/td&gt;           &lt;td&gt;成行&lt;/td&gt;           &lt;td&gt;0&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;13&lt;/td&gt;           &lt;td&gt;寄成（前場）&lt;/td&gt;           &lt;td&gt;0&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;14&lt;/td&gt;           &lt;td&gt;寄成（後場）&lt;/td&gt;           &lt;td&gt;0&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;15&lt;/td&gt;           &lt;td&gt;引成（前場）&lt;/td&gt;           &lt;td&gt;0&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;16&lt;/td&gt;           &lt;td&gt;引成（後場）&lt;/td&gt;           &lt;td&gt;0&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;17&lt;/td&gt;           &lt;td&gt;IOC成行&lt;/td&gt;           &lt;td&gt;0&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;20&lt;/td&gt;           &lt;td&gt;指値&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;21&lt;/td&gt;           &lt;td&gt;寄指（前場）&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;22&lt;/td&gt;           &lt;td&gt;寄指（後場）&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;引指（前場）&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;引指（後場）&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;25&lt;/td&gt;           &lt;td&gt;不成（前場）&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;26&lt;/td&gt;           &lt;td&gt;不成（後場）&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;27&lt;/td&gt;           &lt;td&gt;IOC指値&lt;/td&gt;           &lt;td&gt;発注したい金額&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;30&lt;/td&gt;           &lt;td&gt;逆指値&lt;/td&gt;           &lt;td&gt;指定なし&lt;br&gt;※AfterHitPriceで指定ください&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **price** | **Float** | 注文価格&lt;br&gt;※FrontOrderTypeで成行を指定した場合、0を指定する。&lt;br&gt;※詳細について、”FrontOrderType”をご確認ください。 |  |
| **expire_day** | **Integer** | 注文有効期限&lt;br&gt; yyyyMMdd形式。&lt;br&gt; 「0」を指定すると、kabuステーション上の発注画面の「本日」に対応する日付として扱います。&lt;br&gt; 「本日」は直近の注文可能日となり、以下のように設定されます。&lt;br&gt; 引けまでの間 : 当日&lt;br&gt; 引け後       : 翌取引所営業日&lt;br&gt; 休前日       : 休日明けの取引所営業日&lt;br&gt; ※ 日替わりはkabuステーションが日付変更通知を受信したタイミングです。 |  |
| **reverse_limit_order** | [**RequestSendOrderReverseLimitOrder**](RequestSendOrderReverseLimitOrder.md) |  | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RequestSendOrder.new(
  password: null,
  symbol: null,
  exchange: null,
  security_type: null,
  side: null,
  cash_margin: null,
  margin_trade_type: null,
  margin_premium_unit: null,
  deliv_type: null,
  fund_type: null,
  account_type: null,
  qty: null,
  close_position_order: null,
  close_positions: null,
  front_order_type: null,
  price: null,
  expire_day: null,
  reverse_limit_order: null
)
```
