module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      if self.valid(guess).nil?
        @output.puts "The code #{guess} is not valid"
        return
      end
      marker = Marker.new(@secret, guess)
      @output.puts '+'*marker.exact_match_count + '-'*marker.number_match_count
    end

    def valid(guess)
      return /\d+/.match(guess)
    end
  end
end
