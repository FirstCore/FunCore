#include "ScriptPCH.h"
#include "ScriptMgr.h"

#define MSG_GOSSIP_TEXT_GETTING_STARTED "Добро пожаловать на сервер!"

#define MSG_ERR_AURA "Снятие дебафа 'Слабость после воскрешения' не возможна."
#define MSG_ERR_INCOMBAT "Нужно больше хонор!!1!!адын!!"
#define MSG_ERR_ARENA_POINT "Накопи Апа!"

#define MSG_COMPLETE_RENAME "Оплата Успешно Произведена Сделайте Логаут и Введите Новое Имя Персонажа.Не Забудьте После Смены Имени,Выйти Из Игры и Удалить Из Клиента Папку Cache!"
#define MSG_CUSTOMIZE_COMPLETE "Оплата Успешно Произведена Сделайте Логаут и Измените Внешность Персонажа.Не Забудьте После Смены Внешности,Выйти Из Игры и Удалить Из Клиента Папку Cache!"
#define MSG_CHANGE_FACTION_COMPLETE "Оплата Успешно Произведена Сделайте Логаут и Измените Фракцию Персонажа.Не Забудьте После Смены Внешности,Выйти Из Игры и Удалить Из Клиента Папку Cache!"

#define MSG_GOSSIP_TEXT_MAX_HEALTH "Хил запили!"
#define MSG_GOSSIP_TEXT_MAX_SKILL "Выучить все навыки оружия и защиты."
#define MSG_GOSSIP_TEXT_UNAURA_ALL "Снять бафы, дебафы, заклинания."
#define MSG_GOSSIP_TEXT_BAGS "Купить Вещи."
#define MSG_GOSSIP_TEXT_RIDING "Изучить на коняфках кататься"

#define MSG_GOSSIP_TEXT_RENAME "Сменить Имя персонажа за 4 тысячи Апа."    // Thank Kim
#define MSG_GOSSIP_TEXT_CUSTOM "Сменить Внешность персонажа за 4 тысячи Апа." // Thank Kim
#define MSG_GOSSIP_TEXT_CHANGE_FACTION "Сменить Фракцию персонажа за 6 тысяч Апа."

#define MSG_GOSSIP_TEXT_A7_PRIEST_HEAL "Купить Сет А7 для Приста-хила {Дух}."
#define MSG_GOSSIP_TEXT_A7_PRIEST_DD "Купить Сет А7 для Приста на дд."
#define MSG_GOSSIP_TEXT_A7_DRUID_FERAL "Купить Сет А7 для Друида-ферала."
#define MSG_GOSSIP_TEXT_A7_DRUID_RESTOR "Купить Сет А7 для Друида-рестора."
#define MSG_GOSSIP_TEXT_A7_DRUID_BALANSE "Купить Сет А7 для Друида-баланса."
#define MSG_GOSSIP_TEXT_A7_WARRIOR "Купить Сет А7 для Воина."
#define MSG_GOSSIP_TEXT_A7_MAGE "Купить Сет А7 для Мага."
#define MSG_GOSSIP_TEXT_A7_HUNTER "Купить Сет А7 для Охотника."
#define MSG_GOSSIP_TEXT_A7_PALLADIN_HOLI "Купить Сет А7 для Палладина-хила."
#define MSG_GOSSIP_TEXT_A7_PALLADIN_DD "Купить Сет А7 для Палладина-дд."
#define MSG_GOSSIP_TEXT_A7_ROGUE "Купить Сет А7 для Разбойника."
#define MSG_GOSSIP_TEXT_A7_DK "Купить Сет А7 для Рыцаря Смерти."
#define MSG_GOSSIP_TEXT_A7_LOOK "Купить Сет А7 для Чернокнижника."
#define MSG_GOSSIP_TEXT_A7_SHAMAN_HOLI "Купить Сет А7 для Шамана-хила {Дух}." 
#define MSG_GOSSIP_TEXT_A7_SHAMAN_RDD "Купить Сет А7 для Шамана-рдд" 
#define MSG_GOSSIP_TEXT_A7_SHAMAN_DD "Купить Сет А7 для Шамана-дд."
 
