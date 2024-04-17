# KabustationClient::ApiSoftLimitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock** | **Float** | 現物のワンショット上限&lt;br&gt;※単位は万円 | [optional] |
| **margin** | **Float** | 信用のワンショット上限&lt;br&gt;※単位は万円 | [optional] |
| **future** | **Float** | 先物のワンショット上限&lt;br&gt;※単位は枚 | [optional] |
| **future_mini** | **Float** | ミニ先物のワンショット上限&lt;br&gt;※単位は枚 | [optional] |
| **future_micro** | **Float** | マイクロ先物のワンショット上限&lt;br&gt;※単位は枚 | [optional] |
| **option** | **Float** | オプションのワンショット上限&lt;br&gt;※単位は枚 | [optional] |
| **mini_option** | **Float** | ミニオプションのワンショット上限&lt;br&gt;※単位は枚 | [optional] |
| **kabu_s_version** | **String** | kabuステーションのバージョン | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::ApiSoftLimitResponse.new(
  stock: null,
  margin: null,
  future: null,
  future_mini: null,
  future_micro: null,
  option: null,
  mini_option: null,
  kabu_s_version: null
)
```

