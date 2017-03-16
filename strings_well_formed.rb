require 'pry'

class StringValidator
  def initialize(chars)
    @found = []
    @chars = chars || {"{" => "}",
              "[" => "]",
              "(" => ")"}
  end

  def dynamic_validation_chars(chars)
    charset = {}
    array.each{ |c| charset[c[0]] = c[1]}
  end

  def validate(string, chars=@chars)
    if chars.class == Array
        chars = dynamic_validation_chars(chars)
    end
    left = chars.keys
    right = chars.values
    string.each_char do |char|
      if left.include? char
        @found << char
      elsif right.include? char
        return false if @found.empty? || (chars[@found.pop] != char)
      end
    end
    
    return @found.empty?
  end
end
