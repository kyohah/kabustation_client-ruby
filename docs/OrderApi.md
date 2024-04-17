# KabustationClient::OrderApi

All URIs are relative to *http://localhost:18080/kabusapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancelorder_put**](OrderApi.md#cancelorder_put) | **PUT** /cancelorder | 注文取消 |
| [**sendoder_future_post**](OrderApi.md#sendoder_future_post) | **POST** /sendorder/future | 注文発注（先物） |
| [**sendorder_option_post**](OrderApi.md#sendorder_option_post) | **POST** /sendorder/option | 注文発注（オプション） |
| [**sendorder_post**](OrderApi.md#sendorder_post) | **POST** /sendorder | 注文発注（現物・信用） |


## cancelorder_put

> <OrderSuccess> cancelorder_put(request_cancel_order)

注文取消

注文を取消します

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

api_instance = KabustationClient::OrderApi.new
request_cancel_order = KabustationClient::RequestCancelOrder.new({order_id: '20200529A01N06848002', password: 'xxxxxx'}) # RequestCancelOrder | 

begin
  # 注文取消
  result = api_instance.cancelorder_put(request_cancel_order)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->cancelorder_put: #{e}"
end
```

#### Using the cancelorder_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderSuccess>, Integer, Hash)> cancelorder_put_with_http_info(request_cancel_order)

```ruby
begin
  # 注文取消
  data, status_code, headers = api_instance.cancelorder_put_with_http_info(request_cancel_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->cancelorder_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_cancel_order** | [**RequestCancelOrder**](RequestCancelOrder.md) |  |  |

### Return type

[**OrderSuccess**](OrderSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sendoder_future_post

> <OrderSuccess> sendoder_future_post(request_send_order_deriv_future)

注文発注（先物）

先物銘柄の注文を発注します。<br> 同一の銘柄に対しての注文は同時に5件ほどを上限としてご利用ください。

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

api_instance = KabustationClient::OrderApi.new
request_send_order_deriv_future = KabustationClient::RequestSendOrderDerivFuture.new({password: 'xxxxxx', symbol: '165120019', exchange: 37, trade_type: 37, time_in_force: 37, side: 'side_example', qty: 37, front_order_type: 37, price: 3.56, expire_day: 37}) # RequestSendOrderDerivFuture | 

begin
  # 注文発注（先物）
  result = api_instance.sendoder_future_post(request_send_order_deriv_future)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->sendoder_future_post: #{e}"
end
```

#### Using the sendoder_future_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderSuccess>, Integer, Hash)> sendoder_future_post_with_http_info(request_send_order_deriv_future)

```ruby
begin
  # 注文発注（先物）
  data, status_code, headers = api_instance.sendoder_future_post_with_http_info(request_send_order_deriv_future)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->sendoder_future_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_send_order_deriv_future** | [**RequestSendOrderDerivFuture**](RequestSendOrderDerivFuture.md) |  |  |

### Return type

[**OrderSuccess**](OrderSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sendorder_option_post

> <OrderSuccess> sendorder_option_post(request_send_order_deriv_option)

注文発注（オプション）

オプション銘柄の注文を発注します。<br> 同一の銘柄に対しての注文は同時に5件ほどを上限としてご利用ください。

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

api_instance = KabustationClient::OrderApi.new
request_send_order_deriv_option = KabustationClient::RequestSendOrderDerivOption.new({password: 'password_example', symbol: 'symbol_example', exchange: 37, trade_type: 37, time_in_force: 37, side: 'side_example', qty: 37, front_order_type: 37, price: 3.56, expire_day: 37}) # RequestSendOrderDerivOption | 

begin
  # 注文発注（オプション）
  result = api_instance.sendorder_option_post(request_send_order_deriv_option)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->sendorder_option_post: #{e}"
end
```

#### Using the sendorder_option_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderSuccess>, Integer, Hash)> sendorder_option_post_with_http_info(request_send_order_deriv_option)

```ruby
begin
  # 注文発注（オプション）
  data, status_code, headers = api_instance.sendorder_option_post_with_http_info(request_send_order_deriv_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->sendorder_option_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_send_order_deriv_option** | [**RequestSendOrderDerivOption**](RequestSendOrderDerivOption.md) |  |  |

### Return type

[**OrderSuccess**](OrderSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sendorder_post

> <OrderSuccess> sendorder_post(request_send_order)

注文発注（現物・信用）

注文を発注します。<br> 同一の銘柄に対しての注文は同時に5件ほどを上限としてご利用ください。

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

api_instance = KabustationClient::OrderApi.new
request_send_order = KabustationClient::RequestSendOrder.new({password: 'password_example', symbol: 'symbol_example', exchange: 37, security_type: 37, side: 'side_example', cash_margin: 37, deliv_type: 37, account_type: 37, qty: 37, front_order_type: 37, price: 3.56, expire_day: 37}) # RequestSendOrder | 

begin
  # 注文発注（現物・信用）
  result = api_instance.sendorder_post(request_send_order)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->sendorder_post: #{e}"
end
```

#### Using the sendorder_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderSuccess>, Integer, Hash)> sendorder_post_with_http_info(request_send_order)

```ruby
begin
  # 注文発注（現物・信用）
  data, status_code, headers = api_instance.sendorder_post_with_http_info(request_send_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling OrderApi->sendorder_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_send_order** | [**RequestSendOrder**](RequestSendOrder.md) |  |  |

### Return type

[**OrderSuccess**](OrderSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

