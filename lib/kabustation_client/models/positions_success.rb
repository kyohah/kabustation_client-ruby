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
  class PositionsSuccess
    # 約定番号<br>※現物取引では、nullが返ります。
    attr_accessor :execution_id

    # 口座種別 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>2</td>           <td>一般</td>       </tr>       <tr>           <td>4</td>           <td>特定</td>       </tr>       <tr>           <td>12</td>           <td>法人</td>       </tr>   </tbody> </table>
    attr_accessor :account_type

    # 銘柄コード
    attr_accessor :symbol

    # 銘柄名
    attr_accessor :symbol_name

    # 市場コード <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>東証</td>       </tr>       <tr>           <td>3</td>           <td>名証</td>       </tr>       <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>
    attr_accessor :exchange

    # 市場名
    attr_accessor :exchange_name

    # 銘柄種別<br>※先物・オプション銘柄の場合のみ
    attr_accessor :security_type

    # 約定日（建玉日）<br>※信用・先物・オプションの場合のみ<br>※現物取引では、nullが返ります。
    attr_accessor :execution_day

    # 値段
    attr_accessor :price

    # 残数量（保有数量）
    attr_accessor :leaves_qty

    # 拘束数量（返済のために拘束されている数量）
    attr_accessor :hold_qty

    # 売買区分 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>売</td>       </tr>       <tr>           <td>2</td>           <td>買</td>       </tr>   </tbody> </table>
    attr_accessor :side

    # 諸経費<br>※信用・先物・オプションの場合のみ
    attr_accessor :expenses

    # 手数料<br>※信用・先物・オプションの場合のみ
    attr_accessor :commission

    # 手数料消費税<br>※信用・先物・オプションの場合のみ
    attr_accessor :commission_tax

    # 返済期日<br>※信用・先物・オプションの場合のみ
    attr_accessor :expire_day

    # 信用取引区分<br>※信用の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>制度信用</td>       </tr>       <tr>           <td>2</td>           <td>一般信用（長期）</td>       </tr>       <tr>           <td>3</td>           <td>一般信用（デイトレ）</td>       </tr>   </tbody> </table>
    attr_accessor :margin_trade_type

    # 現在値<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :current_price

    # 評価金額<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :valuation

    # 評価損益額<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :profit_loss

    # 評価損益率<br>追加情報出力フラグ：falseの場合、null
    attr_accessor :profit_loss_rate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'execution_id' => :'ExecutionID',
        :'account_type' => :'AccountType',
        :'symbol' => :'Symbol',
        :'symbol_name' => :'SymbolName',
        :'exchange' => :'Exchange',
        :'exchange_name' => :'ExchangeName',
        :'security_type' => :'SecurityType',
        :'execution_day' => :'ExecutionDay',
        :'price' => :'Price',
        :'leaves_qty' => :'LeavesQty',
        :'hold_qty' => :'HoldQty',
        :'side' => :'Side',
        :'expenses' => :'Expenses',
        :'commission' => :'Commission',
        :'commission_tax' => :'CommissionTax',
        :'expire_day' => :'ExpireDay',
        :'margin_trade_type' => :'MarginTradeType',
        :'current_price' => :'CurrentPrice',
        :'valuation' => :'Valuation',
        :'profit_loss' => :'ProfitLoss',
        :'profit_loss_rate' => :'ProfitLossRate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'execution_id' => :'String',
        :'account_type' => :'Integer',
        :'symbol' => :'String',
        :'symbol_name' => :'String',
        :'exchange' => :'Integer',
        :'exchange_name' => :'String',
        :'security_type' => :'Integer',
        :'execution_day' => :'Integer',
        :'price' => :'Float',
        :'leaves_qty' => :'Float',
        :'hold_qty' => :'Float',
        :'side' => :'String',
        :'expenses' => :'Float',
        :'commission' => :'Float',
        :'commission_tax' => :'Float',
        :'expire_day' => :'Integer',
        :'margin_trade_type' => :'Integer',
        :'current_price' => :'Float',
        :'valuation' => :'Float',
        :'profit_loss' => :'Float',
        :'profit_loss_rate' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KabustationClient::PositionsSuccess` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KabustationClient::PositionsSuccess`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'execution_id')
        self.execution_id = attributes[:'execution_id']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'symbol_name')
        self.symbol_name = attributes[:'symbol_name']
      end

      if attributes.key?(:'exchange')
        self.exchange = attributes[:'exchange']
      end

      if attributes.key?(:'exchange_name')
        self.exchange_name = attributes[:'exchange_name']
      end

      if attributes.key?(:'security_type')
        self.security_type = attributes[:'security_type']
      end

      if attributes.key?(:'execution_day')
        self.execution_day = attributes[:'execution_day']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'leaves_qty')
        self.leaves_qty = attributes[:'leaves_qty']
      end

      if attributes.key?(:'hold_qty')
        self.hold_qty = attributes[:'hold_qty']
      end

      if attributes.key?(:'side')
        self.side = attributes[:'side']
      end

      if attributes.key?(:'expenses')
        self.expenses = attributes[:'expenses']
      end

      if attributes.key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.key?(:'commission_tax')
        self.commission_tax = attributes[:'commission_tax']
      end

      if attributes.key?(:'expire_day')
        self.expire_day = attributes[:'expire_day']
      end

      if attributes.key?(:'margin_trade_type')
        self.margin_trade_type = attributes[:'margin_trade_type']
      end

      if attributes.key?(:'current_price')
        self.current_price = attributes[:'current_price']
      end

      if attributes.key?(:'valuation')
        self.valuation = attributes[:'valuation']
      end

      if attributes.key?(:'profit_loss')
        self.profit_loss = attributes[:'profit_loss']
      end

      if attributes.key?(:'profit_loss_rate')
        self.profit_loss_rate = attributes[:'profit_loss_rate']
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
          execution_id == o.execution_id &&
          account_type == o.account_type &&
          symbol == o.symbol &&
          symbol_name == o.symbol_name &&
          exchange == o.exchange &&
          exchange_name == o.exchange_name &&
          security_type == o.security_type &&
          execution_day == o.execution_day &&
          price == o.price &&
          leaves_qty == o.leaves_qty &&
          hold_qty == o.hold_qty &&
          side == o.side &&
          expenses == o.expenses &&
          commission == o.commission &&
          commission_tax == o.commission_tax &&
          expire_day == o.expire_day &&
          margin_trade_type == o.margin_trade_type &&
          current_price == o.current_price &&
          valuation == o.valuation &&
          profit_loss == o.profit_loss &&
          profit_loss_rate == o.profit_loss_rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [execution_id, account_type, symbol, symbol_name, exchange, exchange_name, security_type, execution_day, price, leaves_qty, hold_qty, side, expenses, commission, commission_tax, expire_day, margin_trade_type, current_price, valuation, profit_loss, profit_loss_rate].hash
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
