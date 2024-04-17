# KabustationClient::RegisterApi

All URIs are relative to *http://localhost:18080/kabusapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**register_put**](RegisterApi.md#register_put) | **PUT** /register | 銘柄登録 |
| [**unregister_all_put**](RegisterApi.md#unregister_all_put) | **PUT** /unregister/all | 銘柄登録全解除 |
| [**unregister_put**](RegisterApi.md#unregister_put) | **PUT** /unregister | 銘柄登録解除 |


## register_put

> <RegistSuccess> register_put(request_register)

銘柄登録

PUSH配信する銘柄を登録します。<br> API登録銘柄リストを開くには、kabuステーションAPIインジケーターを右クリックし「API登録銘柄リスト」を選択してください。

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

api_instance = KabustationClient::RegisterApi.new
request_register = KabustationClient::RequestRegister.new # RequestRegister | 登録する銘柄のリスト

begin
  # 銘柄登録
  result = api_instance.register_put(request_register)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->register_put: #{e}"
end
```

#### Using the register_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistSuccess>, Integer, Hash)> register_put_with_http_info(request_register)

```ruby
begin
  # 銘柄登録
  data, status_code, headers = api_instance.register_put_with_http_info(request_register)
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
| **request_register** | [**RequestRegister**](RequestRegister.md) | 登録する銘柄のリスト |  |

### Return type

[**RegistSuccess**](RegistSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unregister_all_put

> <UnregisterAllSuccess> unregister_all_put

銘柄登録全解除

API登録銘柄リストに登録されている銘柄をすべて解除します

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

api_instance = KabustationClient::RegisterApi.new

begin
  # 銘柄登録全解除
  result = api_instance.unregister_all_put
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_all_put: #{e}"
end
```

#### Using the unregister_all_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnregisterAllSuccess>, Integer, Hash)> unregister_all_put_with_http_info

```ruby
begin
  # 銘柄登録全解除
  data, status_code, headers = api_instance.unregister_all_put_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnregisterAllSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_all_put_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UnregisterAllSuccess**](UnregisterAllSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unregister_put

> <RegistSuccess> unregister_put(request_unregister)

銘柄登録解除

API登録銘柄リストに登録されている銘柄を解除します

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

api_instance = KabustationClient::RegisterApi.new
request_unregister = KabustationClient::RequestUnregister.new # RequestUnregister | 登録解除する銘柄のリスト

begin
  # 銘柄登録解除
  result = api_instance.unregister_put(request_unregister)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling RegisterApi->unregister_put: #{e}"
end
```

#### Using the unregister_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistSuccess>, Integer, Hash)> unregister_put_with_http_info(request_unregister)

```ruby
begin
  # 銘柄登録解除
  data, status_code, headers = api_instance.unregister_put_with_http_info(request_unregister)
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
| **request_unregister** | [**RequestUnregister**](RequestUnregister.md) | 登録解除する銘柄のリスト |  |

### Return type

[**RegistSuccess**](RegistSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

