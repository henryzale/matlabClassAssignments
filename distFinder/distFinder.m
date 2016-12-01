function [distAvgBar] = distFinder(imageName)

%Image Distance Calculator with 3 step verification process.

%To use this function, begin by calling an image by it's file name.
%The image will appear with a superimposed horizontal line, and a dialogue
%box asking whether the distance measurement has been made. Manipulate this 
%line using the mouse, and press "OK" on the dialogue box when the line is 
%in the proper position. This process will repeat itself two additional
%times for a total of three measurements. The average will be calculated
%and displayed in a bar graph, which is saved in the output variable.
%Results are exported to distance_results.xlsx.

%Checking if distanceResults file exists
%if it does exist, loads file
%if it doesn't exist, creates 1000x5 cell for distance inputs

fileCheck = dir('distFinderStruct.mat');
if size(fileCheck,1) == 1
    load('distFinderStruct.mat'); 
else
    distFinderStruct.distanceResults = cell(1000,5);
    distFinderStruct.distanceResults(1,1:5) = {'FileName' 'Trial1' 'Trial2' 'Trial3' 'TrialAvg'};
end


%preallocating dists to zeros cell

dists = zeros(1,3);

%bring image into workspace

imshow(imageName)

%for loop to create distance tool and dists vector
%3 distance measurements are taken

for i = 1:3

h = imdistline;
g = msgbox('Press OK once the distance tool is placed correctly');
uiwait(g)
trialDistance = getDistance(h);
dists(1,i) = trialDistance;
delete(h)
    
end

%calling error verification function

[distsVerified] = distanceVer(dists);

%verification checkpoint

if mean(distsVerified) == 0
    msgbox('Measurement cancelled.')
else
    distAvg = mean(distsVerified);
    distsFinal = {imageName,distsVerified(1),distsVerified(2),distsVerified(3),distAvg};
end

%finding next empty row within distFinderStruct.distanceResults

i = 1;
while isequal(distFinderStruct.distanceResults(i,1),{[]}) == 0
    i = i+1;
end

%saving final distance information to distFinderStruct.distanceResults

distFinderStruct.distanceResults(i,1:5) = distsFinal;

%save results

save('distFinderStruct.mat','distFinderStruct')

%collect previous data for bar graph

n = length(distFinderStruct.distanceResults(:,5));
distResultsMat = cell2mat(distFinderStruct.distanceResults(2:n,5));

%create bar graph

distAvgBar = bar(distResultsMat);
title('Distance Averages')
xlabel('Image Number')
ylabel('Distance (pixels)')

%create table

distancesTable = cell2table(distFinderStruct.distanceResults);

%export table to excel

dataExport(distancesTable)

end
