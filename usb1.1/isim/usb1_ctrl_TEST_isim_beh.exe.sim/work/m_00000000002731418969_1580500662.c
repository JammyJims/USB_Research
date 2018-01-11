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
static const char *ng0 = "C:/Users/jimmy/Desktop/USB_Research/usb1.1/usb1_rom1.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {18U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {255U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {64U, 0U};
static unsigned int ng12[] = {8U, 0U};
static unsigned int ng13[] = {52U, 0U};
static unsigned int ng14[] = {9U, 0U};
static unsigned int ng15[] = {10U, 0U};
static unsigned int ng16[] = {120U, 0U};
static unsigned int ng17[] = {11U, 0U};
static unsigned int ng18[] = {86U, 0U};
static unsigned int ng19[] = {12U, 0U};
static unsigned int ng20[] = {16U, 0U};
static unsigned int ng21[] = {13U, 0U};
static unsigned int ng22[] = {14U, 0U};
static unsigned int ng23[] = {15U, 0U};
static unsigned int ng24[] = {17U, 0U};
static unsigned int ng25[] = {19U, 0U};
static unsigned int ng26[] = {20U, 0U};
static unsigned int ng27[] = {53U, 0U};
static unsigned int ng28[] = {21U, 0U};
static unsigned int ng29[] = {22U, 0U};
static unsigned int ng30[] = {23U, 0U};
static unsigned int ng31[] = {24U, 0U};
static unsigned int ng32[] = {25U, 0U};
static unsigned int ng33[] = {26U, 0U};
static unsigned int ng34[] = {27U, 0U};
static unsigned int ng35[] = {28U, 0U};
static unsigned int ng36[] = {29U, 0U};
static unsigned int ng37[] = {30U, 0U};
static unsigned int ng38[] = {31U, 0U};
static unsigned int ng39[] = {32U, 0U};
static unsigned int ng40[] = {33U, 0U};
static unsigned int ng41[] = {34U, 0U};
static unsigned int ng42[] = {35U, 0U};
static unsigned int ng43[] = {36U, 0U};
static unsigned int ng44[] = {37U, 0U};
static unsigned int ng45[] = {38U, 0U};
static unsigned int ng46[] = {129U, 0U};
static unsigned int ng47[] = {39U, 0U};
static unsigned int ng48[] = {40U, 0U};
static unsigned int ng49[] = {41U, 0U};
static unsigned int ng50[] = {42U, 0U};
static unsigned int ng51[] = {43U, 0U};
static unsigned int ng52[] = {44U, 0U};
static unsigned int ng53[] = {45U, 0U};
static unsigned int ng54[] = {46U, 0U};
static unsigned int ng55[] = {47U, 0U};
static unsigned int ng56[] = {48U, 0U};
static unsigned int ng57[] = {49U, 0U};
static unsigned int ng58[] = {50U, 0U};
static unsigned int ng59[] = {51U, 0U};
static unsigned int ng60[] = {131U, 0U};
static unsigned int ng61[] = {54U, 0U};
static unsigned int ng62[] = {55U, 0U};
static unsigned int ng63[] = {56U, 0U};
static unsigned int ng64[] = {57U, 0U};
static unsigned int ng65[] = {58U, 0U};
static unsigned int ng66[] = {59U, 0U};
static unsigned int ng67[] = {60U, 0U};
static unsigned int ng68[] = {61U, 0U};
static unsigned int ng69[] = {62U, 0U};
static unsigned int ng70[] = {63U, 0U};
static unsigned int ng71[] = {65U, 0U};
static unsigned int ng72[] = {66U, 0U};
static unsigned int ng73[] = {133U, 0U};
static unsigned int ng74[] = {67U, 0U};
static unsigned int ng75[] = {68U, 0U};
static unsigned int ng76[] = {69U, 0U};
static unsigned int ng77[] = {70U, 0U};



static void Always_66_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t4, 7);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng32)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng34)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB60;

