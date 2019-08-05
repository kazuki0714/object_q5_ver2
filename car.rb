# car.rb
# parent class
class Car
  attr_accessor :type, :speed, :price, :capacity, :height, :passenger, :distance, :brake_speed, :race_time

  def initialize(type, speed,  price, capacity, height, passenger)
    @type = type
    @speed = speed
    @price = price
    @capacity = capacity
    @height = height
    @passenger = passenger
  end

  def equipment
    %w[アクセル ブレーキ]
  end

  def time
  #レースタイムを算出。
  @distance = 10000 #走行距離
  @brake_speed = @speed/2 #減速時の速度
  random = Random.new
  @brake_time = random.rand(1..5) #今回はブレーキを踏む回数を1〜5回でランダム設定
  @race_time = @distance / (@brake_speed*@brake_time) + (@distance-@brake_speed*@brake_time) / @speed #タイム算出の計算式・・・ 減速時に進んだ時間 + 通常時に進んだ時間の和
  # @race_time を使って下記の 「def race_time」で出力できるように
  end

  def race_time # 保存した走行時間を返す
    return @race_time
  end
end
