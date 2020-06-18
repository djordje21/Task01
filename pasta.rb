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


class Penne < Pasta

def initialize(type, portion, time, vege)
  super(type, portion, time, vege)
end

  def cook
    super
     puts ""
  end
end

class Spagheti < Pasta

def initialize(type, portion, time, vege)
  super(type, portion, time, vege)
end

  def cook
    super
  end
end

class Fussili < Pasta

def initialize(type, portion, time, vege)
  super(type, portion, time, vege)
end

  def cook
    super
  end
end

penne = Penne.new("Penne", 3, 5, "")
p penne.cook

spagheti = Spagheti.new("Spagheti", 4, 7, "")
p spagheti.cook

fussili = Fussili.new("Fussili", 5, 8, "")
p fussili.cook
