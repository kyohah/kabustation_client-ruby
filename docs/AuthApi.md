# KabustationClient::AuthApi

All URIs are relative to *http://localhost:18080/kabusapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**token_post**](AuthApi.md#token_post) | **POST** /token | トークン発行 |


## token_post

> <TokenSuccess> token_post(request_token)

トークン発行

APIトークンを発行します。<br> 発行したトークンは有効である限り使用することができ、リクエストごとに発行する必要はありません。<br> 発行されたAPIトークンは以下のタイミングで無効となります。<br> ・kabuステーションを終了した時<br> ・kabuステーションからログアウトした時<br> ・別のトークンが新たに発行された時<br> ※kabuステーションは早朝、強制的にログアウトいたしますのでご留意ください。<br>

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::AuthApi.new
request_token = KabustationClient::RequestToken.new({api_password: 'xxxxxx'}) # RequestToken | 

begin
  # トークン発行
  result = api_instance.token_post(request_token)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling AuthApi->token_post: #{e}"
end
```

#### Using the token_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenSuccess>, Integer, Hash)> token_post_with_http_info(request_token)

```ruby
begin
  # トークン発行
  data, status_code, headers = api_instance.token_post_with_http_info(request_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling AuthApi->token_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_token** | [**RequestToken**](RequestToken.md) |  |  |

### Return type

[**TokenSuccess**](TokenSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

