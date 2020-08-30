# GAIN---Deep-Learning-Project
Reproduction of GAIN from Yoon et al. 
----------------------------------------------
Semester project in course Deep learning of "Data Science and Machine Learning" Master's program from ECE, NTUA.

Maria-Filippa Trivyza  

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

      - data_no_labels
      
      - data_with_labels
      
      - plots
      
      - GAIN_reprod.ipynb
      
      - GAIN_td.ipynb
      
      - slurm_reprod.sh
      
      - slurm_td.sh
      
      - team1.gain_td.log.zip
      
      - team1.reprod.log.zip
      
2) GAIN-MNIST

      - images
      
      - Multiple_Impute
      
      - GAIN_mnist.ipynb
      
      - input_data.py
      
      - slurm_mnist.sh
       
      - team1.mnist.log.zip

3) GAIN-Pneumonia

      - data_pneumonia
      
      - images_pneumonia
      
      - GAIN_pneumonia.ipynb
      
      - slurm_pneumonia.sh
      
      - team1.pneumonia.log.zip
