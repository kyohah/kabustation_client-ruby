=begin
#kabuステーションAPI

## 定義情報   REST APIのコード一覧、エンドポイントは下記リンク参照     - [REST APIコード一覧](../ptal/error.html)

The version of the OpenAPI document: 1.5

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for KabustationClient::RegisterApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RegisterApi' do
  before do
    # run before each test
    @api_instance = KabustationClient::RegisterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RegisterApi' do
    it 'should create an instance of RegisterApi' do
      expect(@api_instance).to be_instance_of(KabustationClient::RegisterApi)
    end
  end

  # unit tests for register_put
  # 銘柄登録
  # PUSH配信する銘柄を登録します。&lt;br&gt; API登録銘柄リストを開くには、kabuステーションAPIインジケーターを右クリックし「API登録銘柄リスト」を選択してください。
  # @param x_api_key トークン発行メソッドで取得した文字列
  # @param request_register 登録する銘柄のリスト
  # @param [Hash] opts the optional parameters
  # @return [RegistSuccess]
  describe 'register_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for unregister_all_put
  # 銘柄登録全解除
  # API登録銘柄リストに登録されている銘柄をすべて解除します
  # @param x_api_key トークン発行メソッドで取得した文字列
  # @param [Hash] opts the optional parameters
  # @return [UnregisterAllSuccess]
  describe 'unregister_all_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for unregister_put
  # 銘柄登録解除
  # API登録銘柄リストに登録されている銘柄を解除します
  # @param x_api_key トークン発行メソッドで取得した文字列
  # @param request_unregister 登録解除する銘柄のリスト
  # @param [Hash] opts the optional parameters
  # @return [RegistSuccess]
  describe 'unregister_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
