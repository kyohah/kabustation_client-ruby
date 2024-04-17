# KabustationClient::ExchangeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 通貨 | [optional] |
| **bid_price** | **Float** | BID | [optional] |
| **spread** | **Float** | SP | [optional] |
| **ask_price** | **Float** | ASK | [optional] |
| **change** | **Float** | 前日比 | [optional] |
| **time** | **String** | 時刻 &lt;br&gt;※HH:mm:ss形式 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::ExchangeResponse.new(
  symbol: null,
  bid_price: null,
  spread: null,
  ask_price: null,
  change: null,
  time: null
)
```

