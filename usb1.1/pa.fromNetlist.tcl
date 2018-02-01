
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name usb1.1 -dir "C:/Users/root/Desktop/USB_Research/usb1.1/planAhead_run_3" -part xc6slx16csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/root/Desktop/USB_Research/usb1.1/Nexys3_USB_Interface.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/root/Desktop/USB_Research/usb1.1} }
set_property target_constrs_file "Nexys3_master.ucf" [current_fileset -constrset]
add_files [list {Nexys3_master.ucf}] -fileset [get_property constrset [current_run]]
link_design
