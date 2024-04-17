# KabustationClient::RegistSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regist_list** | [**Array&lt;RequestRegisterSymbolsInner&gt;**](RequestRegisterSymbolsInner.md) | 現在登録されている銘柄のリスト | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RegistSuccess.new(
  regist_list: null
)
```

