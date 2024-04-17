# KabustationClient::TokenSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result_code** | **Integer** | 結果コード&lt;br&gt;0が成功。それ以外はエラーコード。 | [optional] |
| **token** | **String** | APIトークン | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::TokenSuccess.new(
  result_code: 0,
  token: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
)
```

