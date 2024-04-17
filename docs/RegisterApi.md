# KabustationClient::RegisterApi

All URIs are relative to *http://localhost:18080/kabusapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**register_put**](RegisterApi.md#register_put) | **PUT** /register | 銘柄登録 |
| [**unregister_all_put**](RegisterApi.md#unregister_all_put) | **PUT** /unregister/all | 銘柄登録全解除 |
| [**unregister_put**](RegisterApi.md#unregister_put) | **PUT** /unregister | 銘柄登録解除 |


## register_put

> <RegistSuccess> register_put(x_api_key, request_register)

銘柄登録

PUSH配信する銘柄を登録します。<br> API登録銘柄リストを開くには、kabuステーションAPIインジケーターを右クリックし「API登録銘柄リスト」を選択してください。

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::RegisterApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
request_register = KabustationClient::RequestRegister.new # RequestRegister | 登録する銘柄のリスト

begin
  # 銘柄登録
  result = api_instance.register_put(x_api_key, request_register)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->register_put: #{e}"
end
```

#### Using the register_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistSuccess>, Integer, Hash)> register_put_with_http_info(x_api_key, request_register)

```ruby
begin
  # 銘柄登録
  data, status_code, headers = api_instance.register_put_with_http_info(x_api_key, request_register)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->register_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **request_register** | [**RequestRegister**](RequestRegister.md) | 登録する銘柄のリスト |  |

### Return type

[**RegistSuccess**](RegistSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unregister_all_put

> <UnregisterAllSuccess> unregister_all_put(x_api_key)

銘柄登録全解除

API登録銘柄リストに登録されている銘柄をすべて解除します

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::RegisterApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列

begin
  # 銘柄登録全解除
  result = api_instance.unregister_all_put(x_api_key)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_all_put: #{e}"
end
```

#### Using the unregister_all_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnregisterAllSuccess>, Integer, Hash)> unregister_all_put_with_http_info(x_api_key)

```ruby
begin
  # 銘柄登録全解除
  data, status_code, headers = api_instance.unregister_all_put_with_http_info(x_api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnregisterAllSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_all_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |

### Return type

[**UnregisterAllSuccess**](UnregisterAllSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unregister_put

> <RegistSuccess> unregister_put(x_api_key, request_unregister)

銘柄登録解除

API登録銘柄リストに登録されている銘柄を解除します

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::RegisterApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
request_unregister = KabustationClient::RequestUnregister.new # RequestUnregister | 登録解除する銘柄のリスト

begin
  # 銘柄登録解除
  result = api_instance.unregister_put(x_api_key, request_unregister)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_put: #{e}"
end
```

#### Using the unregister_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistSuccess>, Integer, Hash)> unregister_put_with_http_info(x_api_key, request_unregister)

```ruby
begin
  # 銘柄登録解除
  data, status_code, headers = api_instance.unregister_put_with_http_info(x_api_key, request_unregister)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **request_unregister** | [**RequestUnregister**](RequestUnregister.md) | 登録解除する銘柄のリスト |  |

### Return type

[**RegistSuccess**](RegistSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

