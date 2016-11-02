function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Henry Zale
%
%         DUE: October Nov. 3rd
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it,
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;     % highest possible number for advanced

% clear screen and display game introduction

clc %%%%%%%%%% ERROR 12 FOUND: Removed "()" after "clc" %%%%%%%%%%
% I'm not sure if this is an error or not, but I've found 11 and I can't
% find 12 errors. So, here's number 12!
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');

while level ~= beginner && level ~= moderate && level ~= advanced %%%%%%%%%% ERROR 1 FOUND: "||" --> "&&" %%%%%%%%%%
    % Found error by debugging after I had trouble selecting a level. I
    % knew it had to be something to do with assigning "level" a value.
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %%%%%%%%%% ERROR 2 FOUND: "=" --> "==" %%%%%%%%%%
    % Found this error with MatLab's help, it gave me a little red line on
    % the scroll bar alerting me of an error.
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
else
    highest = advancedHighest; %%%%%%%%%% ERROR 3 FOUND: "advancedhighest" --> "advancedHighest" %%%%%%%%%%
    % I found this error by debugging after I had got an "unknown variable"
    % error when I attempted to select the hardest difficulty.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest); %%%%%%%%%%% ERROR FOUND 4: Replaced "floor(rand() + 1 * highest);" with "randi(highest);" %%%%%%%%%%
    % I found this error by looking through my code. I didn't even run into
    % any problems, but I knew randi is a very simple function which does
    % just what I need it to, so I just swapped it out with something I'm
    % more familiar with.

% initialize number of guesses and User_guess

numOfTries = 0; %%%%%%%%%%% ERROR FOUND 5: Replaced "numOfTries = 1;" --> "numOfTries = 0;" %%%%%%%%%%
    % Found this error when I saw where the "numOfTries + 1" line was
    % located. This wouldn't necessarily have been an error if the other
    % line was placed at the end of the guessing loop rather than the
    % begining.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    while userGuess < 1 || userGuess > highest %%%%%%%%%%% ERROR FOUND 6: Replaced ">=" --> ">" %%%%%%%%%%
        % Found this error when I was trying to guess the highest available
        % option and it was saying my guess was invalid. I knew to look
        % specifically at the "get a valid guess" part of the commenting.
        % The problem was obvious once I knew what I was looking for.
        
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        
        userGuess = input('');
        
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    
    if userGuess < secretNumber %%%%%%%%%%% ERROR FOUND 7: Replaced ">" --> "<" %%%%%%%%%%
        % This was a weird one. Testing for this was a little tricky
        % because of the inconsistencies of the results. Sometimes my game
        % would seemingly start fine, and sometimes it immediately said
        % "Congratulations...", implying that the user guess loop was
        % ending prematurely. I looked for why the if or elseif statements
        % weren't being triggered. Upon inspection, I found this error.
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', secretNumber, numOfTries); %%%%%%%%%% ERROR 8 FOUND: Added "numOfTries" variable %%%%%%%%%% 
        % Found this error when I noticed that only one of the variable
        % place holders was working properly. I knew there had to be a
        % problem with the variable assignment.
    end  % of guessing while loop
    
end % of user input while loop %%%%%%%%%% ERROR 9 FOUND: Added "end" to user input while loop %%%%%%%%%%
    % MatLab kindly alerted me of this one.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n'); %%%%%%%%%% ERROR 10 FOUND: Moved current line outside of user input while loop %%%%%%%%%%%
    % I found this error using conditional analysis. Just looking through
    % the code I knew I wanted this after the while loops which contained
    % game activity. This is the last thing I want displayed to the user so
    % this should be the last thing before I end the function.

end % end of game %%%%%%%%%% ERROR 11 FOUND: Added "end" to function script %%%%%%%%%%%
    % Thanks MatLab 