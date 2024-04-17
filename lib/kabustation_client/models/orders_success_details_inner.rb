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
  class OrdersSuccessDetailsInner
    # ※注文明細レコードの生成順序です。<br>※通番であるとは限りませんが、大小による順序は保たれています。
    attr_accessor :seq_num

    # 注文詳細番号
    attr_accessor :id

    # 明細種別 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>受付</td>       </tr>       <tr>           <td>2</td>           <td>繰越</td>       </tr>       <tr>           <td>3</td>           <td>期限切れ</td>       </tr>       <tr>           <td>4</td>           <td>発注</td>       </tr>       <tr>           <td>5</td>           <td>訂正</td>       </tr>       <tr>           <td>6</td>           <td>取消</td>       </tr>       <tr>           <td>7</td>           <td>失効</td>       </tr>       <tr>           <td>8</td>           <td>約定</td>       </tr>   </tbody> </table>
    attr_accessor :rec_type

    # 取引所番号
    attr_accessor :exchange_id

    # 状態 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>待機（発注待機）</td>       </tr>       <tr>           <td>2</td>           <td>処理中（発注送信中・訂正送信中・取消送信中）</td>       </tr>       <tr>           <td>3</td>           <td>処理済（発注済・訂正済・取消済・全約定・期限切れ）</td>       </tr>       <tr>           <td>4</td>           <td>エラー</td>       </tr>       <tr>           <td>5</td>           <td>削除済み</td>       </tr>   </tbody> </table>
    attr_accessor :state

    # 処理時刻
    attr_accessor :transact_time

    # 執行条件 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>null</td>           <td>RecType=[6] 取消 の場合</td>       </tr>       <tr>           <td>0</td>           <td>RecType=[3] 期限切れ, [7] 失効, [8] 約定 の場合</td>       </tr>       <tr>           <td>1</td>           <td>ザラバ</td>       </tr>       <tr>           <td>2</td>           <td>寄り</td>       </tr>       <tr>           <td>3</td>           <td>引け</td>       </tr>       <tr>           <td>4</td>           <td>不成</td>       </tr>       <tr>           <td>5</td>           <td>対当指値</td>       </tr>       <tr>           <td>6</td>           <td>IOC</td>       </tr>   </tbody> </table>
    attr_accessor :ord_type

    # 値段
    attr_accessor :price

    # 数量
    attr_accessor :qty

    # 約定番号
    attr_accessor :execution_id

    # 約定日時
    attr_accessor :execution_day

    # 受渡日
    attr_accessor :deliv_day

    # 手数料<br>※注文詳細の明細種別が約定（RecType=8)の場合に設定。
    attr_accessor :commission

    # 手数料消費税<br>※明細種別は約定（RecType=8）の場合にのみ表示されます。
    attr_accessor :commission_tax

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seq_num' => :'SeqNum',
        :'id' => :'ID',
        :'rec_type' => :'RecType',
        :'exchange_id' => :'ExchangeID',
        :'state' => :'State',
        :'transact_time' => :'TransactTime',
        :'ord_type' => :'OrdType',
        :'price' => :'Price',
        :'qty' => :'Qty',
        :'execution_id' => :'ExecutionID',
        :'execution_day' => :'ExecutionDay',
        :'deliv_day' => :'DelivDay',
        :'commission' => :'Commission',
        :'commission_tax' => :'CommissionTax'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'seq_num' => :'Integer',
        :'id' => :'String',
        :'rec_type' => :'Integer',
        :'exchange_id' => :'String',
        :'state' => :'Integer',
        :'transact_time' => :'String',
        :'ord_type' => :'Integer',
        :'price' => :'Float',
        :'qty' => :'Float',
        :'execution_id' => :'String',
        :'execution_day' => :'Time',
        :'deliv_day' => :'Integer',
        :'commission' => :'Float',
        :'commission_tax' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KabustationClient::OrdersSuccessDetailsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KabustationClient::OrdersSuccessDetailsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'seq_num')
        self.seq_num = attributes[:'seq_num']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'rec_type')
        self.rec_type = attributes[:'rec_type']
      end

      if attributes.key?(:'exchange_id')
        self.exchange_id = attributes[:'exchange_id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'transact_time')
        self.transact_time = attributes[:'transact_time']
      end

      if attributes.key?(:'ord_type')
        self.ord_type = attributes[:'ord_type']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'qty')
        self.qty = attributes[:'qty']
      end

      if attributes.key?(:'execution_id')
        self.execution_id = attributes[:'execution_id']
      end

      if attributes.key?(:'execution_day')
        self.execution_day = attributes[:'execution_day']
      end

      if attributes.key?(:'deliv_day')
        self.deliv_day = attributes[:'deliv_day']
      end

      if attributes.key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.key?(:'commission_tax')
        self.commission_tax = attributes[:'commission_tax']
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
          seq_num == o.seq_num &&
          id == o.id &&
          rec_type == o.rec_type &&
          exchange_id == o.exchange_id &&
          state == o.state &&
          transact_time == o.transact_time &&
          ord_type == o.ord_type &&
          price == o.price &&
          qty == o.qty &&
          execution_id == o.execution_id &&
          execution_day == o.execution_day &&
          deliv_day == o.deliv_day &&
          commission == o.commission &&
          commission_tax == o.commission_tax
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [seq_num, id, rec_type, exchange_id, state, transact_time, ord_type, price, qty, execution_id, execution_day, deliv_day, commission, commission_tax].hash
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
