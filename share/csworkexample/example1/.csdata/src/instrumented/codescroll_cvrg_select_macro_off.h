#ifdef CS_CMM_C1_MARK
#undef CS_CMM_C1_MARK
#endif // CS_CMM_C1_MARK
#define CS_CMM_C1_MARK(buf,x) CS_CMM_MARK_CHAR
#ifdef CS_CMM_MCDC_MARK
#undef CS_CMM_MCDC_MARK
#endif // CS_CMM_MCDC_MARK
#define CS_CMM_MCDC_MARK(buf,x) CS_CMM_MARK_CHAR