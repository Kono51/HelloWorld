function [sum] = thElementSum(dataElements)
%  Connor Blandford 05/01/16
%  takes row vectors of data elements, determines length,
%  returns sum of the elements.
theSum =0;
dataSize = numel(dataElements);
for i = 1: dataSize
    theSum = theSum + dataElements(i);
end
sum = theSum;
end