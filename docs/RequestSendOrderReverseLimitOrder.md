# KabustationClient::RequestSendOrderReverseLimitOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trigger_sec** | **Integer** | トリガ銘柄&lt;br&gt; ※未設定の場合はエラーになります。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;発注銘柄&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;2&lt;/td&gt;       &lt;td&gt;NK225指数&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;3&lt;/td&gt;       &lt;td&gt;TOPIX指数&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **trigger_price** | **Float** | トリガ価格&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※数字以外が設定された場合はエラーになります。 |  |
| **under_over** | **Integer** | 以上／以下&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※1、2以外が指定された場合はエラーになります。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;以下&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;2&lt;/td&gt;       &lt;td&gt;以上&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **after_hit_order_type** | **Integer** | ヒット後執行条件&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※1、2、3以外が指定された場合はエラーになります。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;成行&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;2&lt;/td&gt;       &lt;td&gt;指値&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;3&lt;/td&gt;       &lt;td&gt;不成&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **after_hit_price** | **Float** | ヒット後注文価格&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※数字以外が設定された場合はエラーになります。&lt;br&gt;&lt;br&gt; ヒット後執行条件に従い、下記のようにヒット後注文価格を設定してください。  &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;ヒット後執行条件&lt;/th&gt;           &lt;th&gt;設定価格&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;成行&lt;/td&gt;       &lt;td&gt;0&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;指値&lt;/td&gt;       &lt;td&gt;指値の単価&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;不成&lt;/td&gt;       &lt;td&gt;不成の単価&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RequestSendOrderReverseLimitOrder.new(
  trigger_sec: null,
  trigger_price: null,
  under_over: null,
  after_hit_order_type: null,
  after_hit_price: null
)
```

