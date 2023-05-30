# ---------- knit a Specific flavor of parametrized RESUME ITA

# Parameters --------------------------------------------------------------
position <-  list("Esperta in Economia dello sviluppo e Sostenibilità", #1
"Analista di Fondi UE e PNRR", #2
"Valutazione Politiche Pubbliche ed Europrogettazione", #3
"Economista -- sviluppo sostenibile", #4
"Economia e analisi di mercato", #5
"Policy & Data Analyst", #6
"Business Intelligence Analyst", #7
"Data Scientist", #8
"Economista e Data Journalist" #9
)
aboutme <- list( # pol svil sostenib
"**PROFILO**: Economista dello sviluppo con Master in Politiche Pubbliche alla Georgetown University e solida formazione in econometria e statistica. Esperienza professionale di oltre 15 anni presso società di consulenza e banche multilaterali di sviluppo: conduzione di analisi di mercato e studi settoriali, monitoraggio e valutazione di impatto e resilienza per progetti di sviluppo economico.  <br><br> **OBIETTIVO**: Applicare le mie competenze analitiche e di _project management_ nell'ambito della valutazione e implementazione di politiche per lo sviluppo sostenibile in ambito nazionale e/o Europeo.",
# stat - fondi UE
"**PROFILO**: Economista con solida formazione nell'analisi statistica ed econometrica applicata allo sviluppo economico. In oltre 15 anni di esperienza, in Italia e all'estero, ho valutato fattibilità e impatto di politiche e strumenti finanziari per l'accesso sostenibile ai servizi infrastrutturali (abitazione, mobilità, energia, acqua e servizi igienico-sanitari, istruzione e salute). <br><br> **OBIETTIVI**: Applicare le mie competenze analitiche e di _project management_ all'implementazione e monitoraggio dei fondi strutturali e di investimento in ambito nazionale/UE (PNRR, Fondi SIE e politica di coesione UE, ecc.).",
# data -  / infra
"**PROFILO**: Esperta nell'ideazione e implementazione di strumenti diagnostici, analisi avanzate e visualizzazioni di dati applicati allo sviluppo economico. Ho condotto studi empirici su interventi e strumenti finanziari mirati a promuovere l’accesso inclusivo e sostenibile a servizi infrastrutturali di base (acqua, energia, mobilità, istruzione e salute).  <br><br> **OBIETTIVI**: Continuare ad ampliare le mie conoscenze di metodi e techniche di data science applicati ad ideare e implementare approcci basati sui dati per migliorare l’accesso e la disponibilità di servizi infrastrutturali di alta qualità",
# business intelligence - vago
"**PROFILO**: Esperta nell'ideazione e implementazione di strumenti diagnostici, analisi avanzate e visualizzazioni di dati applicati allo sviluppo economico. Ho condotto studi empirici su programmi di sviluppo e strumenti finanziari mirati a promuovere l’accesso equo e sostenibile a servizi pubblici e infrastrutture (acqua, energia, mobilità, istruzione e salute).  <br><br> **OBIETTIVI**: Continuare ad ampliare le mie conoscenze di metodi e techniche di data science applicati all'analisi del rischio e allo sviluppo di soluzioni efficaci di prodotto, processo e servizio per istituzioni e imprese.",
# giornalismo
"**PROFILO**: Economista con master in Politiche Pubbliche e significativa esperienza internazionale presso società di consulenza, enti governativi e organizzazioni internazionale (Banca Mondiale) nella ricerca economica e nella valutazione d'impatto di politiche di sviluppo economico. Ho una significativa esperienza di ideazione e produzione di contenuti editoriali originali su temi socio-economici, tecnologici per pubblicazioni di varia natura (da blog post/articoli divulgativi a pubblicazioni accademiche). <br><br> **OBIETTIVI**: Cerco opportunità come giornalista o data journalist"
)
# Function ----------------------------------------------------------------
f_render_RESITA = function(position, aboutme) {
rmarkdown::render(
input = "LMMimmi_RES_ITA.Rmd",
params = list(position = position,
aboutme = aboutme
),
output_dir = "temp_RES",
output_file = paste0("CV_LuisaMimmi_", position , "_", today(), ".pdf" )
)
}
# EXE Function ----------------------------------------------------------------
f_render_RESITA( position[[8]], aboutme[[4]])
# sviluppo e Sostenibilità
f_render_RESITA( position[[1]], aboutme[[1]])
# sviluppo e Sostenibilità
