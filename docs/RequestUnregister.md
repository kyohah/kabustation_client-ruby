# KabustationClient::RequestUnregister

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbols** | [**Array&lt;RequestRegisterSymbolsInner&gt;**](RequestRegisterSymbolsInner.md) | ※為替銘柄を登録する場合、銘柄名は\&quot;通貨A\&quot; + \&quot;/\&quot; + \&quot;通貨B\&quot;、市場コードは\&quot;300\&quot;で指定してください。 例：&#39;Symbol&#39;: &#39;EUR/USD&#39;, \&quot;Exchange\&quot;: 300 | [optional] |

## Example

```ruby
require 'kabustation_client'

instance = KabustationClient::RequestUnregister.new(
  symbols: null
)
```

