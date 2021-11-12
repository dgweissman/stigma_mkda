
load MC_Info;
tbrain=double.empty;
for n = 1:231202
    vals=MC_Setup.unweighted_study_data(n,:);
    input=zeros(24,1);
    input(find(vals==1))=1;
    a= voxlogistic(CountySS,input,wts);
    tbrain=cat(2,tbrain,a);
    
end
tbrain=sparse(tbrain');
save('CountySS_logistic_tscores.mat','tbrain');
