EvtScript N(EVS_NpcInit_Misstar) = {
    EVT_CALL(SetNpcAnimation, NPC_SELF, ANIM_WorldMisstar_Still)
    EVT_CALL(SetNpcFoldParams, NPC_SELF, FOLD_UPD_SET_TINT, 0, 0, 0, 128)
    EVT_RETURN
    EVT_END
};
