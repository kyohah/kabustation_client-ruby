# KabustationClient::SymbolNameSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード | [optional] |
| **symbol_name** | **String** | 銘柄名称 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::SymbolNameSuccess.new(
  symbol: 136091318,
  symbol_name: 日経平均オプション 21/09 プット 31375
)
```

