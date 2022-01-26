
%Load mkda results
load MC_Info;

%Run logistic regression of County Structural Stigma on each voxel from each study based on mkda CIMs
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

%Run logistic regression of State Structural Stigma on each voxel from each study based on mkda CIMs
tbrain=double.empty;
for n = 1:231202
    vals=MC_Setup.unweighted_study_data(n,:);
    input=zeros(24,1);
    input(find(vals==1))=1;
    a= voxlogistic(StateSS,input,wts);
    tbrain=cat(2,tbrain,a);    
end
tbrain=sparse(tbrain');
save('StateSS_logistic_tscores.mat','tbrain');

%Run logistic regression of GINI on each voxel from each study based on mkda CIMs
tbrain=double.empty;
for n = 1:231202
    vals=MC_Setup.unweighted_study_data(n,:);
    input=zeros(24,1);
    input(find(vals==1))=1;
    a= voxlogistic(gini,input,wts);
    tbrain=cat(2,tbrain,a);    
end
tbrain=sparse(tbrain');
save('gini_logistic_tscores.mat','tbrain');

%Run logistic regression of pctblack on each voxel from each study based on mkda CIMs
tbrain=double.empty;
for n = 1:231202
    vals=MC_Setup.unweighted_study_data(n,:);
    input=zeros(24,1);
    input(find(vals==1))=1;
    a= voxlogistic(pctblack,input,wts);
    tbrain=cat(2,tbrain,a);    
end
tbrain=sparse(tbrain');
save('pctblack_logistic_tscores.mat','tbrain');

%Run logistic regression of pctcollege on each voxel from each study based on mkda CIMs
tbrain=double.empty;
for n = 1:231202
    vals=MC_Setup.unweighted_study_data(n,:);
    input=zeros(24,1);
    input(find(vals==1))=1;
    a= voxlogistic(pctcollege,input,wts);
    tbrain=cat(2,tbrain,a);    
end
tbrain=sparse(tbrain');
save('pctcollege_logistic_tscores.mat','tbrain');

%Run logistic regression of IAT on each voxel from each study based on mkda CIMs
tbrain=double.empty;
for n = 1:231202
    vals=MC_Setup.unweighted_study_data(n,:);
    input=zeros(24,1);
    input(find(vals==1))=1;
    a= voxlogistic(IAT,input,wts);
    tbrain=cat(2,tbrain,a);    
end
tbrain=sparse(tbrain');
save('IAT_logistic_tscores.mat','tbrain');


