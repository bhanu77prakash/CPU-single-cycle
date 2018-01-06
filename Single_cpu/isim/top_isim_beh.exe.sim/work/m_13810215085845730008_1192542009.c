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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/bhanu/verilog/Single_cpu/datapath.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {4, 0};
static unsigned int ng8[] = {3U, 0U};
static int ng9[] = {8, 0};
static unsigned int ng10[] = {4U, 0U};
static int ng11[] = {16, 0};
static unsigned int ng12[] = {5U, 0U};
static int ng13[] = {32, 0};
static unsigned int ng14[] = {6U, 0U};
static int ng15[] = {64, 0};
static unsigned int ng16[] = {7U, 0U};
static int ng17[] = {128, 0};



static void Always_278_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(278, ng0);
    t2 = (t0 + 2840);
    *((int *)t2) = 1;
    t3 = (t0 + 2552);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(279, ng0);

LAB5:    xsi_set_current_line(280, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(281, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(295, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(282, ng0);

LAB9:    xsi_set_current_line(283, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB10:    t4 = ((char*)((ng2)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng12)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng14)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng16)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t11 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB8;

LAB11:    xsi_set_current_line(284, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 1608);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 8);
    goto LAB27;

LAB13:    xsi_set_current_line(285, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

LAB15:    xsi_set_current_line(286, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

LAB17:    xsi_set_current_line(287, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

LAB19:    xsi_set_current_line(288, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

LAB21:    xsi_set_current_line(289, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

LAB23:    xsi_set_current_line(290, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

LAB25:    xsi_set_current_line(291, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB27;

}


extern void work_m_13810215085845730008_1192542009_init()
{
	static char *pe[] = {(void *)Always_278_0};
	xsi_register_didat("work_m_13810215085845730008_1192542009", "isim/top_isim_beh.exe.sim/work/m_13810215085845730008_1192542009.didat");
	xsi_register_executes(pe);
}
