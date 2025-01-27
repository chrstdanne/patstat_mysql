--- INDEXATION OF TABLES ---
-- cdanne@diw-econ.de
-- 2025-01-22

--- CHANGE DB ---
USE patstat2024b;

--- tls201 ---
CREATE INDEX IX_tls201_appln_date ON tls201_appln (appln_filing_date);
CREATE INDEX IX_tls201_appln_auth ON tls201_appln (appln_auth);  
CREATE INDEX IX_tls201_appln_nr ON tls201_appln (appln_nr);
CREATE INDEX IX_tls201_appln_internat ON tls201_appln (internat_appln_id);
CREATE INDEX IX_tls201_appln_nr_original ON tls201_appln (appln_nr_original);
CREATE INDEX IX_tls201_appln_year_ear ON tls201_appln (earliest_filing_year);
CREATE INDEX IX_tls201_docdb_fam  ON tls201_appln (docdb_family_id);
CREATE INDEX IX_tls201_inpadoc_family_id  ON tls201_appln (inpadoc_family_id);
  
--- tls202 ---
CREATE INDEX IX_tls202_appln_id ON tls202_appln_title (appln_id);
 
--- tls204 ---
CREATE INDEX IX_tls204_prior_appln_id ON tls204_appln_prior (prior_appln_id);

--- tls206 --- 
CREATE INDEX IX_tls206_person_cty ON tls206_person (person_ctry_code);
CREATE INDEX IX_tls206_nuts ON tls206_person (nuts);
CREATE INDEX IX_tls206_pers ON tls206_person (person_name);

--- tls207 ---
CREATE INDEX IX_tls207_pers_appln_id ON tls207_pers_appln (appln_id);
CREATE INDEX IX_tls207_pers_appln_pers_id ON tls207_pers_appln (person_id);

--- tls209 --- 
CREATE INDEX tls209_appl_ipc_XLS209M1 ON tls209_appln_ipc (ipc_class_symbol);

--- tls211 ---
CREATE INDEX tls211_pat_publn_XLS211M2 ON tls211_pat_publn (publn_auth, publn_nr, publn_kind);
CREATE INDEX tls211_pat_publn_XLS211M3 ON tls211_pat_publn (appln_id);
CREATE INDEX tls211_pat_publn_XLS211M4 ON tls211_pat_publn (publn_date);

--- tls212 ---
CREATE INDEX tls212_citation_XLS212C2 ON tls212_citation (cited_pat_publn_id);
CREATE INDEX tls212_citation_XLS212C3 ON tls212_citation (cited_appln_id, pat_publn_id);

---- tls214 ---
CREATE INDEX IX_tls214_npl_doi ON  tls214_npl_publn (npl_doi);

 --- tls222 ---
CREATE INDEX tls222_appln_jp_class_XLS222C1 ON tls222_appln_jp_class (jp_class_symbol, jp_class_scheme);

--- tls226 ---
CREATE INDEX IX_tls226_person_id ON tls226_person_orig (person_id);

--- tls227 ---
CREATE INDEX IX_tls227_pers_publn_id ON tls227_pers_publn (pat_publn_id);
CREATE INDEX IX_tls227_pers_publn_pers_id ON tls227_pers_publn (person_id);

 
