# KabustationClient::OrderSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **Integer** | 結果コード&lt;br&gt;0が成功。それ以外はエラーコード。 | [optional] |
| **order_id** | **String** | 受付注文番号 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::OrderSuccess.new(
  result: 0,
  order_id: 20200529A01N06848002
)
```

