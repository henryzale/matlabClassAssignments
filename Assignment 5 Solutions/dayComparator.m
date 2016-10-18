function [strDiff] = dayComparator(SubjectID,firstDay,secondDay)
%dayComparator Summary: input subject ID, and two days to compare
%   Detailed explanation goes here

iDiff = 1;
for i = 1:length(SubjectID)
    if secondDay(i,1) > firstDay(i,1)
        difference = secondDay(i,1) - firstDay(i,1);
        strDiff(iDiff,1) = SubjectID(i,1);
        iDiff = iDiff + 1;
    end
end
end
