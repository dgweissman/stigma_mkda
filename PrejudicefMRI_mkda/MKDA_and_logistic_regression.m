%Load toolbox and meta-analysis data
canlab_toolbox_setup
dbfilename="PrejudicefMRI_mkda.txt"
dbname = which(dbfilename);
analysisdir=fullfile(pwd,'PrejudicefMRI_mkda');
mkdir(analysisdir)
cd(analysisdir)
clear DB
read_database;
%Run MKDA meta-analysis
DB=Meta_Setup(DB,10);
modeldir = fullfile(analysisdir, 'MKDA_all_contrasts');
mkdir(modeldir)
cd(modeldir)
Meta_Activation_FWE('all',DB,500,'nocontrasts','noverbose');
load MC_Info
[studybyroi,studybyset]=Meta_cluster_tools('getdata',r,MC_Setup.unweighted_study_data,MC_Setup.volInfo);
img=fmri_data('Activation_FWE_all.img','noverbose');
%Logistic regression
voxel_for_loop
%Map back on to brain
iimg_reconstruct_vols(tbrain,MC_Setup.volInfo,'outname','County_SS_metalog.img')