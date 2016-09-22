//POSITIONS AND DIMENSIONS =====================================================
#define sd_numberOfRows 7

#define sd_titleH (0.025 * Y_SCALE)
#define sd_titleSpacingY (0.0025 * Y_SCALE)

#define sd_paddingY (0.025 * Y_SCALE)
#define sd_paddingX (0.025 * X_SCALE)

#define sd_rowH (0.025 * Y_SCALE)
#define sd_categoryW (0.20 * X_SCALE)
#define sd_currentW (0.25 * X_SCALE)
#define sd_saveButtonW (0.15 * X_SCALE)

#define sd_closeButtonW (sd_titleH * 0.8)
#define sd_closeButtonH (sd_titleH * 0.8)

#define sd_mainW (sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX + sd_saveButtonW + sd_paddingX)
#define sd_mainH (sd_paddingY + sd_numberOfRows * sd_paddingY + sd_numberOfRows * sd_rowH)

#define sd_titleY CENTER(1, sd_titleH + sd_titleSpacingY + sd_mainH)
#define sd_mainX CENTER(1, sd_mainW)
#define sd_mainY (sd_titleY  + sd_titleH + sd_titleSpacingY)
#define sd_closeButtonX (sd_mainX + sd_mainW - sd_closeButtonW - sd_titleH * 0.1)
#define sd_closeButtonY (sd_titleY + sd_titleH * 0.1)
#define sd_helpButtonX (sd_closeButtonX - sd_titleH * 0.1 - sd_closeButtonW)


//IDDs AND IDCs ================================================================
#define sd_mainIDD 5999
#define sd_current0 6100
#define sd_current1 6110
#define sd_current2 6120
#define sd_current3 6130
#define sd_current4 6140
#define sd_current5 6150
#define sd_current6 6160
#define sd_save0 6101
#define sd_save1 6111
#define sd_save2 6121
#define sd_save3 6131
#define sd_save4 6141
#define sd_save5 6151
#define sd_save6 6161
