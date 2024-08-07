# kabustation_client

KabustationClient - the Ruby gem for the kabuステーションAPI

# 定義情報 
 REST APIのコード一覧、エンドポイントは下記リンク参照  
  - [REST APIコード一覧](../ptal/error.html)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.5
- Package version: 1.2.0
- Generator version: 7.6.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://kabucom.github.io/kabusapi/ptal/index.html](https://kabucom.github.io/kabusapi/ptal/index.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build kabustation_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./kabustation_client-1.1.0.gem
```

(for development, run `gem install --dev ./kabustation_client-1.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'kabustation_client', '~> 1.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/kyohah/kabustation_client-ruby, then add the following in the Gemfile:

    gem 'kabustation_client', :git => 'https://github.com/kyohah/kabustation_client-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

## Windowsのnginxの設定
windows マシンで rubyを動かすなら不要

```nginx.conf
worker_processes  1;
events {
    worker_connections  1024;
}
http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    keepalive_timeout  65;

    map $http_upgrade $connection_upgrade { 
    default upgrade;
    ''      close;
    } 

    server {
        listen       80;
        server_name  localhost;

        proxy_http_version 1.1;
        proxy_set_header Host localhost;
        proxy_set_header Upgrade $http_upgrade; 
        proxy_set_header Connection $connection_upgrade;

        location /production/ { # 本番用
            proxy_pass   http://127.0.0.1:18080/kabusapi;
        }

        location /development/ { # 検証用
            proxy_pass   http://127.0.0.1:18081/kabusapi;
        }
    }
}
```
```ruby
require 'kabustation_client'

KabustationClient.configure do |config|
  config.host = ENV.fetch('KABUSTATION_HOST', 'localhost')
  config.base_path = '/production'
end

api_instance = KabustationClient::AuthApi.new
request_token = KabustationClient::RequestToken.new({api_password: 'xxxxxx'}) # RequestToken | 

begin
  #トークン発行
  result = api_instance.token_post(request_token)
  p result
rescue KabustationClient::ApiError => e
  puts "Exception when calling AuthApi->token_post: #{e}"
end


KabustationClient.configure.api_key['ApiKeyAuth'] = result.token

register_instance = KabustationClient::RegisterApi.new
instance = KabustationClient::RequestRegister.new(symbols: [{symbol: '5401', exchange: 1}])
result = register_instance.register_put(instance)


client = KabustationClient::PushClient.new(
  open: -> { puts "WebSocket opened" },
  message: -> (board) { puts "Received message: #{board.symbol_name}" }, # KabustationClient::BoardSuccess
  error: -> (e) { puts "Error occurred: #{e}" },
  close: -> (e) { puts "Connection closed: #{e}" }
)
client.connect

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:18080/kabusapi*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*KabustationClient::AuthApi* | [**token_post**](docs/AuthApi.md#token_post) | **POST** /token | トークン発行
*KabustationClient::InfoApi* | [**apisoftlimit_get**](docs/InfoApi.md#apisoftlimit_get) | **GET** /apisoftlimit | ソフトリミット
*KabustationClient::InfoApi* | [**board_get**](docs/InfoApi.md#board_get) | **GET** /board/{symbol} | 時価情報・板情報
*KabustationClient::InfoApi* | [**exchange_get**](docs/InfoApi.md#exchange_get) | **GET** /exchange/{symbol} | 為替情報
*KabustationClient::InfoApi* | [**marginpremium_get**](docs/InfoApi.md#marginpremium_get) | **GET** /margin/marginpremium/{symbol} | プレミアム料取得
*KabustationClient::InfoApi* | [**orders_get**](docs/InfoApi.md#orders_get) | **GET** /orders | 注文約定照会
*KabustationClient::InfoApi* | [**positions_get**](docs/InfoApi.md#positions_get) | **GET** /positions | 残高照会
*KabustationClient::InfoApi* | [**primary_exchange_get**](docs/InfoApi.md#primary_exchange_get) | **GET** /primaryexchange/{symbol} | 優先市場
*KabustationClient::InfoApi* | [**ranking_get**](docs/InfoApi.md#ranking_get) | **GET** /ranking | 詳細ランキング
*KabustationClient::InfoApi* | [**regulations_get**](docs/InfoApi.md#regulations_get) | **GET** /regulations/{symbol} | 規制情報
*KabustationClient::InfoApi* | [**symbol_get**](docs/InfoApi.md#symbol_get) | **GET** /symbol/{symbol} | 銘柄情報
*KabustationClient::InfoApi* | [**symbolname_future_get**](docs/InfoApi.md#symbolname_future_get) | **GET** /symbolname/future | 先物銘柄コード取得
*KabustationClient::InfoApi* | [**symbolname_option_get**](docs/InfoApi.md#symbolname_option_get) | **GET** /symbolname/option | オプション銘柄コード取得
*KabustationClient::InfoApi* | [**symbolname_option_mini_get**](docs/InfoApi.md#symbolname_option_mini_get) | **GET** /symbolname/minioptionweekly | ミニオプション（限週）銘柄コード取得
*KabustationClient::OrderApi* | [**cancelorder_put**](docs/OrderApi.md#cancelorder_put) | **PUT** /cancelorder | 注文取消
*KabustationClient::OrderApi* | [**sendoder_future_post**](docs/OrderApi.md#sendoder_future_post) | **POST** /sendorder/future | 注文発注（先物）
*KabustationClient::OrderApi* | [**sendorder_option_post**](docs/OrderApi.md#sendorder_option_post) | **POST** /sendorder/option | 注文発注（オプション）
*KabustationClient::OrderApi* | [**sendorder_post**](docs/OrderApi.md#sendorder_post) | **POST** /sendorder | 注文発注（現物・信用）
*KabustationClient::RegisterApi* | [**register_put**](docs/RegisterApi.md#register_put) | **PUT** /register | 銘柄登録
*KabustationClient::RegisterApi* | [**unregister_all_put**](docs/RegisterApi.md#unregister_all_put) | **PUT** /unregister/all | 銘柄登録全解除
*KabustationClient::RegisterApi* | [**unregister_put**](docs/RegisterApi.md#unregister_put) | **PUT** /unregister | 銘柄登録解除
*KabustationClient::WalletApi* | [**wallet_cash_get**](docs/WalletApi.md#wallet_cash_get) | **GET** /wallet/cash | 取引余力（現物）
*KabustationClient::WalletApi* | [**wallet_cash_symbol_get**](docs/WalletApi.md#wallet_cash_symbol_get) | **GET** /wallet/cash/{symbol} | 取引余力（現物）（銘柄指定）
*KabustationClient::WalletApi* | [**wallet_future_get**](docs/WalletApi.md#wallet_future_get) | **GET** /wallet/future | 取引余力（先物）
*KabustationClient::WalletApi* | [**wallet_future_symbol_get**](docs/WalletApi.md#wallet_future_symbol_get) | **GET** /wallet/future/{symbol} | 取引余力（先物）（銘柄指定）
*KabustationClient::WalletApi* | [**wallet_margin_get**](docs/WalletApi.md#wallet_margin_get) | **GET** /wallet/margin | 取引余力（信用）
*KabustationClient::WalletApi* | [**wallet_margin_symbol_get**](docs/WalletApi.md#wallet_margin_symbol_get) | **GET** /wallet/margin/{symbol} | 取引余力（信用）（銘柄指定）
*KabustationClient::WalletApi* | [**wallet_option_get**](docs/WalletApi.md#wallet_option_get) | **GET** /wallet/option | 取引余力（オプション）
*KabustationClient::WalletApi* | [**wallet_option_symbol_get**](docs/WalletApi.md#wallet_option_symbol_get) | **GET** /wallet/option/{symbol} | 取引余力（オプション）（銘柄指定）


## Documentation for Models

 - [KabustationClient::ApiSoftLimitResponse](docs/ApiSoftLimitResponse.md)
 - [KabustationClient::BoardSuccess](docs/BoardSuccess.md)
 - [KabustationClient::BoardSuccessBuy1](docs/BoardSuccessBuy1.md)
 - [KabustationClient::BoardSuccessBuy10](docs/BoardSuccessBuy10.md)
 - [KabustationClient::BoardSuccessBuy2](docs/BoardSuccessBuy2.md)
 - [KabustationClient::BoardSuccessBuy3](docs/BoardSuccessBuy3.md)
 - [KabustationClient::BoardSuccessBuy4](docs/BoardSuccessBuy4.md)
 - [KabustationClient::BoardSuccessBuy5](docs/BoardSuccessBuy5.md)
 - [KabustationClient::BoardSuccessBuy6](docs/BoardSuccessBuy6.md)
 - [KabustationClient::BoardSuccessBuy7](docs/BoardSuccessBuy7.md)
 - [KabustationClient::BoardSuccessBuy8](docs/BoardSuccessBuy8.md)
 - [KabustationClient::BoardSuccessBuy9](docs/BoardSuccessBuy9.md)
 - [KabustationClient::BoardSuccessSell1](docs/BoardSuccessSell1.md)
 - [KabustationClient::BoardSuccessSell10](docs/BoardSuccessSell10.md)
 - [KabustationClient::BoardSuccessSell2](docs/BoardSuccessSell2.md)
 - [KabustationClient::BoardSuccessSell3](docs/BoardSuccessSell3.md)
 - [KabustationClient::BoardSuccessSell4](docs/BoardSuccessSell4.md)
 - [KabustationClient::BoardSuccessSell5](docs/BoardSuccessSell5.md)
 - [KabustationClient::BoardSuccessSell6](docs/BoardSuccessSell6.md)
 - [KabustationClient::BoardSuccessSell7](docs/BoardSuccessSell7.md)
 - [KabustationClient::BoardSuccessSell8](docs/BoardSuccessSell8.md)
 - [KabustationClient::BoardSuccessSell9](docs/BoardSuccessSell9.md)
 - [KabustationClient::ErrorResponse](docs/ErrorResponse.md)
 - [KabustationClient::ExchangeResponse](docs/ExchangeResponse.md)
 - [KabustationClient::MarginPremiumResponse](docs/MarginPremiumResponse.md)
 - [KabustationClient::MarginPremiumResponseDayTrade](docs/MarginPremiumResponseDayTrade.md)
 - [KabustationClient::MarginPremiumResponseGeneralMargin](docs/MarginPremiumResponseGeneralMargin.md)
 - [KabustationClient::OrderSuccess](docs/OrderSuccess.md)
 - [KabustationClient::OrdersSuccess](docs/OrdersSuccess.md)
 - [KabustationClient::OrdersSuccessDetailsInner](docs/OrdersSuccessDetailsInner.md)
 - [KabustationClient::Positions](docs/Positions.md)
 - [KabustationClient::PositionsDeriv](docs/PositionsDeriv.md)
 - [KabustationClient::PositionsSuccess](docs/PositionsSuccess.md)
 - [KabustationClient::PrimaryExchangeResponse](docs/PrimaryExchangeResponse.md)
 - [KabustationClient::RankingByCategoryResponse](docs/RankingByCategoryResponse.md)
 - [KabustationClient::RankingByCategoryResponseRankingInner](docs/RankingByCategoryResponseRankingInner.md)
 - [KabustationClient::RankingByMarginResponse](docs/RankingByMarginResponse.md)
 - [KabustationClient::RankingByMarginResponseRankingInner](docs/RankingByMarginResponseRankingInner.md)
 - [KabustationClient::RankingByTickCountResponse](docs/RankingByTickCountResponse.md)
 - [KabustationClient::RankingByTickCountResponseRankingInner](docs/RankingByTickCountResponseRankingInner.md)
 - [KabustationClient::RankingByTradeValueResponse](docs/RankingByTradeValueResponse.md)
 - [KabustationClient::RankingByTradeValueResponseRankingInner](docs/RankingByTradeValueResponseRankingInner.md)
 - [KabustationClient::RankingByTradeVolumeResponse](docs/RankingByTradeVolumeResponse.md)
 - [KabustationClient::RankingByTradeVolumeResponseRankingInner](docs/RankingByTradeVolumeResponseRankingInner.md)
 - [KabustationClient::RankingDefaultResponse](docs/RankingDefaultResponse.md)
 - [KabustationClient::RankingDefaultResponseRankingInner](docs/RankingDefaultResponseRankingInner.md)
 - [KabustationClient::RankingGet200Response](docs/RankingGet200Response.md)
 - [KabustationClient::RegistSuccess](docs/RegistSuccess.md)
 - [KabustationClient::RegulationsResponse](docs/RegulationsResponse.md)
 - [KabustationClient::RegulationsResponseRegulationsInfoInner](docs/RegulationsResponseRegulationsInfoInner.md)
 - [KabustationClient::RequestCancelOrder](docs/RequestCancelOrder.md)
 - [KabustationClient::RequestRegister](docs/RequestRegister.md)
 - [KabustationClient::RequestRegisterSymbolsInner](docs/RequestRegisterSymbolsInner.md)
 - [KabustationClient::RequestSendOrder](docs/RequestSendOrder.md)
 - [KabustationClient::RequestSendOrderDerivFuture](docs/RequestSendOrderDerivFuture.md)
 - [KabustationClient::RequestSendOrderDerivFutureReverseLimitOrder](docs/RequestSendOrderDerivFutureReverseLimitOrder.md)
 - [KabustationClient::RequestSendOrderDerivOption](docs/RequestSendOrderDerivOption.md)
 - [KabustationClient::RequestSendOrderReverseLimitOrder](docs/RequestSendOrderReverseLimitOrder.md)
 - [KabustationClient::RequestToken](docs/RequestToken.md)
 - [KabustationClient::RequestUnregister](docs/RequestUnregister.md)
 - [KabustationClient::SymbolNameSuccess](docs/SymbolNameSuccess.md)
 - [KabustationClient::SymbolSuccess](docs/SymbolSuccess.md)
 - [KabustationClient::TokenSuccess](docs/TokenSuccess.md)
 - [KabustationClient::UnregisterAllSuccess](docs/UnregisterAllSuccess.md)
 - [KabustationClient::WalletCashSuccess](docs/WalletCashSuccess.md)
 - [KabustationClient::WalletFutureSuccess](docs/WalletFutureSuccess.md)
 - [KabustationClient::WalletMarginSuccess](docs/WalletMarginSuccess.md)
 - [KabustationClient::WalletOptionSuccess](docs/WalletOptionSuccess.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### ApiKeyAuth


- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header

