# ---------- knit a Specific flavor of parametrized RESUME ITA

# Parameters --------------------------------------------------------------
position <-  list(
"Esperta in Economia dello sviluppo e Sostenibilità", #1
"Economista e Analista di Fondi UE e PNRR", #2
"Valutazione Politiche Pubbliche ed Europrogettazione", #3
"Economista -- sviluppo sostenibile", #4
"Economia e analisi di mercato", #5
"Policy & Data Analyst", #6
"Business Intelligence Analyst", #7
"Economista e Data Scientist", #8
"Economista e Data Journalist", #9
"Economista e consulente freelance" #10
)

aboutme <- list( 
# 1pol svil sostenib
"**PROFILO**: Economista dello sviluppo con Master in Politiche Pubbliche alla Georgetown University e solida formazione in econometria e statistica. Esperienza professionale di oltre 15 anni presso società di consulenza, enti governativi e banche multilaterali di sviluppo: conduzione di analisi di mercato e studi settoriali, monitoraggio e valutazione di impatto e resilienza per progetti di sviluppo economico (con focus particolare su povertà energetica).  <br><br> **OBIETTIVO**: Applicare le mie competenze analitiche e di _project management_ nell'ambito della valutazione e implementazione di politiche per lo sviluppo sostenibile in ambito nazionale e/o Europeo.",
# 2 stat - fondi UE
"**PROFILO**: Economista con solida formazione nell'analisi statistica ed econometrica applicata in ambito pubblico e privato. In oltre 15 anni di esperienza, in Italia e all'estero, ho valutato fattibilità e impatto di politiche e strumenti finanziari per l'accesso sostenibile ai servizi infrastrutturali e gestito il monitoraggio di fondi UE. <br><br> **OBIETTIVI**: Applicare le mie competenze analitiche e di _project management_ all'acquisizione e implementazione di fondi strutturali e di investimento in ambito nazionale/UE (PNRR, Fondi SIE e politica di coesione UE, ecc.).",
# 3 data -  / infra
"**PROFILO**: Esperta nell'ideazione e implementazione di strumenti diagnostici, analisi avanzate e visualizzazioni di dati applicati allo sviluppo economico. Ho condotto studi empirici su interventi e strumenti finanziari mirati a promuovere l’accesso inclusivo e sostenibile a servizi infrastrutturali di base (acqua, energia, mobilità, istruzione e salute).  <br><br> **OBIETTIVI**: Continuare ad ampliare le mie conoscenze di metodi e techniche di data science applicati ad ideare e implementare approcci basati sui dati per migliorare l’accesso e la disponibilità di servizi infrastrutturali di alta qualità",
# 4 business intelligence - vago
"**PROFILO**: Esperta nell'ideazione e implementazione di strumenti diagnostici, analisi avanzate e visualizzazioni di dati applicati allo sviluppo economico. Ho condotto studi empirici su programmi di sviluppo e strumenti finanziari mirati a promuovere l’accesso equo e sostenibile a servizi pubblici e infrastrutture (acqua, energia, mobilità, istruzione e salute).  <br><br> **OBIETTIVI**: Continuare ad ampliare le mie conoscenze di metodi e techniche di data science applicati all'analisi del rischio e allo sviluppo di soluzioni efficaci di prodotto, processo e servizio per istituzioni e imprese.",
# 5 giornalismo
"**PROFILO**: Economista con master in Politiche Pubbliche e significativa esperienza internazionale presso società di consulenza, enti governativi e organizzazioni internazionale (Banca Mondiale) nella ricerca economica e nella valutazione d'impatto di politiche di sviluppo economico. Ho una significativa esperienza di ideazione e produzione di contenuti editoriali originali su temi socio-economici, tecnologici per pubblicazioni di varia natura (da blog post/articoli divulgativi a pubblicazioni accademiche). <br><br> **OBIETTIVI**: Cerco opportunità come giornalista o data journalist",
# 6 educ/fomratore 
"**PROFILO**: Professionista con laurea in Economia e master in Politiche Pubbliche (Georgetown University, USA). In 20 anni di esperienza, in Italia e all'estero, ho lavorato presso società di consulenza, enti governativi e organizzazioni internazionali nella valutazione d'impatto di politiche di sviluppo economico e nel monitoraggio di fondi strutturali UE. Significativa esperienza di ideazione, produzione e divulgazione di contenuti editoriali originali su temi socio-economici, e di pubblicazioni di varia natura (da articoli divulgativi a pubblicazioni accademiche). Esperienze come project manager di progetti multi-stakeholder e nella formazione di risorse junior",
# 7 business intelligence - Data scientist
"**PROFILO**: Economista dello sviluppo con Master in Politiche Pubbliche alla Georgetown University e solida formazione in econometria e statistica. Esperta nell'ideazione e implementazione di strumenti diagnostici, analisi avanzate e visualizzazioni di dati di mercato. Competenze avanzate in linguaggi di programmazione (SQL, R) e familiarità con varie piattaforme di CRM/business intelligence. <br><br> **OBIETTIVI**: Continuare ad ampliare le mie conoscenze di metodi e techniche di data science applicati all'analisi del rischio e allo sviluppo di soluzioni efficaci di prodotto, processo e servizio per istituzioni e imprese."

)

# Function ----------------------------------------------------------------
f_render_RESITA = function(position, aboutme) {
rmarkdown::render(
input = here::here("LMMimmi_RES_ITA.Rmd"),
params = list(position = position,
aboutme = aboutme
),
output_dir = "temp_RES",
output_file = paste0("CV_LuisaMimmi_", position , "_", lubridate::today(), ".pdf" )
)
}

# EXE Function ----------------------------------------------------------------
# [Run all for it to work]

# --- data science / business
#f_render_RESITA( position[[8]], aboutme[[7]])

# --- sviluppo e Sostenibilità
# f_render_RESITA( position[[1]], aboutme[[1]])

# --- giornalismo
# f_render_RESITA( position[[9]], aboutme[[5]])

# --- risk
#f_render_RESITA(position[[5]], aboutme[[4]])

# --- tutor
f_render_RESITA(position[[10]], aboutme[[6]])


# --- fondi UE
# f_render_RESITA(position[[2]], aboutme[[2]])

# --- A2A / pov energetica
#f_render_RESITA(position[[4]], aboutme[[1]])
