# KabustationClient::BoardSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード | [optional] |
| **symbol_name** | **String** | 銘柄名 | [optional] |
| **exchange** | **Integer** | 市場コード&lt;br&gt;※株式・先物・オプション銘柄の場合のみ &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;東証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日通し&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;日中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;夜間&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **exchange_name** | **String** | 市場名称&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **current_price** | **Float** | 現値 | [optional] |
| **current_price_time** | **Time** | 現値時刻 | [optional] |
| **current_price_change_status** | **String** | 現値前値比較 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0000&lt;/td&gt;           &lt;td&gt;事象なし&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0056&lt;/td&gt;           &lt;td&gt;変わらず&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0057&lt;/td&gt;           &lt;td&gt;UP&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0058&lt;/td&gt;           &lt;td&gt;DOWN&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0059&lt;/td&gt;           &lt;td&gt;中断板寄り後の初値&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0060&lt;/td&gt;           &lt;td&gt;ザラバ引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0061&lt;/td&gt;           &lt;td&gt;板寄り引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0062&lt;/td&gt;           &lt;td&gt;中断引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0063&lt;/td&gt;           &lt;td&gt;ダウン引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0064&lt;/td&gt;           &lt;td&gt;逆転終値&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0066&lt;/td&gt;           &lt;td&gt;特別気配引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0067&lt;/td&gt;           &lt;td&gt;一時留保引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0068&lt;/td&gt;           &lt;td&gt;売買停止引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0069&lt;/td&gt;           &lt;td&gt;サーキットブレーカ引け&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0431&lt;/td&gt;           &lt;td&gt;ダイナミックサーキットブレーカ引け&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **current_price_status** | **Integer** | 現値ステータス &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;現値&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;不連続歩み&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;板寄せ&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;システム障害&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;中断&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;売買停止&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;7&lt;/td&gt;           &lt;td&gt;売買停止・システム停止解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;8&lt;/td&gt;           &lt;td&gt;終値&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;9&lt;/td&gt;           &lt;td&gt;システム停止&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;10&lt;/td&gt;           &lt;td&gt;概算値&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;11&lt;/td&gt;           &lt;td&gt;参考値&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;12&lt;/td&gt;           &lt;td&gt;サーキットブレイク実施中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;13&lt;/td&gt;           &lt;td&gt;システム障害解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;14&lt;/td&gt;           &lt;td&gt;サーキットブレイク解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;15&lt;/td&gt;           &lt;td&gt;中断解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;16&lt;/td&gt;           &lt;td&gt;一時留保中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;17&lt;/td&gt;           &lt;td&gt;一時留保解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;18&lt;/td&gt;           &lt;td&gt;ファイル障害&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;19&lt;/td&gt;           &lt;td&gt;ファイル障害解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;20&lt;/td&gt;           &lt;td&gt;Spread/Strategy&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;21&lt;/td&gt;           &lt;td&gt;ダイナミックサーキットブレイク発動&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;22&lt;/td&gt;           &lt;td&gt;ダイナミックサーキットブレイク解除&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;板寄せ約定&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **calc_price** | **Float** | 計算用現値 | [optional] |
| **previous_close** | **Float** | 前日終値 | [optional] |
| **previous_close_time** | **Time** | 前日終値日付 | [optional] |
| **change_previous_close** | **Float** | 前日比 | [optional] |
| **change_previous_close_per** | **Float** | 騰落率 | [optional] |
| **opening_price** | **Float** | 始値 | [optional] |
| **opening_price_time** | **Time** | 始値時刻 | [optional] |
| **high_price** | **Float** | 高値 | [optional] |
| **high_price_time** | **Time** | 高値時刻 | [optional] |
| **low_price** | **Float** | 安値 | [optional] |
| **low_price_time** | **Time** | 安値時刻 | [optional] |
| **trading_volume** | **Float** | 売買高&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **trading_volume_time** | **Time** | 売買高時刻&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **vwap** | **Float** | 売買高加重平均価格（VWAP）&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **trading_value** | **Float** | 売買代金&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **bid_qty** | **Float** | 最良売気配数量 ※①&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **bid_price** | **Float** | 最良売気配値段 ※①&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **bid_time** | **Time** | 最良売気配時刻 ※①&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **bid_sign** | **String** | 最良売気配フラグ ※①&lt;br&gt;※株式・先物・オプション銘柄の場合のみ &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0000&lt;/td&gt;           &lt;td&gt;事象なし&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0101&lt;/td&gt;           &lt;td&gt;一般気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0102&lt;/td&gt;           &lt;td&gt;特別気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0103&lt;/td&gt;           &lt;td&gt;注意気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0107&lt;/td&gt;           &lt;td&gt;寄前気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0108&lt;/td&gt;           &lt;td&gt;停止前特別気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0109&lt;/td&gt;           &lt;td&gt;引け後気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0116&lt;/td&gt;           &lt;td&gt;寄前気配約定成立ポイントなし&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0117&lt;/td&gt;           &lt;td&gt;寄前気配約定成立ポイントあり&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0118&lt;/td&gt;           &lt;td&gt;連続約定気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0119&lt;/td&gt;           &lt;td&gt;停止前の連続約定気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0120&lt;/td&gt;           &lt;td&gt;買い上がり売り下がり中&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **market_order_sell_qty** | **Float** | 売成行数量&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **sell1** | [**BoardSuccessSell1**](BoardSuccessSell1.md) |  | [optional] |
| **sell2** | [**BoardSuccessSell2**](BoardSuccessSell2.md) |  | [optional] |
| **sell3** | [**BoardSuccessSell3**](BoardSuccessSell3.md) |  | [optional] |
| **sell4** | [**BoardSuccessSell4**](BoardSuccessSell4.md) |  | [optional] |
| **sell5** | [**BoardSuccessSell5**](BoardSuccessSell5.md) |  | [optional] |
| **sell6** | [**BoardSuccessSell6**](BoardSuccessSell6.md) |  | [optional] |
| **sell7** | [**BoardSuccessSell7**](BoardSuccessSell7.md) |  | [optional] |
| **sell8** | [**BoardSuccessSell8**](BoardSuccessSell8.md) |  | [optional] |
| **sell9** | [**BoardSuccessSell9**](BoardSuccessSell9.md) |  | [optional] |
| **sell10** | [**BoardSuccessSell10**](BoardSuccessSell10.md) |  | [optional] |
| **ask_qty** | **Float** | 最良買気配数量 ※①&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **ask_price** | **Float** | 最良買気配値段 ※①&lt;br&gt;※株式・先物・オプション銘柄の場合のみ | [optional] |
| **ask_time** | **Time** | 最良買気配時刻 ※①&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **ask_sign** | **String** | 最良買気配フラグ ※①&lt;br&gt;※株式・先物・オプション銘柄の場合のみ &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0000&lt;/td&gt;           &lt;td&gt;事象なし&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0101&lt;/td&gt;           &lt;td&gt;一般気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0102&lt;/td&gt;           &lt;td&gt;特別気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0103&lt;/td&gt;           &lt;td&gt;注意気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0107&lt;/td&gt;           &lt;td&gt;寄前気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0108&lt;/td&gt;           &lt;td&gt;停止前特別気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0109&lt;/td&gt;           &lt;td&gt;引け後気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0116&lt;/td&gt;           &lt;td&gt;寄前気配約定成立ポイントなし&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0117&lt;/td&gt;           &lt;td&gt;寄前気配約定成立ポイントあり&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0118&lt;/td&gt;           &lt;td&gt;連続約定気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0119&lt;/td&gt;           &lt;td&gt;停止前の連続約定気配&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;0120&lt;/td&gt;           &lt;td&gt;買い上がり売り下がり中&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **market_order_buy_qty** | **Float** | 買成行数量&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **buy1** | [**BoardSuccessBuy1**](BoardSuccessBuy1.md) |  | [optional] |
| **buy2** | [**BoardSuccessBuy2**](BoardSuccessBuy2.md) |  | [optional] |
| **buy3** | [**BoardSuccessBuy3**](BoardSuccessBuy3.md) |  | [optional] |
| **buy4** | [**BoardSuccessBuy4**](BoardSuccessBuy4.md) |  | [optional] |
| **buy5** | [**BoardSuccessBuy5**](BoardSuccessBuy5.md) |  | [optional] |
| **buy6** | [**BoardSuccessBuy6**](BoardSuccessBuy6.md) |  | [optional] |
| **buy7** | [**BoardSuccessBuy7**](BoardSuccessBuy7.md) |  | [optional] |
| **buy8** | [**BoardSuccessBuy8**](BoardSuccessBuy8.md) |  | [optional] |
| **buy9** | [**BoardSuccessBuy9**](BoardSuccessBuy9.md) |  | [optional] |
| **buy10** | [**BoardSuccessBuy10**](BoardSuccessBuy10.md) |  | [optional] |
| **over_sell_qty** | **Float** | OVER気配数量&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **under_buy_qty** | **Float** | UNDER気配数量&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **total_market_value** | **Float** | 時価総額&lt;br&gt;※株式銘柄の場合のみ | [optional] |
| **clearing_price** | **Float** | 清算値&lt;br&gt;※先物銘柄の場合のみ | [optional] |
| **iv** | **Float** | インプライド・ボラティリティ&lt;br&gt;※オプション銘柄かつ日通しの場合のみ | [optional] |
| **gamma** | **Float** | ガンマ&lt;br&gt;※オプション銘柄かつ日通しの場合のみ | [optional] |
| **theta** | **Float** | セータ&lt;br&gt;※オプション銘柄かつ日通しの場合のみ | [optional] |
| **vega** | **Float** | ベガ&lt;br&gt;※オプション銘柄かつ日通しの場合のみ | [optional] |
| **delta** | **Float** | デルタ&lt;br&gt;※オプション銘柄かつ日通しの場合のみ | [optional] |
| **security_type** | **Integer** | 銘柄種別 &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;定義値&lt;/th&gt;       &lt;th&gt;説明&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;0&lt;/td&gt;       &lt;td&gt;指数&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;現物&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;101&lt;/td&gt;       &lt;td&gt;日経225先物&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;103&lt;/td&gt;       &lt;td&gt;日経225OP&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;107&lt;/td&gt;       &lt;td&gt;TOPIX先物&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;121&lt;/td&gt;       &lt;td&gt;JPX400先物&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;144&lt;/td&gt;       &lt;td&gt;NYダウ&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;145&lt;/td&gt;       &lt;td&gt;日経平均VI&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;154&lt;/td&gt;       &lt;td&gt;グロース250先物&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;155&lt;/td&gt;       &lt;td&gt;TOPIX_REIT&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;171&lt;/td&gt;       &lt;td&gt;TOPIX CORE30&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;901&lt;/td&gt;       &lt;td&gt;日経平均225ミニ先物&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;907&lt;/td&gt;       &lt;td&gt;TOPIXミニ先物&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::BoardSuccess.new(
  symbol: null,
  symbol_name: null,
  exchange: 1,
  exchange_name: null,
  current_price: null,
  current_price_time: null,
  current_price_change_status: null,
  current_price_status: null,
  calc_price: null,
  previous_close: null,
  previous_close_time: null,
  change_previous_close: null,
  change_previous_close_per: null,
  opening_price: null,
  opening_price_time: null,
  high_price: null,
  high_price_time: null,
  low_price: null,
  low_price_time: null,
  trading_volume: null,
  trading_volume_time: null,
  vwap: null,
  trading_value: null,
  bid_qty: null,
  bid_price: null,
  bid_time: null,
  bid_sign: null,
  market_order_sell_qty: null,
  sell1: null,
  sell2: null,
  sell3: null,
  sell4: null,
  sell5: null,
  sell6: null,
  sell7: null,
  sell8: null,
  sell9: null,
  sell10: null,
  ask_qty: null,
  ask_price: null,
  ask_time: null,
  ask_sign: null,
  market_order_buy_qty: null,
  buy1: null,
  buy2: null,
  buy3: null,
  buy4: null,
  buy5: null,
  buy6: null,
  buy7: null,
  buy8: null,
  buy9: null,
  buy10: null,
  over_sell_qty: null,
  under_buy_qty: null,
  total_market_value: null,
  clearing_price: null,
  iv: null,
  gamma: null,
  theta: null,
  vega: null,
  delta: null,
  security_type: null
)
```

