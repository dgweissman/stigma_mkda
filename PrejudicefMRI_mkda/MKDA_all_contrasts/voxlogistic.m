function voxt = voxlogistic(stig,vox,w)
z=[]
if sum(vox)<3
    voxt=0
else
    [b,dev,stats]=glmfit(stig,vox,'binomial','logit','off',z,w,'on');
    voxt=stats.t(2);
end
end
