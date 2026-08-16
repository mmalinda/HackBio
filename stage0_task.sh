#!/bin/bash

# Stage 0 Task

######################################### Project 1: BASh Basics ######################################################

# 1. Print your name
name='Mutanu'
echo 'My name is' $name

# 2. Create a folder titled your name
echo 'Initial list of files in directory:'
ls
mkdir mutanu

echo 'New folder created:' # Checking that the folder exists
ls

# 3. Create another new directory titled biocomputing and change to that directory with one line of command
mkdir biocomputing && cd biocomputing

echo 'Changed directory to new folder: biocomputing'
pwd # Making sure we have created and navigated into the new directory

# 4. Download these 3 files:
echo 'Downloading files'
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.fna https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk

echo 'Download complete.'
ls -lh # Checking that files have been downloaded

# 5. Move the .fna file to the folder titled your name
mv wildtype.fna ../mutanu

echo 'contents of biocomputing folder:'
ls 
echo 'contents of self-titled folder:'
ls ../mutanu/ # Checking that the file was moved

# 6. Delete the duplicate gbk file
rm wildtype.gbk.1

echo 'Duplicate file deleted.'
ls # Checking that the file was deleted

# 7. Confirm if the .fna file is mutant or wild type (tatatata vs tata)
# 8. If mutant, print all matching lines into a new file
cd ../mutanu # Navigating to folder with fna file

echo 'Checking for mutant sequence:'
if grep -q 'TATATATA' wildtype.fna; then
    echo 'Mutant sequence. Matching lines:'
    grep 'TATATATA' wildtype.fna
    touch mutant.txt
    grep 'TATATATA' wildtype.fna > mutant.txt && echo 'Matching lines saved to mutant.txt.'
else
    echo 'Wildtype sequence'    
fi

# 9. Count number of lines (excluding header) in the .gbk file
cd ../biocomputing
echo 'Number of lines in .gbk file:'
tail -n +2 wildtype.gbk | wc -l

# 10. Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)
echo 'Sequence length of .gbk file:'
grep 'LOCUS' wildtype.gbk

# 11. Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)
echo 'Source organism of .gbk file:'
grep 'SOURCE' wildtype.gbk

# 12. List all the gene names of the .gbk file. Hint {grep '/gene='}
echo 'Gene names in .gbk file:'
grep '/gene=' wildtype.gbk

# 13. Clear your terminal space and print all commands used today
cd ..
clear #comment out if running as a script to avoid losing the last few lines of output.
history

# 14. List the files in the two folders
echo 'Files in this directory:'
ls -R

######################### Project 2: Installing Bioinformatics Software on the Terminal ###############################

# 1. Activate your base conda environment
echo 'Conda version:'
conda --version # Checking that conda is working

echo 'Activating my base conda environment:'
conda init bash
eval "$(conda shell.bash hook)" # workaround instead of restarting terminal
conda activate base

# 2. Create a conda environment named funtools
echo 'Creating a new conda environment:'
conda create -n funtools -y

# 3. Activate the funtools environment
echo 'Activating the new conda environment:'
conda activate funtools

# 4. Install Figlet using conda or apt-get
echo 'Installing figlet:'
sudo apt-get install figlet

# 5. Run figlet <your name>
echo 'My Figlet image:'
figlet mutanu 

# 6. - 13. Install bwa, blast, samtools, bedtools, spades, bcftools, fastp, multiqc through the bioconda channel
echo 'Installing packages from bioconda:'
conda install -c bioconda bwa blast samtools bedtools spades bcftools fastp multiqc -y

echo 'Installed packages:'
conda list

conda deactivate

## Professional Profile:

# GitHub repo code submission
echo 'Github repo: https://github.com/mmalinda/HackBio'

# LinkedIn Video
echo 'Video - Explaining my solution step by step: #!/bin/bash

# Stage 0 Task

######################################### Project 1: BASh Basics ######################################################

# 1. Print your name
name='Mutanu'
echo 'My name is' $name

# 2. Create a folder titled your name
echo 'Initial list of files in directory:'
ls
mkdir mutanu

echo 'New folder created:' # Checking that the folder exists
ls

# 3. Create another new directory titled biocomputing and change to that directory with one line of command
mkdir biocomputing && cd biocomputing

echo 'Changed directory to new folder: biocomputing'
pwd # Making sure we have created and navigated into the new directory

# 4. Download these 3 files:
echo 'Downloading files'
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.fna https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk

echo 'Download complete.'
ls -lh # Checking that files have been downloaded

# 5. Move the .fna file to the folder titled your name
mv wildtype.fna ../mutanu

echo 'contents of biocomputing folder:'
ls 
echo 'contents of self-titled folder:'
ls ../mutanu/ # Checking that the file was moved

# 6. Delete the duplicate gbk file
rm wildtype.gbk.1

echo 'Duplicate file deleted.'
ls # Checking that the file was deleted

# 7. Confirm if the .fna file is mutant or wild type (tatatata vs tata)
# 8. If mutant, print all matching lines into a new file
cd ../mutanu # Navigating to folder with fna file

echo 'Checking for mutant sequence:'
if grep -q 'TATATATA' wildtype.fna; then
    echo 'Mutant sequence. Matching lines:'
    grep 'TATATATA' wildtype.fna
    touch mutant.txt
    grep 'TATATATA' wildtype.fna > mutant.txt && echo 'Matching lines saved to mutant.txt.'
else
    echo 'Wildtype sequence'    
fi

# 9. Count number of lines (excluding header) in the .gbk file
cd ../biocomputing
echo 'Number of lines in .gbk file:'
tail -n +2 wildtype.gbk | wc -l

# 10. Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)
echo 'Sequence length of .gbk file:'
grep 'LOCUS' wildtype.gbk

# 11. Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)
echo 'Source organism of .gbk file:'
grep 'SOURCE' wildtype.gbk

# 12. List all the gene names of the .gbk file. Hint {grep '/gene='}
echo 'Gene names in .gbk file:'
grep '/gene=' wildtype.gbk

# 13. Clear your terminal space and print all commands used today
cd ..
clear #comment out if running as a script to avoid losing the last few lines of output.
history

# 14. List the files in the two folders
echo 'Files in this directory:'
ls -R

######################### Project 2: Installing Bioinformatics Software on the Terminal ###############################

# 1. Activate your base conda environment
echo 'Conda version:'
conda --version # Checking that conda is working

echo 'Activating my base conda environment:'
conda init bash
eval "$(conda shell.bash hook)" # workaround instead of restarting terminal
conda activate base

# 2. Create a conda environment named funtools
echo 'Creating a new conda environment:'
conda create -n funtools -y

# 3. Activate the funtools environment
echo 'Activating the new conda environment:'
conda activate funtools

# 4. Install Figlet using conda or apt-get
echo 'Installing figlet:'
sudo apt-get install figlet

# 5. Run figlet <your name>
echo 'My Figlet image:'
figlet mutanu 

# 6. - 13. Install bwa, blast, samtools, bedtools, spades, bcftools, fastp, multiqc through the bioconda channel
echo 'Installing packages from bioconda:'
conda install -c bioconda bwa blast samtools bedtools spades bcftools fastp multiqc -y

echo 'Installed packages:'
conda list

conda deactivate

## Professional Profile:

# GitHub repo code submission
echo 'Github repo: https://github.com/mmalinda/HackBio'

# LinkedIn Video
echo 'Video - Explaining my solution step by step: https://www.linkedin.com/feed/update/urn:li:ugcPost:7494854424037580800/'


