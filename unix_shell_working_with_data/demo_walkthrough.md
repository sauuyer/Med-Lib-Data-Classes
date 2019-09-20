#### File preperation
Before the class, gain access to the data folder and put this "project_dir" onto your desktop

#### Open your terminal 

#### Explore project_dir
1. cd Desktop
2. cd project_dir
3. ls
4. cd data/mimic...
    click tab to autocomplete the mimic folder name

#### Explore the mimic data files
1. ls
2. cat LICENSE.txt
3. nano LICENSE.txt
4. cat labevents.csv
    wow! this is a long readout! use control+c to escape it if nessisary 
    how might we learn about the contents of csvs more effectively?
5. wc transfers.csv
6. man wc
7. wc -l transfers.csv
8. head labevents.csv
9. head -n1 labevents.csv
10. tail -n3 labevents.csv
11. head -n1 *.csv

#### Let's start saving our data summary information
1. mkdir data_summaries
2. head -n *.csv > data_summaries/csv_col_headers.txt

#### Which csv files contain subject_id information?
1. grep "subject_id" *.csv
2. grep -l "subject_id" *.csv
      save this list to a text file in your data summaries folder
3. grep -l "subject_id" *.csv > data_summaries/subject_related_tables_list.txt

#### Create a variable containing all of the names of the csv files that contain subject_id information
1. subjects_list="$(grep -l 'subject_id' *.csv)"
2. echo "$subjects_list"

#### How can we return each item (file name) saved in our variable using a for loop?
1. for thing in $subjects_list;
do
echo this file contains a subject id: $thing
done
2. for i in $subjects_list;  do head -n2 $i; done

#### Let's save all of the commands we have run so far in this session
1. history
2. history > data_summaries/history.txt

#### In the microbiologyevents.csv, find all cases related to the Enerococcus bacteria strain
1. awk '/ENTEROCOCCUS/' microbiologyevents.csv | head

#### Say you want to combine all lab events with the subject's data found in the patients.csv file?
1. join -1 2 -2 2 -t , patients.csv labevents.csv > data_summaries/merged_patients_labs.csv
