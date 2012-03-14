#include "ScriptPCH.h"
#include "ScriptMgr.h"

#define MSG_GOSSIP_TEXT_GETTING_STARTED "Добро пожаловать на сервер!"

#define MSG_ERR_ARENA_POINT "Нужно большн Апа!"
#define MSG_ERR_TITLE "У тебя уже есть такое звание!"
#define MSG_ERR_INCOMBAT "Прекрати драться!"

#define MSG_GOSSIP_TEXT_NEXT_2 "[Вторая страница] ->"
#define MSG_GOSSIP_TEXT_NEXT_3 "[Третья страница] ->"
#define MSG_GOSSIP_TEXT_NEXT_4 "[Четвертая страница] ->"
#define MSG_GOSSIP_TEXT_NEXT_5 "[Пятая страница] ->"

#define MSG_GOSSIP_TEXT_BACK_4 "<- [Четвертая страница] "
#define MSG_GOSSIP_TEXT_BACK_3 "<- [Третья страница] "
#define MSG_GOSSIP_TEXT_BACK_2 "<- [Вторая страница] "
#define MSG_GOSSIP_TEXT_BACK_1 "<- [Первая страница] "


#define MSG_GOSSIP_TEXT_144 "Получить звание Адмирал Кровавого Паруса {400 Апа}"
#define MSG_GOSSIP_TEXT_62 "Получить звание Безжалостный гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_135 "Получить звание Безумно влюбленный {400 Апа}"
#define MSG_GOSSIP_TEXT_141 "Получить звание Бессмертный {400 Апа}"
#define MSG_GOSSIP_TEXT_138 "Получить звание Благодетель {400 Апа}"
#define MSG_GOSSIP_TEXT_170 "Получить звание Великий крестоносец {400 Апа}"
#define MSG_GOSSIP_TEXT_28 "Получить звание Верховный вождь {400 Апа}"
#define MSG_GOSSIP_TEXT_48 "Получить звание Вершитель правосудия {400 Апа}"
#define MSG_GOSSIP_TEXT_134 "Получить звание Весельчак {400 Апа}"
#define MSG_GOSSIP_TEXT_72 "Получить звание Военачальник {400 Апа}"
#define MSG_GOSSIP_TEXT_42 "Получить звание Гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_113 "Получить звание Гномреганский {400 Апа}"
#define MSG_GOSSIP_TEXT_147 "Получить звание Дарнасский {400 Апа}"
#define MSG_GOSSIP_TEXT_143 "Получить звание Дженкинс {400 Апа}"
#define MSG_GOSSIP_TEXT_79 "Получить звание Дипломат {400 Апа}"
#define MSG_GOSSIP_TEXT_64 "Получить звание Длань А'дала {400 Апа}"
#define MSG_GOSSIP_TEXT_43 "Получить звание Дуэлянт {400 Апа}"
#define MSG_GOSSIP_TEXT_80 "Получить звание Жестокий Гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_47 "Получить звание Завоеватель {400 Апа}"
#define MSG_GOSSIP_TEXT_122 "Получить звание Завоеватель Наксрамаса {400 Апа}"
#define MSG_GOSSIP_TEXT_81 "Получить звание Искатель {400 Апа}"
#define MSG_GOSSIP_TEXT_78 "Получить звание Исследователь {400 Апа}"
#define MSG_GOSSIP_TEXT_156 "Получить звание Крестоносец {400 Апа}"
#define MSG_GOSSIP_TEXT_83 "Получить звание Морской дьявол {400 Апа}"
#define MSG_GOSSIP_TEXT_71 "Получить звание Мстительный гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_142 "Получить звание Неумирающий {400 Апа}"
#define MSG_GOSSIP_TEXT_146 "Получить звание Неумолимый гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_150 "Получить звание Оргриммарский {400 Апа}"
#define MSG_GOSSIP_TEXT_46 "Получить звание Повелитель Скарабеев {400 Апа}"
#define MSG_GOSSIP_TEXT_278 "Получить звание Повелитель Огня {400 Апа}"
#define MSG_GOSSIP_TEXT_139 "Получить звание Покоритель Обсидианового святилища {400 Апа}"
#define MSG_GOSSIP_TEXT_77 "Получить звание Превозносимый {400 Апа}"
#define MSG_GOSSIP_TEXT_74 "Получить звание Премудрый {400 Апа}"
#define MSG_GOSSIP_TEXT_45 "Получить звание Претендент {400 Апа}"
#define MSG_GOSSIP_TEXT_177 "Получить звание Разгневанный гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_151 "Получить звание Сен'джинский {400 Апа}"
#define MSG_GOSSIP_TEXT_171 "Получить звание Серебряный заступник {400 Апа}"
#define MSG_GOSSIP_TEXT_131 "Получить звание Серебряный защитник {400 Апа}"
#define MSG_GOSSIP_TEXT_173 "Получить звание Сияние Рассвета {400 Апа}"
#define MSG_GOSSIP_TEXT_157 "Получить звание Смертоносный гладиатор {400 Апа}"
#define MSG_GOSSIP_TEXT_75 "Получить звание Страж огня {400 Апа}"
#define MSG_GOSSIP_TEXT_140 "Получить звание Сумеречный {400 Апа}"
#define MSG_GOSSIP_TEXT_172 "Получить звание Терпеливый {400 Апа}"
#define MSG_GOSSIP_TEXT_124 "Получить звание Тыквер {400 Апа}"
#define MSG_GOSSIP_TEXT_133 "Получить звание Хмелевар {400 Апа}"
#define MSG_GOSSIP_TEXT_125 "Получить звание Хранитель мудрости {400 Апа}"
#define MSG_GOSSIP_TEXT_76 "Получить звание Хранитель огня {400 Апа}"
#define MSG_GOSSIP_TEXT_145 "Получить звание Чокнутый {400 Апа}"
#define MSG_GOSSIP_TEXT_155 "Получить звание Чудесный {400 Апа}"
#define MSG_GOSSIP_TEXT_84 "Получить звание Шеф-повар {400 Апа}"

