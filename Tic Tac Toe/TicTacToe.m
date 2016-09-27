%Henry Zale
%9/22/2016

%TicTacToe Game Instructions:
%Begin game by choosing a random number and pressing enter.
%The game has now begun, and the computer has made it's first move.
%Use the keypad to select a number and press enter to place your own moves
%on the gameboard matrix.
%Get 3 X's in a row to win, but you have to beat the computer to it!

clc
disp('Welcome to TicTacToe! Prepare to lose!')

gameboard = ['1','2','3';'4','5','6';'7','8','9'];
num2str(gameboard);
disp(gameboard)

%%%%%%%%%%%%%%%%%%%%%%%%%% CPU Move 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

startgame = input('Enter any number to begin\n>');
clc
if startgame == 1
    cpumove1 = 'O';
    gameboard(2,2) = cpumove1;
else
    cpumove1 = 'O';
    gameboard(2,2) = cpumove1;
end 

disp('The computer has made its first move')
disp(gameboard)

%%%%%%%%%%%%%%%%%%%%%%%%%%% Player Move 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%

move1 = input('Enter the number corresponding to your first move towards defeat...\n>');
clc

switch move1
    case 1
        gameboard(1,1) = 'X';          
    case 2
        gameboard(1,2) = 'X';
    case 3
        gameboard(1,3) = 'X';
    case 4
        gameboard(2,1) = 'X';
    case 5
        disp(gameboard)
        move1 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
            disp(gameboard)
            if move1 == 1
                gameboard(1,1) = 'X';
            elseif move1 == 2
                    gameboard(1,2) = 'X';
            elseif move1 == 3
                    gameboard(1,3) = 'X';
            elseif move1 == 4
                    gameboard(2,1) = 'X';
            elseif move1 == 6
                    gameboard(2,3) = 'X';
            elseif move1 == 7
                    gameboard(3,1) = 'X'; 
            elseif move1 == 8
                    gameboard(3,2) = 'X';
            elseif move1 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
    case 6
        gameboard(2,3) = 'X';
    case 7  
        gameboard(3,1) = 'X';
    case 8
        gameboard(3,2) = 'X';
    case 9
        gameboard(3,3) = 'X';
end

disp(gameboard)

%%%%%%%%%%%%%%%%%%% Computer Move 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gamerange = 1:9;
exclude = [5, move1];
gamerange = setdiff(gamerange, exclude);
cpumove2 = randsample(gamerange,1);
clc

switch cpumove2
    case 1
        gameboard(1,1) = 'O';
    case 2
        gameboard(1,2) = 'O';
    case 3
        gameboard(1,3) = 'O';
    case 4
        gameboard(2,1) = 'O';
    case 6
        gameboard(2,3) = 'O';
    case 7  
        gameboard(3,1) = 'O';
    case 8
        gameboard(3,2) = 'O';
    case 9
        gameboard(3,3) = 'O';
end

disp('lol you are terrible at this')
disp(gameboard)

%%%%%%%%%%%%%%%%%%%%%% Player Move 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move2 = input('Make your next move if you dare...\n>');
clc

switch move2
    case 1
        if gameboard(1,1) == 'X'|| gameboard(1,1) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
          
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end           
            
        else gameboard(1,1) = 'X';
        end
    case 2
        if gameboard(1,2) == 'X'|| gameboard(1,2) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
           if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(1,2) = 'X';
        end
    case 3
        if gameboard(1,3) == 'X'|| gameboard(1,3) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(1,3) = 'X';
        end
    case 4
        if gameboard(2,1) == 'X'|| gameboard(2,1) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(2,1) = 'X';
        end
    case 5
        if gameboard(2,2) == 'X'|| gameboard(2,2) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(2,2) = 'X';
        end
    case 6
        if gameboard(2,3) == 'X'|| gameboard(2,3) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(2,3) = 'X';
        end
    case 7  
        if gameboard(3,1) == 'X'|| gameboard(3,1) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(3,1) = 'X';
        end
    case 8
        if gameboard(3,2) == 'X'|| gameboard(3,2) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(3,2) = 'X';
        end
    case 9
        if gameboard(3,3) == 'X'|| gameboard(3,3) == 'O'
            disp(gameboard)
            move2 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move2 == move1 || move2 == cpumove1
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(3,3) = 'X';
        end
