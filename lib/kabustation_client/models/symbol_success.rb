=begin
#kabuステーションAPI

## 定義情報   REST APIのコード一覧、エンドポイントは下記リンク参照     - [REST APIコード一覧](../ptal/error.html)

The version of the OpenAPI document: 1.5

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module KabustationClient
  class SymbolSuccess
    # 銘柄コード
    attr_accessor :symbol

    # 銘柄名
    attr_accessor :symbol_name

    # 銘柄略称<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :display_name

    # 市場コード<br>※株式・先物・オプション銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>東証</td>       </tr>       <tr>           <td>3</td>           <td>名証</td>       </tr>       <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>
    attr_accessor :exchange

    # 市場名称<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :exchange_name

    # 業種コード名<br>※株式銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>0050</td>           <td>水産・農林業</td>       </tr>       <tr>           <td>1050</td>           <td>鉱業</td>       </tr>       <tr>           <td>2050</td>           <td>建設業</td>       </tr>       <tr>           <td>3050</td>           <td>食料品</td>       </tr>       <tr>           <td>3100</td>           <td>繊維製品</td>       </tr>       <tr>           <td>3150</td>           <td>パルプ・紙</td>       </tr>       <tr>           <td>3200</td>           <td>化学</td>       </tr>       <tr>           <td>3250</td>           <td>医薬品</td>       </tr>       <tr>           <td>3300</td>           <td>石油・石炭製品</td>       </tr>       <tr>           <td>3350</td>           <td>ゴム製品</td>       </tr>       <tr>           <td>3400</td>           <td>ガラス・土石製品</td>       </tr>       <tr>           <td>3450</td>           <td>鉄鋼</td>       </tr>       <tr>           <td>3500</td>           <td>非鉄金属</td>       </tr>       <tr>           <td>3550</td>           <td>金属製品</td>       </tr>       <tr>           <td>3600</td>           <td>機械</td>       </tr>       <tr>           <td>3650</td>           <td>電気機器</td>       </tr>       <tr>           <td>3700</td>           <td>輸送用機器</td>       </tr>       <tr>           <td>3750</td>           <td>精密機器</td>       </tr>       <tr>           <td>3800</td>           <td>その他製品</td>       </tr>       <tr>           <td>4050</td>           <td>電気・ガス業</td>       </tr>       <tr>           <td>5050</td>           <td>陸運業</td>       </tr>       <tr>           <td>5100</td>           <td>海運業</td>       </tr>       <tr>           <td>5150</td>           <td>空運業</td>       </tr>       <tr>           <td>5200</td>           <td>倉庫・運輸関連業</td>       </tr>       <tr>           <td>5250</td>           <td>情報・通信業</td>       </tr>       <tr>           <td>6050</td>           <td>卸売業</td>       </tr>       <tr>           <td>6100</td>           <td>小売業</td>       </tr>       <tr>           <td>7050</td>           <td>銀行業</td>       </tr>       <tr>           <td>7100</td>           <td>証券、商品先物取引業</td>       </tr>       <tr>           <td>7150</td>           <td>保険業</td>       </tr>       <tr>           <td>7200</td>           <td>その他金融業</td>       </tr>       <tr>           <td>8050</td>           <td>不動産業</td>       </tr>       <tr>           <td>9050</td>           <td>サービス業</td>       </tr>       <tr>           <td>9999</td>           <td>その他</td>       </tr>   </tbody> </table>
    attr_accessor :bis_category

    # 時価総額<br>※株式銘柄の場合のみ<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :total_market_value

    # 発行済み株式数（千株）<br>※株式銘柄の場合のみ<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :total_stocks

    # 売買単位<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :trading_unit

    # 決算期日<br>※株式銘柄の場合のみ<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :fiscal_year_end_basic

    # 呼値グループ<br> ※株式・先物・オプション銘柄の場合のみ<br> ※各呼値コードが対応する商品は以下となります。<BR> 　株式の呼値の単位の詳細は [JPXページ](https://www.jpx.co.jp/equities/trading/domestic/07.html) をご覧ください。<BR> 　10000：株式(TOPIX500採用銘柄以外)　<br> 　10003：株式(TOPIX500採用銘柄)<br> 　10118 : 日経平均先物<br> 　10119 : 日経225mini<br> 　10318 : 日経平均オプション<br> 　10706 : ﾐﾆTOPIX先物<br> 　10718 : TOPIX先物<br> 　12122 : JPX日経400指数先物<br> 　14473 : NYダウ先物<br> 　14515 : 日経平均VI先物<br> 　15411 : グロース250先物<br> 　15569 : 東証REIT指数先物<br> 　17163 : TOPIXCore30指数先物<br> <table>   <thead>       <tr>           <th>呼値コード</th>           <th>値段の水準</th>           <th>呼値単位</th>       </tr>   </thead>   <tbody>       <tr>           <td>10000</td>           <td>3000円以下</td>           <td>1</td>       </tr>       <tr>           <td>10000</td>           <td>5000円以下</td>           <td>5</td>       </tr>       <tr>           <td>10000</td>           <td>30000円以下</td>           <td>10</td>       </tr>       <tr>           <td>10000</td>           <td>50000円以下</td>           <td>50</td>       </tr>       <tr>           <td>10000</td>           <td>300000円以下</td>           <td>100</td>       </tr>       <tr>           <td>10000</td>           <td>500000円以下</td>           <td>500</td>       </tr>       <tr>           <td>10000</td>           <td>3000000円以下</td>           <td>1000</td>       </tr>       <tr>           <td>10000</td>           <td>5000000円以下</td>           <td>5000</td>       </tr>       <tr>           <td>10000</td>           <td>30000000円以下</td>           <td>10000</td>       </tr>       <tr>           <td>10000</td>           <td>50000000円以下</td>           <td>50000</td>       </tr>       <tr>           <td>10000</td>           <td>50000000円超</td>           <td>100000</td>       </tr>       <tr>           <td>10003</td>           <td>1000円以下</td>           <td>0.1</td>       </tr>       <tr>           <td>10003</td>           <td>3000円以下</td>           <td>0.5</td>       </tr>       <tr>           <td>10003</td>           <td>10000円以下</td>           <td>1</td>       </tr>       <tr>           <td>10003</td>           <td>30000円以下</td>           <td>5</td>       </tr>       <tr>           <td>10003</td>           <td>100000円以下</td>           <td>10</td>       </tr>       <tr>           <td>10003</td>           <td>300000円以下</td>           <td>50</td>       </tr>       <tr>           <td>10003</td>           <td>1000000円以下</td>           <td>100</td>       </tr>       <tr>           <td>10003</td>           <td>3000000円以下</td>           <td>500</td>       </tr>       <tr>           <td>10003</td>           <td>10000000円以下</td>           <td>1000</td>       </tr>       <tr>           <td>10003</td>           <td>30000000円以下</td>           <td>5000</td>       </tr>       <tr>           <td>10003</td>           <td>30000000円超</td>           <td>10000</td>       </tr>       <tr>           <td>10118</td>           <td>-</td>           <td>10</td>       </tr>       <tr>           <td>10119</td>           <td>-</td>           <td>5</td>       </tr>       <tr>           <td>10318</td>           <td>100円以下</td>           <td>1</td>       </tr>       <tr>           <td>10318</td>           <td>1000円以下</td>           <td>5</td>       </tr>       <tr>           <td>10318</td>           <td>1000円超</td>           <td>10</td>       </tr>       <tr>           <td>10706</td>           <td>-</td>           <td>0.25</td>       </tr>       <tr>           <td>10718</td>           <td>-</td>           <td>0.5</td>       </tr>       <tr>           <td>12122</td>           <td>-</td>           <td>5</td>       </tr>       <tr>           <td>14473</td>           <td>-</td>           <td>1</td>       </tr>       <tr>           <td>14515</td>           <td>-</td>           <td>0.05</td>       </tr>       <tr>           <td>15411</td>           <td>-</td>           <td>1</td>       </tr>       <tr>           <td>15569</td>           <td>-</td>           <td>0.5</td>       </tr>       <tr>           <td>17163</td>           <td>-</td>           <td>0.5</td>       </tr>   </tbody> </table>
    attr_accessor :price_range_group

    # 一般信用買建フラグ<br>※trueのとき、一般信用(長期)または一般信用(デイトレ)が買建可能<br>※株式銘柄の場合のみ
    attr_accessor :kc_margin_buy

    # 一般信用売建フラグ<br>※trueのとき、一般信用(長期)または一般信用(デイトレ)が売建可能<br>※株式銘柄の場合のみ
    attr_accessor :kc_margin_sell

    # 制度信用買建フラグ<br>※trueのとき制度信用買建可能<br>※株式銘柄の場合のみ
    attr_accessor :margin_buy

    # 制度信用売建フラグ<br>※trueのとき制度信用売建可能<br>※株式銘柄の場合のみ
    attr_accessor :margin_sell

    # 値幅上限<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :upper_limit

    # 値幅下限<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :lower_limit

    # 原資産コード<br>※先物・オプション銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>NK225</td>           <td>日経225</td>       </tr>       <tr>           <td>NK300</td>           <td>日経300</td>       </tr>       <tr>           <td>GROWTH</td>           <td>グロース250先物</td>       </tr>       <tr>           <td>JPX400</td>           <td>JPX日経400</td>       </tr>       <tr>           <td>TOPIX</td>           <td>TOPIX</td>       </tr>       <tr>           <td>NKVI</td>           <td>日経平均VI</td>       </tr>       <tr>           <td>DJIA</td>           <td>NYダウ</td>       </tr>       <tr>           <td>TSEREITINDEX</td>           <td>東証REIT指数</td>       </tr>       <tr>           <td>TOPIXCORE30</td>           <td>TOPIX Core30</td>       </tr>   </tbody> </table>
    attr_accessor :underlyer

    # 限月-年月<br>※「限月-年月」は「年(yyyy)/月(MM)」で表示します。<br>※先物・オプション銘柄の場合のみ
    attr_accessor :deriv_month

    # 取引開始日<br>※先物・オプション銘柄の場合のみ
    attr_accessor :trade_start

    # 取引終了日<br>※先物・オプション銘柄の場合のみ
    attr_accessor :trade_end

    # 権利行使価格<br>※オプション銘柄の場合のみ
    attr_accessor :strike_price

    # プット/コール区分<br>※オプション銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>プット</td>       </tr>       <tr>           <td>2</td>           <td>コール</td>       </tr>   </tbody> </table>
    attr_accessor :put_or_call

    # 清算値<br>※先物銘柄の場合のみ<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :clearing_price

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'symbol' => :'Symbol',
        :'symbol_name' => :'SymbolName',
        :'display_name' => :'DisplayName',
        :'exchange' => :'Exchange',
        :'exchange_name' => :'ExchangeName',
        :'bis_category' => :'BisCategory',
        :'total_market_value' => :'TotalMarketValue',
        :'total_stocks' => :'TotalStocks',
        :'trading_unit' => :'TradingUnit',
        :'fiscal_year_end_basic' => :'FiscalYearEndBasic',
        :'price_range_group' => :'PriceRangeGroup',
        :'kc_margin_buy' => :'KCMarginBuy',
        :'kc_margin_sell' => :'KCMarginSell',
        :'margin_buy' => :'MarginBuy',
        :'margin_sell' => :'MarginSell',
        :'upper_limit' => :'UpperLimit',
        :'lower_limit' => :'LowerLimit',
        :'underlyer' => :'Underlyer',
        :'deriv_month' => :'DerivMonth',
        :'trade_start' => :'TradeStart',
        :'trade_end' => :'TradeEnd',
        :'strike_price' => :'StrikePrice',
        :'put_or_call' => :'PutOrCall',
        :'clearing_price' => :'ClearingPrice'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'symbol' => :'String',
        :'symbol_name' => :'String',
        :'display_name' => :'String',
        :'exchange' => :'Integer',
        :'exchange_name' => :'String',
        :'bis_category' => :'String',
        :'total_market_value' => :'Float',
        :'total_stocks' => :'Float',
        :'trading_unit' => :'Float',
        :'fiscal_year_end_basic' => :'Integer',
        :'price_range_group' => :'String',
        :'kc_margin_buy' => :'Boolean',
        :'kc_margin_sell' => :'Boolean',
        :'margin_buy' => :'Boolean',
        :'margin_sell' => :'Boolean',
        :'upper_limit' => :'Float',
        :'lower_limit' => :'Float',
        :'underlyer' => :'String',
        :'deriv_month' => :'String',
        :'trade_start' => :'Integer',
        :'trade_end' => :'Integer',
        :'strike_price' => :'Float',
        :'put_or_call' => :'Integer',
        :'clearing_price' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `KabustationClient::SymbolSuccess` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KabustationClient::SymbolSuccess`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'symbol_name')
        self.symbol_name = attributes[:'symbol_name']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'exchange')
        self.exchange = attributes[:'exchange']
      end

      if attributes.key?(:'exchange_name')
        self.exchange_name = attributes[:'exchange_name']
      end

      if attributes.key?(:'bis_category')
        self.bis_category = attributes[:'bis_category']
      end

      if attributes.key?(:'total_market_value')
        self.total_market_value = attributes[:'total_market_value']
      end

      if attributes.key?(:'total_stocks')
        self.total_stocks = attributes[:'total_stocks']
      end

      if attributes.key?(:'trading_unit')
        self.trading_unit = attributes[:'trading_unit']
      end

      if attributes.key?(:'fiscal_year_end_basic')
        self.fiscal_year_end_basic = attributes[:'fiscal_year_end_basic']
      end

      if attributes.key?(:'price_range_group')
        self.price_range_group = attributes[:'price_range_group']
      end

      if attributes.key?(:'kc_margin_buy')
        self.kc_margin_buy = attributes[:'kc_margin_buy']
      end

      if attributes.key?(:'kc_margin_sell')
        self.kc_margin_sell = attributes[:'kc_margin_sell']
      end

      if attributes.key?(:'margin_buy')
        self.margin_buy = attributes[:'margin_buy']
      end

      if attributes.key?(:'margin_sell')
        self.margin_sell = attributes[:'margin_sell']
      end

      if attributes.key?(:'upper_limit')
        self.upper_limit = attributes[:'upper_limit']
      end

      if attributes.key?(:'lower_limit')
        self.lower_limit = attributes[:'lower_limit']
      end

      if attributes.key?(:'underlyer')
        self.underlyer = attributes[:'underlyer']
      end

      if attributes.key?(:'deriv_month')
        self.deriv_month = attributes[:'deriv_month']
      end

      if attributes.key?(:'trade_start')
        self.trade_start = attributes[:'trade_start']
      end

      if attributes.key?(:'trade_end')
        self.trade_end = attributes[:'trade_end']
      end

      if attributes.key?(:'strike_price')
        self.strike_price = attributes[:'strike_price']
      end

      if attributes.key?(:'put_or_call')
        self.put_or_call = attributes[:'put_or_call']
      end

      if attributes.key?(:'clearing_price')
        self.clearing_price = attributes[:'clearing_price']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          symbol == o.symbol &&
          symbol_name == o.symbol_name &&
          display_name == o.display_name &&
          exchange == o.exchange &&
          exchange_name == o.exchange_name &&
          bis_category == o.bis_category &&
          total_market_value == o.total_market_value &&
          total_stocks == o.total_stocks &&
          trading_unit == o.trading_unit &&
          fiscal_year_end_basic == o.fiscal_year_end_basic &&
          price_range_group == o.price_range_group &&
          kc_margin_buy == o.kc_margin_buy &&
          kc_margin_sell == o.kc_margin_sell &&
          margin_buy == o.margin_buy &&
          margin_sell == o.margin_sell &&
          upper_limit == o.upper_limit &&
          lower_limit == o.lower_limit &&
          underlyer == o.underlyer &&
          deriv_month == o.deriv_month &&
          trade_start == o.trade_start &&
          trade_end == o.trade_end &&
          strike_price == o.strike_price &&
          put_or_call == o.put_or_call &&
          clearing_price == o.clearing_price
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [symbol, symbol_name, display_name, exchange, exchange_name, bis_category, total_market_value, total_stocks, trading_unit, fiscal_year_end_basic, price_range_group, kc_margin_buy, kc_margin_sell, margin_buy, margin_sell, upper_limit, lower_limit, underlyer, deriv_month, trade_start, trade_end, strike_price, put_or_call, clearing_price].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = KabustationClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
