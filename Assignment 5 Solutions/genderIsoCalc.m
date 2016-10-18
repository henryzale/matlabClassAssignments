function [maleIsoIndMeansSub, maleIsoIndMeans, femaleIsoIndMeansSub, femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(SubjectID,Gender,Day1,Day2,Day3)
%genderIsoCalc outputs male individual means, female individual means, 
%male group mean and female group mean 

%Gender counters
iMale = 1;
iFemale = 1;
%changing cell to matrix
Gender = cell2mat(Gender);
%for loop to find individual mean values
for i = 1:length(SubjectID);
    liftCum = (Day1(i,1)+Day2(i,1)+Day3(i,1));
    subMean = (liftCum/3);
    if Gender(i,1) == 'M';
        maleIsoIndMeansSub(iMale,1) = SubjectID(i,1);
        maleIsoIndMeans(iMale,1) = subMean;
        iMale = iMale + 1;
    elseif Gender(i,1) == 'F';
        femaleIsoIndMeansSub(iFemale,1) = SubjectID(i,1);
        femaleIsoIndMeans(iFemale,1) = subMean;
        iFemale = iFemale + 1;
    end
end
%Calculating group means
maleGroupIsoMean = mean(maleIsoIndMeans(:,1));
femaleGroupIsoMean = mean(femaleIsoIndMeans(:,1));

end

