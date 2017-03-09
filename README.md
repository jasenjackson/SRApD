# SRApD - Sequence Read Archive Project Downloader
## Efficiently download and convert projects from SRA browser (Requires sratoolkit)

### Step 1: Download Accession List

To download the project, you'll have to download a text file that contains a list of accession numbers. Each accession number links to an individual SRA file. Identify the SRA project ID number and copy it to your clipboard. The ID should be in the form “SRPxxxxxx”, where “xxxxxx” represents your unique project ID. 

-Go to the SRA Run Selector ( https://trace.ncbi.nlm.nih.gov/Traces/study/?go=home ) and paste your project ID in. 

-Alternatively, you can go to https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=SRPxxxxxx , where, again, "xxxxxx" represents your unique project ID. 

This should bring you to a page that has all of the files you want to download. Select the samples you want (or click on the green arrow to select all samples), and click on the “Accession List” button. You should now have a file containing the accession numbers of all of the sequencing reads you would like to download (SRR_Acc_List.txt). Move this file to your bin file, the same file path as your sratoolkit script files (I.E: /sratoolkit/bin/). 

### Step 2: Run SRApD.sh

Once you have downloaded the accession list, you are ready to use SRApD.sh! Make sure SRApD.sh is in the sratoolkit/bin/ folder. I have already installed this on the kilgore machine in Dr. Burns' lab. I'm currently working on making it easy for you to download it. Until then, you will have to copy and paste the contents of "SRApD.sh" into a file that is in the bin folder of sratoolkit. Once you have SRApD.sh, navigate to it. for example:<br /><br />
<b>cd Biol392/sratoolkit/bin</b><br />

First, you will need to change the rights of the script so that you can use it. Type the following into terminal: <br /><br />
<b>chmod 755 SRApD.sh </b><br />

SRApD.sh has two arguments: the path/filename of the accession list and the path/filename where you want to store all of the reads. If the output folder doesn't already exist, the SRApD will create it. To use the script you must type "./" in front of "SRApD". For example: <br /><br />
<b>./SRApD.sh SRR_Acc_List.txt Biol392/Data/uterine-microbiome </b><br />

Check your folder for your FASTQ files! =) 
