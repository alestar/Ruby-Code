class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
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

def rps_game_winner(game)
  # YOUR CODE HERE
  raise WrongNumberOfPlayersError unless game.length == 2

  play1=game[0][1].downcase
  play2=game[1][1].downcase  
  raise NoSuchStrategyError unless ( (play1=='p'|| play1=='s'|| play1 =='r') and (play2=='p'|| play2=='s'|| play2 =='r')) 
  
  rps_result(game[0],game[1])
  
end

def rps_tournament_winner(tournament)
    # Is a single game instead of a tournament
    if tournament[0][0].is_a? String
      return rps_game_winner(tournament)
    end
    # Continue playing in the recursion of the tree for every single match eliminating each player until the end
    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  end

def rps_tournament_winner1(tournament)
  match1=tournament[0][0]
  match2=tournament[0][1]
  match3=tournament[1][0]
  match4=tournament[1][1]
  
  w1= rps_game_winner(match1)
  w2= rps_game_winner(match2)
  w3= rps_game_winner(match3)
  w4= rps_game_winner(match4)
  
  match5= [w1,w2]
  match6= [w3,w4]
  
  w5= rps_game_winner(match5)
  w6= rps_game_winner(match6)
  
  match7= [w5,w6]
  
  rps_game_winner(match7)
end



#r1= rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
#puts r1

#r2= rps_tournament_winner([
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