# KabustationClient::RequestCancelOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | 注文番号&lt;br&gt;sendorderのレスポンスで受け取るOrderID。 |  |
| **password** | **String** | 注文パスワード |  |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RequestCancelOrder.new(
  order_id: 20200529A01N06848002,
  password: xxxxxx
)
```