#define CONST_ARENA_POINT_1 1000
#define CONST_ARENA_POINT_2 3000


        int bag = 23162;
        int warlockItem[5] =                    {41994,41999,42006,42012,42018};
                int warriorItem[5] =                    {40829,40790,40850,40870,40810};
                int druidRestorItem[5] =                {41322,41311,41299,41276,41288};
                int druidBalanceItem[5] =               {41328,41317,41305,41282,41328};
                int druidFeralItem[5] =                 {41679,41662,41668,41716,41774};
                int priestDiscItem[5] =                 {41855,41860,41865,41870,41875};
                int priestShadowItem[5] =               {41916,41922,41928,41935,41841};
                int mageItem[5] =                               {41947,41954,41960,41966,41972};
                int hunterItem[5] =                             {41158,41088,41206,41218,41144};
                int paladinHolyItem[5] =                {40934,40910,40940,40964,40928};
                int paladinMeleeItem[5] =               {40831,40792,40852,40872,40812};
                int rogueItem[5] =                              {41673,41651,41656,41684,41768};
                int deathknightItem[5] =                {40830,40791,40851,40871,40811};
                int shamanMeleeItem[5] =                {41152,41082,41200,41212,41138};
                int shamanElementalItem[5] =    {41020,40995,41034,41045,41008};
                int shamanRestorItem[5] =               {41014,40994,41028,41039,41002};

class npc_other : public CreatureScript
{
    public: 
    npc_other() : CreatureScript("npc_other") { }

        void AddSet(Player* player, int massive[5])
        {
                for (int i = 0; i < 5; ++i)
                        {
                                player->AddItem(massive[i], 1);
                        }
                player->CLOSE_GOSSIP_MENU();
        }

