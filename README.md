# MouseX-DW-Allen-Atlas
## Sex matters: the MouseX DW-ALLEN Atlas for mice diffusion-weighted MR imaging

_Find the published paper here:https://doi.org/10.1016/j.neuroimage.2024.120573_

_NOTE: new updated version of the Annotations is available from February 2024 on, if you had previously downloaded the files, we welcome you to replace them with the new version_

Overcoming sex bias in preclinical research not only needs the inclusion of animals of both sexes, but also developing of proper tools to handle such data. This repository provides a novel DW-MRI mouse brain template and annotation created with the publically available Allen Brain Atlas, and including both sexes: the **MouseX DW-ALLEN Atlas**. 

![MouseX Atlas generation](https://github.com/TIB-Lab/MouseX-Allen-Atlas/assets/147612644/882e320b-70af-4401-ad9e-6d3e0de4da81)


## TEMPLATES: 
Here, we first provide a high resolution template with three contrasts: **relaxometry T2W**, and **diffusion-based FA and MD contrasts**. 
![MouseX Atlas Templates](https://github.com/TIB-Lab/MouseX-Allen-Atlas/assets/147612644/65a30537-2be7-4435-a016-f917c5a37bba)


For the T2W contrast, we provide templates created with
  1) both sexes: find it in folder MouseX [MouseX](MouseX)
  2) one with only male subjects: find it in folder MouseX_male-only [MouseX_male-only](MouseX_female-only)
  3) one with only female: find it in folder MouseX_female-only [MouseX_female-only](MouseX_female-only)


## ANNOTATIONS:
Then, we provide the **MouseX DW-ALLEN** annotation corresponding to the **Allen Mouse Brain Atlas** region organization, and the corresponding Labels document with region-number assignation, with a total of 62 regions, for each of the three templates (both sexes, male only and female only). 

![MouseX Atlas Annotations](https://github.com/TIB-Lab/MouseX-Allen-Atlas/assets/147612644/b54940bc-b351-4605-9abf-9fad3473eb13)

![Gray and white matter regions](https://github.com/TIB-Lab/MouseX-Allen-Atlas/assets/147612644/ab6eb98c-efa1-446a-9b8d-20343da67fac)

### TWO-HEMISPHERE ANNOTATION:
For those experimenters needing to differentate each hemisphere, we provide the "MouseX-DW-ALLEN_AnnotationL-R", where we have maintained the right side with the original value, and the left side is the original value + 100.

![MouseX-DW-ALLEN_AnnotationL-R](https://github.com/TIB-Lab/MouseX-Allen-Atlas/assets/147612644/a95e06ff-a8b9-4d7f-b131-3b4577626980)

Find it in folder [MouseX](MouseX)


## DEMO DATA: parcellate your maps with MouseX 
MouseX DW-ALLEN annotation can easily be moved to your experimental brain space using ANTs. Find a demo script and demo data in folder [Demo](Demo)

![Registration_ilustration](https://github.com/user-attachments/assets/28a46b81-1783-45b5-8d27-cb3bb298a5e8)


## Coordinate system and voxel conventions
We provide two MouseX atlas versions corresponding to different axis conventions commonly used in preclinical MRI pipelines. The difference arises from a permutation of anatomical axes (e.g. coronal/axial orientation), resulting in distinct affine definitions. Users should select the version that is consistent with their data orientation prior to registration.

Available in: [axis_permuted](axis_permuted)

In addition, the atlas is distributed in a harmonised working space designed for compatibility with standard neuroimaging preprocessing tools (e.g. ANTs, FSL), which are primarily optimised for human brain scale data.

To ensure interoperability across tools, the template is provided in a scaled working resolution (~10× human-to-mouse brain scaling convention). Consequently, the voxel size reflects this working space and is not intended to represent the native acquisition resolution directly.

If physical-space fidelity is required (e.g. quantitative measurements in native units), users should apply the corresponding inverse scaling factor to recover the original acquisition scale.

This design preserves anatomical correspondence while allowing robust performance of standard preprocessing pipelines with default parameter settings.


