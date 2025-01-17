#include "isk_07.h"
#include "entity.h"
#include "effects.h"

EvtScript N(EVS_HitBlock_Trigger) = {
    EVT_SET(GF_ISK07_OpenedSarcophagi, TRUE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_SmashBlock_Stone) = {
    EVT_SET(GF_ISK07_Hammer2Block, TRUE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_MakeEntities) = {
    EVT_IF_EQ(GF_ISK07_UnlockedDoor, FALSE)
        EVT_CALL(MakeEntity, EVT_PTR(Entity_Padlock), -300, -380, 530, 50, MAKE_ENTITY_END)
        EVT_SET(MV_LockEntityID, LVar0)
    EVT_END_IF
    EVT_IF_EQ(GF_ISK07_Hammer2Block, FALSE)
        EVT_CALL(MakeEntity, EVT_PTR(Entity_Hammer2Block_WideX), 470, -250, 270, 150, MAKE_ENTITY_END)
        EVT_CALL(AssignScript, EVT_PTR(N(EVS_SmashBlock_Stone)))
    EVT_END_IF
    EVT_IF_EQ(GF_ISK07_OpenedSarcophagi, FALSE)
        EVT_CALL(MakeEntity, EVT_PTR(Entity_TriggerBlock), -250, -330, 545, -25, MAKE_ENTITY_END)
        EVT_CALL(AssignScript, EVT_PTR(N(EVS_HitBlock_Trigger)))
    EVT_END_IF
    EVT_IF_EQ(GF_ISK07_Defeated_Mummies, TRUE)
        EVT_CALL(MakeItemEntity, ITEM_RUINS_KEY, -250, -390, 545, ITEM_SPAWN_MODE_KEY, GF_ISK07_Item_RuinsKey)
    EVT_END_IF
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, 415, -193, 291, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, 291, -193, 415, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, 131, -193, 489, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, -44, -193, 505, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, -214, -193, 459, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, 415, -323, 291, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, 291, -323, 415, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, 131, -323, 489, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, -44, -323, 505, EVT_FLOAT(0.3), LVar0)
    EVT_PLAY_EFFECT(EFFECT_FLAME, 1, -214, -323, 459, EVT_FLOAT(0.3), LVar0)
    EVT_CALL(MakeItemEntity, ITEM_ARTIFACT, 490, -250, 215, ITEM_SPAWN_MODE_FIXED_NEVER_VANISH, GF_ISK07_Item_Artifact)
    EVT_RETURN
    EVT_END
};