#define CONST_ARENA_POINT 400

class npc_title : public CreatureScript
{
    public: 
    npc_title() : CreatureScript("npc_title") { }


        bool AddTitle(Player* player , Creature* _creature, CharTitlesEntry const* titleInfo) 
{ 
     if (player->HasTitle(titleInfo)) { 
         _creature->MonsterWhisper(MSG_ERR_TITLE, player->GetGUID()); 
         player->CLOSE_GOSSIP_MENU(); 
         return false; 
     } 

     if (player->GetArenaPoints() < CONST_ARENA_POINT) { 
         _creature->MonsterWhisper(MSG_ERR_ARENA_POINT, player->GetGUID()); 
         player->CLOSE_GOSSIP_MENU(); 
         
         } else{

     player->SetTitle(titleInfo); 
     player->ModifyArenaPoints(-CONST_ARENA_POINT); 
     player->CLOSE_GOSSIP_MENU(); 
         }
         return true;
} 

        bool OnGossipHello(Player *player, Creature *_creature)
                { 
                          _creature->MonsterWhisper(MSG_GOSSIP_TEXT_GETTING_STARTED, player->GetGUID());
                          player->PlayerTalkClass->ClearMenus();
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_144, GOSSIP_SENDER_MAIN, 2);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_62, GOSSIP_SENDER_MAIN, 3);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_135, GOSSIP_SENDER_MAIN, 4);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_141, GOSSIP_SENDER_MAIN, 5);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_138, GOSSIP_SENDER_MAIN, 6);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_170, GOSSIP_SENDER_MAIN, 7);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_28, GOSSIP_SENDER_MAIN, 8);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_48, GOSSIP_SENDER_MAIN, 9);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_134, GOSSIP_SENDER_MAIN, 10);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_72, GOSSIP_SENDER_MAIN, 11);
                          player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_NEXT_2, GOSSIP_SENDER_MAIN, 12);
                          player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_creature->GetGUID());
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
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(144);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 3:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(62);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 4:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(135);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 5:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(141);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 6:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(138);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 7:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(170);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 8:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(28);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 9:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(48);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 10:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(134);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 11:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(72);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 12:
                           player->PlayerTalkClass->ClearMenus();
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_42, GOSSIP_SENDER_MAIN, 13);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_113, GOSSIP_SENDER_MAIN, 14);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_147, GOSSIP_SENDER_MAIN, 15);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_143, GOSSIP_SENDER_MAIN, 16);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_79, GOSSIP_SENDER_MAIN, 17);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_64, GOSSIP_SENDER_MAIN, 18);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_43, GOSSIP_SENDER_MAIN, 19);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_80, GOSSIP_SENDER_MAIN, 20);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_47, GOSSIP_SENDER_MAIN, 21);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_122, GOSSIP_SENDER_MAIN, 22);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_BACK_1, GOSSIP_SENDER_MAIN, 56);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_NEXT_3, GOSSIP_SENDER_MAIN, 23);
                           player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_creature->GetGUID());
                           break;
                 case 13:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(42);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 14:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(113);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 15:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(147);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 16:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(143);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 17:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(79);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 18:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(64);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 19:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(43);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 20:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(80);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 21:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(47);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 22:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(122);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 23:
                           player->PlayerTalkClass->ClearMenus();
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_81, GOSSIP_SENDER_MAIN, 24);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_78, GOSSIP_SENDER_MAIN, 25);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_156, GOSSIP_SENDER_MAIN, 26);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_83, GOSSIP_SENDER_MAIN, 27);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_71, GOSSIP_SENDER_MAIN, 28);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_142, GOSSIP_SENDER_MAIN, 29);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_146, GOSSIP_SENDER_MAIN, 30);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_150, GOSSIP_SENDER_MAIN, 31);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_46, GOSSIP_SENDER_MAIN, 32);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_278, GOSSIP_SENDER_MAIN, 33);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_BACK_2, GOSSIP_SENDER_MAIN, 57);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_NEXT_4, GOSSIP_SENDER_MAIN, 34);
                           player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_creature->GetGUID());
                           break;
                 case 24:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(81);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 25:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(78);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 26:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(156);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 27:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(83);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 28:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(71);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 29:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(142);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 30:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(146);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 31:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(150);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 32:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(46);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 33:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(278);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 34:
                           player->PlayerTalkClass->ClearMenus();
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_139, GOSSIP_SENDER_MAIN, 35);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_77, GOSSIP_SENDER_MAIN, 36);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_74, GOSSIP_SENDER_MAIN, 37);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_45, GOSSIP_SENDER_MAIN, 38);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_177, GOSSIP_SENDER_MAIN, 39);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_151, GOSSIP_SENDER_MAIN, 40);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_171, GOSSIP_SENDER_MAIN, 41);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_131, GOSSIP_SENDER_MAIN, 42);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_173, GOSSIP_SENDER_MAIN, 43);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_157, GOSSIP_SENDER_MAIN, 44);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_BACK_3, GOSSIP_SENDER_MAIN, 58);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_NEXT_5, GOSSIP_SENDER_MAIN, 45);
                           player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_creature->GetGUID());
                           break;
                 case 35:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(139);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 36:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(77);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 37:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(74);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 38:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(45);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 39:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(177);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 40:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(151);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 41:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(171);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 42:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(131);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 43:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(173);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 44:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(157);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 45:
                           player->PlayerTalkClass->ClearMenus();
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_75, GOSSIP_SENDER_MAIN, 46);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_140, GOSSIP_SENDER_MAIN, 47);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_172, GOSSIP_SENDER_MAIN, 48);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_124, GOSSIP_SENDER_MAIN, 49);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_133, GOSSIP_SENDER_MAIN, 50);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_76, GOSSIP_SENDER_MAIN, 51);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_125, GOSSIP_SENDER_MAIN, 52);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_145, GOSSIP_SENDER_MAIN, 53);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_155, GOSSIP_SENDER_MAIN, 54);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, MSG_GOSSIP_TEXT_84, GOSSIP_SENDER_MAIN, 55);
                           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, MSG_GOSSIP_TEXT_BACK_4, GOSSIP_SENDER_MAIN, 59);
                           player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_creature->GetGUID());
                           break;
                 case 46:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(75);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 47:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(140);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                case 48:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(172);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 49:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(124);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
             case 50:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(133);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 51:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(125);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 52:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(76);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 53:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(145);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 54:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(155);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 55:
                           {CharTitlesEntry const* titleInfo = sCharTitlesStore.LookupEntry(84);
                           AddTitle(player, _creature, titleInfo);
                           }
                           break;
                 case 56:
                         OnGossipHello(player, _creature);
                           break;
                 case 57:
                         OnGossipSelect(player, _creature, sender, 12);
                         break;
                 case 58:
                         OnGossipSelect(player, _creature, sender, 23);
                         break;
                 case 59:
                         OnGossipSelect(player, _creature, sender, 34);
                         break;
}
        
                  return true;
        }
};
void AddSC_npc_title()
{
    new npc_title;
}
