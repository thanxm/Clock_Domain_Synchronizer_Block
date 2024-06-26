# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "SIGNAL_WIDTH"
  ipgui::add_param $IPINST -name "SYNC_STAGES"

}

proc update_PARAM_VALUE.SIGNAL_WIDTH { PARAM_VALUE.SIGNAL_WIDTH } {
	# Procedure called to update SIGNAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIGNAL_WIDTH { PARAM_VALUE.SIGNAL_WIDTH } {
	# Procedure called to validate SIGNAL_WIDTH
	return true
}

proc update_PARAM_VALUE.SYNC_STAGES { PARAM_VALUE.SYNC_STAGES } {
	# Procedure called to update SYNC_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYNC_STAGES { PARAM_VALUE.SYNC_STAGES } {
	# Procedure called to validate SYNC_STAGES
	return true
}


proc update_MODELPARAM_VALUE.SIGNAL_WIDTH { MODELPARAM_VALUE.SIGNAL_WIDTH PARAM_VALUE.SIGNAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIGNAL_WIDTH}] ${MODELPARAM_VALUE.SIGNAL_WIDTH}
}

proc update_MODELPARAM_VALUE.SYNC_STAGES { MODELPARAM_VALUE.SYNC_STAGES PARAM_VALUE.SYNC_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYNC_STAGES}] ${MODELPARAM_VALUE.SYNC_STAGES}
}

