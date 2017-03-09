# SRApD - Sequence Read Archive Project Downloader
## Efficiently Download and convert projects from SRA browser (Requires sratoolkit)

### Step 1: Download Accession List

To download the project, you'll have to download a text file that contains a list of accession numbers. Each accession number links to an individual SRA file. Identify the SRA project ID number and copy it to your clipboard. The ID should be in the form “SRPxxxxxx”, where “xxxxxx” represents your unique project ID. 

-Go to the SRA Run Selector ( https://trace.ncbi.nlm.nih.gov/Traces/study/?go=home ) and paste your project ID in. 

-Alternatively, you can go to https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=SRPxxxxxx , where, again, "xxxxxx" represents your unique project ID. 

This should bring you to a page that has all of the files you want to download. Select the samples you want (or click on the green arrow to select all samples), and click on the “Accession List” button. You should now have a file containing the accession numbers of all of the sequencing reads you would like to download (SRR_Acc_List.txt). Move this file to your bin file, the same file path as your sratoolkit script files (I.E: /sratoolkit/bin/). 

### Step 2: Run SRApD.sh

Once you have downloaded the accession list, you are ready to use SRApD.sh! In terminal, navigate to the file containing SRApD.sh (i.e: cd /user/sratoolkit/bin).

First, you will need to change the rights of the script so that you can use it. Type the following into terminal: <br />
chmod 755 SRApD.sh <br />

SRApD.sh has two arguments: the path/filename of the accession list and the folder where you want to store all of the reads. To use the script you must type "./" in front of "SRApD". For example: <br />
./SRApD.sh SRR_Acc_List.txt uterine-microbiome <br />

Check your folder for your FASTQ files! =) 
