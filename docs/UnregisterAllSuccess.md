# KabustationClient::UnregisterAllSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regist_list** | **Object** | 現在登録されている銘柄のリスト&lt;br&gt;※銘柄登録解除が正常に行われれば、空リストを返します。&lt;br&gt;　登録解除でエラー等が発生した場合、現在登録されている銘柄のリストを返します | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::UnregisterAllSuccess.new(
  regist_list: []
)
```

