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
  class ApiSoftLimitResponse
    # 現物のワンショット上限<br>※単位は万円
    attr_accessor :stock

    # 信用のワンショット上限<br>※単位は万円
    attr_accessor :margin

    # 先物のワンショット上限<br>※単位は枚
    attr_accessor :future

    # ミニ先物のワンショット上限<br>※単位は枚
    attr_accessor :future_mini

    # マイクロ先物のワンショット上限<br>※単位は枚
    attr_accessor :future_micro

    # オプションのワンショット上限<br>※単位は枚
    attr_accessor :option

    # ミニオプションのワンショット上限<br>※単位は枚
    attr_accessor :mini_option

    # kabuステーションのバージョン
    attr_accessor :kabu_s_version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'stock' => :'Stock',
        :'margin' => :'Margin',
        :'future' => :'Future',
        :'future_mini' => :'FutureMini',
        :'future_micro' => :'FutureMicro',
        :'option' => :'Option',
        :'mini_option' => :'MiniOption',
        :'kabu_s_version' => :'KabuSVersion'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'stock' => :'Float',
        :'margin' => :'Float',
        :'future' => :'Float',
        :'future_mini' => :'Float',
        :'future_micro' => :'Float',
        :'option' => :'Float',
        :'mini_option' => :'Float',
        :'kabu_s_version' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KabustationClient::ApiSoftLimitResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KabustationClient::ApiSoftLimitResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'stock')
        self.stock = attributes[:'stock']
      end

      if attributes.key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.key?(:'future')
        self.future = attributes[:'future']
      end

      if attributes.key?(:'future_mini')
        self.future_mini = attributes[:'future_mini']
      end

      if attributes.key?(:'future_micro')
        self.future_micro = attributes[:'future_micro']
      end

      if attributes.key?(:'option')
        self.option = attributes[:'option']
      end

      if attributes.key?(:'mini_option')
        self.mini_option = attributes[:'mini_option']
      end

      if attributes.key?(:'kabu_s_version')
        self.kabu_s_version = attributes[:'kabu_s_version']
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
          stock == o.stock &&
          margin == o.margin &&
          future == o.future &&
          future_mini == o.future_mini &&
          future_micro == o.future_micro &&
          option == o.option &&
          mini_option == o.mini_option &&
          kabu_s_version == o.kabu_s_version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [stock, margin, future, future_mini, future_micro, option, mini_option, kabu_s_version].hash
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
