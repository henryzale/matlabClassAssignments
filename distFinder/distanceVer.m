function [distsVerified] = distanceVer(dists)

%if one or more of the three distance measurements are off by 5%...
%displays dialogue box alerting the user, and asking if they want...
%to continue anyway. 

mistake = 'No';

if abs(dists(1,1)-dists(1,2)) > dists(1,1)*.05
    prompt = questdlg('One or more of your values is off by at least 5%, would you like to continue anyway?');
    correctMistake = strcmp(prompt,mistake);
    if correctMistake == 1;
        distsVerified = zeros(1,3);
    else
        distsVerified = dists;
    end
    
elseif abs(dists(1,2)-dists(1,3)) > dists(1,2)*.05
    prompt = questdlg('One or more of your values is off by at least 5%, would you like to continue anyway?');
    correctMistake = strcmp(prompt,mistake);
    if correctMistake == 1;
        distsVerified = zeros(1,3); 
    else
        distsVerified = dists;
    end
    
elseif abs(dists(1,3)-dists(1,1)) > dists(1,2)*.05
    prompt = questdlg('One or more of your values is off by at least 5%, would you like to continue anyway?');
    correctMistake = strcmp(prompt,mistake);
    if correctMistake == 1;
        distsVerified = zeros(1,3); 
    else
        distsVerified = dists;
    end
    
else
    distsVerified = dists;
    
end
