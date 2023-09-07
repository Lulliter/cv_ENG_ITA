# check 
git status


# stage for commit
git add -u

git add copy_2_job.R
git add "03_CV_vitae/resume_europrogettista.pdf"
   git add     temp_RES/knit_w_param.R
   git add     LMMimmi_RES_ENG.pdf
   git add     LMMimmi_RES_ITA.Rmd
   git add     LMMimmi_RES_ITA.pdf
   git add     LMMimmi_longCV_ENG.Rmd
   git add     LMMimmi_longCV_ENG.pdf
   git add     LMMimmi_longCV_ITA.Rmd
   git add     LMMimmi_longCV_ITA.pdf
  git add         LMMimmi_RES_FORM_ITA.Rmd
  git add      LMMimmi_RES_FORM_ITA.pdf
  git add LMMimmi_RES_ENG_sanitized.pdf
  git add LMMimmi_RES_ITA_sanitized.Rmd
  git add README.md README.html

        
git add awesome_RES_ENG.Rmd
git add  awesome_RES_ENG.pdf
git add  awesome_longCV_ENG.Rmd
git add  awesome_longCV_ENG.pdf

# commit changes 
git commit -m "1 hacked kable extra lines + 2 footer is back" -m "1  Had some issues with the header-includes: LaTeX packages, see https://github.com/haozhu233/kableExtra/issues/413 2 reinstalled vitae from Github"
git commit -m "added 1 job to Resume ITA in LongCVs" -m "both data input (.csv) and .Rmd files"
git commit -m "added LMMimmi_RES_FORM_ITA.Rmd X AVERE VERSIONE FORMATORE | no param"  
git commit -m "modified LMMimmi_RES_ENG.Rmd"  -m "and added to website as CV "

# push 
git push origin master


#=========================================== (IGNORE a file accidentally committed in the past) ================================================#
# add .env file to .gitignore
echo "accident.txt" >> .gitignore
# tell Git NOT to track this file (it gets removed from the index, but stays local system)
git rm --cached accident.txt
# to discard changes in working directory (restano in LOCAL ma non in git )
git checkout -- temp_RES/'CV_LuisaMimmi_Esperta in Economia dello sviluppo e Sostenibilità_2023-05-30.pdf' 
 git checkout -- temp_RES/'CV_LuisaMimmi_Data Scientist_2023-05-30.pdf'
 git checkout -- temp_RES/'CV_LuisaMimmi_Economista -- sviluppo sostenibile_2023-05-30.pdf'
 git checkout -- temp_RES/'CV_LuisaMimmi_Economista e Data Journalist_2023-05-30.pdf'
