# KabustationClient::RegulationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード&lt;br&gt; ※対象商品は、株式のみ | [optional] |
| **regulations_info** | [**Array&lt;RegulationsResponseRegulationsInfoInner&gt;**](RegulationsResponseRegulationsInfoInner.md) | 規制情報 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RegulationsResponse.new(
  symbol: null,
  regulations_info: null
)
```

