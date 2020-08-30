# GAIN---Deep-Learning-Project
Reproduction of GAIN from Yoon et al. 
----------------------------------------------
Semester project in course Deep learning of Data Science and Machine Learning MSc from ECE, NTUA.

Marilia Trivyza  

Maria Kaiktzoglou

Dimitris Zerkelidis

----------------------------------------------

Paper : https://arxiv.org/pdf/1806.02920.pdf ( GAIN: Missing Data Imputation using Generative Adversarial Nets )

Author's code : https://github.com/jsyoon0823/GAIN

We re-wrote the author's code from tensorflow in Pytorch and reproduced the paper while adding plenty changes to the architectures for better results.


All the results were executed in ARIS HPC https://hpc.grnet.gr/ and the log outputs can be seen there in our team folder "Team1". Here we provide the files in ipynb format so that they are easier to read. By converting them to .py they are ready to run in ARIS HPC.

----------------------------------------------

Explanations of files and Execution:

1) GAIN-Reprod + GAIN-TD

      - data_no_labels: Yoon's datasets used in his paper without labels
      
      - data_with_labels: Yoon's datasets used in his paper with labels
      
      - plots: Similar plots as in GAIN paper to compare the two architectures that we are testing (GAIN AND GAIN-TD).
      
      - GAIN_reprod.ipynb: GAIN reproduction execution code
      
      - GAIN_td.ipynb: GAIN-TD reproduction execution code
      
      - slurm_reprod.sh: ARIS HPC script to run GAIN_reprod
      
      - slurm_td.sh:  ARIS HPC script to run GAIN_td
      
      - team1.gain_td.log.zip: log outputs for GAIN-TD
      
      - team1.reprod.log.zip: log outputs for GAIN


2) GAIN MNIST 

      - images: Contains the output images. Both noisy and imputed images from all type of architectures and missing rate 0.2 and 0.5.
      
      - Multiple_Impute: Contains the output images while GAIN is being trained. It outputs an image every 100 epoch.
      
      - GAIN_mnist.ipynb: Execution code.
      
      - input_data.py: This file is being called by GAIN_mnist to download MNIST.
      
      - slurm_mnist.sh: ARIS HPC script to run GAIN_mnist. (Convert .ipynb files to .py)
       
      - team1.mnist.log.zip: log outputs of MNIST from ARIS HPC.

3) GAIN-Pneumonia

      - pneumonia_preprocessing.ipynb : Chest X-ray (Pneumonia) preprocessing. Because dataset is too large in this notebook we   provide download links and preprocessing code as in our research.
      
      - images_pneumonia: contains the output images. Both noisy and imputed images from all type of architectures and missing rate 0.2 and 0.5.
      
      - GAIN_pneumonia.ipynb: Execution code
      
      - slurm_pneumonia.sh: ARIS HPC script to run the GAIN_pneumonia. (Convert .ipynb files to .py)
      
      - team1.pneumonia.log.zip: log outputs of Pneumonia from ARIS HPC. 


-------------------------------------------------------

Dataset links:

Breast: https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)

Spam:   http://archive.ics.uci.edu/ml/datasets/spambase

Letter: http://archive.ics.uci.edu/ml/datasets/Letter+Recognition

Credit: https://archive.ics.uci.edu/ml/datasets/default+of+credit+card+clients?fbclid=IwAR24zSxaMV6-JzPETXxGPmG3G7BQ_FIJ5jgCFK3DUyKSQ2ZdH1NXr64dDG4#

News:   https://archive.ics.uci.edu/ml/datasets/online+news+popularity?fbclid=IwAR25BlNFWm5f3qPG8-9CahbrYwxl5zFuznD6sLa-8FJl6G2bWP-a17qB2qY

MNIST: http://yann.lecun.com/exdb/mnist/

Chest X-ray (Pneumonia): https://data.mendeley.com/datasets/rscbjbr9sj/2


-------------------------------------------------------

Libraries:

numpy 1.16.4

Pytorch 1.4

tensorflow 2.3.0

Python 3.1

scikit-learn 0.22.1

scipy  1.4.1

seaborn  0.10.1