LAB61:    t2 = ((char*)((ng35)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng36)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB64;

LAB65:    t2 = ((char*)((ng37)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB66;

LAB67:    t2 = ((char*)((ng38)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB68;

LAB69:    t2 = ((char*)((ng39)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB70;

LAB71:    t2 = ((char*)((ng40)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB72;

LAB73:    t2 = ((char*)((ng41)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB74;

LAB75:    t2 = ((char*)((ng42)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB76;

LAB77:    t2 = ((char*)((ng43)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB78;

LAB79:    t2 = ((char*)((ng44)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB80;

LAB81:    t2 = ((char*)((ng45)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB82;

LAB83:    t2 = ((char*)((ng47)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB84;

LAB85:    t2 = ((char*)((ng48)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB86;

LAB87:    t2 = ((char*)((ng49)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB88;

LAB89:    t2 = ((char*)((ng50)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB90;

LAB91:    t2 = ((char*)((ng51)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB92;

LAB93:    t2 = ((char*)((ng52)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB94;

LAB95:    t2 = ((char*)((ng53)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB96;

LAB97:    t2 = ((char*)((ng54)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB98;

LAB99:    t2 = ((char*)((ng55)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB100;

LAB101:    t2 = ((char*)((ng56)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB102;

LAB103:    t2 = ((char*)((ng57)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB104;

LAB105:    t2 = ((char*)((ng58)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB106;

LAB107:    t2 = ((char*)((ng59)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB108;

LAB109:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB110;

LAB111:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB112;

LAB113:    t2 = ((char*)((ng61)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB114;

LAB115:    t2 = ((char*)((ng62)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB116;

LAB117:    t2 = ((char*)((ng63)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB118;

LAB119:    t2 = ((char*)((ng64)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB120;

LAB121:    t2 = ((char*)((ng65)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB122;

LAB123:    t2 = ((char*)((ng66)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB124;

LAB125:    t2 = ((char*)((ng67)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB126;

LAB127:    t2 = ((char*)((ng68)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB128;

LAB129:    t2 = ((char*)((ng69)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB130;

LAB131:    t2 = ((char*)((ng70)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB132;

LAB133:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB134;

LAB135:    t2 = ((char*)((ng71)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB136;

LAB137:    t2 = ((char*)((ng72)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB138;

LAB139:    t2 = ((char*)((ng74)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB140;

LAB141:    t2 = ((char*)((ng75)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB142;

LAB143:    t2 = ((char*)((ng76)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB144;

LAB145:    t2 = ((char*)((ng77)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 7, t2, 7);
    if (t6 == 1)
        goto LAB146;

LAB147:
LAB148:    goto LAB2;

LAB6:    xsi_set_current_line(73, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 8, 1000LL);
    goto LAB148;

LAB8:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB10:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB12:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB14:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB16:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB18:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB20:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB22:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB24:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB26:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB28:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB30:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB32:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB34:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB36:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB38:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB40:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB42:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB44:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB46:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng27)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB48:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB50:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB52:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB54:    xsi_set_current_line(101, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB56:    xsi_set_current_line(102, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB58:    xsi_set_current_line(103, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB60:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB62:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB64:    xsi_set_current_line(110, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB66:    xsi_set_current_line(111, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB68:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB70:    xsi_set_current_line(113, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB72:    xsi_set_current_line(114, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB74:    xsi_set_current_line(115, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB76:    xsi_set_current_line(116, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB78:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB80:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB82:    xsi_set_current_line(123, ng0);
    t3 = ((char*)((ng46)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB84:    xsi_set_current_line(124, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB86:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB88:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB90:    xsi_set_current_line(127, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB92:    xsi_set_current_line(132, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB94:    xsi_set_current_line(133, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB96:    xsi_set_current_line(134, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB98:    xsi_set_current_line(135, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB100:    xsi_set_current_line(136, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB102:    xsi_set_current_line(137, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB104:    xsi_set_current_line(138, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB106:    xsi_set_current_line(143, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB108:    xsi_set_current_line(144, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB110:    xsi_set_current_line(145, ng0);
    t3 = ((char*)((ng60)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB112:    xsi_set_current_line(146, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB114:    xsi_set_current_line(147, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB116:    xsi_set_current_line(148, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB118:    xsi_set_current_line(149, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB120:    xsi_set_current_line(154, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB122:    xsi_set_current_line(155, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB124:    xsi_set_current_line(156, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB126:    xsi_set_current_line(157, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB128:    xsi_set_current_line(158, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB130:    xsi_set_current_line(159, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB132:    xsi_set_current_line(160, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB134:    xsi_set_current_line(165, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB136:    xsi_set_current_line(166, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB138:    xsi_set_current_line(167, ng0);
    t3 = ((char*)((ng73)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB140:    xsi_set_current_line(168, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB142:    xsi_set_current_line(169, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB144:    xsi_set_current_line(170, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

LAB146:    xsi_set_current_line(171, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 1000LL);
    goto LAB148;

}


extern void work_m_00000000002731418969_1580500662_init()
{
	static char *pe[] = {(void *)Always_66_0};
	xsi_register_didat("work_m_00000000002731418969_1580500662", "isim/usb1_ctrl_TEST_isim_beh.exe.sim/work/m_00000000002731418969_1580500662.didat");
	xsi_register_executes(pe);
}
