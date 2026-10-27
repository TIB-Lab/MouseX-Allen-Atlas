## MATCH HISTOLOGY: QUINT workflow adaptation:

Validation efforts of MRI biophysical models require complementary techniques like histology capable of providing cell-specific ground truth across different brain regions, ages, or pathological conditions.
To facilitate sharing a common annotation between different neuroimaging techniques, we here provide the MouseX parcellation adapted to be used in Nutil, as part of the QUINT workflow.
Modified from the Allen Mouse Brain Atlas Common Coordinate Framework version 3 2017 provided, can be used with the “custom atlas” feature.

How to use it:
  1) **QuickNII**: select "ABAMouse-v3-2017"
  2) **Nutil**: select "Reference Atlas: Custom" --> "Custom Reference Atlas: ABAHier2017-MouseX.xlsx"

<img width="1770" height="1125" alt="image" src="https://github.com/user-attachments/assets/8e032fea-c344-4900-ad1f-cf197919e10a" />

Now, you will share the same subregions merging criteria for MRI and histology data
<img width="1661" height="713" alt="image" src="https://github.com/user-attachments/assets/c785e3bf-dc87-4a52-aff7-f68e3f6216af" />


# You can find the QUINT workflow data here:

Yates SC, Groeneboom NE, Coello C, Lichtenthaler SF, Kuhn PH, Demuth HU,Hartlage-Rübsamen M, Roßner S, Leergaard T, Kreshuk A, Puchades MA, Bjaalie JG. 
"QUINT: Workflow for quantification and spatial analysis of features in histological images from rodent brain". Front Neuroinform. 2019 Dec 3;13:75. https://doi.org/10.3389/fninf.2019.00075.

  - https://quint-workflow.readthedocs.io/en/latest/QUINTintro.html
  - https://ebrains.eu/data-tools-services/tools/labellled-features-analysis
