# Mängu disaini dokument

## Mängu disain

### Ülevaade
<p>Tegemist on 2D disainiga arvutimänguga algklassi lastele, mis arendab laste arvutamisoskust, eesti keele oskust ja loodusõpetuse teadmisi läbi mängu. Mängu saab mängida üksinda.</p>

### Mängu kirjeldus
<p>Mängija peab valima oma mängu tasemega ukse (1. klass, 2.klass jne), peale taseme valimist siseneb vastava taseme klassiruumi, sisenedes näeb tahvlil ülesannet, valib ülesande vastuse 3 valikvastuse seast, vastused on nähtavad ustel. Mängija liigub selle ukse juurde, kus arvab olevat õige vastuse. Juhul, kui vastus on õige, läheb uks roheliseks ja avaneb ning mängija liigub järgmisse ruumi. Juhul, kui vastus on vale, siis läheb uks punaseks ja ei avane. Mängija valib vastuseid niikaua, kuini leiab õige vastuse ja avaneb roheline uks. Ühe mängu läbimiseks peab lahendama 10 ülesannet, peale ülesannete lahendamist saab mängija teada oma teadmiste taseme ja valdkonna, kus ta teadmised on kõige paremad.
Kui mängijal oli valesid vastuseid, peab ta sama taseme mängu kordama niikaual, kui kõik vastused on õiged.Kui mängija vastab kõik ülesanded õigesti, siis saab ta liikuda järgmisele tasemele (järgmisse klassi). 
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
<p>Mängija saab vastata esimese klassi taseme ülesannetele.</p>

#### Teine tase
<p>Mängija saab vastata teise klassi taseme ülesannetele.</p>

#### Kolmas tase
<p>Mängija saab vastata kolmanda klassi taseme ülesannetele.</p>

### Mängu käik

<ol>
    <li>Mängija valib ukse ehk taseme.</li>
    <li>Seejärel liigub mängija uksest sisse ja lahendab ülesande. Ülesande valikvastused kuvatakse ustel, mängija valib õige vastuse liikudes ukse juurde.</li>
    <li>Juhul, kui vastus on õige, siis läheb uks roheliseks ning avaneb, mängija saab edasi liikuda järgmisse ruumi järgmise ülesande juurde.
    <li>Juhul, kui vastus on vale, siis läheb uks punaseks ning ei avane, mängija peab valima vastuseid niikaua, kuni saab õige vastuse ja siis edasi liikudajärgmise ülesande juurde. </li>
    <li>Nii peab lahendama 10 ülesannet järjest.</li>
    <li>Peale ülesannete lahendamist saab mängija teada oma teadmiste taseme ning valdkonna, kus tema teadmised on kõige paremad. Mängija peab vastava taseme mängu niikaua läbi tegema, kui kõik vastused on õiged.</li>
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
<p>Mängus kõlab mängimise ajal muusika, on mõned heliefektid, mis tekivad siis, kui mängija on saanud ülesande lahenduse vastuse - erinevate tulemuste korral kõlavad erinevad heliefektid, lisaks on sammude heli. Taseme edukal läbimisel kõlab lõbus muusika. </p>

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
    <li>Liikumise sammud</li>
</ol>
<p></p>
