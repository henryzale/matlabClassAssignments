clc

% Import file function
importfile

% genderIsoCalc
[maleIsoIndMeansSub,maleIsoIndMeans,femaleIsoIndMeansSub,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(SubjectID,Gender,Day1,Day2,Day3);
%allData = maleIsoIndMeans

% dayComparator
[day1toDay2] = dayComparator(SubjectID,Day1,Day2);
[day2toDay3] = dayComparator(SubjectID,Day2,Day3);

% weightNormalize
[normDay1mean,normDay2mean,normDay3mean] = weightNormalize(Weight,Day1,Day2,Day3);

% Creating tables

maleIndMeansTable = table(maleIsoIndMeansSub,maleIsoIndMeans, 'VariableNames', {'maleIsoIndMeansSub' 'maleIsoIndMeans'});
femaleIndMeansTable = table(femaleIsoIndMeansSub,femaleIsoIndMeans, 'VariableNames', {'FemaleIsoIndMeansSub' 'FemaleIsoIndMeans'});
genderGroupMeansTable = table(maleGroupIsoMean,femaleGroupIsoMean, 'VariableNames', {'maleGroupIsoMean' 'femaleGroupIsoMean'});
day1toDay2Table = table(day1toDay2, 'VariableNames', {'day1toDay2'});
day2toDay3Table = table(day2toDay3, 'VariableNames', {'day2toDay3'});
normDaysTable = table(normDay1mean, normDay2mean, normDay3mean, 'VariableNames', {'normDay1mean' 'normDay2mean' 'normDay3mean'});

% Exporting tables

writetable(maleIndMeansTable,'iso_results.xlsx', 'Sheet',1,'Range', 'A1')
writetable(femaleIndMeansTable,'iso_results.xlsx', 'Sheet',2,'Range', 'A1')
writetable(genderGroupMeansTable,'iso_results.xlsx', 'Sheet',3,'Range', 'A1')
writetable(day1toDay2Table,'iso_results.xlsx', 'Sheet',4,'Range', 'A1')
writetable(day2toDay3Table,'iso_results.xlsx', 'Sheet',5,'Range', 'A1')
writetable(normDaysTable,'iso_results.xlsx', 'Sheet',6,'Range', 'A1')