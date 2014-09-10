require_relative "shoe.rb"

shoe = Shoe.new(1)

#shoe.shuffle!
until shoe.need_shuffle? do
  puts "#{shoe.draw.name} - current penetration: #{shoe.penetration}"
end