end

disp(gameboard)

%%%%%%%%%%%%%%%%% computer move 3  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%random number generator%%
gamerange2 = 1:9;
exclude = [5, move1, cpumove2, move2];
gamerange2 = setdiff(gamerange2, exclude);
cpumove3 = randsample(gamerange2,1);
clc

%%% Moves for computer to win%%
if cpumove2 == 1 && move1 ~= 9 && move2 ~= 9
    cpumove3 = 9;
    gameboard(3,3) = 'O';
elseif cpumove2 == 2 && move1 ~= 8 && move2 ~= 8
    cpumove3 = 8;
    gameboard(3,2) = 'O';
elseif cpumove2 == 3 && move1 ~= 7 && move2 ~= 7
    cpumove3 = 7;
    gameboard(3,1) = 'O';
elseif cpumove2 == 4 && move1 ~= 6 && move2 ~= 6
    cpumove3 = 6;
    gameboard(2,3) = 'O';
elseif cpumove2 == 6 && move1 ~= 4 && move2 ~= 4
    cpumove3 = 4;
    gameboard(2,1) = 'O';
elseif cpumove2 == 7 && move1 ~= 3 && move2 ~= 3
    cpumove3 = 3;
    gameboard(1,3) = 'O';
elseif cpumove2 == 8 && move1 ~= 2 && move2 ~= 2
    cpumove3 = 2;
    gameboard(1,2) = 'O';
elseif cpumove2 == 9 && move1 ~= 1 && move2 ~= 1
    cpumove3 = 1;
    gameboard(1,1) = 'O';
%%defensive moves%%toprow
elseif gameboard(1,1) == 'X' && gameboard(1,2) == 'X'
    cpumove3 = 3;
    gameboard(1,3) = 'O';
elseif gameboard(1,1) == 'X' && gameboard(1,3) == 'X'
    cpumove3 = 2;
    gameboard(1,2) = 'O';
elseif gameboard(1,2) == 'X' && gameboard(1,3) == 'X'
    cpumove3 = 1;
    gameboard(1,1) = 'O';
    %%%leftside
elseif gameboard(1,1) == 'X' && gameboard(2,1) == 'X'
    cpumove3 = 7;
    gameboard(3,1) = 'O';
elseif gameboard(1,1) == 'X' && gameboard(3,1) == 'X'
    cpumove3 = 4;
    gameboard(2,1) = 'O';
elseif gameboard(3,1) == 'X' && gameboard(2,1) == 'X'    
    cpumove3 = 1;
    gameboard(1,1) = 'O';
    %%%bottomrow
elseif gameboard(3,1) == 'X' && gameboard(3,2) == 'X'
    cpumove3 = 9;
    gameboard(3,3) = 'O';
elseif gameboard(3,1) == 'X' && gameboard(3,3) == 'X'
    cpumove3 = 8;
    gameboard(3,2) = 'O';
elseif gameboard(3,2) == 'X' && gameboard(3,3) == 'X'
    cpumove3 = 7;
    gameboard(3,1) = 'O';
    %%%rightside
elseif gameboard(1,3) == 'X' && gameboard(2,3) == 'X'
    cpumove3 = 9;
    gameboard(3,3) = 'O';
elseif gameboard(1,3) == 'X' && gameboard(3,3) == 'X'
    cpumove3 = 6;
    gameboard(2,3) = 'O';
elseif gameboard(3,3) == 'X' && gameboard(2,3) == 'X'    
    cpumove3 = 3;
    gameboard(1,3) = 'O';


