class Pasta
  attr_accessor :type, :portion, :time, :vege

  def initialize(type, portion, time, vege)
    @type = type
    @portion = portion
    @time = time
    @vege = vege
puts "Prepairing your #{type} pasta, please wait for #{time} seconds."


  def vege
vege = false
  until vege
    puts "Please choose your vegetable: brocoli / zuchini / onion / tomato?"
    choice = gets.chomp.downcase

    if choice == "brocoli" || choice == "zuchini" || choice == "onion" || choice == "tomato"
      vege = true
      return choice

    else vege == false
        puts "Sorry we don't have that on our menu."
      end
      end
    end
  end
end

  def cook
    date1 = Time.now + @time
    while Time.now < date1
    t = Time.at(date1.to_i - Time.now.to_i)
    p t.strftime('%S')
    sleep 1
  end
      puts "Your pasta #{type} with #{vege}  is ready to be served for #{portion} people ."
   end
end

  penne = Pasta.new("Penne", 4, 6, "")
  puts penne.cook

  spagheti = Pasta.new("Spagheti", 3, 7, "")
  puts spagheti.cook

  fussili = Pasta.new("Fussili", 3, 5, "")
  puts fussili.cook
