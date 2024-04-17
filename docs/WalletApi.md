# KabustationClient::WalletApi

All URIs are relative to *http://localhost:18080/kabusapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wallet_cash_get**](WalletApi.md#wallet_cash_get) | **GET** /wallet/cash | 取引余力（現物） |
| [**wallet_cash_symbol_get**](WalletApi.md#wallet_cash_symbol_get) | **GET** /wallet/cash/{symbol} | 取引余力（現物）（銘柄指定） |
| [**wallet_future_get**](WalletApi.md#wallet_future_get) | **GET** /wallet/future | 取引余力（先物） |
| [**wallet_future_symbol_get**](WalletApi.md#wallet_future_symbol_get) | **GET** /wallet/future/{symbol} | 取引余力（先物）（銘柄指定） |
| [**wallet_margin_get**](WalletApi.md#wallet_margin_get) | **GET** /wallet/margin | 取引余力（信用） |
| [**wallet_margin_symbol_get**](WalletApi.md#wallet_margin_symbol_get) | **GET** /wallet/margin/{symbol} | 取引余力（信用）（銘柄指定） |
| [**wallet_option_get**](WalletApi.md#wallet_option_get) | **GET** /wallet/option | 取引余力（オプション） |
| [**wallet_option_symbol_get**](WalletApi.md#wallet_option_symbol_get) | **GET** /wallet/option/{symbol} | 取引余力（オプション）（銘柄指定） |


## wallet_cash_get

> <WalletCashSuccess> wallet_cash_get

取引余力（現物）

口座の取引余力（現物）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new

begin
  # 取引余力（現物）
  result = api_instance.wallet_cash_get
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_cash_get: #{e}"
end
```

#### Using the wallet_cash_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletCashSuccess>, Integer, Hash)> wallet_cash_get_with_http_info

```ruby
begin
  # 取引余力（現物）
  data, status_code, headers = api_instance.wallet_cash_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletCashSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_cash_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletCashSuccess**](WalletCashSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_cash_symbol_get

> <WalletCashSuccess> wallet_cash_symbol_get(symbol)

取引余力（現物）（銘柄指定）

指定した銘柄の取引余力（現物）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。 <b>市場コード</b> <table>   <thead>     <tr>       <th>定義値</th>       <th>説明</th>     </tr>   </thead>   <tbody>     <tr>       <td>1</td>       <td>東証</td>     </tr>     <tr>       <td>3</td>       <td>名証</td>     </tr>     <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>   </tbody> </table>

begin
  # 取引余力（現物）（銘柄指定）
  result = api_instance.wallet_cash_symbol_get(symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_cash_symbol_get: #{e}"
end
```

#### Using the wallet_cash_symbol_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletCashSuccess>, Integer, Hash)> wallet_cash_symbol_get_with_http_info(symbol)

```ruby
begin
  # 取引余力（現物）（銘柄指定）
  data, status_code, headers = api_instance.wallet_cash_symbol_get_with_http_info(symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletCashSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_cash_symbol_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。 &lt;b&gt;市場コード&lt;/b&gt; &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;定義値&lt;/th&gt;       &lt;th&gt;説明&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;東証&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;3&lt;/td&gt;       &lt;td&gt;名証&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**WalletCashSuccess**](WalletCashSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_future_get

> <WalletFutureSuccess> wallet_future_get

取引余力（先物）

口座の取引余力（先物）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new

begin
  # 取引余力（先物）
  result = api_instance.wallet_future_get
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_future_get: #{e}"
end
```

#### Using the wallet_future_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletFutureSuccess>, Integer, Hash)> wallet_future_get_with_http_info

```ruby
begin
  # 取引余力（先物）
  data, status_code, headers = api_instance.wallet_future_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletFutureSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_future_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletFutureSuccess**](WalletFutureSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_future_symbol_get

> <WalletFutureSuccess> wallet_future_symbol_get(symbol)

取引余力（先物）（銘柄指定）

指定した銘柄の取引余力（先物）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。     ※SOR市場は取扱っておりませんのでご注意ください。<b>市場コード</b><br> <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>

begin
  # 取引余力（先物）（銘柄指定）
  result = api_instance.wallet_future_symbol_get(symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_future_symbol_get: #{e}"
end
```

#### Using the wallet_future_symbol_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletFutureSuccess>, Integer, Hash)> wallet_future_symbol_get_with_http_info(symbol)

```ruby
begin
  # 取引余力（先物）（銘柄指定）
  data, status_code, headers = api_instance.wallet_future_symbol_get_with_http_info(symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletFutureSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_future_symbol_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。     ※SOR市場は取扱っておりませんのでご注意ください。&lt;b&gt;市場コード&lt;/b&gt;&lt;br&gt; &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日通し&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;日中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;夜間&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**WalletFutureSuccess**](WalletFutureSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_margin_get

> <WalletMarginSuccess> wallet_margin_get

取引余力（信用）

口座の取引余力（信用）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new

begin
  # 取引余力（信用）
  result = api_instance.wallet_margin_get
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_margin_get: #{e}"
end
```

#### Using the wallet_margin_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletMarginSuccess>, Integer, Hash)> wallet_margin_get_with_http_info

```ruby
begin
  # 取引余力（信用）
  data, status_code, headers = api_instance.wallet_margin_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletMarginSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_margin_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletMarginSuccess**](WalletMarginSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_margin_symbol_get

> <WalletMarginSuccess> wallet_margin_symbol_get(symbol)

取引余力（信用）（銘柄指定）

指定した銘柄の取引余力（信用）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。 <b>市場コード</b> <table>   <thead>     <tr>       <th>定義値</th>       <th>説明</th>     </tr>   </thead>   <tbody>     <tr>       <td>1</td>       <td>東証</td>     </tr>     <tr>       <td>3</td>       <td>名証</td>     </tr>   </tbody> </table>

begin
  # 取引余力（信用）（銘柄指定）
  result = api_instance.wallet_margin_symbol_get(symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_margin_symbol_get: #{e}"
end
```

#### Using the wallet_margin_symbol_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletMarginSuccess>, Integer, Hash)> wallet_margin_symbol_get_with_http_info(symbol)

```ruby
begin
  # 取引余力（信用）（銘柄指定）
  data, status_code, headers = api_instance.wallet_margin_symbol_get_with_http_info(symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletMarginSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_margin_symbol_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。 &lt;b&gt;市場コード&lt;/b&gt; &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;定義値&lt;/th&gt;       &lt;th&gt;説明&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;1&lt;/td&gt;       &lt;td&gt;東証&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;3&lt;/td&gt;       &lt;td&gt;名証&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**WalletMarginSuccess**](WalletMarginSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_option_get

> <WalletOptionSuccess> wallet_option_get

取引余力（オプション）

口座の取引余力（オプション）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new

begin
  # 取引余力（オプション）
  result = api_instance.wallet_option_get
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_option_get: #{e}"
end
```

#### Using the wallet_option_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletOptionSuccess>, Integer, Hash)> wallet_option_get_with_http_info

```ruby
begin
  # 取引余力（オプション）
  data, status_code, headers = api_instance.wallet_option_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletOptionSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_option_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletOptionSuccess**](WalletOptionSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_option_symbol_get

> <WalletOptionSuccess> wallet_option_symbol_get(symbol)

取引余力（オプション）（銘柄指定）

指定した銘柄の取引余力（オプション）を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'
# setup authorization
KabustationClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = KabustationClient::WalletApi.new
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。 <b>市場コード</b> <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>

begin
  # 取引余力（オプション）（銘柄指定）
  result = api_instance.wallet_option_symbol_get(symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_option_symbol_get: #{e}"
end
```

#### Using the wallet_option_symbol_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletOptionSuccess>, Integer, Hash)> wallet_option_symbol_get_with_http_info(symbol)

```ruby
begin
  # 取引余力（オプション）（銘柄指定）
  data, status_code, headers = api_instance.wallet_option_symbol_get_with_http_info(symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletOptionSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling WalletApi->wallet_option_symbol_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。 &lt;b&gt;市場コード&lt;/b&gt; &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日通し&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;日中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;夜間&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**WalletOptionSuccess**](WalletOptionSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

