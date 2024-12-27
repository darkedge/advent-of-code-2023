package main

import "core:fmt"
import "core:strings"

input := `MMMMMMMMMMMMWWWWWWWWAAAAAAAAAAAAAAAASSSSSSHHHIIHHHHHHHGGGGGGGGGXXXXXXXXEEEEEEENPMMMMMMMMMMPPPPPPPPPPPPPPPAAAHHPHHHHHHHHHHHHTTTTTTTTBBBBWWRRR
MMMMMMMMMMWWWWWWWWWAAAAAAAAAAAAAAAAASSSSSSHHHHHHHHHHGHGGGGGGGGGXXXXXXEEEEEEEENNNMMMMMMMMMMPPPPPPPPPPPPPPPAAAHHHHHHHHHHHHHHHDTTTTQTBBBBWWWWRR
MMMMMMMMMMMWWWWWWWWAAAAAAAAAAAAAAAAAASSSHHHHHHHHHHHHGGGGGGGGGGGXXXXXEEEEEENNNNNMMMMMMMMMMFPPPPPPPPPPPPPPPAAAHHHHHHHHHHHHHHHHTTTLTBBBBWWWWWWW
MMMMMMMMMMMWVWWWWAAAAAAAAAAAAAAAAAAASSSSHHHHHHHHHHTTGGGGGGGGGGXXXXXXEEEEEEENNNNNMMMMMMMMMPPPPPPPPPPPPPPPPPAAHHHHHHHHHHHHHHHHTTTTTBBBBBBWWWWW
MMMMMMMMMMWWWWWWWWAAAAAAAAAAAAAAAAAAAASSHHHHHHHHHHTHGGGGGGGGGGXXXXEEEEEEEEENNNNNMMMMMMMMMPPPPPPPPPPPPPPPPPRRHHHHHHHHHHHHHHHHTTTTBBBBBWWWWWWW
MMMMMMMMMWWWWWWWWWAAAAAAAAAAAAAAAAAAAAUSHHHHHHHHHHHHHGGGGGGGGGGXXXXEESEEEENNNNNMMMMMMMMPPPPPPPPPPPPPPPPPPPRRRHDDHHHHHHHHHHHHTTTTTTBBWWWWWWWW
MMMMMMMMMXWWWWWWWAAAAAAAAAAAAAAAAAAAAESSJHHHHHHHHHHHHGGGGGGGGGGGXXEEESEEEEEENNMMMMMMMMMPPPPPPPPPPPPPPPPGGPRRRRRRRHHHHHHHHHHRRRRTHHHBWWWWWWWW
MMMMMMMMMWWWWWWWWWAAAAHAAAAAAAAAAQADAAYJJJHHHHHHHHHHGGGGGGGGGGGGGXXXESSSSEEEEEMMMMMMMMMMPPPGPPPYPPPPPPGGRRRRRRRRRHHHHHHHHHHHRRRHHHHBWWWWLWWW
MWWMMMMWWWWWWWWWWAAAAAAAAAAAAQQAAQQRYYYYJJJHHHHHHHHGGGGGGGGGGGXSSXXXSSSSSSEEEEMMMMMMMMMMMPGGLPEYYPPPPPGGRRRRRRRRFHHHHHHHHHIHHHHHHHHHWDWWWWWW
MWWWMXXXWWWWWWWAAAAAAAAACAAAAAQQQQQRRYYYJJJHHHHHHHHGGGGGGGGGGGGSSSSSSSSSSSEEEMMMMMMMMMMMPPMLLEEEYPPPPGGGRTRRRRRFFHHHHHHHHHIIHHHHHHHHHDDDWWWW
WWWWWWWWZZWWWWWIAAAAAAMAMCMMMQQQQQQRYYYYHHHHHHHHHQHGGGQQGGGGQQGSSSSSSSSSSSSEMMMMKKKMMMMMMMMMLEEEEPPPPGGGRRRFFFRFFFFFHFHHHHHIHHHHHHHHHHHHWWWW
WWWWWWWZZZZWWWWOXAAOAAMMMMMMMQQQRRRRBYVVVVHHAHWHHQQGQQQQQQGGQQSSSSSSSSSSSSSEEMMMKKKKMMMMMMMLLEEEEFIIPGFFFFRFFFFFFFFFFFHHHFHHHHHHHHHHHHHHVWWW
WWWWWWWWZZZZZZZOXOOOOOMMMMMRMMQQRRRMRVVVVVHEEEHHQQQQQQQQQQQQQQQSSSSSSSSSSSSSEEEKKKKMMMMMMMNNQEEEEFFIPFFFFFFFFFFFFFFHFFFHFFHHHHHHHHHHHKHBWWWW
WWWWWWWWWZZZZZZOOOOOOOMMMMMMMMRRRLRMRRVVEEEEEEEHQEQQQQQQQQQQSSSSSSSSSSSSSSSSEEEECKKKMMMMMQQQQQQBFFFFFFFFFFFFFFFFFFFHHHHHHHHHHHHHHHHHHKWWWWWW
WWWWWWWWWZZZZZZZOOONNOMMMMMMMMMRRRRRRRRVEEEEEEEEEEEQQQQQQQQQQSSSSSSSSSSSSZZSEEEEKKKKKMMMKQQQBBBBBFNFFFFFFFFFFFFFFHHHHDDHYHHHHHHHHHHHHKKWWWWW
WWWWWWWFWWZZZZZZZZONNNMMMMMMMMQRRRRRRRREIEEEEEEEEEEQQPPPPPQQQQSSSSSSSSSSSSZSEEEKKKKKKKKKKQQQQQQBFFFFFFFFFFFFFFFFFHHHXXDXYHBHHHHHHHHHHKKKKWWK
WMMMMFFFFFFZFZZNZZNNNNMMMMFFMQQFRRRRRREEEEEEEEEEREEPQPPPPPQQQQBSSCSSSSSSSZZSSKKKKKKKKKKKKKQQQQQQMFFFFFFFFFFFFFHHHHHHXXXXXHBHHHHHHHHHHHKKKKKK
CMMMAFFFFFFFFFNNZNNNNNNNMMMFFFQFRRRRRRRRREEEETTTTRPPPPPPPPPQQQQQQSSSSSSSSZZZKKKKKKKKKKKKKQQQQQQQMFFFFFFFFFFFFFHHHHHXXXXXXXBHHHHHHUHHKKKKKKKK
CCMMMMFFFFFXXXXNNNNNNNMMMMFFFFFFFRRRRRSSEEEEETTTTSSPPPPPPPPQQQQRRRRRRSSZZZZZZKKKKKKKKQQQKQQQKQQQQQFFFFFFFMFFFFHHHHHXXXXXXXHHUHHHHUHHKKKKKKKK
MMMMMMMMXFFXXXXNNNNNNNNMFFFFFFFUUUURRRRSSSSESTTTTSSSPPPPPPPQQQQQRRRRRRZZZZZZZKKKKKKKKQQQQQQQQQQQQYFFFFFFMMFFFFHHHHHHXXXHHHUUUHUUHUHHKKKKKKKK
MMMSMMMMXXXXXXNNNNXNNNNLFFFFFFFFFFFERRVSSSSSSTTTTSSDJPPPPPPQQQQRRRRRZZZZZZZZZKKKKKKMMMMQQQQQQQQYYYYFFFFFMMMFFFHHHHHHHHXHHUUUUUUUUUUHHKKKKKKK
WMMSMMMMMMXXXXXXXXXXXFCFMFFFFFFFFFFELVTTTTTTTTTTTTTTTTPPPPPQQQQRRRRRRZZZZZZZSKKKKKKMQMMQQQQQQQQQQYYFFFFFFFMMMMHHHHHHHHHHUUUUUUUUUKUKKKKKKKKK
NMOMMMMMMXXXXXXXXXXXXFFFFFFFFFFFFFFLLLTTTTTTTTTTTTTTTTPPPPNQQQQRRRRRRZZZZZZGSKSSKVVSQQMQQQQQQQQQYYYYYFFFFFFMMHHHHHHHHHHHUUUUUUUUUKKKKKKKKKKK
NNMMMMMMMXXXXXXXXXXXFFXFFFFFFFFFFFFLLLTTTTTTTTTTTTTTTTZPPPNZZRRRRRRRRRRZZZSGSSSSSSSSBQQQQQQQQQQQQYYYYYFFFFFMMMHHHHHHHHHHHUUUUUUUUKKKKKKKKKKK
NNNNMMMMMNXXXXXXXXXXXXXFFFFFFFFFFFFFFLTTTTTTTTTTTTTTTTZPPPNZZZZZZRRVVVVZZSSSSSSSSSSSSQQQQQQQQQQQQQCYCYYFFFFMMMHHHHHHHHHHHUUUUUUUUUUKKKKKKKKK
NNNNMMNMMNNXXXXXXXXXXXXFFFFFFFFFFFFFFFTTTTTTTTTTTTTTTTPPPPZZZZZZVVVVVVVVVVSSSSSSSSSSSSQQQQQQQQQQQCCCCYYYBBBMMMMMHHHHHHHHUUUUUUUUUUUKKKKKKKKK
NNNNMRNNNNNNXXXXXXXXXFFFFFFFFFFFFFFFTTTTTTTTTTTTTTTTTTZZZZZZZZZUUUVVVVVVVVSSSSSSSSSSSSQQQQQQQQQHHCCGGBYBKBBMMMMMMMHHHHHHHUUUUUUUUKKKKKKKKKKK
NNNNNNNNNNNNXXXXXXXXXXFFQFFFFFFFFGFFTTTTTTTTTTTTTTTTTTZZZZZZZZUUUUUVVVVVVSSSSSSSSSSSSSPQQQQYYYQHHCCCGBYBBBBBBMMMMMMHHHHRREUUUUUUUUEEOOKKOOKK
NNNKKNNNNNNXXXXXXXXXXXXXXSFHFYFFFFQOTTTTTTTTTTTTTTTTTTZZZZZZZZUUUUVVVVMVVSSSSSSSSSSUSUPQQQYYMMMMHCCCWBBBBBBBBMMMMMMMHHHHEEEEEUUUUUEEEOKOOOKK
NNVKKNNNNNXXXXLXLLXXXXXXXXXHHYFFXQQQTTTTTTTTTTTTZZZZZZZZZZZZZZVVVVVVVVMMVSSSSSSSSSSUUUUBUUYYYMMMMCCWWWWBBWRRRMMMMMMEHHHHHHEEEUEUEEEEEOOOOOKO
NJVVKKNNNXXXXLLLLLLXXXXXXHHHHYYFXQQQTTTTTTTTTTGZZZZZZZZZZZZZZZQQVVVVVVMMMSSSSSSSSSSUUUUUUUUUMMMWWWWWWWWBBWRRRRRRMMMEEHHEHEEEEEEEEEEEEEEHOOOO
QJVVKKKNNXXXXLLLYYYYYYYXXXHYYYYYXQXQTTTTTTTTTTGZZZZZZZZZZZZZQQQVVVVVVVMMMMSMSSSSSFSCUUUUUUKMMMMWWWWWWWWWBWWRRRRRMMEEEHEEEEEEEEEEEEEEEEHHHOHO
QQVVKKKKNLLLLLLLLYYYYYYYYXHYYYYXXXXXQQBBBBQQBBBBBZZZZZZZZZQZQQQQVVVVVVVMMMMMSSFFFFSCSUUUUUUMMWWWWWWWWWWWWWRRRRRRMRLEEEEEEEEEEEEEEEEEEEHHHHHO
QQQQQKKKLLLLLLLLLLYYYYYYYXHYZYYYXXXQQQBBBBBBBBBBBNZZZZZZZFQQQVVVVVVVMMVMMMMMMFFFFFSSSUUUUUUUMWWWWWWWWWWRWWRRRRRRRRRZEEEEEEEEEEEEEEEEHEHHHHHO
QQQQLLLLLLLLLLLLLYYYYYYYYYHYYYYYXXXXXXXBBBBBBBBBBZZZZZZZZQQQQQVVVVVVVMMMMFFFFFFFFFSMUUUUUUPPWWWWWWWWWWWWRRRRRRRRRRRZEEEEEEEEEEEEEEEEHHHHHHHH
QQDDQQLLLLLLLLLLLYYYYYYYYYHYYYYYYXXXXXXBBBBBBBBBBBZZZZZZZQQQQQVVVQVVVMMMMFXFFFFFFFFFUUUUUUUPPWWWWWWWWWWRZRRRRRRRRRRREEEEEEEEEEEEEEEEHHHHHHHH
QQQQQQLLLLLLLLLLLLYYYYYYYYYYYYYYYYYXXXBBBBBBBBBBBBQQQZQQQQQQQVVZDDDMMMDMMMFFFFFFFFUUUUUUUUUUPPWWWWWWWWWRRRRRRRRRRRRCCEEEEEEEEEEEEEEEHHHHHHHH
QQQQQQQLLLLLLLLLLLLYYYYYYYYYYYYYYYYYBBJBBJBBBBBBBBQQQQQQQQQQQZZZDDDDDDDDFFFFFFFFFFUUUUUUUUUUPPWWWWWWWWWRRRRRRRRRRRCCCCCEEEEEEEEEEEEEHHHHHHHH
QQQQQQQQLLLLLLLLLLLLYYYYYYYYYYYYYYYYBBJJJJJBBBBBBBBQQQQQQQQQMMMMDDDDDDDDDFFFFFFFFFUUUUUUUUUPPPWWWWWWWWWWWRRRRRRRRRRCLLLLLEEEEEEEEEHHHHHHHHHH
QQQQQQQQLLLLLLLLLLLLLYYYYYYYYYYYYYRRDBBJJJJBBBBBBBBBQQQQQQQMMMMMMAADDDDDFFFFFFFFFUUUUUUUUNNNNNNNNNNWOWWWWRRRRRRRCCCCLLLLLLEEEEEEEEEHHHHHHHHH
QQQQQQQQLLLLLLLLLLLLLYYYYHYRRRYRYYRRDBBJJJJBBBBBBBBBQQQQQQQMMAAAAAADDDDDFFFFFFFFFFUUUUUUUNNNNNNNNNNWOWWWWRRRRRRJJJJJJLLLLLEEELEEEEHHHHHHHHHH
QQQQQQQQLLLLLLLLLLLLYYRRIRRRRRRRRYRRDBBJJJJBBBBBBBBBQQQQQQQQMAAAAAADDDDDFFFFFFFFFUUUUUFPPNNNNNNNNNNYWWWWWWJJJJJJJJJJJLLLLLELLLLEEEXHHHHHHHHH
QQQQQQQKKKLLLLLLLLCRYYRIIRRRRRRRRRRRRBBBJJBBBBBBZBBQQQQQQQTTXTTAIIIIYDDFFFFFFFFFCUCUUFFPPNNNNNNNNNNYWWWWYYJJJJJJJJJJJLLLLLLLLLLLLLHHHHHHHHHH
OQQQQKQKKKKKLLLLLLCRRRRRRRRRRRRRRRRRRBBBBBBBBBBBSRQQQQQQQQTTTTTTTIIIIIIFFFFFFFCFCCCCCFFFPNNNNNNNNNNYYYYYYYJJJJJJJJJJJTLIILLLLLLLLLLHHHHHHHHH
OQQQKKKKKKKKKLBBBRRRRRRRRRRRRRRRRRRRRBBBBBBBBSSSSRSQQQQQQQQQTTTTTTRRRRQQFFFFFFCCCCBBBFFFFNNNNNNNNNNYYYYYYYJJJJJJJJJJJTTIILLLLLLLLLLLHHHHHHHH
OOKKKKKKKKKKKXXRRRRRRRRRRRRRRRRRRRBRRRBBBBSSBSSSSSSQQQQQQQQQTTTTTTRRRRQFFFCFCCCCBBBBBFFPPNNNNNNNNNNYYYYTTYJJJJJJJJJJJTTTIILLLLLLLLLLHHHHHHHH
OOKKKKKKKKKKKXXXVRRRRRRXRRRRRRRRRBBBBBBBBSSSSSSSSSSQQQQQQQATTTTTTTRRRRRFFCCCCCCBBBBBBBBPPNNNNNNNNNNYYYYYTTJJJJJJJJJJJTTIIIIIILLLLLLLLHHHHHHH
OKKKKKKKKKKKKXXVVRRRRRRXXRRRRRRRBBBBBBBBBBSSSSSSSSSSQQQQTTTTTTTTTTRRRRRFRCCCCCCBBBBBBBBBBNNNNNNNNNNYYYYYYTJJJJJJJJJJJTIIIIIIILLLLLLLLHHHHHHH
OKKKKKKKKKKKKKKRRRRRRRRRXXXRRTRRBBBBBBBBBBSSSSSSSSSVQQQQQRTTTTKRRRRRRRRRRRRCCCCBBBBBBBBBBBBRYZZZYYYYYYHYYNTTJJJJJJJJJTIIIIIIILLLLLLLLLLHHHHH
OOLKKKKKKKKKKKKRRRRRRRRTRRRRRRRBBBBBBBBBSSSSSSSSSSSSQQQQRRRWWTKRRRRRRRRRRRCCCCCBBBBBBBBBBDZRYZZZYYYYYYHHYYTTJJJJJJJJJTTIIIITTLLLLLLLLLLKHHHH
LLLLKKKKKKKKKKKRRRRRRRRRRBBBBBBBBBBBBBBBSSSSSSSSSSNNNNNRRRRWWKKRRRRRRRRRRRCCCCBBBBBBBBBBBBZZYZZZZZYYYYHHHHHTJJJJJJJJJTTSIIITLLLLLLLLLLKKKHKK
CLLLLKKKKKKKKKKRRRRRRRRRRMBBBWBBBBBDDBBSSSSSSSSSSSNNNNNWWWWWWWWWRRRCCRRRRRRRCCCBBBBBBBBBBBBZZZZZZYYHHYHHHHHTTTTTXTTTTTTSSDSSLLLGGLLLLLLLKKKK
LLLBKKKKKKKKOKKRRRRRRRBRRBBBBBBBBBBTDDDQSSSSSSSSSSNNNNNWWWWWGGWWWRCCCCCRRRRRCCBBBBBBBBBSBBBZZZZZZZYYHHHHHHXXTTTXXXXXXXSSSSSSSLLGLLLLLLLKKKKK
LLLLLKKKKKKKOOOORRRRRRVVVVVBBBBBBBBDDQDQQQSSSSSSSSSSVWWJJWWWWWWWWCCCCCCCRRRRRCBBBBBBBBBBBBBZZZZZZZZYYHHHXXXXXXXXXXXXXXXSSSSSSSLGGLXXXXLJJJJJ
LLLLLWWWWKWKWWOOOOORROVVVVVVBBBBBBDDDQQQQQSNSSSSSSSVVVWWJWWWWWWWWCCCCCCRRTRRRCBPBBZBPPBBBBBZZZZZZZZDPPPHXLXXXXXXXXXXXXSSSSSSSGGGGOXXXJJJJJJJ
LLLLLLWWWWWWWOOOOOOOOOVVVVVVVBBBBBBDDDDQQQQSSSSSSSSSSVWWWWWWWWWWWCCCCCCCCRRRCCCPPBBBPPPPXXXXXZZZZZZDPPPPPPXXXXXXXXXVXXXVSSSSGGGGOOXJJJJJJJJJ
LLLLLLLLOWWWWOOOOOOOOOOOVVVVVBDBBBBBBQQQQQQSSSSSSSSSVVWWWWWWWWWWWCWCCCCCCRRRCCCPPPPPPPKXXXXXZZZZZZZPPPPPPPXXXXXXXXXVVVVVVGGGGGGOOOOJJJJJJJJJ
LLLLLLLLOOOOOOOOOOOOOOOOVVVVBBBBBBBBQQQQQQQQSSSSSSSSSWWWWWWWWWWCCCWWCWWCCCEECPPPPPPPPPXOOXXXYBZZAAPPPPPPPPPXXCCVVXXVVVVVVVGGGOOOOOOOOOJJJJJJ
LLLLLELLKOOOOOOOOOOOOOOVVVVVVVVBBBBBQQQQQQQSSSQSQSSSVVWWWWWWWWWWWCWWWWWWWWEECCCCPCPPPPXXXXXXBBZZZHHHPPPPPPPPPPPVVXVVVVVVGVGGGOOOOOOOOOJJJJJJ
LLLLEEKKKKKKOOOOOOOOOOOVVVVVVVVBBBBBQQQQQQQQSSQQQQQSVVVWWWWWWWWWWWWWWWWWWWEECCCCCCHHPXXXXXXXBBBBZHHHHPPPPPPPPPPVVVVVVVVVVVGGGOOOOOOOOOOOIIII
LLLLLLKKKKKKOOOOOOOOOOVVVVVVVVVVBBKKVQQQQQQQQSQQQQQSVVVWWWWWWWWWWWWWWWWWWWEEEEHHHHHHHQXXXXXXBBBBWBBHHPPPPPPPPPPVVVVVVVVVVVGGGGOOOOOOOOMOOIII
LLLLKKKKKKKKKKOOOOOOOOOVVVVVVVVVBVVVVVQQQQQQQQQQQQQSVVVWWWWWWWWUWWWWWWFWWWEEEHHHHHHQQQQXXWXXXBBBBBHHHPHPPPPPPPPVVVVVVVVVVVGGGGOOOOOOOOOOOOII
HHHHKKKKKKKKKKKOOOOOOVVVVVVVVVVVVVVVVVVQQQQQQQQQQGVVVVVVWWXXXWWHWWWWWWWWWWEEHHHHHHHQQQQQWWXXXBBBBBHHHHHHHPPPPPUVVVVVVVVVVVGGGGOOOOOOOOOOOIIM
HHHHKKKKKKKKKKOOOOOOVVVVVVVRRRVVRRRVVVVQQQQQQQQQVVVVVVVVVVXXXHHHWWWWWWWWWWWHHHHHHHHQQQWQWWXXXBBBBBHHHHHHHPPPPVVVVVVVVVVVVVGGJJJOOOOOOOOOMMMM
HHHHKKKKKKKKKKKKKOOOVVVRRRRRRRRRRRRRRVQQQQQQQQQQQMMVVVVVVVVXXHHHHWWWWWWWWWHHHHHHHHHHWWWWWWWXBBBBBHHHHHHHHHHPQQQVVVVVVVVVFFJJJJJOOOOOOOOMMMMM
HHHHKKKKKKKKKKKKKOOKKVRRRAARRRRRRRRRGVMQQQQSSQQQMMSFVVVVVVXXXXWWWWWWWWWWWWWHHHHHHHUWRWWWWWWXBBBBBHHHHHHHRHHHHQQQQQVVVVFFFFFJJJJBJJJOYOOMMMMM
HHHHKKKKKKKKKKKKKKZKVVRRRRRRRRRRRRRFVVOOQQQSSQQQMMSSVVVVVVXWWWWWWWWWWZZZZZVHHHHHHUUWWWWWWWPXBBBBCHHHHHHHRHHHRQQKKKVVVVVVVJJJJJJJJJJYYYMMMMMM
HHHKKKKKKKKKKKKKHKKKKKRRRRRRRRRRRRRFFFFOOQSSSSMMMSSSVVVVVXXXWWWWWWWWWZZZZZZHHHHHHUUWWWWWWWWWWWBCCHHHHHHRRRHHRQQQKKVVKVDVUUNNNJJJJJJJYMMMMMMM
HHHZKKKKKKKKKKKKKKKKKTRRRRRRRRRRRRRFFFOOOOSSSSSSSSSSSSXVXXXXXWWWWWWWWZZZZZZHHHHHUUUUWWWWWWWWWWWCCCHHHHRRRRRRRQQKKKKKKKKNNNNNNJJJJJJYYMMMMMMM
ZZHZKAKKZKKKKKKKKKKKKTRRRRRRRRRRRFFFFFOOOOSSSSSSSSSSSSXXXXXXWWWWWWWWZZZZZJZHHHHHUWUWWWWWWWWWWWWCCCHHRRRRRRRRRQKKKKKKKKNNNNNNNJJJYYYYMMMMMMMM
ZZHZZZZZZBKKKKKKKKKKKKRRRRRRRRRRRFFFFOOOOOSSSSSSSSSSSSSXXXXXXXWWWWWWZZZZZZZZHHHHUWWWWWWWWWWWWWSCCHCHRRRRRRRHRKKWKKKKKNNNNNNNNNNJJYYYMMMMMMMM
ZZZZZZZZZZZZKKKKKKKKKKRRRRRRRRRRRFFFOOOOOOBSSSSSSSSSSSXXXXXXXXXZWWWWZZZZZZZZZHHUUWWWWWWWWWWWWJSCCHCRRRVRRRRHRLKKKKKKNNNNNNNNNNYYNYYMMMMMMMMM
ZZZZZZZZZZZZKKKKKKKKKRRRRRRRRRRFRRRFFOOOOOBSSSSSSSSSSXXXXXXXXXXZZZZZZZZZZZZUUUUUUWWEWWWWWWSSSSSCCCCRRRRRRRHHKKKKKKKKNNNNNNNNNNNNNYMMMMMMMMMM
ZZZZZZZZZZZKKKKKKKKKKRRRRRRRRFFFFFRFOOOOOBBBBSSSSSSSSSXXXXXXXXXZZZZZZZZZZZZUUUUUUWWWBWSWWSSSSSRCCCCRCCRRHHHHKKKKKHKHNNNNNNNNNNYYYYYMMMMMMMMM
ZZZZZZZZZZZXXKKKKKKKKGGGGRRRFFFFFFFFFFOBBBBBBBNNSSSSSSXXXXXXXXXXWZCZZZZZZZZUUUUUUWWBBWSSSSSSSSSCCCCCCCCCCCCHHKKKKHHHNNNNNNNNNNNYYYYMYYMMMMMM
ZZZZZZZZZZZWWWWKKKKKKGGGGRRRFFFFFFBBBBBBBBBBBBBBSSSSSSSXXXXXXXXXWCCZZZZZZZUUUUUUUUUUBBSSSSSSSSSCSCCCCCCCCCCCCHHHHHHHHNOOONNNNNYYYYYYYYMMMMMM
ZZZZZZZZZZZWWWWKKKKKKGGGWFFRFFFFFFBBBBBBBBBBBZBBSSSSSXXXXXXXXXWWWCCZZZZZZZUUUUUUUUUUUBSSSSSSSSSSSSCCCCCCCCCCCHHHHHHHHHSONNNTNNYYYYYYYYMRMMMM
ZZZZZZZZZZWWWWWKKWKKKKWWWFFFFFFFFFFBBBBBBBBBZZZZZZSSSXXXXXXXXXWWWCCCZZZZZZZUUUUUUUUUUBSSSSSSSSSSSSSCCCCCCCCCUCHHHHHHHHSOTNNTTTTYYYHHHMMMMMMM
ZZZZZZZZZZWWWWWWWWKWWWWWWWFFFFFFFFFBBWBBBBBBZZZZZXXSSXXXXXXXXWWWWWCCZZZZZZZZZZUUUUUBBBSSSSSSSSSSSSCCCCACCCCCCCHHHHHSSSSSTTTTTTTHHHHHHHHHMMMM
ZZZZZXXXXXVWWWWWWWWWWWWFFFFFFFFFFFFBXBBBBBBBBBZZZXXSSXXXXXKKWWWWWWCCCZZZZZZZZZZUUUUUBBBSSSSSSSSSCCCCCAAACCCCCHHHHHSSSSSSTTTTTTBHHHHHHHHHMSSM
ZZXXXXXXXXXXWWWWWWWWWWWWFFFFFFFFFFFFXXXBBBZBBZZZZXXXXXXXXXKKKWWBWWWWZZZZZZZZZZKUUUUUBBBSSSSSSSSSCCCAAAACCCCCHHHHHHSSSSSTTTTTTTTTHHHHHHHHHSSS
ZXXOXXXXXXXXCWWWWWWWWWWWWFFFFFFFFFFFFXXBEZZZZZZZZZXXXXXXXXXKXXXBBWWBBBZBBZZZBBUUUUUUYBBSSSSSSSSSCCAAAAAQCCCCCAAASSSSSSSTTTTTTTTHHHHHHHHHHSSS
ZZXXXXXXXXXGXWWWWWWWWWWWWRFFFFFFFFFEXXEEEZEZZZZZZZXXXXXXXZXXXXXXBBBBBBBBBZZZBBBBBUUUYYYYSSSSSSSSSSQAAAAQQQQQQAAAASSASASTTQQTTTHHHHHHHHHSSSSS
ZZZXXXXXXXXXXWWWWWWWWWWWWWFFFFFFEEEEXXEEEEEEZZZZZXXVXXXXXXXXXXXXXBBBBBBBBZBBBBBBBBBUUWWYYYYYSSSSSSQQQAQQQQQQAAAAAAAAAAATTTTTTTHHHHHHHHHSSSSS
ZZZXXXXXXXXXXWWWWWWWWWWWWWIFFFFFFEEEXEEEEEEEZZZZXXXXZXXXXXXXXXXXXXBBBBBBBBBWBBBBBWWUWWYYYYYSSSSSQQQQQQQQQQQAAAAAAAAAAAYYYYTTTTHHHHHHHHHSSSSS
ZZXXXXXXXXXBXWWWWWWWWWWWWIIFFFFEEEEEEEEEEEEEEEZZZXXZZXXXXXXXXXXXBBBBBVBBBBBWWWWWWWWWWWWWYYYYSSSSSQQQQQQQQQQAAAAAAAAAAAYYYYTTTTTTHHUUHHHHSSSS
ZZZXXXXXXXXXXWWKWWKKEWWWWIIIIUFEEEEEEEEEEEEEEEEZZZXZZXZXXZXXXXXXXBBBVVBVBBWWWWWWWWWWWWWWYYYYSSSSSQQQXQXXQQQQQAAAAAAAAAYYGYTTTTTUUHUUUUUHSSSS
ZXXXXXXXXXXXXWWKKKKEKIWIIIIIIICCEEEEEEEEEEEEEEEZZZZZZZZZZZXXXXNNXBVVVVVVBBBWWWWWWWWWWWWYYYYYYSSQSQQQXXXXXXXQAAAAAAAAAAAAGGGTTTUUUUUUUUUHSSSS
ZZZZXYXXXXXXKWKKKKKKKIWUUUUIIICCCCEEEEEEEEEEEEZZZZZZZZZZZXXXXXNNTVVVVVVVVVBWWWWWWWWWWWWYYYYYYSSQQQQQQQQXXXXXAAAAAAAAAARAWWGGGTUUUUUUUUUUUSSS
ZZZXXXXXXXXXKKKKKKKKKKWUUUUUCCCCCCEEEEEEEEEEEEZUZUZZZZZZZZXXNNNNNVVVVVVVVVVUWWWWWWWWWWWYYYYYQQQQQQQQQXXXXXXCTAAAAAAAAAAAOWGGUUUUUUUUUUUUUUSS
ZZZZVVXXXXXXKKKKKKKKKKUUUUUUCCCCCCEEEEEEEEEEEEEUUUZZZZZZZZZNNNNNVVVVVVVVVVVVWWWWWWWWWYYYYQYYQQQQQQQQQQXXXXTTTTTAAAAAOOAOOGGUUUUUUUUUUUUUUUSS
ZZZVVVXXXVVWKKKKKKKKKKVUUUUUNCCCCCCEEBEEEEEUUUUUUUZZZZZZZZZZNNNNVVVVVVVVVVVWWWWWWWWWNQYYQQQQQQQQQQQQQQXXRXTTTTTAAAAAOOOOZGGUUUUUUUUUUUUUUSSS
ZZVVVVVVVVVVVVKKKKKKKUUUUUCCCCCCCCCCEEEEEEEUUUUUUUZZZZZZZZZZNNNNVLVVVVVVVVVVWWWWNNNNNQYQQQQQQQQQQQQQQQQQQTTTTAAAAAAAAOOJZZZUUUUUUUUUUUUUUSSS
ZZVVVVVVVVVVVVVKKUKUUUUUUUCCCCCCCCCCCCESSSEEUUUUUUZZZZZZZZZZNNNNVNVVVVVVVVVVWWWQQQQQQQQQQQQQQQQQQQQQQQQQQQQTVAAAAAAAAAOOZZZUXUUUUUUUUUUUUUSS
ZZVVVVVVVVVVVVVGKUUUUUUUUUUCCPCCCCCCCCCCSSEQUUUUUUZZZZZZZZNNNNNNNNVVVVVVVVVVZWWDQQQQQQQQQQQQQQQQQQQQQQQQQQQQAAAAAAAXXAAOXZZUUUUUUUUUUUCUSSSS
ZVVVVVVVVVVVVVVKKUUUUUUUUCCCCCCCCCCCCCCSSSVUUUUUZZZZZZZZZZZNNNNNDDDDVVVVVVVZZZWWXXXXXXQQQQAAQQQQQQQQQQQQQDDDAXXAAAAXXXXXXZZZZUZZUUZZZICIIIIS
ZVVVVVVVVVVVVVVUUUUUUUUUUUUCCCCCCCCCCHHVVVVUUUUUUZZZZZMMZZZNNNNNNDDDVVVVVVVCCCXXXXXXXXQQQAAALQQQQQQQQQQQQQQQXXXXXXAXXXXXXZZZZUUZUUZZIIIIIIII
ZVVVVVVVVVVVYYYUUUUUUUUUUUECAACCHCCCCHVVVVVUUUUUUZZZZZZMMZBNNNNNNNBDVVVVVCCCCCXXXCXXXXXXXLAALGGGQQQQQQQQQQQOQXXXXXXXXXXXZZZZZUUZZZZIIIIIIIII
ZVVVRRVVVVVVYJUUUUUUUUUEEEEEACCCCCCCCCVVVVVVUUUUUZZMZZMMMEMNNNNNKKBBVVVTCCCCCCXCCCCXXXXLLLLLLLLLQQQQQQQQQQQQQQXXXXXXXXXZZZZZZUZZZZZIIIIIIIII
IIIRRRRVVVVVJJJUUUUUYYYYYEEEECGGGGGGGGVVVVVVVVUHHHHMMMMMMMMNNNNNKBBBBBTTTCCCCCCCCCCXXCXLLLLLLLLLLQQQQQQQQQQQQQXXXXXXXXXZZRRZZZZZZZIIZIIIIIII
IIIIRRRRJVVVTTJUTTYYYYYYYEEEEEGGGGGGGGVVVVVVVVUHHHHHMMMMMMMMNNKKKBBBBBTTTTTCCCCCCCCCCCCCLLLLLLLLLLLLQQQQQQQQQQXXXXXXXXXXXRTRRRRZZZZZZIIIIIII
IRRRRRRJJVVVTTTTTTYYYYYYYYYEEGGGGGGGGGGVVVVVVVVHWHHHMMMMMMMMMMKKKBBBBGTTTCCCCCCCCCCCCCCCNNNLLLLLLLLLQQQQQQQQSQXXXXXXXTXXRRTRRRRZZOOOIIIIIIII
RRRRRRRRRDVTTTTTRTYYYYYYYYEEEGGGGGGGGGGVVVVVVWWWWWTTTMMMMMMMMMMKKBBBHGGGTCCCCCCCCCCCCCNNNNLLLLLLLLLLQQQQQQQQQQQXXXXXXTXRRRRRRRRRZOOOOOOIIIII
RRRRRRRIRDRRRRRTRRRGGEEEYEEEEGGGGGGGGGGVVVVVVWWWWWTTTMMMMMMMMMMKQQBBGGGGCCCCCCCCCCCCKNNNNNLLLLLLLLLPQVVVQQQQQHQXXXTXXTTZZRRRRRRRROOOOOOIIIII
RRRRRRRIRRRRRRRRRRRGNEEEEEEEEGGGGGGGGGGVVVVVWWWWWSTTTMMMMMMQMMQQQQQGGGGUCCCCCCCCCCCKKNNKLLLLLLLLLLLLQVVVVQYDTDDTTTTTXTTZTRRRRRRRRROOOOOOOIII
RRRRRRPRRRRRRRRRRRRGNEEEEEEEEGGGGGGGGGGVVVVVVWWWWWTTTMMMMMQQQQQQQQQZGGGGGCCCCCCCCCKKKKKKKKKKLLLLLLLVVVRVDDDDDDDTTTTTTTTTTEEERRRRROOOOOOOOOIN
RRRRRRPRRRRRRRRRRRRNNNNNNEEEEGGGGGGGGGGVVVVVVWWOZZTTTTTTTTTTTTQQQQVGGGGGGGGCCCCCCCKKKKKKKKKRLLLLLLLVRRRVVDDDDDDTTTTTTTTKKRRRRRRROOOOOOOOOIII
RRRRRRRRRRRRRRRRRRIINNNNNNNNEGGGGGGGGGGVVVVVVWUOOOTTTTTTTTTTTTQQQQGGGGGGGGYYYYCCCCKIKKKAKVKLLLLLLLDRRRRVVDDDDDDTTTTTTTTTKRRRRRROOOOOOOOOOOOI
RRRRRRRRRRRRRRRRRRRRNNNNNNMMMMMMMMMMMMMVVVVVVVHOOOTTTTTTTTTTTTQQQQGGGGGGGGGYYYCCCIIIIKAAVVKLLLVLFRRRRRRVREEDDDDTTTTTTTTTRRRRRRRROOOOOOOOOOOO
RRRRRRRRRRRRRRRRRRRRRNNNNNMMMMMMMMMMMMMHVVVHHHHOOOTTTTTTTTTTTTQQQQGGGGGGGGGGLLCCCIIIIIVVVVVVCVVRRRRRRRRRREEDDDDDTTTTTTTRRRRRDDRROOOOOOOOOOOO
RRRRRRRRRRRRRRRRRRBRNNNNNNMMMMMMMMMHHHHHHVVHHHHOOTTTTTTTWWWWWWWWWWGGGGGGGGGOLLLLLIIIIVVVVVVVCVVRRRRRRRRRRREDDDDDTTTRRTTTRRRRDHHOOOOOOOOOOOOO
RRRRRRRRRRRRRRRIRRHHNNNNNNMMMMMMMMMHHHHHHHVHOOOOOTTTTTQTWWWWWWWWWWGGGGGGGGGGGLLLLIIIIIVVVVVVVVVRRRRRRRRRRRROYDDDRTTRRRRRRRRDDDDOOOOOOOOOOOOO
RRRRRRRRRRRRRRRRRHHHHNNNNNMMMMMMMMMHHHHHHHHHHHHHGTTTTTOTWWWWWWWWWWWWWWGGGGGLLLLLLLLLIIVVVVVVVVVRRRRRRRRRRRROYYRRRRRRRRRRRRRDDDDDDOOOOOEOOOOO
RRRRRRRRRRERRRRRMSHHHHNNNNMMMMMMMMMMMHHHHHHHHHHHGTTTTTOTWWWWWWWWWWWWWWGGGGGLLLLLLLIIIIIIVVVVVVVRRRRRRRRRRROOOYRRRRRRRRRRRRRDWDDDDODOOOEOOOOO
RRRRRRRRERERRMMMMSSHHHHNNHMMMMMMMMMMMHHHHHHHGGGGGTTTTTOTWWWWWWWWWWWWWWGGGGLLLLLLLLIIIIIIVVVVVVVRRRRRRRRRRROOORRRRRRRRRRRRRRDDDDDDODDDDDDOOOO
RRNRRLEEEEEEEMMMSSSSSHHHHHMMMMMMMMMMMHHHHHHHHGGGGTTTTTOTWWWWWWWWWWWWWWGGUGLLLLLLLLLIIIIOOVVVVVVRRRRRRRRRROOOOORRRRRRRRRRRRRDDDDDDDDDDDDDOOOO
PPRRRRJJJEEEEEEMMSSSHHHHHHMMMMMMMMMMMHHHHGGGGGGGGTTTTTOTTTWWWWWWWWWWWWIGULLLLLULLLIIIIOOOOVVVVVVVVRRRRRRZOOOOOORRRRRRRRRRRRDDDDDDDDDDDDDDDOO
PPJJJJJJEEEEEESSMSSSHHHHHHHHMMMMMMMMMHHHHCGGGGGGGTTTTTTOWWWWWWWWWWWWWWKKULLLLLULLLIIOOOOVVVVVVVRRRROOROROOOOOOORRRRRRRRRRERDDDDDDDDDDDDDSOOO
PPJJJJJJEEEEEESSSSSSSHHHHHHHMMMMMMMMMNHHBNGGGGGGGTTTTTTTWWWWWWWWWWWWWWKKUULLUUULILIIIIIOVVVDVRRRRROOOOOOOOOOOOORRRRRRRRBJJJJJJDDDDDDDDDSSOOO
PJJJJJJJEEEEESSSSSSSSHHHHHMMMMMMMMMMMNHHBNGGGGGGGGOOOTTTWWWWWWWWWWWWWWKKUULRRRRRRRRIIIIIDDDDRRRRROOOCOOOOOOOOOORRRRRRNRRJJJJJJDDDDDDDDOSSSSS
JJJJJJJJEEEEESSSSSSSSSSSHHMMMMMMMMMMMNNNNNYGGGGGGGOOOTTTWWWWWWSSSGSLLKKKUUURRRRRRRRIIIIDDDDDDRRRROOOOOOOOOOOOOORRROHONNJJJRJDDDDDDDKDOOOSSSS
JJJJJJJEEEEEEECCCCSCSHHHHMMMMMMMMMMMMNNNNNGGGGGGGGTOTTTTWWWWWWSSSSSLLKKKKUKRRRRRRRRIIIIIDDDDDDRRDOOODOOOOOOOOOOOOOOOONNNRRRRDDDDDRRRDOSSSSSS
JJJJJJJEEEEEECCCCCCCCHHHHMMMMMMMOHNNNNNNNNHGGGGGGGTTTTTTTTTOSSSSSSLLLLKKKKKRRRRRRRRIIIIIDDDDDDRRDDDDDDAAOOOOOOOOOOOOOONNRRRRRDKRDRRRROOSSSSS
BBBEEEEEEEEEECCCCCCCCCHHHMMMMMMMOONNNNNNHHHHGGGGGGGTTTTTTTTTTSSSSSLLLLKKKKKRRRRRRRRIIIIDDDDDDDDDDDDDDDAAOOOOOOOOOOOOOONNRRRRRRRRRRRRGOOOSSSS
BBBEEEEEEEECECCCCCCTTTHHHMMMMMMMOOOOKNHHHHHGGGGGGGTTTTTTTTTTLLSSLLLLLLLLLKKRRRRRRRRIIIIIILLLDDDDDDDDDDDAOOOOOOOOOOONNNNNRRRRRRRRRRRRGOGSSSSS
BBEEEEEEEECCCNCCCCCTTTTHHMMMMMMOOOOOOHHHHHHEEGGTTTTTTTTTTPPFPLLSLLLLLLLLLKKRRRRRRRRIIIIIILLDDDDDDDDDDDDAOVOOOTOOOOONNNJRRRRRRRRRRRRRGGGGSSSS
BEEEEEEZZCKCCCCCCCCTTTTHHMMMMMMOOOOOOOHHHHEEEETTTTPPTTTTTPPPPPLLLLLLLLLLLKKRRRRRRRRIIIIIILLLDDDDDDDDDDDDYVOYTTTOMMMMJJJJJRRRRRRRRRRRGGGGGSSS
BBBEEEEEZCCCCCCCCCCCCTTTTMMMMMMOOOOOOOOHHELEEEETTPPPTTPPTPPPPPLLLLLLLLLEEKKKKKKIIIIIWWIIIILLLDDDDDDDDDDDYYYYYTYYYMMMJJJJJJRRRRRRRRRRGGGGGSGH
BBBBEEEEEELCCCCMCCCCCIIIIMMMMMMOOOOOOOHHHEEEEEETTTPPPTPPPPPPPLLLLLLLLLEEEKKKKKUIIIEEEWEIIILLLDDDDDDDDDDDYYYYYYYYYMMJJJJJJRRRRRRRRRLRGGGGGGGH
BBBQMMEKKKMTTCMMCICICIIIIIIIOOOOOOOOOOOHHEGEEEETTPPPPPPPPPPPPLLPPLBLLEEEEKKKKUUUUEEWWWEEIILLLLDDDDDDDDDDYYYYYYYYYMMMJJJJJRRRRRRRRRLLLGNGGGGG
BBQQQMQKQQMMMCCMMIIIIIIIIIIOOOOOOOOOOOOHHGGGGEETTTGPPPPPPPPPPPPPPPPEEEEEKKKKKUUEEEEWWEEEELLLLDDDDDDDDDYYYYYYYYYYMMMJJJJJJRRRRRRRRRRLGGNGGGGG
BBQQQQQQQQMMMMMMMIIIIIIIIIIOOOOOOOOOOOOOHGGGGEEGGTGGPPPPPPPPPPPPPPPEEEEEEKKKLEEEEEEEEEEEELLLLLDDDDDDDTYYYYYYYMMMMMMJJJJJJRRRRRRRPPRLGGGGGGGG
BBQQQQQQQQQMMMMMMMIIIIIIIIIOOOOOOJJOUOUUGGGGGGGGGGGGGPPPPPPPPPPPPPPPEEEEEEEKLLEEEEEEEEEEEELLLLLDDDDDTTYYYYYYYMMMJJJJJJJJJJJRREEPPPPGGGGGGGGG
QQQQQQQQQQQQLMMMMMMIIIIIIJIOOOOOOJDUUUUUGGGGGGGGGGGGGPPPPPPPPPPPPPPPEEEEEEEELLLEEEEEEEEEEZZLLLLDDLDTTTTYYYYYYMMMMJVJJJJJJRJEEEEEPPPPGGGGGGGG
DQQQQQQQQQQMMMUUUMMIIIIIIIIDOOOODDDUUUUUUGGGGGGGGGGGGGGGGPPPPPPFPPPPEEEEEEELLLLEEEEEEEEEEZZZLLLLLLLLYYYYYYMMMMMMMVVVVJJJJJJTEPPPPPPPGGGGGGGG
DQQQQQQQQQQUUUUUIIMIIIIIDDDDDOODDDDUUUUUUGGGGGGGGGGGGGGGGGPPPPPPLPPXEEEEEEELLLLEEEEEEEEEEZZZLLLLLLLLLQQYMMMMMMMMMVVVJJJJTTTTEEPMPPPPGGGGGOGG
QQQQQQQQQQQUUUQUIIIIIIIIDDDDDODDDDUUUUUUGGGGGGGGGGGGGGGWGPPPPPPPLPPEEEEEEELLLEEEEEEEEEEEEEZZZLLLLLLLLLQQMMMMMMMMMVVTCJJLTTTTEEMMMPPPPPGGGOOU
QQQQQQQQQQQQQQQINIIIIIIDDDDDDDDDDDDUUUUUGGGGGGGGGGGGGGGGGPPPPPPLLLLLEEEELLLLEEEEEEEEEEEEWZZZZLLLLLLLLLMMMMMMMMMMMVVTTTTTTTTTTMMMMPPPPPPPOOUU
QQQQQQQQQQQQQIIIIIIIIIIDDDDDDDDDDDDDUUGGGGGGGGGGGGGGGGGGJJPPPPPPPLLLLLLLLLLLLEEEEEEEEEEEZZZZZLLLLLLLLPPPMMMMMMMMMVVVVTTTTTTTTCMMPPPPPPOPOOUU
QQQQQQQQQQQQRRIIIIISIIIDDDDDDDDDDDDDDDDRGGGGGGGGGGGGGGGJJJJJPJPPLLLLLLLLLLLLLLEEEEEEEEEEZEZZZLLLLLPPPPPMMMMMMMMMMMMMVVTTTTTTTMMMMMMOOOOOOOUU
`

