# KabustationClient::RequestSendOrderDerivFutureReverseLimitOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trigger_price** | **Float** | トリガ価格&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※数字以外が設定された場合はエラーになります。 |  |
| **under_over** | **Integer** | 以上／以下&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※1、2以外が指定された場合はエラーになります。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;以下&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;2&lt;/td&gt;       &lt;td&gt;以上&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **after_hit_order_type** | **Integer** | ヒット後執行条件&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※日通の注文で2以外が指定された場合はエラーになります。&lt;br&gt; ※日中、夜間の注文で1、2以外が指定された場合はエラーになります。&lt;br&gt; ※逆指値（成行）で有効期間条件(TimeInForce)にFAK以外を指定された場合はエラーになります。&lt;br&gt; ※逆指値（指値）で有効期間条件(TimeInForce)にFAS以外を指定された場合はエラーになります。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;成行&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;2&lt;/td&gt;       &lt;td&gt;指値&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **after_hit_price** | **Float** | ヒット後注文価格&lt;br&gt; ※未設定の場合はエラーになります。&lt;br&gt; ※数字以外が設定された場合はエラーになります。&lt;br&gt;&lt;br&gt; ヒット後執行条件に従い、下記のようにヒット後注文価格を設定してください。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;ヒット後執行条件&lt;/th&gt;           &lt;th&gt;設定価格&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;成行&lt;/td&gt;       &lt;td&gt;0&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;指値&lt;/td&gt;       &lt;td&gt;指値の単価&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RequestSendOrderDerivFutureReverseLimitOrder.new(
  trigger_price: null,
  under_over: null,
  after_hit_order_type: null,
  after_hit_price: null
)
```

