# Mängumootorid


## Mängumootorite valiku analüüs

Valisime mängumootoriks: ?? :) 

<p>Mängumootori valikul pidasime oluliseks, et mängumootor oleks mängu loomine võimalikult lihtne:</p>

<ul>
  <li>mootoril oleks kasutajaliides koos 3d redaktoriga, mis võimaldaks luua animatsioone</li>
  <li>mängu oleks võimalik luua võimalikult vähese koodi kirjutamisega (visuaalne redaktor)</li>
  <li>mootor peaks võimaldama importi Blenderist</li>
  <li>mootor peab olema populaarne ka arendajate seas, mis annab tunnistust heast kasutatavusest ja piisavatest võimalustest ning suure kasutajate hulga korral on probleemide korral võimalik leida abi foorumitest</li>
  <li>dokumentatsioon peaks olema piisav</li>
  <li>mängumootori litsentsitingimused peavad võimaldada seda tasuta kasutada</li>
  <li>mootor peab võimaldama meeskonnatööd (GitHub)</li>
</ul>

<p>Tutvusime põgusamalt mitmete mängumootoritega:</p>

<ul>
  <li>Unity</li>
  <li>Unreal Engine</li>
  <li>Godot</li>
  <li>Game Maker Studio</li>
  <li>MelonJS</li>
  <li>ImpactJS</li>
</ul>

<p>JavaScripti põhised mängumootorid (MelonJS, ImpactJS) heitsime kõrvale kuna tundus, et seal tuleb kirjutada rohkem koodi kui teistes mootorites, mis teeb mängu loomise kohmakamaks ja aega nõudvamaks. Game Maker Studio sobis pigem 2d mängudele ning Unreal Engine oli liialt mahukas (liiga palju võimalusi ning nõuab ka võimsamat arvutit). </p>

<p>Sõelale jäid Godot ja Unity, mille vahel tegime valiku. Mõlemas mängumootoris on visuaalsed redaktorid, millega on võimalik luua mängu elemente ning anda neile omadusi (nt põrkedetektorid) ilma otseselt koodi kirjutamata, võimalik on luua animatsioone mänguelementidele, lisada heli, ning eksportida mängu sobilikku vormingusse.</p>

<p>Godot eelised:</p>
<ul>
  <li>Täielikult vabavara;</li>
  <li>pole vaja kontot;</li>
  <li>vähenõudlik tarkvara;</li>
  <li>head juhendid;</li>
  <li>lihtsad ja selged juhendid, kergesti leitavad.</li>
</ul>

<p>Godot puudused:</p>
<ul>
  <li>Paljud asjad (eksport, git) töötavad pluginatega, mida tuleb eraldi seadistada, ja see ei ole sageli lihtne (kuna neid kohti, kus seadistada on raske leida);</li>
  <li>Blenderi faile ei impordi, tuleb kasutada vahepealset formaati.</li>
</ul>

<p>Unity eelised:</p>
<ul>
  <li>Suur community, palju arendajaid, lihtsam leida probleemidele lahendusi</li>
  <li>palju kasutajad (45% mängudest luuakse Unity’s) - kui tulevikus on soov liituda mõne mängu arendajatega, siis on suur tõenäosus, et nad kasutavad Unity’t;</li>
  <li>palju juhendmaterjale;</li>
  <li>Blenderi import;</li>
  <li>palju erinevaid võimalusi.</li>
</ul>

<p>Unity puudused:</p>
<ul>
  <li>Vajab kontot</li>
  <li>pole vabavaraline;</li>
  <li>palju võimalusi, teeb algajale arusaamise keeruliseks;</li>
  <li>juhendmaterjalides esialgu raske orienteeruda (neid on palju ja pole hästi struktureeritud).</li>
</ul>



## Mängumootorite võrdlus

| Mängumootor | 2D/3D | Keeled   | Pro | Con |
| -----------   | ----------- | ----------- | ----------------- | ----------------- |
| Unity3D   | 2D/3D |C#, Javascript  |   |  |
| Unreal Engine   | 3D |C++  | Võimalus arendada tiimina  | Väikese mängu jaoks liiga suur, vajab võimsat arvutit |
| Godot   | 2D/3D |GDScript, C#, C++  | Nii visuaalne, kui tekstiline programmerimine,suudab eksportida HTML5 Võimaldab kasutada GIt’i, Väike allalaadimiseks (35MB), võimaldab, kompileerimine kõigile platvormidele  |  |
| GameMaker Studio   | 2D |  |   | Editor pole võrreldav Unity või Godot’ga |
| Armory   | 3D |  | Blenderiga integreeritud mängumootor  | Arendusjärgus, ebastabiilne |
| Defold   | 2D | Lua  |   |  |
| MelonJS   |  | JS  |   | Javascripti koodis ajamahukas töö |
| ImpactJS   | 2D | Javascript  | Level editor  |  |

Erinevad Javascriptiga tehtavad mängumootorid: [LINK](https://www.makeuseof.com/game-development-top-javascript-engines/)