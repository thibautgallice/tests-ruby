def who_is_bigger(a,b,c)
  if (a != nil) && (b != nil) && (c != nil) 
    if (a > b) && (a > c)
      "a is bigger" 
    elsif (b > a) && (b > c)
      "b is bigger"
    elsif (c > b) && (c > a)
      "c is bigger"
    end
  else
    "nil detected"
  end
end

def reverse_upcase_noLTA(str)
  str.reverse.upcase.tr('LTA','')
end

def array_42(ary)
  ary.include? 42
end

def magic_array(ary)
  array = ary.flatten.sort.reject { |v| v %3 == 0 }.map {|v| v * 2}.uniq.sort
end