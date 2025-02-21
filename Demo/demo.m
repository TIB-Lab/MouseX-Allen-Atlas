
data_dir='/full_path'

mice={'mice1','mice2','mice3'}


for r=1:length(mice)

    % 1. create isolated folder per mice       
    system(['mkdir '  data_dir '/' mice{r}]);
    mice_path=([data_dir '/' mice{r}]);
    
    
    % 2. move maps to isolated folder    
    maps_dir='full_maps_path'
    
    template='MouseX-DW-ALLEN_Template_FA.nii'; 
    FA=(['FA_' mice{r} '.nii']); 
    atlas='MouseX-DW-ALLEN_Annotation_DWcontrast.nii';  
    
    system(['cp ' maps_dir '/' template ' ' mice_path '/' template]); 
    system(['cp ' maps_dir '/' FA ' ' mice_path '/' FA]); 
    system(['cp ' maps_dir '/' atlas ' ' mice_path '/' atlas]); 
    
    cd(mice_path)    
    
    
    % 3. Run ANTs registration:        
    system(['antsRegistrationSyN.sh -d 3 -n <System Cores number> -f ' template ' -m ' FA ' -o transf_ -t s']);     
    
    
    % 4. Apply the inverse transform
    system(['antsApplyTransforms -d 3 -e 0 -i ' atlas ' -r ' FA ' -o MouseX_' mice{r} '.nii -t [transf_0GenericAffine.mat,1] -t [transf_1InverseWarp.nii.gz] -n NearestNeighbor -v 1']);      
    
    
end