        bool OnGossipHello(Player *player, Creature *_creature)
                { 
        _creature->MonsterWhisper(MSG_GOSSIP_TEXT_GETTING_STARTED, player->GetGUID());
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR , MSG_GOSSIP_TEXT_BAGS, GOSSIP_SENDER_MAIN, 2);
                int playerClass = player->getClass();
                switch (playerClass)
                {
                case CLASS_WARLOCK:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_LOOK, GOSSIP_SENDER_MAIN, 7);
                break;
                case CLASS_WARRIOR:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_WARRIOR, GOSSIP_SENDER_MAIN, 8);
                break;
                case CLASS_DRUID:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_DRUID_RESTOR, GOSSIP_SENDER_MAIN, 9);
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_DRUID_BALANSE, GOSSIP_SENDER_MAIN, 10);
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_DRUID_FERAL, GOSSIP_SENDER_MAIN, 11);
                break;
                case CLASS_PRIEST:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_PRIEST_HEAL, GOSSIP_SENDER_MAIN, 12);
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_PRIEST_DD, GOSSIP_SENDER_MAIN, 13);
                break;
                case CLASS_MAGE:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_MAGE, GOSSIP_SENDER_MAIN, 14);
                break;
                case CLASS_PALADIN:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_PALLADIN_HOLI, GOSSIP_SENDER_MAIN, 15);
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_PALLADIN_DD, GOSSIP_SENDER_MAIN, 16);
                break;
                case CLASS_ROGUE:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_ROGUE, GOSSIP_SENDER_MAIN, 17);
                break;
                case CLASS_DEATH_KNIGHT:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_DK, GOSSIP_SENDER_MAIN, 18);
                break;
                case CLASS_SHAMAN:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_SHAMAN_DD, GOSSIP_SENDER_MAIN, 19);
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_SHAMAN_RDD, GOSSIP_SENDER_MAIN, 20);
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_SHAMAN_HOLI, GOSSIP_SENDER_MAIN, 21);
                break;
                case CLASS_HUNTER:
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, MSG_GOSSIP_TEXT_A7_HUNTER, GOSSIP_SENDER_MAIN, 22);
                break;
                }
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_MAX_HEALTH, GOSSIP_SENDER_MAIN, 3);
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_MAX_SKILL, GOSSIP_SENDER_MAIN, 4);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_UNAURA_ALL, GOSSIP_SENDER_MAIN, 5);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_RIDING, GOSSIP_SENDER_MAIN, 6);
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_RENAME, GOSSIP_SENDER_MAIN, 22);
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_CUSTOM, GOSSIP_SENDER_MAIN, 23);
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, MSG_GOSSIP_TEXT_CHANGE_FACTION, GOSSIP_SENDER_MAIN, 24);
            player->SEND_GOSSIP_MENU (DEFAULT_GOSSIP_MESSAGE,_creature->GetGUID()); 
        return true;
        }


      bool OnGossipSelect(Player *player, Creature *_creature, uint32 sender, uint32 action )
                {
                  if (!player->getAttackers().empty())
        {
                _creature->MonsterWhisper(MSG_ERR_INCOMBAT, player->GetGUID());
                player->CLOSE_GOSSIP_MENU();
        return false;
                  }
                  switch (action)
        {
                  case 2:
                         player->AddItem(bag, 4);
                         player->CLOSE_GOSSIP_MENU();
                         break;
                  case 3:
                          player->SetHealth(player->GetMaxHealth());
                      player->CLOSE_GOSSIP_MENU();
                          break;
                  case 4:
                          player->UpdateSkillsToMaxSkillsForLevel();
                      player->CLOSE_GOSSIP_MENU();
                          break;
                  case 5:
                         if (player->HasAura(15007))
                         {
                _creature->MonsterWhisper(MSG_ERR_AURA, player->GetGUID());
                player->CLOSE_GOSSIP_MENU();
                }else
                        {
        player->RemoveAllAuras();
                player->CLOSE_GOSSIP_MENU();
                player->RemoveAllSpellCooldown();
                }
                      break;
                  case 6:
                          player->learnSpell(90265, true);
                      player->SetSkill(762, 6, 450, 450);
                      player->learnSpell(54197, true);
                      player->CLOSE_GOSSIP_MENU();
                          break;
                  case 7:
                          AddSet(player, warlockItem);
                          player->CLOSE_GOSSIP_MENU();
                          break;
                  case 8:
                          AddSet(player, warriorItem);
                          break;
                  case 9:
              AddSet(player, druidRestorItem);
                          break;
                  case 10:
                          AddSet(player, druidBalanceItem);
                          break;
                  case 11:
                          AddSet(player, druidFeralItem);
                          break;
                  case 12:
                          AddSet(player, priestDiscItem);
                          break;
                  case 13:
                          AddSet(player,  priestShadowItem);
                          break;
                  case 14:
                          AddSet(player,  mageItem);
                          break;
                  case 15:
                          AddSet(player,  paladinHolyItem);
                          break;
                  case 16:
                          AddSet(player,  paladinMeleeItem);
                          break;
                  case 17:
                          AddSet(player, rogueItem);
                          break;
                  case 18:
                          AddSet(player, deathknightItem);
                          break;
                  case 19:
                          AddSet(player, shamanMeleeItem);
                          break;
                  case 20:
                          AddSet(player, shamanRestorItem);
                          break;
                  case 21:
                          AddSet(player, shamanElementalItem);
                          break;
                  case 22:
                if (player->GetArenaPoints() < CONST_ARENA_POINT_1)
                {
                          _creature->MonsterWhisper(MSG_ERR_ARENA_POINT, player->GetGUID());
                  player->CLOSE_GOSSIP_MENU();
                }else{
                      // Делаем Ренейм
                      player->SetAtLoginFlag(AT_LOGIN_RENAME);
                      player->ModifyArenaPoints(-CONST_ARENA_POINT_1);
              _creature->MonsterWhisper(MSG_COMPLETE_RENAME, player->GetGUID());
              player->CLOSE_GOSSIP_MENU();
                      }
                      break;
                  case 23:
                          if (player->GetArenaPoints() < CONST_ARENA_POINT_1)
                          {
                      _creature->MonsterWhisper(MSG_ERR_ARENA_POINT, player->GetGUID());
                      player->CLOSE_GOSSIP_MENU();
            }else{
                      // Делаем Смену внешности
                      player->SetAtLoginFlag(AT_LOGIN_CUSTOMIZE);
                      player->ModifyArenaPoints(-CONST_ARENA_POINT_1);
              _creature->MonsterWhisper(MSG_CUSTOMIZE_COMPLETE, player->GetGUID());
              player->CLOSE_GOSSIP_MENU();
                          }
                          break;
                  case 24:
                          if (player->GetArenaPoints() < CONST_ARENA_POINT_2)
                          {
                       _creature->MonsterWhisper(MSG_ERR_ARENA_POINT, player->GetGUID());
                       player->CLOSE_GOSSIP_MENU();
             }else{
                       // Делаем Смену фракции
                       player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
                       player->ModifyArenaPoints(-CONST_ARENA_POINT_2);
               _creature->MonsterWhisper(MSG_CHANGE_FACTION_COMPLETE, player->GetGUID());
               player->CLOSE_GOSSIP_MENU();
                          }
                          break; 
}
      return true;
}
          };

          void AddSC_npc_other()
{
        new npc_other;
}
