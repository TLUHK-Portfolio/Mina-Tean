# Mängu disaini dokument

## Mängu disain

### Ülevaade
<p>Tegemist on 2D disainiga arvutimänguga algklasside lastele, mis arendab laste arvutamisoskust, eesti keele oskust ja loodusõpetuse teadmisi läbi mängu. Mängu saab mängida üksinda.</p>

### Mängu kirjeldus
<p>Mängija peab valima oma mängu tasemega ukse (1. klass, 2.klass jne ), esimesel 
korral saab valida ainult madalama taseme. Peale taseme valimist siseneb vastava 
taseme klassiruumi, näeb tahvlil ülesannet ja valib ülesande vastuse tahvlil 3 
valikvastuse seast. Juhul, kui vastus on õige, läheb vastuse tahvel roheliseks ja 
uks avaneb ning mängija liigub järgmisse ruumi. 
Juhul, kui vastus on vale, siis läheb vastuse tahvel punaseks ja uks ei avane. 
Mängija valib vastuseid niikaua, kuini leiab õige vastuse ja uks avaneb.
Ühe mängu läbimiseks peab lahendama 15 ülesannet (iga teema kohta 5), peale ülesannete lahendamist saab 
mängija teada oma teadmiste taseme ja valdkonna, kus ta teadmised on kõige paremad.
Kui mängijal oli valesid vastuseid, peab ta sama taseme mängu kordama niikaual, 
kui kõik vastused on õiged. Kui mängija vastab kõik ülesanded õigesti, siis 
saab ta liikuda järgmisele tasemele (järgmisse klassi). 
Mängija saab alguses 5 "elu", juhul, kui vastab valesti, siis kaotab elusid. 
0 "eluga" peab mängu otsast alustama.
</p>

<p>TODO!! Siia võib kiiruse eest punkte lisada, münte teenida vms.
</p>

<p>Esimene tase võiks välja näha umbes nii:</p>
<p>TODO!! lisada pilt</p>

### Mõtteviis
<p>Mäng ei tohi olla liiga keeruline, mängija peaks suutma ülesanded lahendada 
mõne korraga. Mängija peab tundma, et mängimise käigus õpib ja seetõttu on ka 
huvitatud edasi mängimisest. Mängutaseme edukal läbimisel kogub mängija 
boonuspunkte või münte.</p>

## Tehniline info

### Ekraanid
<ol>
    <li>Tiitelleht
    <ul>
        <li>Mängu sissejuhatav tekst</li>  
    </ul>
    </li>
    <li>Taseme/klassi valik tahvlilt. Alguses saab mängija valida esimese taseme, 
uuele tasemele saab siis, kui eelmise taseme ülesanded on õigesti lahendatud.</li>
    <li>Mäng
        <ul>
            <li>Mäng</li>  
            <li>Tulemuse kontroll/Punktid/Järgmine tase</li>  
        </ul>
    </li>
    <li>Lõputiitrid</li>
</ol>

### Juhtimine
<p>Mängija saab arvutis hiirega või puutetundliku ekraaniga seadmes näpuga 
vajutada valikvastusele.</p>

### Hindamine
<p>Mängija saab iga ülesande eduka lahendamise eest boonuspunkte, kui lahendab 
ülesande vähem kui 30 sekundiga. Igal tasemel peab lahendama 15 ülesannet, 
siis saab järgmisele tasemele.</p>

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
    <li>Mängija valib tahvlilt klassi/taseme.</li>
    <li>Seejärel liigub mängija uksest sisse ja lahendab ülesande. Ülesande 
valikvastused kuvatakse tahvlil, mängija valib õige vastuse vajutades tahvlile.
</li>
    <li>Juhul, kui vastus on õige, siis läheb vastuse tahvel roheliseks ning uks avaneb, 
mängija saab edasi liikuda järgmisse ruumi järgmise ülesande juurde.
    <li>Juhul, kui vastus on vale, siis läheb vastuse tahvel punaseks ning ei 
avane, mängija peab valima vastuseid niikaua, kuni saab õige vastuse et siis edasi 
liikudajärgmise ülesande juurde. </li>
    <li>Nii peab lahendama 15 ülesannet järjest.</li>
    <li>Peale ülesannete lahendamist saab mängija teada oma teadmiste taseme (15/15) 
ning valdkonna, kus tema teadmised on kõige paremad. Mängija peab vastava taseme 
mängu niikaua läbi tegema, kui kõik vastused on õiged.</li>
    <li>Ülesannete kordamiseks liigub mängija uuesti 1. taseme ukse juurde ja 
alustab mängimist.</li>
    <li>Peale kõikide ülesannete õigesti lahendamist saab mängija liikuda 
uuele tasemele.</li>
    <li>Mängija saab kiiresti lahendatud ülesannete eest boonuspunkte (15 ülesande 
kohta 30 sekundi jooksul 5 punkti jne). Boonuspunkte ei liideta, neid saab 
võrrelda eelmiste sooritustega.</li>
</ol>

## Arendus

### Mängumootor
<p>Mängu mootor on Godot. Mängu elemendid kujundatakse Blenderis ja Affinity 
Designeris.</p>

## Graafika

### Kujundus
<p>Mängus on kasutatud lastepärast kujundust - rõõmsaid värvitoone ja toredaid pilte.</p>
<p>TODO!! Fondiks on valitud:</p>
<p>TODO!! Värvid:
<ol>
   <li>roheline tahvel #7B811D</li>
   <li>tumeroheline tekst #004259</li>
   <li>kollane taust #FAFDC8</li>
   <li>oranz #D86604</li>
</ol>
</p>

## Heli

### Stiil
<p>Mängus kõlab mängimise ajal muusika, on mõned heliefektid, mis tekivad siis, 
kui mängija on saanud ülesande lahenduse vastuse - erinevate tulemuste korral 
kõlavad erinevad heliefektid. Taseme edukal läbimisel kõlab lõbus muusika. </p>

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
    <li>Hea soorituse heli</li>
    <li>Liikumise sammud</li>
</ol>
<p></p>
