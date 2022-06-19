BEGIN TRANSACTION;
DROP TABLE IF EXISTS "bit";
CREATE TABLE IF NOT EXISTS "bit" (
	"level_0"	BIGINT,
	"index"	TEXT,
	"dttm"	TEXT,
	"No"	TEXT,
	"serial_no"	TEXT,
	"bit_size"	TEXT,
	"bit_type"	TEXT,
	"iadc_code"	TEXT,
	"nozzle"	TEXT,
	"meter(total)"	FLOAT,
	"hours(total)"	FLOAT,
	"wobMin"	FLOAT,
	"wobMax"	FLOAT,
	"rpmMin"	FLOAT,
	"rpmMax"	FLOAT,
	"tqMin"	FLOAT,
	"tqMax"	FLOAT,
	"rop(m/h)"	FLOAT,
	"condition"	TEXT,
	"gpmMin"	FLOAT,
	"gpmMax"	FLOAT,
	"sppMin"	FLOAT,
	"sppMax"	FLOAT,
	"av"	FLOAT,
	"hsi"	FLOAT,
	"changeIn"	FLOAT,
	"chnageOut"	FLOAT,
	"where"	BIGINT
);
DROP TABLE IF EXISTS "well";
CREATE TABLE IF NOT EXISTS "well" (
	"index"	BIGINT,
	"dttmstart"	TEXT,
	"well_name"	TEXT,
	"field_name"	TEXT,
	"well_config"	TEXT,
	"well_type"	TEXT,
	"loc"	TEXT,
	"estimated_rig_days"	TEXT,
	"area"	TEXT,
	"country"	TEXT,
	"county"	TEXT,
	"utm_x"	FLOAT,
	"utm_y"	FLOAT
);
DROP TABLE IF EXISTS "job";
CREATE TABLE IF NOT EXISTS "job" (
	"index"	BIGINT,
	"dttm_spud"	TEXT,
	"target_depth"	TEXT,
	"target_form"	TEXT,
	"operator"	TEXT,
	"rigNo"	TEXT,
	"client"	TEXT,
	"dttm_release"	TEXT,
	"job_type"	TEXT,
	"objective"	TEXT
);
DROP TABLE IF EXISTS "job_report";
CREATE TABLE IF NOT EXISTS "job_report" (
	"index"	TEXT,
	"dttmstart"	TEXT,
	"summaryops"	TEXT,
	"actualRigDays"	TEXT,
	"morning_depth"	TEXT,
	"midnight_depth"	TEXT,
	"previous_depth"	TEXT,
	"meterage"	TEXT,
	"drillingTime"	TEXT,
	"cumDrillingTime"	TEXT,
	"lithology"	TEXT,
	"lastCasing"	TEXT,
	"linerLap"	TEXT
);
DROP TABLE IF EXISTS "mud_chck";
CREATE TABLE IF NOT EXISTS "mud_chck" (
	"index"	TEXT,
	"dttm"	TEXT,
	"density_max"	FLOAT,
	"density_min"	FLOAT,
	"mud_type"	TEXT,
	"vis_funnel"	TEXT,
	"filtrate"	TEXT,
	"Ph"	TEXT,
	"cloride"	TEXT,
	"calcium"	TEXT,
	"solids"	TEXT,
	"air_foam_cfm"	FLOAT,
	"oil_percent"	TEXT,
	"o_w"	TEXT,
	"elecStability"	TEXT,
	"mbt"	TEXT,
	"p_f"	TEXT,
	"m_f"	TEXT,
	"vis600rpm"	TEXT,
	"vis300rpm"	TEXT,
	"plastic_vis"	TEXT,
	"yield_pt"	TEXT,
	"gel10sec"	TEXT,
	"gel10min"	TEXT,
	"temp_flowline"	TEXT,
	"gasoil"	TEXT,
	"kcl"	FLOAT,
	"mud_vol"	TEXT,
	"water_on_loc"	TEXT,
	"mud_storage1_vol"	FLOAT,
	"mud_storage1_density"	FLOAT,
	"mud_storage2_vol"	FLOAT,
	"mud_storage2_density"	FLOAT,
	"slow_pump1_pressure"	FLOAT,
	"slow_pump1_spm"	FLOAT,
	"slow_pump2_pressure"	FLOAT,
	"slow_pump2_spm"	FLOAT,
	"mudloss_formation_vol"	FLOAT,
	"mudloss_formation_dur"	FLOAT,
	"mudloss_formation_md"	FLOAT,
	"mudloss_surface"	FLOAT,
	"mud_gain_vol"	FLOAT,
	"mud_gain_dur"	FLOAT,
	"mud_gain_md"	FLOAT
);
DROP TABLE IF EXISTS "bha";
CREATE TABLE IF NOT EXISTS "bha" (
	"index"	TEXT,
	"date"	TEXT,
	"bha_no"	TEXT,
	"length"	TEXT,
	"desc"	TEXT,
	"weight"	TEXT
);
DROP TABLE IF EXISTS "timelog";
CREATE TABLE IF NOT EXISTS "timelog" (
	"index"	BIGINT,
	"code1"	TEXT,
	"code2"	TEXT,
	"com"	TEXT,
	"duration"	TEXT,
	"from"	TEXT,
	"to"	TEXT,
	"opscategory"	TEXT,
	"sysseq"	TEXT,
	"table"	TEXT,
	"dttm"	TEXT
);
DROP TABLE IF EXISTS "formatioin";
CREATE TABLE IF NOT EXISTS "formatioin" (
	"index"	TEXT,
	"dttmstart"	TEXT,
	"formation"	TEXT
);
DROP INDEX IF EXISTS "ix_bit_level_0";
CREATE INDEX IF NOT EXISTS "ix_bit_level_0" ON "bit" (
	"level_0"
);
DROP INDEX IF EXISTS "ix_well_index";
CREATE INDEX IF NOT EXISTS "ix_well_index" ON "well" (
	"index"
);
DROP INDEX IF EXISTS "ix_job_index";
CREATE INDEX IF NOT EXISTS "ix_job_index" ON "job" (
	"index"
);
DROP INDEX IF EXISTS "ix_job_report_index";
CREATE INDEX IF NOT EXISTS "ix_job_report_index" ON "job_report" (
	"index"
);
DROP INDEX IF EXISTS "ix_mud_chck_index";
CREATE INDEX IF NOT EXISTS "ix_mud_chck_index" ON "mud_chck" (
	"index"
);
DROP INDEX IF EXISTS "ix_bha_index";
CREATE INDEX IF NOT EXISTS "ix_bha_index" ON "bha" (
	"index"
);
DROP INDEX IF EXISTS "ix_timelog_index";
CREATE INDEX IF NOT EXISTS "ix_timelog_index" ON "timelog" (
	"index"
);
DROP INDEX IF EXISTS "ix_formatioin_index";
CREATE INDEX IF NOT EXISTS "ix_formatioin_index" ON "formatioin" (
	"index"
);
COMMIT;
