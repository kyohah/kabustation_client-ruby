# KabustationClient::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | エラーコード | [optional] |
| **message** | **String** | [エラーメッセージ](../ptal/error.html#message) | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::ErrorResponse.new(
  code: 4001001,
  message: 内部エラー
)
```