flood_move :: proc(grid: [][]rune, r: int, c: int) -> int {
  num_plots := 0
  plant := grid[r][c]
  queue : [dynamic][2]int
  defer delete(queue)
  append(&queue, [2]int{r, c})
  
  buf := make([][]rune, len(grid))
  defer delete(buf)
  for i in 0..<len(grid) {
    buf[i] = make([]rune, len(grid[0]))
  }

  for {
    if len(queue) == 0 do break
    pos := pop_front(&queue)
    if pos[0] >= 0 && pos[0] < len(grid) && pos[1] >= 0 && pos[1] < len(grid[0]) {
      if grid[pos[0]][pos[1]] == '.' do continue
      if grid[pos[0]][pos[1]] != plant do continue
      grid[pos[0]][pos[1]] = '.'
      buf[pos[0]][pos[1]] = plant
      num_plots += 1
      append(&queue, [2]int{pos[0] - 1, pos[1]})
      append(&queue, [2]int{pos[0] + 1, pos[1]})
      append(&queue, [2]int{pos[0], pos[1] + 1})
      append(&queue, [2]int{pos[0], pos[1] - 1})
    }
  }

  perimeter := 0
  for r in 0..<len(grid) {
    for c in 0..<len(grid[0]) {
      if buf[r][c] == plant {
        dirs :: [][2]int{{-1, 0}, {0, -1}, {0, 1}, {1, 0}}
        for dir in dirs {
          if r + dir[0] >= 0 && r + dir[0] < len(grid) && c + dir[1] >= 0 && c + dir[1] < len(grid[0]) {
            if buf[r + dir[0]][c + dir[1]] != plant do perimeter += 1
          } else do perimeter += 1
        }
      }
    }
  }

  return num_plots * perimeter
}

main :: proc() {
  rows := strings.count(input, "\n")
  cols := strings.index(input, "\n")

  grid := make([][]rune, rows)
  for i in 0..<rows {
    grid[i] = make([]rune, cols)
  }

  for line, r in strings.split(input, "\n") {
    if line == "" do continue
    for ch, c in line {
      grid[r][c] = ch
    }
  }

  fencing_price := 0
  for r in 0..<rows {
    for c in 0..<cols {
      if grid[r][c] == '.' do continue
      fencing_price += flood_move(grid, r ,c)
    }
  }

  fmt.println("fencing price:", fencing_price)
}
