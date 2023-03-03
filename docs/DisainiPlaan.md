# Mängu disaini dokument

## Mängu disain

### Ülevaade
<p>Tegemist on 2D disainiga arvutimänguga algklassi lastele, mis arendab laste arvutamisoskust läbi mängu. Mängu saab mängida üksinda.</p>

### Mängu kirjeldus
<p>Mängija peab sisenema labürindi maja esimese taseme uksest, sisenedes uksest näeb järgmises ruumis tahvlil ülesannet, valib ülesande vastuse 3 valikvastuse seast. Sõltuvalt vastusest avaneb üks kolmest uksest, kuhu mängija edasi liigub. Ülesande läbimiseks peab lahendama 10 ülesannet, peale ülesannete lahendamist saab mängija teada oma teadmiste taseme.
Kui mängija vastab kõik ülesanded õigesti, siis saab järgmisele tasemele (järgmisse klassi). Kui vastab valesti, saab sama taseme ülesandeid uuesti otsast peale alustada niikaua, kui lõpuks kõik vastused õiged on. Iga kord peab sisenema labürindi uksest, mis on mängija jaoks avatud (alati võib ka madalama taseme uksest siseneda ja ülesandeid korrata). Juhul, kui madalama taseme ülesanded pole õigesti lahendatud, siis on järgmise taseme (klassi) uksed lukus.
</p>

<p>TODO!! Siia võib kiiruse eest punkte lisada, münte teenida vms.
</p>

<p>Esimene tase võiks välja näha umbes nii:</p>
<p>TODO!! lisada pilt</p>

### Mõtteviis
<p>Mäng ei tohi olla liiga keeruline, mängija peaks suutma ülesanded lahendada mõne korraga. Mängija peab tundma, et mängimise käigus õpib ja seetõttu on ka huvitatud edasi mängimisest. Mängutaseme edukal läbimisel kogub mängija boonuspunkte või münte.</p>

## Tehniline info

### Ekraanid
<ol>
    <li>Tiitelleht
    <ul>
        <li>Mängu sissejuhatav tekst</li>  
    </ul>
    </li>
    <li>Ukse ehk taseme/klassi valik. Alguses saab mängija valida esimese taseme, uuele tasemele saab siis, kui eelmise taseme ülesanded on õigesti lahendatud.</li>
    <li>Mäng
        <ul>
            <li>Mäng</li>  
            <li>Tulemuse kontroll/Punktid/Järgmine tase</li>  
        </ul>
    </li>
    <li>Lõputiitrid</li>
</ol>

### Juhtimine
<p>Mängija saab arvutis hiirega või puutetundliku ekraaniga seadmes näpuga vajutada valikvastusele.</p>

### Hindamine
<p>Mängija saab iga ülesande eduka lahendamise eest boonuspunkte, kui lahendab ülesande vähem kui 30 sekundiga. Igal tasemel peab lahendama 10 ülesannet, siis saab järgmisele tasemele.</p>

## Tasemete disain

### Tasemed

#### Esimene tase
<p>Mängija saab liita ja lahutada kümne piires.</p>

#### Teine tase
<p>Mängija saab liita, lahutada, korrutada ja jagada kahekümne piires.</p>

#### Kolmas tase
<p>...</p>

### Mängu käik

<ol>
    <li>Mängija valib ukse ehk taseme.</li>
    <li>Seejärel liigub uksest sisse ja lahendab ülesande. Ülesande vastuse valib 3 valikvastuse seast.</li>
    <li>Seejärel avaneb üks ustest, kuhu mängija saab edasi liikuda.</li>
    <li>Niimoodi saab lahendada 10 ülesannet järjest.</li>
    <li>Peale ülesannete lahendamist saab mängija teada, kui palju arvutusoskust tal on ja kas soovitatakse mäng veel läbi teha, kui tulemused polnud suurepärased.</li>
    <li>Ülesannete kordamiseks liigub mängija uuesti 1. taseme ukse juurde ja alustab mängimist.</li>
    <li>Peale kõikide ülesannete õigesti lahendamist saab mängija liikuda uuele tasemele.</li>
    <li>Mängija saab kiiresti lahendatud ülesannete eest boonuspunkte (10 ülesande kohta 30 sekundi jooksul 5 punkti jne). Boonuspunkte ei liideta, neid saab võrrelda eelmiste sooritustega.</li>
</ol>

## Arendus

### Mängumootor
<p>TODO!! Mängu mootor on Unity/Godot. Mängu elemendid kujundatakse Blenderis.
</p>

## Graafika

### Kujundus
<p>Mängus on kasutatud lastepärast kujundust - puhtaid värvitoone ja toredaid pilte.</p>
<p>TODO!! Fondiks on valitud:</p>
<p>TODO!! Värvid:</p>


## Heli

### Stiil
<p>Mängus kõlab mängimise ajal …..muusika, on mõned heliefektid, mis tekivad siis, kui mängija on saanud ülesande lahenduse vastuse - erinevate tulemuste korral kõlavad erinevad heliefektid. Taseme edukal läbimisel kõlab lõbus muusika. </p>

### Vajalikud heliefektid
<ol>
    <li>Madalaim sooritus</li>
    <li>Teine soorituse tase</li>
    <li>Kolmas soorituse tase</li>
    <li>Neljas soorituse tase</li>
    <li>Kõrgeim tase</li>
    <li>Saad järgmisse klassi</li>
    <li>Uste avamine</li>
    <li>Ülesande valikvastusele vajutamine</li>
    <li>Ülesannete lahendamise ajal mängiv muusika</li>
</ol>
<p></p>
