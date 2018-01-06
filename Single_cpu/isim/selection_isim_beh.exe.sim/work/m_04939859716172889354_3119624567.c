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
static int ng1[] = {2, 0};
static int ng2[] = {3, 0};
static int ng3[] = {4, 0};
static int ng4[] = {5, 0};
static int ng5[] = {6, 0};
static int ng6[] = {7, 0};
static int ng7[] = {8, 0};
static int ng8[] = {9, 0};
static int ng9[] = {10, 0};



static void Always_413_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(413, ng0);
    t2 = (t0 + 4120);
    *((int *)t2) = 1;
    t3 = (t0 + 3832);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(414, ng0);

LAB5:    xsi_set_current_line(415, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(417, ng0);

LAB26:    xsi_set_current_line(418, ng0);
    t7 = (t0 + 2488U);
    t8 = *((char **)t7);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 1);
    goto LAB25;

LAB9:    xsi_set_current_line(421, ng0);

LAB27:    xsi_set_current_line(422, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB11:    xsi_set_current_line(425, ng0);

LAB28:    xsi_set_current_line(426, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB13:    xsi_set_current_line(429, ng0);

LAB29:    xsi_set_current_line(430, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB15:    xsi_set_current_line(433, ng0);

LAB30:    xsi_set_current_line(434, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB17:    xsi_set_current_line(437, ng0);

LAB31:    xsi_set_current_line(438, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB19:    xsi_set_current_line(441, ng0);

LAB32:    xsi_set_current_line(442, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB21:    xsi_set_current_line(445, ng0);

LAB33:    xsi_set_current_line(446, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

LAB23:    xsi_set_current_line(449, ng0);

LAB34:    xsi_set_current_line(450, ng0);
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    goto LAB25;

}


extern void work_m_04939859716172889354_3119624567_init()
{
	static char *pe[] = {(void *)Always_413_0};
	xsi_register_didat("work_m_04939859716172889354_3119624567", "isim/selection_isim_beh.exe.sim/work/m_04939859716172889354_3119624567.didat");
	xsi_register_executes(pe);
}
