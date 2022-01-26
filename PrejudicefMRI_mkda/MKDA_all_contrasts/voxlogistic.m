%Defines a function that runs a weighted logistic regression of variable "stig" on variable "vox" with weight "w"
function voxt = voxlogistic(stig,vox,w)
z=[]
if sum(vox)<3
    voxt=0
else
    [b,dev,stats]=glmfit(stig,vox,'binomial','logit','off',z,w,'on');
    voxt=stats.t(2);
end
end
