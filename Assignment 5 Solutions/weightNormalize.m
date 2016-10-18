function [normDay1mean,normDay2mean,normDay3mean] = weightNormalize(Weight,Day1,Day2,Day3)
%weightNormalize Summary of this function goes here
%   Detailed explanation goes here

normDay1mean = sum(Day1)/sum(Weight);
normDay2mean = sum(Day2)/sum(Weight);
normDay3mean = sum(Day3)/sum(Weight);

end

