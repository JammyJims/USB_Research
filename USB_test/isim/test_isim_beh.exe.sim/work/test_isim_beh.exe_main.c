/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000886523499_2471273687_init();
    work_m_00000000000139011415_1159022538_init();
    work_m_00000000000910579818_1456588243_init();
    work_m_00000000003729135870_3223103489_init();
    work_m_00000000001691170464_0998338552_init();
    work_m_00000000001691170464_4089188575_init();
    work_m_00000000002312593812_1596240062_init();
    work_m_00000000000438884002_0793658417_init();
    work_m_00000000002769002031_2581215513_init();
    work_m_00000000002870350569_3188910141_init();
    work_m_00000000000764630819_0673415208_init();
    work_m_00000000001962681972_1375680652_init();
    work_m_00000000000356845113_2120407306_init();
    work_m_00000000002731418969_1580500662_init();
    work_m_00000000002967657906_3688520107_init();
    work_m_00000000003030869284_3238580064_init();
    work_m_00000000004221580382_0399322431_init();
    work_m_00000000002967657906_0764553538_init();
    work_m_00000000003030869284_0811498933_init();
    work_m_00000000003381289566_1985558087_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003381289566_1985558087");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}