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
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};



static void Always_240_0(char *t0)
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
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(240, ng0);
    t2 = (t0 + 4120);
    *((int *)t2) = 1;
    t3 = (t0 + 3832);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(241, ng0);

LAB5:    xsi_set_current_line(243, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(257, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2888);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 16);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(244, ng0);

LAB9:    xsi_set_current_line(245, ng0);
    t11 = (t0 + 2488U);
    t12 = *((char **)t11);

LAB10:    t11 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t11, 3);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB8;

LAB11:    xsi_set_current_line(246, ng0);
    t14 = (t0 + 1048U);
    t15 = *((char **)t14);
    t14 = (t0 + 2888);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 16);
    goto LAB27;

LAB13:    xsi_set_current_line(247, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB15:    xsi_set_current_line(248, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB17:    xsi_set_current_line(249, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB19:    xsi_set_current_line(250, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB21:    xsi_set_current_line(251, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB23:    xsi_set_current_line(252, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB25:    xsi_set_current_line(253, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

}


extern void work_m_05871915291107424336_3090406208_init()
{
	static char *pe[] = {(void *)Always_240_0};
	xsi_register_didat("work_m_05871915291107424336_3090406208", "isim/datapath_isim_beh.exe.sim/work/m_05871915291107424336_3090406208.didat");
	xsi_register_executes(pe);
}
