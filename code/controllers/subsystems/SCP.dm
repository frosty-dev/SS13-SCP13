SUBSYSTEM_DEF(scp)
	name = "SCP"
	init_order = SS_INIT_SCP
	flags = SS_NO_FIRE
	var/static/holomaps_initialized = FALSE
	var/static/list/holoMiniMaps = list()
	var/static/list/extraMiniMaps = list()
	var/static/list/station_holomaps = list()

/datum/controller/subsystem/scp/Recover()
	flags |= SS_NO_INIT // Make extra sure we don't initialize twice.

/datum/controller/subsystem/scp/Initialize(timeofday)
	setupSCPs()
	. = ..()

/datum/controller/subsystem/scp/stat_entry(msg)
	if (!Debug2)
		return // Only show up in stat panel if debugging is enabled.
	. = ..()

/datum/controller/subsystem/scp/proc/setupSCPs()
	var/list/SCPs = subtypesof(/datum/scp)
	for(var/i in 1 to SCPs.len)
		var/path = SCPs[i]   //They don't like it if you put it in one line
		var/datum/scp/SCP = new path()
		GLOB.SCP_list += list(SCP.designation = SCP.type)
		qdel(SCP)
/*	for(var/i in 1 to GLOB.SCP_list.len)
		world << "<span class='notice'><b>&#91;DEBUG&#93;</b>SCP-[GLOB.SCP_list[i]] sucesfully initialized as [GLOB.SCP_list[GLOB.SCP_list[i]]].</span>"
*/