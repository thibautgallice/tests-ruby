def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, x = 2)
 [str].cycle(x).to_a.join(' ')
end

def start_of_word(str, x)
  str[0,x]
end

def first_word(str)
  str.split.first
end

def titleize(str)  
  #str.split.map(&:capitalize).join(' ') NE MARCHE PAS
  #str.split.map{|w| w.capitalize if (w.length > 3)}.join(' ') NE MARCHE PAS
  ary=[]
  ary = str.split
  ary.map! do |w|
    if ((w == ary.first) || (w.length > 3))
      w = "#{w.capitalize}"
    else
      w = "#{w}"
    end
  end
  ary.join(' ')
end
# POUR INFO
  # str = str.slice(0,1).capitalize + str.slice(1..-1) (MAJUSCULE SEULEMENT SUR LE PREMIER MOT)
  # str[0] = str[0].capitalize (MAJUSCULE SEULEMENT SUR LE PREMIER MOT)
# Plus propre
# new_string = string.slice(0,1).capitalize + string.slice(1..-1)
# => "I'm from New York...