# KabustationClient::InfoApi

All URIs are relative to *http://localhost:18080/kabusapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apisoftlimit_get**](InfoApi.md#apisoftlimit_get) | **GET** /apisoftlimit | ソフトリミット |
| [**board_get**](InfoApi.md#board_get) | **GET** /board/{symbol} | 時価情報・板情報 |
| [**exchange_get**](InfoApi.md#exchange_get) | **GET** /exchange/{symbol} | 為替情報 |
| [**marginpremium_get**](InfoApi.md#marginpremium_get) | **GET** /margin/marginpremium/{symbol} | プレミアム料取得 |
| [**orders_get**](InfoApi.md#orders_get) | **GET** /orders | 注文約定照会 |
| [**positions_get**](InfoApi.md#positions_get) | **GET** /positions | 残高照会 |
| [**primary_exchange_get**](InfoApi.md#primary_exchange_get) | **GET** /primaryexchange/{symbol} | 優先市場 |
| [**ranking_get**](InfoApi.md#ranking_get) | **GET** /ranking | 詳細ランキング |
| [**regulations_get**](InfoApi.md#regulations_get) | **GET** /regulations/{symbol} | 規制情報 |
| [**symbol_get**](InfoApi.md#symbol_get) | **GET** /symbol/{symbol} | 銘柄情報 |
| [**symbolname_future_get**](InfoApi.md#symbolname_future_get) | **GET** /symbolname/future | 先物銘柄コード取得 |
| [**symbolname_option_get**](InfoApi.md#symbolname_option_get) | **GET** /symbolname/option | オプション銘柄コード取得 |
| [**symbolname_option_mini_get**](InfoApi.md#symbolname_option_mini_get) | **GET** /symbolname/minioptionweekly | ミニオプション（限週）銘柄コード取得 |


## apisoftlimit_get

> <ApiSoftLimitResponse> apisoftlimit_get(x_api_key)

ソフトリミット

kabuステーションAPIのソフトリミット値を取得する

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列

begin
  # ソフトリミット
  result = api_instance.apisoftlimit_get(x_api_key)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->apisoftlimit_get: #{e}"
end
```

#### Using the apisoftlimit_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiSoftLimitResponse>, Integer, Hash)> apisoftlimit_get_with_http_info(x_api_key)

```ruby
begin
  # ソフトリミット
  data, status_code, headers = api_instance.apisoftlimit_get_with_http_info(x_api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiSoftLimitResponse>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->apisoftlimit_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |

### Return type

[**ApiSoftLimitResponse**](ApiSoftLimitResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## board_get

> <BoardSuccess> board_get(x_api_key, symbol)

時価情報・板情報

指定した銘柄の時価情報・板情報を取得します<br> レスポンスの一部にnullが発生した場合、該当銘柄を銘柄登録をしてから、 <br>再度時価情報・板情報APIを実行してください。

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。<br> ※SOR市場は取扱っておりませんのでご注意ください。<b>市場コード</b><br> <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>東証</td>       </tr>       <tr>           <td>3</td>           <td>名証</td>       </tr>       <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>

begin
  # 時価情報・板情報
  result = api_instance.board_get(x_api_key, symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->board_get: #{e}"
end
```

#### Using the board_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BoardSuccess>, Integer, Hash)> board_get_with_http_info(x_api_key, symbol)

```ruby
begin
  # 時価情報・板情報
  data, status_code, headers = api_instance.board_get_with_http_info(x_api_key, symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BoardSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->board_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。&lt;br&gt; ※SOR市場は取扱っておりませんのでご注意ください。&lt;b&gt;市場コード&lt;/b&gt;&lt;br&gt; &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;東証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日通し&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;日中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;夜間&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**BoardSuccess**](BoardSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_get

> <ExchangeResponse> exchange_get(x_api_key, symbol)

為替情報

マネービューの情報を取得する

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
symbol = 'usdjpy' # String | 通貨 <table>   <thead>     <tr>       <th>定義値</th>       <th>内容</th>     </tr>   </thead>   <tbody>     <tr>       <td>usdjpy</td>       <td>USD/JPY</td>     </tr>     <tr>       <td>eurjpy</td>       <td>EUR/JPY</td>     </tr>     <tr>       <td>gbpjpy</td>       <td>GBP/JPY</td>     </tr>     <tr>       <td>audjpy</td>       <td>AUD/JPY</td>     </tr>     <tr>       <td>chfjpy</td>       <td>CHF/JPY</td>     </tr>     <tr>       <td>cadjpy</td>       <td>CAD/JPY</td>     </tr>     <tr>       <td>nzdjpy</td>       <td>NZD/JPY</td>     </tr>     <tr>       <td>zarjpy</td>       <td>ZAR/JPY</td>     </tr>     <tr>       <td>eurusd</td>       <td>EUR/USD</td>     </tr>     <tr>       <td>gbpusd</td>       <td>GBP/USD</td>     </tr>     <tr>       <td>audusd</td>       <td>AUD/USD</td>     </tr>   </tbody> </table>

begin
  # 為替情報
  result = api_instance.exchange_get(x_api_key, symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->exchange_get: #{e}"
end
```

#### Using the exchange_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeResponse>, Integer, Hash)> exchange_get_with_http_info(x_api_key, symbol)

```ruby
begin
  # 為替情報
  data, status_code, headers = api_instance.exchange_get_with_http_info(x_api_key, symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeResponse>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->exchange_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **symbol** | **String** | 通貨 &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;定義値&lt;/th&gt;       &lt;th&gt;内容&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;usdjpy&lt;/td&gt;       &lt;td&gt;USD/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;eurjpy&lt;/td&gt;       &lt;td&gt;EUR/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;gbpjpy&lt;/td&gt;       &lt;td&gt;GBP/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;audjpy&lt;/td&gt;       &lt;td&gt;AUD/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;chfjpy&lt;/td&gt;       &lt;td&gt;CHF/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;cadjpy&lt;/td&gt;       &lt;td&gt;CAD/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;nzdjpy&lt;/td&gt;       &lt;td&gt;NZD/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;zarjpy&lt;/td&gt;       &lt;td&gt;ZAR/JPY&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;eurusd&lt;/td&gt;       &lt;td&gt;EUR/USD&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;gbpusd&lt;/td&gt;       &lt;td&gt;GBP/USD&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;audusd&lt;/td&gt;       &lt;td&gt;AUD/USD&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**ExchangeResponse**](ExchangeResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## marginpremium_get

> <MarginPremiumResponse> marginpremium_get(x_api_key, symbol)

プレミアム料取得

指定した銘柄のプレミアム料を取得するAPI

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
symbol = 'symbol_example' # String | 銘柄コード

begin
  # プレミアム料取得
  result = api_instance.marginpremium_get(x_api_key, symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->marginpremium_get: #{e}"
end
```

#### Using the marginpremium_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarginPremiumResponse>, Integer, Hash)> marginpremium_get_with_http_info(x_api_key, symbol)

```ruby
begin
  # プレミアム料取得
  data, status_code, headers = api_instance.marginpremium_get_with_http_info(x_api_key, symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarginPremiumResponse>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->marginpremium_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **symbol** | **String** | 銘柄コード |  |

### Return type

[**MarginPremiumResponse**](MarginPremiumResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_get

> <Array<OrdersSuccess>> orders_get(x_api_key, opts)

注文約定照会

注文一覧を取得します。<br> ※下記Queryパラメータは任意設定となります。

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
opts = {
  product: '0', # String | 取得する商品 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>0</td>           <td>すべて </td>       </tr>       <tr>           <td>1</td>           <td>現物</td>       </tr>       <tr>           <td>2</td>           <td>信用</td>       </tr>       <tr>           <td>3</td>           <td>先物</td>       </tr>       <tr>           <td>4</td>           <td>OP</td>       </tr>   </tbody> </table>
  id: 'id_example', # String | 注文番号<br> ※指定された注文番号と一致する注文のみレスポンスします。<br> ※指定された注文番号との比較では大文字小文字を区別しません。<br> ※複数の注文番号を指定することはできません。
  updtime: 'updtime_example', # String | 更新日時<br> ※形式：yyyyMMddHHmmss （例：20201201123456）<br> ※指定された更新日時以降（指定日時含む）に更新された注文のみレスポンスします。<br> ※複数の更新日時を指定することはできません。
  details: 'details_example', # String | 注文詳細抑止 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>true</td>           <td>注文詳細を出力する（デフォルト）</td>       </tr>       <tr>           <td>false</td>           <td>注文詳細の出力しない</td>       </tr>   </tbody> </table>
  symbol: 'symbol_example', # String | 銘柄コード<br>※指定された銘柄コードと一致する注文のみレスポンスします。<br>※複数の銘柄コードを指定することができません。
  state: '1', # String | 状態<br> ※指定された状態と一致する注文のみレスポンスします。<br> ※フィルタには数字の入力のみ受け付けます。<br> ※複数の状態を指定することはできません。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>待機（発注待機）</td>       </tr>       <tr>           <td>2</td>           <td>処理中（発注送信中）</td>       </tr>       <tr>           <td>3</td>           <td>処理済（発注済・訂正済）</td>       </tr>       <tr>           <td>4</td>           <td>訂正取消送信中</td>       </tr>       <tr>           <td>5</td>           <td>終了（発注エラー・取消済・全約定・失効・期限切れ）</td>       </tr>   </tbody> </table>
  side: '1', # String | 売買区分<br> ※指定された売買区分と一致する注文のみレスポンスします。<br> ※フィルタには数字の入力のみ受け付けます。<br> ※複数の売買区分を指定することができません。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>売</td>       </tr>       <tr>           <td>2</td>           <td>買</td>       </tr>   </tbody> </table>
  cashmargin: '2' # String | 取引区分<br> ※指定された取引区分と一致する注文のみレスポンスします。<br> ※フィルタには数字の入力のみ受け付けます。<br> ※複数の取引区分を指定することができません。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>2</td>           <td>新規</td>       </tr>       <tr>           <td>3</td>           <td>返済</td>       </tr>   </tbody> </table>
}

begin
  # 注文約定照会
  result = api_instance.orders_get(x_api_key, opts)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->orders_get: #{e}"
end
```

#### Using the orders_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrdersSuccess>>, Integer, Hash)> orders_get_with_http_info(x_api_key, opts)

```ruby
begin
  # 注文約定照会
  data, status_code, headers = api_instance.orders_get_with_http_info(x_api_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrdersSuccess>>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->orders_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **product** | **String** | 取得する商品 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0&lt;/td&gt;           &lt;td&gt;すべて &lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;現物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;信用&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;OP&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **id** | **String** | 注文番号&lt;br&gt; ※指定された注文番号と一致する注文のみレスポンスします。&lt;br&gt; ※指定された注文番号との比較では大文字小文字を区別しません。&lt;br&gt; ※複数の注文番号を指定することはできません。 | [optional] |
| **updtime** | **String** | 更新日時&lt;br&gt; ※形式：yyyyMMddHHmmss （例：20201201123456）&lt;br&gt; ※指定された更新日時以降（指定日時含む）に更新された注文のみレスポンスします。&lt;br&gt; ※複数の更新日時を指定することはできません。 | [optional] |
| **details** | **String** | 注文詳細抑止 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;true&lt;/td&gt;           &lt;td&gt;注文詳細を出力する（デフォルト）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;false&lt;/td&gt;           &lt;td&gt;注文詳細の出力しない&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **symbol** | **String** | 銘柄コード&lt;br&gt;※指定された銘柄コードと一致する注文のみレスポンスします。&lt;br&gt;※複数の銘柄コードを指定することができません。 | [optional] |
| **state** | **String** | 状態&lt;br&gt; ※指定された状態と一致する注文のみレスポンスします。&lt;br&gt; ※フィルタには数字の入力のみ受け付けます。&lt;br&gt; ※複数の状態を指定することはできません。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;待機（発注待機）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;処理中（発注送信中）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;処理済（発注済・訂正済）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;訂正取消送信中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;終了（発注エラー・取消済・全約定・失効・期限切れ）&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **side** | **String** | 売買区分&lt;br&gt; ※指定された売買区分と一致する注文のみレスポンスします。&lt;br&gt; ※フィルタには数字の入力のみ受け付けます。&lt;br&gt; ※複数の売買区分を指定することができません。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;売&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;買&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **cashmargin** | **String** | 取引区分&lt;br&gt; ※指定された取引区分と一致する注文のみレスポンスします。&lt;br&gt; ※フィルタには数字の入力のみ受け付けます。&lt;br&gt; ※複数の取引区分を指定することができません。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;新規&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;返済&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |

### Return type

[**Array&lt;OrdersSuccess&gt;**](OrdersSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## positions_get

> <Array<PositionsSuccess>> positions_get(x_api_key, opts)

残高照会

残高一覧を取得します。<br>※下記Queryパラメータは任意設定となります。

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
opts = {
  product: '0', # String | 取得する商品 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>0</td>           <td>すべて</td>       </tr>       <tr>           <td>1</td>           <td>現物</td>       </tr>       <tr>           <td>2</td>           <td>信用</td>       </tr>       <tr>           <td>3</td>           <td>先物</td>       </tr>       <tr>           <td>4</td>           <td>OP</td>       </tr>   </tbody> </table>
  symbol: 'symbol_example', # String | 銘柄コード<br>※指定された銘柄コードと一致するポジションのみレスポンスします。<br>※複数の銘柄コードを指定することはできません。
  side: '1', # String | 売買区分フィルタ<br> 指定された売買区分と一致する注文を返す <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>売</td>       </tr>       <tr>           <td>2</td>           <td>買</td>       </tr>   </tbody> </table>
  addinfo: 'addinfo_example' # String | 追加情報出力フラグ（未指定時：true）<br> ※追加情報は、「現在値」、「評価金額」、「評価損益額」、「評価損益率」を意味します。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>true</td>           <td>追加情報を出力する</td>       </tr>       <tr>           <td>false</td>           <td>追加情報を出力しない</td>       </tr>   </tbody> </table>
}

begin
  # 残高照会
  result = api_instance.positions_get(x_api_key, opts)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->positions_get: #{e}"
end
```

#### Using the positions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PositionsSuccess>>, Integer, Hash)> positions_get_with_http_info(x_api_key, opts)

```ruby
begin
  # 残高照会
  data, status_code, headers = api_instance.positions_get_with_http_info(x_api_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PositionsSuccess>>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->positions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **product** | **String** | 取得する商品 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;0&lt;/td&gt;           &lt;td&gt;すべて&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;現物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;信用&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;OP&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **symbol** | **String** | 銘柄コード&lt;br&gt;※指定された銘柄コードと一致するポジションのみレスポンスします。&lt;br&gt;※複数の銘柄コードを指定することはできません。 | [optional] |
| **side** | **String** | 売買区分フィルタ&lt;br&gt; 指定された売買区分と一致する注文を返す &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;売&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;買&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |
| **addinfo** | **String** | 追加情報出力フラグ（未指定時：true）&lt;br&gt; ※追加情報は、「現在値」、「評価金額」、「評価損益額」、「評価損益率」を意味します。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;true&lt;/td&gt;           &lt;td&gt;追加情報を出力する&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;false&lt;/td&gt;           &lt;td&gt;追加情報を出力しない&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |

### Return type

[**Array&lt;PositionsSuccess&gt;**](PositionsSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## primary_exchange_get

> <PrimaryExchangeResponse> primary_exchange_get(x_api_key, symbol)

優先市場

株式の優先市場を取得する

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
symbol = 'symbol_example' # String | 銘柄コード

begin
  # 優先市場
  result = api_instance.primary_exchange_get(x_api_key, symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->primary_exchange_get: #{e}"
end
```

#### Using the primary_exchange_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrimaryExchangeResponse>, Integer, Hash)> primary_exchange_get_with_http_info(x_api_key, symbol)

```ruby
begin
  # 優先市場
  data, status_code, headers = api_instance.primary_exchange_get_with_http_info(x_api_key, symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrimaryExchangeResponse>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->primary_exchange_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **symbol** | **String** | 銘柄コード |  |

### Return type

[**PrimaryExchangeResponse**](PrimaryExchangeResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ranking_get

> <RankingGet200Response> ranking_get(x_api_key, type, exchange_division)

詳細ランキング

詳細ランキング画面と同様の各種ランキングを返します。 <br>ランキングの対象日はkabuステーションが保持している当日のデータとなります。 <br>※株価情報ランキング、業種別指数ランキングは、下記の時間帯でデータがクリアされるため、 <br>その間の詳細ランキングAPIは空レスポンスとなります。 <br>データクリア：平日7:53頃-9:00過ぎ頃 <br>※信用情報ランキングは毎週第３営業日の7:55頃にデータが更新されます。

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
type = '1' # String | 種別<br> ※信用情報ランキングに「福証」「札証」を指定した場合は、空レスポンスになります <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>値上がり率（デフォルト）</td>       </tr>       <tr>           <td>2</td>           <td>値下がり率</td>       </tr>       <tr>           <td>3</td>           <td>売買高上位</td>       </tr>       <tr>           <td>4</td>           <td>売買代金</td>       </tr>       <tr>           <td>5</td>           <td>TICK回数</td>       </tr>       <tr>           <td>6</td>           <td>売買高急増</td>       </tr>       <tr>           <td>7</td>           <td>売買代金急増</td>       </tr>       <tr>           <td>8</td>           <td>信用売残増</td>       </tr>       <tr>           <td>9</td>           <td>信用売残減</td>       </tr>       <tr>           <td>10</td>           <td>信用買残増</td>       </tr>       <tr>           <td>11</td>           <td>信用買残減</td>       </tr>       <tr>           <td>12</td>           <td>信用高倍率</td>       </tr>       <tr>           <td>13</td>           <td>信用低倍率</td>       </tr>       <tr>           <td>14</td>           <td>業種別値上がり率</td>       </tr>       <tr>           <td>15</td>           <td>業種別値下がり率</td>       </tr>   </tbody> </table>
exchange_division = 'ALL' # String | 市場<br> ※業種別値上がり率・値下がり率に市場を指定しても無視されます <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>ALL</td>           <td>全市場（デフォルト）</td>       </tr>       <tr>           <td>T</td>           <td>東証全体</td>       </tr>       <tr>           <td>TP</td>           <td>東証プライム</td>       </tr>       <tr>           <td>TS</td>           <td>東証スタンダード</td>       </tr>       <tr>           <td>TG</td>           <td>グロース250</td>       </tr>       <tr>           <td>M</td>           <td>名証</td>       </tr>       <tr>           <td>FK</td>           <td>福証</td>       </tr>       <tr>           <td>S</td>           <td>札証</td>       </tr>   </tbody> </table>

begin
  # 詳細ランキング
  result = api_instance.ranking_get(x_api_key, type, exchange_division)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->ranking_get: #{e}"
end
```

#### Using the ranking_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RankingGet200Response>, Integer, Hash)> ranking_get_with_http_info(x_api_key, type, exchange_division)

```ruby
begin
  # 詳細ランキング
  data, status_code, headers = api_instance.ranking_get_with_http_info(x_api_key, type, exchange_division)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RankingGet200Response>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->ranking_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **type** | **String** | 種別&lt;br&gt; ※信用情報ランキングに「福証」「札証」を指定した場合は、空レスポンスになります &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;値上がり率（デフォルト）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;値下がり率&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;売買高上位&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;4&lt;/td&gt;           &lt;td&gt;売買代金&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;TICK回数&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;売買高急増&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;7&lt;/td&gt;           &lt;td&gt;売買代金急増&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;8&lt;/td&gt;           &lt;td&gt;信用売残増&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;9&lt;/td&gt;           &lt;td&gt;信用売残減&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;10&lt;/td&gt;           &lt;td&gt;信用買残増&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;11&lt;/td&gt;           &lt;td&gt;信用買残減&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;12&lt;/td&gt;           &lt;td&gt;信用高倍率&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;13&lt;/td&gt;           &lt;td&gt;信用低倍率&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;14&lt;/td&gt;           &lt;td&gt;業種別値上がり率&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;15&lt;/td&gt;           &lt;td&gt;業種別値下がり率&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **exchange_division** | **String** | 市場&lt;br&gt; ※業種別値上がり率・値下がり率に市場を指定しても無視されます &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;ALL&lt;/td&gt;           &lt;td&gt;全市場（デフォルト）&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;T&lt;/td&gt;           &lt;td&gt;東証全体&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;TP&lt;/td&gt;           &lt;td&gt;東証プライム&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;TS&lt;/td&gt;           &lt;td&gt;東証スタンダード&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;TG&lt;/td&gt;           &lt;td&gt;グロース250&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;M&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;FK&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;S&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**RankingGet200Response**](RankingGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regulations_get

> <RegulationsResponse> regulations_get(x_api_key, symbol)

規制情報

規制情報＋空売り規制情報を取得する

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。 <b>市場コード</b> <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>東証</td>       </tr>       <tr>           <td>3</td>           <td>名証</td>       </tr>       <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>   </tbody> </table>

begin
  # 規制情報
  result = api_instance.regulations_get(x_api_key, symbol)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->regulations_get: #{e}"
end
```

#### Using the regulations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegulationsResponse>, Integer, Hash)> regulations_get_with_http_info(x_api_key, symbol)

```ruby
begin
  # 規制情報
  data, status_code, headers = api_instance.regulations_get_with_http_info(x_api_key, symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegulationsResponse>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->regulations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。 &lt;b&gt;市場コード&lt;/b&gt; &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;東証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |

### Return type

[**RegulationsResponse**](RegulationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## symbol_get

> <SymbolSuccess> symbol_get(x_api_key, symbol, opts)

銘柄情報

指定した銘柄情報を取得します

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
symbol = 'symbol_example' # String | 銘柄コード <br> ※次の形式で入力してください。<br> [銘柄コード]@[市場コード]<br> ※市場コードは下記の定義値から選択してください。<br> ※SOR市場は取扱っておりませんのでご注意ください。<b>市場コード</b><br> <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>東証</td>       </tr>       <tr>           <td>3</td>           <td>名証</td>       </tr>       <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>
opts = {
  addinfo: 'addinfo_example' # String | 追加情報出力フラグ（未指定時：true）<br> ※追加情報は、「時価総額」、「発行済み株式数」、「決算期日」、「清算値」を意味します。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>true</td>           <td>追加情報を出力する</td>       </tr>       <tr>           <td>false</td>           <td>追加情報を出力しない</td>       </tr>   </tbody> </table>
}

begin
  # 銘柄情報
  result = api_instance.symbol_get(x_api_key, symbol, opts)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbol_get: #{e}"
end
```

#### Using the symbol_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SymbolSuccess>, Integer, Hash)> symbol_get_with_http_info(x_api_key, symbol, opts)

```ruby
begin
  # 銘柄情報
  data, status_code, headers = api_instance.symbol_get_with_http_info(x_api_key, symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SymbolSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbol_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **symbol** | **String** | 銘柄コード &lt;br&gt; ※次の形式で入力してください。&lt;br&gt; [銘柄コード]@[市場コード]&lt;br&gt; ※市場コードは下記の定義値から選択してください。&lt;br&gt; ※SOR市場は取扱っておりませんのでご注意ください。&lt;b&gt;市場コード&lt;/b&gt;&lt;br&gt; &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;1&lt;/td&gt;           &lt;td&gt;東証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;3&lt;/td&gt;           &lt;td&gt;名証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;5&lt;/td&gt;           &lt;td&gt;福証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;6&lt;/td&gt;           &lt;td&gt;札証&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;2&lt;/td&gt;           &lt;td&gt;日通し&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;23&lt;/td&gt;           &lt;td&gt;日中&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;24&lt;/td&gt;           &lt;td&gt;夜間&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **addinfo** | **String** | 追加情報出力フラグ（未指定時：true）&lt;br&gt; ※追加情報は、「時価総額」、「発行済み株式数」、「決算期日」、「清算値」を意味します。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;true&lt;/td&gt;           &lt;td&gt;追加情報を出力する&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;false&lt;/td&gt;           &lt;td&gt;追加情報を出力しない&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |

### Return type

[**SymbolSuccess**](SymbolSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## symbolname_future_get

> <SymbolNameSuccess> symbolname_future_get(x_api_key, deriv_month, opts)

先物銘柄コード取得

先物銘柄コード取得

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
deriv_month = 56 # Integer | 限月<br> ※限月はyyyyMM形式で指定します。0を指定した場合、直近限月となります。<br> ※取引最終日に「0」（直近限月）を指定した場合、日中・夜間の時間帯に関わらず、 取引最終日を迎える限月の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。<br>
opts = {
  future_code: 'future_code_example' # String | 先物コード<br> ※大文字小文字は区別しません。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>NK225</td>           <td>日経平均先物</td>       </tr>       <tr>           <td>NK225mini</td>           <td>日経225mini先物</td>       </tr>       <tr>           <td>TOPIX</td>           <td>TOPIX先物</td>       </tr>       <tr>           <td>TOPIXmini</td>           <td>ミニTOPIX先物</td>       </tr>       <tr>           <td>GROWTH</td>           <td>グロース250先物</td>       </tr>       <tr>           <td>JPX400</td>           <td>JPX日経400先物</td>       </tr>       <tr>           <td>DOW</td>           <td>NYダウ先物</td>       </tr>       <tr>           <td>VI</td>           <td>日経平均VI先物</td>       </tr>       <tr>           <td>Core30</td>           <td>TOPIX Core30先物</td>       </tr>       <tr>           <td>REIT</td>           <td>東証REIT指数先物</td>       </tr>       <tr>           <td>NK225micro</td>           <td>日経225マイクロ先物</td>       </tr>   </tbody> </table>
}

begin
  # 先物銘柄コード取得
  result = api_instance.symbolname_future_get(x_api_key, deriv_month, opts)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbolname_future_get: #{e}"
end
```

#### Using the symbolname_future_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SymbolNameSuccess>, Integer, Hash)> symbolname_future_get_with_http_info(x_api_key, deriv_month, opts)

```ruby
begin
  # 先物銘柄コード取得
  data, status_code, headers = api_instance.symbolname_future_get_with_http_info(x_api_key, deriv_month, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SymbolNameSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbolname_future_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **deriv_month** | **Integer** | 限月&lt;br&gt; ※限月はyyyyMM形式で指定します。0を指定した場合、直近限月となります。&lt;br&gt; ※取引最終日に「0」（直近限月）を指定した場合、日中・夜間の時間帯に関わらず、 取引最終日を迎える限月の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。&lt;br&gt; |  |
| **future_code** | **String** | 先物コード&lt;br&gt; ※大文字小文字は区別しません。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;NK225&lt;/td&gt;           &lt;td&gt;日経平均先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;NK225mini&lt;/td&gt;           &lt;td&gt;日経225mini先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;TOPIX&lt;/td&gt;           &lt;td&gt;TOPIX先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;TOPIXmini&lt;/td&gt;           &lt;td&gt;ミニTOPIX先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;GROWTH&lt;/td&gt;           &lt;td&gt;グロース250先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;JPX400&lt;/td&gt;           &lt;td&gt;JPX日経400先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;DOW&lt;/td&gt;           &lt;td&gt;NYダウ先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;VI&lt;/td&gt;           &lt;td&gt;日経平均VI先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;Core30&lt;/td&gt;           &lt;td&gt;TOPIX Core30先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;REIT&lt;/td&gt;           &lt;td&gt;東証REIT指数先物&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;NK225micro&lt;/td&gt;           &lt;td&gt;日経225マイクロ先物&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |

### Return type

[**SymbolNameSuccess**](SymbolNameSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## symbolname_option_get

> <SymbolNameSuccess> symbolname_option_get(x_api_key, deriv_month, put_or_call, strike_price, opts)

オプション銘柄コード取得

オプション銘柄コード取得

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
deriv_month = 56 # Integer | 限月<br>※限月はyyyyMM形式で指定します。0を指定した場合、直近限月となります。<br>※取引最終日に「0」（直近限月）を指定した場合、日中・夜間の時間帯に関わらず、取引最終日を迎える限月の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。
put_or_call = 'put_or_call_example' # String | コール or プット<br> ※大文字小文字は区別しません。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>P</td>           <td>PUT</td>       </tr>       <tr>           <td>C</td>           <td>CALL</td>       </tr>   </tbody> </table>
strike_price = 56 # Integer | 権利行使価格<br>※0を指定した場合、APIを実行した時点でのATMとなります。
opts = {
  option_code: 'option_code_example' # String | オプションコード<br> ※指定なしの場合は、日経225オプションを対象とする。<br> <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>NK225op</td>           <td>日経225オプション</td>       </tr>       <tr>           <td>NK225miniop</td>           <td>日経225ミニオプション</td>       </tr>   </tbody> </table>
}

begin
  # オプション銘柄コード取得
  result = api_instance.symbolname_option_get(x_api_key, deriv_month, put_or_call, strike_price, opts)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbolname_option_get: #{e}"
end
```

#### Using the symbolname_option_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SymbolNameSuccess>, Integer, Hash)> symbolname_option_get_with_http_info(x_api_key, deriv_month, put_or_call, strike_price, opts)

```ruby
begin
  # オプション銘柄コード取得
  data, status_code, headers = api_instance.symbolname_option_get_with_http_info(x_api_key, deriv_month, put_or_call, strike_price, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SymbolNameSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbolname_option_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **deriv_month** | **Integer** | 限月&lt;br&gt;※限月はyyyyMM形式で指定します。0を指定した場合、直近限月となります。&lt;br&gt;※取引最終日に「0」（直近限月）を指定した場合、日中・夜間の時間帯に関わらず、取引最終日を迎える限月の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。 |  |
| **put_or_call** | **String** | コール or プット&lt;br&gt; ※大文字小文字は区別しません。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;P&lt;/td&gt;           &lt;td&gt;PUT&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;C&lt;/td&gt;           &lt;td&gt;CALL&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **strike_price** | **Integer** | 権利行使価格&lt;br&gt;※0を指定した場合、APIを実行した時点でのATMとなります。 |  |
| **option_code** | **String** | オプションコード&lt;br&gt; ※指定なしの場合は、日経225オプションを対象とする。&lt;br&gt; &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;NK225op&lt;/td&gt;           &lt;td&gt;日経225オプション&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;NK225miniop&lt;/td&gt;           &lt;td&gt;日経225ミニオプション&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; | [optional] |

### Return type

[**SymbolNameSuccess**](SymbolNameSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## symbolname_option_mini_get

> <SymbolNameSuccess> symbolname_option_mini_get(x_api_key, deriv_month, deriv_weekly, put_or_call, strike_price)

ミニオプション（限週）銘柄コード取得

ミニオプション（限週）銘柄コード取得

### Examples

```ruby
require 'time'
require 'kabustation_client'

api_instance = KabustationClient::InfoApi.new
x_api_key = 'x_api_key_example' # String | トークン発行メソッドで取得した文字列
deriv_month = 56 # Integer | 限月<br>※限月はyyyyMM形式で指定します。0を指定した場合、直近限月となります。<br>※取引最終日に「0」（直近限月）を指定した場合、日中・夜間の時間帯に関わらず、取引最終日を迎える限月の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。
deriv_weekly = 56 # Integer | 限週<br>※限週は0,1,3,4,5のいずれかを指定します。0を指定した場合、指定した限月の直近限週となります。<br>※取引最終日に「0」（直近限週）を指定した場合、日中・夜間の時間帯に関わらず、取引最終日を迎える限週の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。
put_or_call = 'put_or_call_example' # String | コール or プット<br> ※大文字小文字は区別しません。 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>P</td>           <td>PUT</td>       </tr>       <tr>           <td>C</td>           <td>CALL</td>       </tr>   </tbody> </table>
strike_price = 56 # Integer | 権利行使価格<br>※0を指定した場合、APIを実行した時点でのATMとなります。

begin
  # ミニオプション（限週）銘柄コード取得
  result = api_instance.symbolname_option_mini_get(x_api_key, deriv_month, deriv_weekly, put_or_call, strike_price)
  p result
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbolname_option_mini_get: #{e}"
end
```

#### Using the symbolname_option_mini_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SymbolNameSuccess>, Integer, Hash)> symbolname_option_mini_get_with_http_info(x_api_key, deriv_month, deriv_weekly, put_or_call, strike_price)

```ruby
begin
  # ミニオプション（限週）銘柄コード取得
  data, status_code, headers = api_instance.symbolname_option_mini_get_with_http_info(x_api_key, deriv_month, deriv_weekly, put_or_call, strike_price)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SymbolNameSuccess>
rescue KabustationClient::ApiError => e
  puts "Error when calling InfoApi->symbolname_option_mini_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** | トークン発行メソッドで取得した文字列 |  |
| **deriv_month** | **Integer** | 限月&lt;br&gt;※限月はyyyyMM形式で指定します。0を指定した場合、直近限月となります。&lt;br&gt;※取引最終日に「0」（直近限月）を指定した場合、日中・夜間の時間帯に関わらず、取引最終日を迎える限月の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。 |  |
| **deriv_weekly** | **Integer** | 限週&lt;br&gt;※限週は0,1,3,4,5のいずれかを指定します。0を指定した場合、指定した限月の直近限週となります。&lt;br&gt;※取引最終日に「0」（直近限週）を指定した場合、日中・夜間の時間帯に関わらず、取引最終日を迎える限週の銘柄コードを返します。取引最終日を迎える銘柄の取引は日中取引をもって終了となりますので、ご注意ください。 |  |
| **put_or_call** | **String** | コール or プット&lt;br&gt; ※大文字小文字は区別しません。 &lt;table&gt;   &lt;thead&gt;       &lt;tr&gt;           &lt;th&gt;定義値&lt;/th&gt;           &lt;th&gt;説明&lt;/th&gt;       &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;       &lt;tr&gt;           &lt;td&gt;P&lt;/td&gt;           &lt;td&gt;PUT&lt;/td&gt;       &lt;/tr&gt;       &lt;tr&gt;           &lt;td&gt;C&lt;/td&gt;           &lt;td&gt;CALL&lt;/td&gt;       &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; |  |
| **strike_price** | **Integer** | 権利行使価格&lt;br&gt;※0を指定した場合、APIを実行した時点でのATMとなります。 |  |

### Return type

[**SymbolNameSuccess**](SymbolNameSuccess.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

