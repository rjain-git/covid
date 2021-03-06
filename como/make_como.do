
/*********************/
/* data construction */
/*********************/

/* get continuous fit to UK age hazard ratios */
// shell matlab $ccode/como/b/fit_cts_uk_age_hr.m

/* combine DLHS and AHS */
do $ccode/como/b/prep_health_data.do

/* calculate risk factors */
do $ccode/como/b/gen_comorbidity_predictions.do

/* create an age-level dataset with UK condition prevalence */
do $ccode/como/b/prep_uk_sim_prevalence.do

/************/
/* analysis */
/************/

/* plot UK / India prevalence of comorbid conditions */
do $ccode/como/a/compare_uk_india_prevalence.do

/* plot India risk factors under various assumptions*/
do $ccode/como/a/examine_risk_factors.do

/* plot relationship between risk and poverty */
do $ccode/como/a/examine_risk_factors_poverty.do
