require_relative 'car'
require_relative 'ferrari'
require_relative 'honda'
require_relative 'nissan'
require_relative 'toyota'

def main #(type, speed, price, capacity, height, passenger)
  h = Honda.new("Honda", 100, 100, 8, 100, 1)
  n = Nissan.new("Nissan", 120, 50, 5, 100, 1)
  f = Ferrari.new("Ferrari", 200, 2000, 2, 100, 1)
  t = Toyota.new("Toyota", 100, 300, 2, 100, 1)

  output_information(h,n,f,t)

  puts '-----順位-------'
  arr = [h, n, f, t]
  puts arr.sort_by{|x| x.race_time}.map(&:type) # 保存した走行時間をソートして表示
end

def output_information(h,n,f,t)
  puts "\t\t#{h.type}\t\t#{n.type}\t\t#{f.type}\t\t#{t.type}"
  puts "加速\t\t#{h.speed}\t\t#{n.speed}\t\t#{f.speed}\t\t#{t.speed}"
  puts "価格\t\t#{h.price}\t\t#{n.price}\t\t#{f.price}\t\t#{t.price}"
  puts "定員\t\t#{h.capacity}\t\t#{n.capacity}\t\t#{f.capacity}\t\t#{t.capacity}"
  puts "車高\t\t#{h.height}\t\t#{n.height}\t\t#{f.height}\t\t#{t.height}"
  puts "乗員\t\t#{h.passenger}\t\t#{n.passenger}\t\t#{f.passenger}\t\t#{t.passenger}"
  puts "走行時間\t\t#{h.time}\t\t#{n.time}\t\t#{f.time}\t\t#{t.time}"
end

if __FILE__ == $0
  main
end
