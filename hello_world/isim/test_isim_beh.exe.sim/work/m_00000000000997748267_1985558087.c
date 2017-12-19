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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//uofa/users$/users6/a1687296/Desktop/XilinxProject/hello_world/helloworld_top.v";
static const char *ng1 = "";
static int ng2[] = {5, 0};
static const char *ng3 = "Hello world!";
static int ng4[] = {2, 0};
static int ng5[] = {1, 0};
static const char *ng6 = "No feature";



static void Initial_48_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(48, ng0);

LAB2:    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng2)));
    xsi_vlogfile_write(1, 0, 0, ng1, 2, t0, (char)119, t1, 32);
    xsi_set_current_line(50, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng4)));
    t2 = ((char*)((ng4)));
    memset(t3, 0, 8);
    xsi_vlog_signed_add(t3, 32, t1, 32, t2, 32);
    xsi_vlogfile_write(1, 0, 0, ng1, 2, t0, (char)119, t3, 32);
    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng4)));
    t2 = ((char*)((ng4)));
    memset(t3, 0, 8);
    xsi_vlog_signed_add(t3, 32, t1, 32, t2, 32);
    xsi_vlogfile_write(1, 0, 0, ng1, 2, t0, (char)119, t3, 32);
    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);
    xsi_set_current_line(59, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);

LAB1:    return;
}


extern void work_m_00000000000997748267_1985558087_init()
{
	static char *pe[] = {(void *)Initial_48_0};
	xsi_register_didat("work_m_00000000000997748267_1985558087", "isim/test_isim_beh.exe.sim/work/m_00000000000997748267_1985558087.didat");
	xsi_register_executes(pe);
}
