require "stringer/version"
module Stringer
    def self.spacify *strings
    	# p strings, "these are the strings"
        string = ""
        strings.each do |s|
            string += " " + s
            # p "#{s}, this is s value"
        end
        # .lstrip removes the leading white space
        string.lstrip! 
        # was originally returning a space at the front of the string making it FAIL
    end

    def self.minify str,max_len
    	str.slice!(0...max_len) + "..."
    end

    def self.replacify str, word, repl 
    	str.gsub(word, repl) # this will take a string, look for a word and then replace that word with your other word
    end

    def self.tokenize str
    	str.split(" ") # splits at each space AND returns an array
    end

    def self.removify str, word
    	str2 = word+ " "
    	str.slice!(str2)
    	str
    end

end
