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
  # 下記にあるBIDとASKとは、トレーダー目線から見た場合の値であるため、BidPrice=Sell1のPrice、AskPrice=Buy1のPriceという数値となります。
  class BoardSuccess
    # 銘柄コード
    attr_accessor :symbol

    # 銘柄名
    attr_accessor :symbol_name

    # 市場コード<br>※株式・先物・オプション銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>東証</td>       </tr>       <tr>           <td>3</td>           <td>名証</td>       </tr>       <tr>           <td>5</td>           <td>福証</td>       </tr>       <tr>           <td>6</td>           <td>札証</td>       </tr>       <tr>           <td>2</td>           <td>日通し</td>       </tr>       <tr>           <td>23</td>           <td>日中</td>       </tr>       <tr>           <td>24</td>           <td>夜間</td>       </tr>   </tbody> </table>
    attr_accessor :exchange

    # 市場名称<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :exchange_name

    # 現値
    attr_accessor :current_price

    # 現値時刻
    attr_accessor :current_price_time

    # 現値前値比較 <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>0000</td>           <td>事象なし</td>       </tr>       <tr>           <td>0056</td>           <td>変わらず</td>       </tr>       <tr>           <td>0057</td>           <td>UP</td>       </tr>       <tr>           <td>0058</td>           <td>DOWN</td>       </tr>       <tr>           <td>0059</td>           <td>中断板寄り後の初値</td>       </tr>       <tr>           <td>0060</td>           <td>ザラバ引け</td>       </tr>       <tr>           <td>0061</td>           <td>板寄り引け</td>       </tr>       <tr>           <td>0062</td>           <td>中断引け</td>       </tr>       <tr>           <td>0063</td>           <td>ダウン引け</td>       </tr>       <tr>           <td>0064</td>           <td>逆転終値</td>       </tr>       <tr>           <td>0066</td>           <td>特別気配引け</td>       </tr>       <tr>           <td>0067</td>           <td>一時留保引け</td>       </tr>       <tr>           <td>0068</td>           <td>売買停止引け</td>       </tr>       <tr>           <td>0069</td>           <td>サーキットブレーカ引け</td>       </tr>       <tr>           <td>0431</td>           <td>ダイナミックサーキットブレーカ引け</td>       </tr>   </tbody> </table>
    attr_accessor :current_price_change_status

    # 現値ステータス <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>1</td>           <td>現値</td>       </tr>       <tr>           <td>2</td>           <td>不連続歩み</td>       </tr>       <tr>           <td>3</td>           <td>板寄せ</td>       </tr>       <tr>           <td>4</td>           <td>システム障害</td>       </tr>       <tr>           <td>5</td>           <td>中断</td>       </tr>       <tr>           <td>6</td>           <td>売買停止</td>       </tr>       <tr>           <td>7</td>           <td>売買停止・システム停止解除</td>       </tr>       <tr>           <td>8</td>           <td>終値</td>       </tr>       <tr>           <td>9</td>           <td>システム停止</td>       </tr>       <tr>           <td>10</td>           <td>概算値</td>       </tr>       <tr>           <td>11</td>           <td>参考値</td>       </tr>       <tr>           <td>12</td>           <td>サーキットブレイク実施中</td>       </tr>       <tr>           <td>13</td>           <td>システム障害解除</td>       </tr>       <tr>           <td>14</td>           <td>サーキットブレイク解除</td>       </tr>       <tr>           <td>15</td>           <td>中断解除</td>       </tr>       <tr>           <td>16</td>           <td>一時留保中</td>       </tr>       <tr>           <td>17</td>           <td>一時留保解除</td>       </tr>       <tr>           <td>18</td>           <td>ファイル障害</td>       </tr>       <tr>           <td>19</td>           <td>ファイル障害解除</td>       </tr>       <tr>           <td>20</td>           <td>Spread/Strategy</td>       </tr>       <tr>           <td>21</td>           <td>ダイナミックサーキットブレイク発動</td>       </tr>       <tr>           <td>22</td>           <td>ダイナミックサーキットブレイク解除</td>       </tr>       <tr>           <td>23</td>           <td>板寄せ約定</td>       </tr>   </tbody> </table>
    attr_accessor :current_price_status

    # 計算用現値
    attr_accessor :calc_price

    # 前日終値
    attr_accessor :previous_close

    # 前日終値日付
    attr_accessor :previous_close_time

    # 前日比
    attr_accessor :change_previous_close

    # 騰落率
    attr_accessor :change_previous_close_per

    # 始値
    attr_accessor :opening_price

    # 始値時刻
    attr_accessor :opening_price_time

    # 高値
    attr_accessor :high_price

    # 高値時刻
    attr_accessor :high_price_time

    # 安値
    attr_accessor :low_price

    # 安値時刻
    attr_accessor :low_price_time

    # 売買高<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :trading_volume

    # 売買高時刻<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :trading_volume_time

    # 売買高加重平均価格（VWAP）<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :vwap

    # 売買代金<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :trading_value

    # 最良売気配数量 ※①<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :bid_qty

    # 最良売気配値段 ※①<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :bid_price

    # 最良売気配時刻 ※①<br>※株式銘柄の場合のみ
    attr_accessor :bid_time

    # 最良売気配フラグ ※①<br>※株式・先物・オプション銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>0000</td>           <td>事象なし</td>       </tr>       <tr>           <td>0101</td>           <td>一般気配</td>       </tr>       <tr>           <td>0102</td>           <td>特別気配</td>       </tr>       <tr>           <td>0103</td>           <td>注意気配</td>       </tr>       <tr>           <td>0107</td>           <td>寄前気配</td>       </tr>       <tr>           <td>0108</td>           <td>停止前特別気配</td>       </tr>       <tr>           <td>0109</td>           <td>引け後気配</td>       </tr>       <tr>           <td>0116</td>           <td>寄前気配約定成立ポイントなし</td>       </tr>       <tr>           <td>0117</td>           <td>寄前気配約定成立ポイントあり</td>       </tr>       <tr>           <td>0118</td>           <td>連続約定気配</td>       </tr>       <tr>           <td>0119</td>           <td>停止前の連続約定気配</td>       </tr>       <tr>           <td>0120</td>           <td>買い上がり売り下がり中</td>       </tr>   </tbody> </table>
    attr_accessor :bid_sign

    # 売成行数量<br>※株式銘柄の場合のみ
    attr_accessor :market_order_sell_qty

    attr_accessor :sell1

    attr_accessor :sell2

    attr_accessor :sell3

    attr_accessor :sell4

    attr_accessor :sell5

    attr_accessor :sell6

    attr_accessor :sell7

    attr_accessor :sell8

    attr_accessor :sell9

    attr_accessor :sell10

    # 最良買気配数量 ※①<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :ask_qty

    # 最良買気配値段 ※①<br>※株式・先物・オプション銘柄の場合のみ
    attr_accessor :ask_price

    # 最良買気配時刻 ※①<br>※株式銘柄の場合のみ
    attr_accessor :ask_time

    # 最良買気配フラグ ※①<br>※株式・先物・オプション銘柄の場合のみ <table>   <thead>       <tr>           <th>定義値</th>           <th>説明</th>       </tr>   </thead>   <tbody>       <tr>           <td>0000</td>           <td>事象なし</td>       </tr>       <tr>           <td>0101</td>           <td>一般気配</td>       </tr>       <tr>           <td>0102</td>           <td>特別気配</td>       </tr>       <tr>           <td>0103</td>           <td>注意気配</td>       </tr>       <tr>           <td>0107</td>           <td>寄前気配</td>       </tr>       <tr>           <td>0108</td>           <td>停止前特別気配</td>       </tr>       <tr>           <td>0109</td>           <td>引け後気配</td>       </tr>       <tr>           <td>0116</td>           <td>寄前気配約定成立ポイントなし</td>       </tr>       <tr>           <td>0117</td>           <td>寄前気配約定成立ポイントあり</td>       </tr>       <tr>           <td>0118</td>           <td>連続約定気配</td>       </tr>       <tr>           <td>0119</td>           <td>停止前の連続約定気配</td>       </tr>       <tr>           <td>0120</td>           <td>買い上がり売り下がり中</td>       </tr>   </tbody> </table>
    attr_accessor :ask_sign

    # 買成行数量<br>※株式銘柄の場合のみ
    attr_accessor :market_order_buy_qty

    attr_accessor :buy1

    attr_accessor :buy2

    attr_accessor :buy3

    attr_accessor :buy4

    attr_accessor :buy5

    attr_accessor :buy6

    attr_accessor :buy7

    attr_accessor :buy8

    attr_accessor :buy9

    attr_accessor :buy10

    # OVER気配数量<br>※株式銘柄の場合のみ
    attr_accessor :over_sell_qty

    # UNDER気配数量<br>※株式銘柄の場合のみ
    attr_accessor :under_buy_qty

    # 時価総額<br>※株式銘柄の場合のみ
    attr_accessor :total_market_value

    # 清算値<br>※先物銘柄の場合のみ
    attr_accessor :clearing_price

    # インプライド・ボラティリティ<br>※オプション銘柄かつ日通しの場合のみ
    attr_accessor :iv

    # ガンマ<br>※オプション銘柄かつ日通しの場合のみ
    attr_accessor :gamma

    # セータ<br>※オプション銘柄かつ日通しの場合のみ
    attr_accessor :theta

    # ベガ<br>※オプション銘柄かつ日通しの場合のみ
    attr_accessor :vega

    # デルタ<br>※オプション銘柄かつ日通しの場合のみ
    attr_accessor :delta

    # 銘柄種別 <table>   <thead>     <tr>       <th>定義値</th>       <th>説明</th>     </tr>   </thead>   <tbody>     <tr>       <td>0</td>       <td>指数</td>     </tr>     <tr>       <td>1</td>       <td>現物</td>     </tr>     <tr>       <td>101</td>       <td>日経225先物</td>     </tr>     <tr>       <td>103</td>       <td>日経225OP</td>     </tr>     <tr>       <td>107</td>       <td>TOPIX先物</td>     </tr>     <tr>       <td>121</td>       <td>JPX400先物</td>     </tr>     <tr>       <td>144</td>       <td>NYダウ</td>     </tr>     <tr>       <td>145</td>       <td>日経平均VI</td>     </tr>     <tr>       <td>154</td>       <td>グロース250先物</td>     </tr>     <tr>       <td>155</td>       <td>TOPIX_REIT</td>     </tr>     <tr>       <td>171</td>       <td>TOPIX CORE30</td>     </tr>     <tr>       <td>901</td>       <td>日経平均225ミニ先物</td>     </tr>     <tr>       <td>907</td>       <td>TOPIXミニ先物</td>     </tr>   </tbody> </table>
    attr_accessor :security_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'symbol' => :'Symbol',
        :'symbol_name' => :'SymbolName',
        :'exchange' => :'Exchange',
        :'exchange_name' => :'ExchangeName',
        :'current_price' => :'CurrentPrice',
        :'current_price_time' => :'CurrentPriceTime',
        :'current_price_change_status' => :'CurrentPriceChangeStatus',
        :'current_price_status' => :'CurrentPriceStatus',
        :'calc_price' => :'CalcPrice',
        :'previous_close' => :'PreviousClose',
        :'previous_close_time' => :'PreviousCloseTime',
        :'change_previous_close' => :'ChangePreviousClose',
        :'change_previous_close_per' => :'ChangePreviousClosePer',
        :'opening_price' => :'OpeningPrice',
        :'opening_price_time' => :'OpeningPriceTime',
        :'high_price' => :'HighPrice',
        :'high_price_time' => :'HighPriceTime',
        :'low_price' => :'LowPrice',
        :'low_price_time' => :'LowPriceTime',
        :'trading_volume' => :'TradingVolume',
        :'trading_volume_time' => :'TradingVolumeTime',
        :'vwap' => :'VWAP',
        :'trading_value' => :'TradingValue',
        :'bid_qty' => :'BidQty',
        :'bid_price' => :'BidPrice',
        :'bid_time' => :'BidTime',
        :'bid_sign' => :'BidSign',
        :'market_order_sell_qty' => :'MarketOrderSellQty',
        :'sell1' => :'Sell1',
        :'sell2' => :'Sell2',
        :'sell3' => :'Sell3',
        :'sell4' => :'Sell4',
        :'sell5' => :'Sell5',
        :'sell6' => :'Sell6',
        :'sell7' => :'Sell7',
        :'sell8' => :'Sell8',
        :'sell9' => :'Sell9',
        :'sell10' => :'Sell10',
        :'ask_qty' => :'AskQty',
        :'ask_price' => :'AskPrice',
        :'ask_time' => :'AskTime',
        :'ask_sign' => :'AskSign',
        :'market_order_buy_qty' => :'MarketOrderBuyQty',
        :'buy1' => :'Buy1',
        :'buy2' => :'Buy2',
        :'buy3' => :'Buy3',
        :'buy4' => :'Buy4',
        :'buy5' => :'Buy5',
        :'buy6' => :'Buy6',
        :'buy7' => :'Buy7',
        :'buy8' => :'Buy8',
        :'buy9' => :'Buy9',
        :'buy10' => :'Buy10',
        :'over_sell_qty' => :'OverSellQty',
        :'under_buy_qty' => :'UnderBuyQty',
        :'total_market_value' => :'TotalMarketValue',
        :'clearing_price' => :'ClearingPrice',
        :'iv' => :'IV',
        :'gamma' => :'Gamma',
        :'theta' => :'Theta',
        :'vega' => :'Vega',
        :'delta' => :'Delta',
        :'security_type' => :'SecurityType'
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
        :'exchange' => :'Integer',
        :'exchange_name' => :'String',
        :'current_price' => :'Float',
        :'current_price_time' => :'Time',
        :'current_price_change_status' => :'String',
        :'current_price_status' => :'Integer',
        :'calc_price' => :'Float',
        :'previous_close' => :'Float',
        :'previous_close_time' => :'Time',
        :'change_previous_close' => :'Float',
        :'change_previous_close_per' => :'Float',
        :'opening_price' => :'Float',
        :'opening_price_time' => :'Time',
        :'high_price' => :'Float',
        :'high_price_time' => :'Time',
        :'low_price' => :'Float',
        :'low_price_time' => :'Time',
        :'trading_volume' => :'Float',
        :'trading_volume_time' => :'Time',
        :'vwap' => :'Float',
        :'trading_value' => :'Float',
        :'bid_qty' => :'Float',
        :'bid_price' => :'Float',
        :'bid_time' => :'Time',
        :'bid_sign' => :'String',
        :'market_order_sell_qty' => :'Float',
        :'sell1' => :'BoardSuccessSell1',
        :'sell2' => :'BoardSuccessSell2',
        :'sell3' => :'BoardSuccessSell3',
        :'sell4' => :'BoardSuccessSell4',
        :'sell5' => :'BoardSuccessSell5',
        :'sell6' => :'BoardSuccessSell6',
        :'sell7' => :'BoardSuccessSell7',
        :'sell8' => :'BoardSuccessSell8',
        :'sell9' => :'BoardSuccessSell9',
        :'sell10' => :'BoardSuccessSell10',
        :'ask_qty' => :'Float',
        :'ask_price' => :'Float',
        :'ask_time' => :'Time',
        :'ask_sign' => :'String',
        :'market_order_buy_qty' => :'Float',
        :'buy1' => :'BoardSuccessBuy1',
        :'buy2' => :'BoardSuccessBuy2',
        :'buy3' => :'BoardSuccessBuy3',
        :'buy4' => :'BoardSuccessBuy4',
        :'buy5' => :'BoardSuccessBuy5',
        :'buy6' => :'BoardSuccessBuy6',
        :'buy7' => :'BoardSuccessBuy7',
        :'buy8' => :'BoardSuccessBuy8',
        :'buy9' => :'BoardSuccessBuy9',
        :'buy10' => :'BoardSuccessBuy10',
        :'over_sell_qty' => :'Float',
        :'under_buy_qty' => :'Float',
        :'total_market_value' => :'Float',
        :'clearing_price' => :'Float',
        :'iv' => :'Float',
        :'gamma' => :'Float',
        :'theta' => :'Float',
        :'vega' => :'Float',
        :'delta' => :'Float',
        :'security_type' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KabustationClient::BoardSuccess` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KabustationClient::BoardSuccess`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

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

      if attributes.key?(:'current_price')
        self.current_price = attributes[:'current_price']
      end

      if attributes.key?(:'current_price_time')
        self.current_price_time = attributes[:'current_price_time']
      end

      if attributes.key?(:'current_price_change_status')
        self.current_price_change_status = attributes[:'current_price_change_status']
      end

      if attributes.key?(:'current_price_status')
        self.current_price_status = attributes[:'current_price_status']
      end

      if attributes.key?(:'calc_price')
        self.calc_price = attributes[:'calc_price']
      end

      if attributes.key?(:'previous_close')
        self.previous_close = attributes[:'previous_close']
      end

      if attributes.key?(:'previous_close_time')
        self.previous_close_time = attributes[:'previous_close_time']
      end

      if attributes.key?(:'change_previous_close')
        self.change_previous_close = attributes[:'change_previous_close']
      end

      if attributes.key?(:'change_previous_close_per')
        self.change_previous_close_per = attributes[:'change_previous_close_per']
      end

      if attributes.key?(:'opening_price')
        self.opening_price = attributes[:'opening_price']
      end

      if attributes.key?(:'opening_price_time')
        self.opening_price_time = attributes[:'opening_price_time']
      end

      if attributes.key?(:'high_price')
        self.high_price = attributes[:'high_price']
      end

      if attributes.key?(:'high_price_time')
        self.high_price_time = attributes[:'high_price_time']
      end

      if attributes.key?(:'low_price')
        self.low_price = attributes[:'low_price']
      end

      if attributes.key?(:'low_price_time')
        self.low_price_time = attributes[:'low_price_time']
      end

      if attributes.key?(:'trading_volume')
        self.trading_volume = attributes[:'trading_volume']
      end

      if attributes.key?(:'trading_volume_time')
        self.trading_volume_time = attributes[:'trading_volume_time']
      end

      if attributes.key?(:'vwap')
        self.vwap = attributes[:'vwap']
      end

      if attributes.key?(:'trading_value')
        self.trading_value = attributes[:'trading_value']
      end

      if attributes.key?(:'bid_qty')
        self.bid_qty = attributes[:'bid_qty']
      end

      if attributes.key?(:'bid_price')
        self.bid_price = attributes[:'bid_price']
      end

      if attributes.key?(:'bid_time')
        self.bid_time = attributes[:'bid_time']
      end

      if attributes.key?(:'bid_sign')
        self.bid_sign = attributes[:'bid_sign']
      end

      if attributes.key?(:'market_order_sell_qty')
        self.market_order_sell_qty = attributes[:'market_order_sell_qty']
      end

      if attributes.key?(:'sell1')
        self.sell1 = attributes[:'sell1']
      end

      if attributes.key?(:'sell2')
        self.sell2 = attributes[:'sell2']
      end

      if attributes.key?(:'sell3')
        self.sell3 = attributes[:'sell3']
      end

      if attributes.key?(:'sell4')
        self.sell4 = attributes[:'sell4']
      end

      if attributes.key?(:'sell5')
        self.sell5 = attributes[:'sell5']
      end

      if attributes.key?(:'sell6')
        self.sell6 = attributes[:'sell6']
      end

      if attributes.key?(:'sell7')
        self.sell7 = attributes[:'sell7']
      end

      if attributes.key?(:'sell8')
        self.sell8 = attributes[:'sell8']
      end

      if attributes.key?(:'sell9')
        self.sell9 = attributes[:'sell9']
      end

      if attributes.key?(:'sell10')
        self.sell10 = attributes[:'sell10']
      end

      if attributes.key?(:'ask_qty')
        self.ask_qty = attributes[:'ask_qty']
      end

      if attributes.key?(:'ask_price')
        self.ask_price = attributes[:'ask_price']
      end

      if attributes.key?(:'ask_time')
        self.ask_time = attributes[:'ask_time']
      end

      if attributes.key?(:'ask_sign')
        self.ask_sign = attributes[:'ask_sign']
      end

      if attributes.key?(:'market_order_buy_qty')
        self.market_order_buy_qty = attributes[:'market_order_buy_qty']
      end

      if attributes.key?(:'buy1')
        self.buy1 = attributes[:'buy1']
      end

      if attributes.key?(:'buy2')
        self.buy2 = attributes[:'buy2']
      end

      if attributes.key?(:'buy3')
        self.buy3 = attributes[:'buy3']
      end

      if attributes.key?(:'buy4')
        self.buy4 = attributes[:'buy4']
      end

      if attributes.key?(:'buy5')
        self.buy5 = attributes[:'buy5']
      end

      if attributes.key?(:'buy6')
        self.buy6 = attributes[:'buy6']
      end

      if attributes.key?(:'buy7')
        self.buy7 = attributes[:'buy7']
      end

      if attributes.key?(:'buy8')
        self.buy8 = attributes[:'buy8']
      end

      if attributes.key?(:'buy9')
        self.buy9 = attributes[:'buy9']
      end

      if attributes.key?(:'buy10')
        self.buy10 = attributes[:'buy10']
      end

      if attributes.key?(:'over_sell_qty')
        self.over_sell_qty = attributes[:'over_sell_qty']
      end

      if attributes.key?(:'under_buy_qty')
        self.under_buy_qty = attributes[:'under_buy_qty']
      end

      if attributes.key?(:'total_market_value')
        self.total_market_value = attributes[:'total_market_value']
      end

      if attributes.key?(:'clearing_price')
        self.clearing_price = attributes[:'clearing_price']
      end

      if attributes.key?(:'iv')
        self.iv = attributes[:'iv']
      end

      if attributes.key?(:'gamma')
        self.gamma = attributes[:'gamma']
      end

      if attributes.key?(:'theta')
        self.theta = attributes[:'theta']
      end

      if attributes.key?(:'vega')
        self.vega = attributes[:'vega']
      end

      if attributes.key?(:'delta')
        self.delta = attributes[:'delta']
      end

      if attributes.key?(:'security_type')
        self.security_type = attributes[:'security_type']
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
          exchange == o.exchange &&
          exchange_name == o.exchange_name &&
          current_price == o.current_price &&
          current_price_time == o.current_price_time &&
          current_price_change_status == o.current_price_change_status &&
          current_price_status == o.current_price_status &&
          calc_price == o.calc_price &&
          previous_close == o.previous_close &&
          previous_close_time == o.previous_close_time &&
          change_previous_close == o.change_previous_close &&
          change_previous_close_per == o.change_previous_close_per &&
          opening_price == o.opening_price &&
          opening_price_time == o.opening_price_time &&
          high_price == o.high_price &&
          high_price_time == o.high_price_time &&
          low_price == o.low_price &&
          low_price_time == o.low_price_time &&
          trading_volume == o.trading_volume &&
          trading_volume_time == o.trading_volume_time &&
          vwap == o.vwap &&
          trading_value == o.trading_value &&
          bid_qty == o.bid_qty &&
          bid_price == o.bid_price &&
          bid_time == o.bid_time &&
          bid_sign == o.bid_sign &&
          market_order_sell_qty == o.market_order_sell_qty &&
          sell1 == o.sell1 &&
          sell2 == o.sell2 &&
          sell3 == o.sell3 &&
          sell4 == o.sell4 &&
          sell5 == o.sell5 &&
          sell6 == o.sell6 &&
          sell7 == o.sell7 &&
          sell8 == o.sell8 &&
          sell9 == o.sell9 &&
          sell10 == o.sell10 &&
          ask_qty == o.ask_qty &&
          ask_price == o.ask_price &&
          ask_time == o.ask_time &&
          ask_sign == o.ask_sign &&
          market_order_buy_qty == o.market_order_buy_qty &&
          buy1 == o.buy1 &&
          buy2 == o.buy2 &&
          buy3 == o.buy3 &&
          buy4 == o.buy4 &&
          buy5 == o.buy5 &&
          buy6 == o.buy6 &&
          buy7 == o.buy7 &&
          buy8 == o.buy8 &&
          buy9 == o.buy9 &&
          buy10 == o.buy10 &&
          over_sell_qty == o.over_sell_qty &&
          under_buy_qty == o.under_buy_qty &&
          total_market_value == o.total_market_value &&
          clearing_price == o.clearing_price &&
          iv == o.iv &&
          gamma == o.gamma &&
          theta == o.theta &&
          vega == o.vega &&
          delta == o.delta &&
          security_type == o.security_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [symbol, symbol_name, exchange, exchange_name, current_price, current_price_time, current_price_change_status, current_price_status, calc_price, previous_close, previous_close_time, change_previous_close, change_previous_close_per, opening_price, opening_price_time, high_price, high_price_time, low_price, low_price_time, trading_volume, trading_volume_time, vwap, trading_value, bid_qty, bid_price, bid_time, bid_sign, market_order_sell_qty, sell1, sell2, sell3, sell4, sell5, sell6, sell7, sell8, sell9, sell10, ask_qty, ask_price, ask_time, ask_sign, market_order_buy_qty, buy1, buy2, buy3, buy4, buy5, buy6, buy7, buy8, buy9, buy10, over_sell_qty, under_buy_qty, total_market_value, clearing_price, iv, gamma, theta, vega, delta, security_type].hash
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