%random number matrix assignment%%
else
    switch cpumove3
        case 1
            gameboard(1,1) = 'O';
        case 2
            gameboard(1,2) = 'O';
        case 3
            gameboard(1,3) = 'O';
        case 4
            gameboard(2,1) = 'O';
        case 6
            gameboard(2,3) = 'O';
        case 7
            gameboard(3,1) = 'O';
        case 8
            gameboard(3,2) = 'O';
        case 9
            gameboard(3,3) = 'O';
    end
end
%%%%% Win Function
if gameboard(1,1) == 'O' && gameboard(1,2) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(1,1) == 'O' && gameboard(2,1) == 'O' && gameboard(3,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(3,2) == 'O' && gameboard(3,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(2,3) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(2,2) == 'O' && gameboard(1,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,1) == 'O' && gameboard(2,2) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(2,3) == 'O' && gameboard(2,2) == 'O' && gameboard(2,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(1,2) == 'O' && gameboard(2,2) == 'O' && gameboard(3,2) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
else
end
disp('i bet you have trouble tying your shoes')
disp(gameboard)

%%%%%%%%%%%%%%% Player Move 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move3 = input('I guess its your turn again.\n>');
clc

switch move3
    case 1
        if gameboard(1,1) == 'X'|| gameboard(1,1) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(1,1) = 'X';
        end
    case 2
        if gameboard(1,2) == 'X'|| gameboard(1,2) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(1,2) = 'X';
        end
    case 3
        if gameboard(1,3) == 'X'|| gameboard(1,3) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(1,3) = 'X';
        end
    case 4
        if gameboard(2,1) == 'X'|| gameboard(2,1) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(2,1) = 'X';
        end
    case 5
        if gameboard(2,2) == 'X'|| gameboard(2,2) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(2,2) = 'X';
        end
    case 6
        if gameboard(2,3) == 'X'|| gameboard(2,3) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(2,3) = 'X';
        end
    case 7  
        if gameboard(3,1) == 'X'|| gameboard(3,1) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(3,1) = 'X';
        end
    case 8
        if gameboard(3,2) == 'X'|| gameboard(3,2) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X'; 
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(3,2) = 'X';
        end
    case 9
        if gameboard(3,3) == 'X'|| gameboard(3,3) == 'O'
            disp(gameboard)
            move3 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move3 == move1 || move3 == cpumove1 || move3 == move2 || move3 == cpumove2 || move3 == cpumove3
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(3,3) = 'X';
        end
end

disp(gameboard)

if gameboard(1,1) == 'X' && gameboard(1,2) == 'X' && gameboard(1,3) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
elseif gameboard(1,1) == 'X' && gameboard(2,1) == 'X' && gameboard(3,1) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
elseif gameboard(3,3) == 'X' && gameboard(3,2) == 'X' && gameboard(3,1) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
elseif gameboard(3,3) == 'X' && gameboard(2,3) == 'X' && gameboard(1,3) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
else
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Computer Move 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%

gamerange3 = 1:9;
exclude = [5, move1, cpumove2, move2, cpumove3, move3];
gamerange3 = setdiff(gamerange3, exclude);
cpumove4 = randsample(gamerange3,1);
clc
%%defense top row
if gameboard(1,1) == 'X' && gameboard(1,2) == 'X' && gameboard(1,3) ~= 'O' && gameboard(1,3) ~= 'X'
    cpumove4 = 3;
    gameboard(1,3) = 'O';
elseif gameboard(1,1) == 'X' && gameboard(1,3) == 'X' && gameboard(1,2) ~= 'O' && gameboard(1,2) ~= 'X'
    cpumove4 = 2;
    gameboard(1,2) = 'O';
elseif gameboard(1,2) == 'X' && gameboard(1,3) == 'X' && gameboard(1,1) ~= 'O' && gameboard(1,1) ~= 'X'
    cpumove4 = 1;
    gameboard(1,1) = 'O';
    %%%leftside
elseif gameboard(1,1) == 'X' && gameboard(2,1) == 'X' && gameboard(3,1) ~= 'O' && gameboard(3,1) ~= 'X'
    cpumove4 = 7;
    gameboard(3,1) = 'O';
elseif gameboard(1,1) == 'X' && gameboard(3,1) == 'X' && gameboard(2,1) ~= 'O' && gameboard(2,1) ~= 'X'
    cpumove4 = 4;
    gameboard(2,1) = 'O';
elseif gameboard(3,1) == 'X' && gameboard(2,1) == 'X' && gameboard(1,1) ~= 'O' && gameboard(1,1) ~= 'X'
    cpumove4 = 1;
    gameboard(1,1) = 'O';
    %%%bottomrow
elseif gameboard(3,1) == 'X' && gameboard(3,2) == 'X' && gameboard(3,3) ~= 'O' && gameboard(3,3) ~= 'X'
    cpumove4 = 9;
    gameboard(3,3) = 'O';
elseif gameboard(3,1) == 'X' && gameboard(3,3) == 'X' && gameboard(3,2) ~= 'O' && gameboard(3,2) ~= 'X'
    cpumove4 = 8;
    gameboard(3,2) = 'O';
elseif gameboard(3,2) == 'X' && gameboard(3,3) == 'X' && gameboard(3,1) ~= 'O' && gameboard(3,1) ~= 'X'
    cpumove4 = 7;
    gameboard(3,1) = 'O';
    %%%rightside
elseif gameboard(1,3) == 'X' && gameboard(2,3) == 'X' && gameboard(3,3) ~= 'O' && gameboard(3,3) ~= 'X'
    cpumove4 = 9;
    gameboard(3,3) = 'O';
elseif gameboard(1,3) == 'X' && gameboard(3,3) == 'X' && gameboard(2,3) ~= 'O' && gameboard(2,3) ~= 'X'
    cpumove4 = 6;
    gameboard(2,3) = 'O';
elseif gameboard(3,3) == 'X' && gameboard(2,3) == 'X' && gameboard(1,3) ~= 'O' && gameboard(1,3) ~= 'X'
    cpumove4 = 3;
    gameboard(1,3) = 'O';
else
    switch cpumove4
        case 1
            gameboard(1,1) = 'O';
        case 2
            gameboard(1,2) = 'O';
        case 3
            gameboard(1,3) = 'O';
        case 4
            gameboard(2,1) = 'O';
        case 6
            gameboard(2,3) = 'O';
        case 7
            gameboard(3,1) = 'O';
        case 8
            gameboard(3,2) = 'O';
        case 9
            gameboard(3,3) = 'O';
    end
end
%%%%%%%%%%%%%%%%%% WIN statement%%%%%%%%%%%%%%%%%%%%%%%%
if gameboard(1,1) == 'O' && gameboard(1,2) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(1,1) == 'O' && gameboard(2,1) == 'O' && gameboard(3,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(3,2) == 'O' && gameboard(3,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(2,3) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(2,2) == 'O' && gameboard(1,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,1) == 'O' && gameboard(2,2) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(2,3) == 'O' && gameboard(2,2) == 'O' && gameboard(2,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(1,2) == 'O' && gameboard(2,2) == 'O' && gameboard(3,2) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
else
end

disp('its like youre trying to lose')
disp(gameboard)

%%%%%%%%%%%%%%%%% Player Move 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move4 = input('You should just quit while you have your dignity.\n>');
clc

switch move4
    case 1
        if gameboard(1,1) == 'X'|| gameboard(1,1) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end 
        
        else gameboard(1,1) = 'X';
        end
    case 2
        if gameboard(1,2) == 'X'|| gameboard(1,2) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';   
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(1,2) = 'X';
        end
    case 3
        if gameboard(1,3) == 'X'|| gameboard(1,3) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(1,3) = 'X';
        end
    case 4
        if gameboard(2,1) == 'X'|| gameboard(2,1) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
            disp(gameboard)
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(2,1) = 'X';
        end
    case 5
        if gameboard(2,2) == 'X'|| gameboard(2,2) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cpumove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(2,2) = 'X';
        end
    case 6
        if gameboard(2,3) == 'X'|| gameboard(2,3) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(2,3) = 'X';
        end
    case 7  
        if gameboard(3,1) == 'X'|| gameboard(3,1) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(3,1) = 'X';
        end
    case 8
        if gameboard(3,2) == 'X'|| gameboard(3,2) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(3,2) = 'X';
        end
    case 9
        if gameboard(3,3) == 'X'|| gameboard(3,3) == 'O'
            disp(gameboard)
            move4 = input('try again dog\nThat spot is already taken\nIf you choose a taken space again, the game will be forfeited.\n>');
        
            if move4 == move1 || move4 == cpumove1 || move4 == move2 || move4 == cpumove2 || move4 == cpumove3 || move4 == move3 || move4 == cputmove4
                disp('Come back when you know how to follow directions')
                return
            elseif move2 == 1
                    gameboard(1,1) = 'X';
            elseif move2 == 2
                    gameboard(1,2) = 'X';
            elseif move2 == 3
                    gameboard(1,3) = 'X';
            elseif move2 == 4
                    gameboard(2,1) = 'X';
            elseif move2 == 6
                    gameboard(2,3) = 'X';
            elseif move2 == 7
                    gameboard(3,1) = 'X';
            elseif move2 == 8
                    gameboard(3,2) = 'X';
            elseif move2 == 9
                    gameboard(3,3) = 'X';    
            else
                disp('Come back when you know how to follow directions')
                return
            end
        
        else gameboard(3,3) = 'X';
        end
end

disp(gameboard)

if gameboard(1,1) == 'X' && gameboard(1,2) == 'X' && gameboard(1,3) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
elseif gameboard(1,1) == 'X' && gameboard(2,1) == 'X' && gameboard(3,1) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
elseif gameboard(3,3) == 'X' && gameboard(3,2) == 'X' && gameboard(3,1) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
elseif gameboard(3,3) == 'X' && gameboard(2,3) == 'X' && gameboard(1,3) == 'X';
    disp('Congrats, you won! No one had money on you')
    return
else
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Computer Move 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%

clc

if gameboard(1,1) == '1'
    gameboard(1,1) = 'O';
elseif gameboard(1,2) == '2'
    gameboard(1,2) = 'O';
elseif gameboard(1,3) == '3'
    gameboard(1,3) = 'O';
elseif gameboard(2,1) == '4'
    gameboard(2,1) = 'O';
elseif gameboard(2,3) == '6'
    gameboard(2,3) = 'O';
elseif gameboard(3,1) == '7'
    gameboard(3,1) = 'O';
elseif gameboard(3,2) == '8'
    gameboard(3,2) = 'O';
elseif gameboard(3,3) == '9'
    gameboard(3,3) = 'O';
else
end 
%%%%%%%%%%%%%%%%%%%%%% WIN STATEMENT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if gameboard(1,1) == 'O' && gameboard(1,2) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(1,1) == 'O' && gameboard(2,1) == 'O' && gameboard(3,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(3,2) == 'O' && gameboard(3,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(2,3) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,3) == 'O' && gameboard(2,2) == 'O' && gameboard(1,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(3,1) == 'O' && gameboard(2,2) == 'O' && gameboard(1,3) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(2,3) == 'O' && gameboard(2,2) == 'O' && gameboard(2,1) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
elseif gameboard(1,2) == 'O' && gameboard(2,2) == 'O' && gameboard(3,2) == 'O';
    disp(gameboard)
    disp('You lose. Maybe stick to rock paper scissors...')
    return
else disp ('Turns out you werent total garbage.')
end

disp(gameboard)
disp('that was ZERO fun.')
