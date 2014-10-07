class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.rps_result(m1, m2)
    # YOUR CODE HERE
    p1=m1[1].downcase
    p2=m2[1].downcase
    
    if p1 == p2
      m1
    else
      if p1 =='p' 
        if p2 =='r'
          m1
        elsif p2=='s' 
          m2
        end
        
      elsif p1 =='r' 
        if p2 =='s'
          m1
        elsif p2 =='p'
          m2
        end  
        
      elsif p1 =='s' 
        if p2=='p'
          m1
        elsif p2=='r'
          m2
        end
      end
    end
    
  end

  def self.winner(player1, player2)
    
    play1=player1[1].downcase
    play2=player2[1].downcase  
    puts play1
    puts play2
    raise NoSuchStrategyError.new("Strategy must be one of R,P,S") unless ( (play1=='p'|| play1=='s'|| play1 =='r') and (play2=='p'|| play2=='s'|| play2 =='r')) 
    
    rps_result(player1,player2)
  end

  def self.tournament_winner(tournament)
    # Is a single game instead of a tournament
    if tournament[0][0].is_a? String
      player1= tournament[0]
      player2= tournament[1]
      return self.winner(player1, player2)
    end
    # Continue playing in the recursion of the tree for every single match eliminating each player until the end
    return self.winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))
  end
end

#r1= RockPaperScissors.winner(["Armando", "P"], ["Dave", "S"])
#r1= RockPaperScissors.winner(['Armando', 'p'], ["Dave", "S"])
#puts r1

#r2= RockPaperScissors.tournament_winner([
#                           [    
#                                [ ["Armando", "P"],["Dave", "S"] ],
#                                [ ["Richard", "R"],["Michael", "S"] ],
#                           ],
#                           [
#                              [ ["Allen", "S"],["Omer", "P"] ],
#                              [ ["David E.", "R"], ["Richard X.", "P"] ]
#                           ]
#                          ])
#puts r2    
