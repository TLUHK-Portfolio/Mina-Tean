# Mängu Mina Tean! disaini dokument

## Mängu disain

### Ülevaade
<p>Tegemist on 2D disainiga arvutimänguga algklasside lastele, mis arendab laste 
arvutamisoskust, eesti keele oskust ja loodusõpetuse teadmisi läbi mängu. 
Mängu saab mängida üksinda.</p>
<p>Mäng on mõeldud eelkõige lastele, kes on eakaaslastest arengus ees ja saavad koolis 
vähem tähelepanu. See on hea tööriist algklasside õpetajatele, kes saavad mängu
pakkuda edasijõudnud õpilastele kaasava hariduse pakkumiseks. Mängus kasutame 
väiketähti, kuna edasijõudnud õpilased tunnevad neid.</p>

### Mängu kirjeldus
<p>Mängija peab valima oma mängu tasemega tahvli (1. klass, 2.klass jne ), esimesel 
korral saab valida kõige madalama tasemega tahvli. Peale taseme valimist siseneb 
mängija vastava taseme klassiruumi, näeb tahvlil ülesannet ja valib küsimuse all oleva 
ülesande vastuse kolme valikvastuse seast. Juhul, kui vastus on õige, läheb vastuse
tahvel roheliseks ja uks avaneb ning mängija liigub järgmisse ruumi. 
Juhul, kui vastus on vale, siis läheb vastuse tahvel punaseks ja uks ei avane ning ukse
vahelt piilub sõbralik koll.</p> 
<p>Mängija valib vastuseid niikaua, kuini leiab õige vastuse ja uks avaneb.
Iga vastuse eest saab ühe karika - kas kuld-, hõbe- või pronkskarika. Karika värv
sõltub vastamise järjekorrast - kui mängija vastab esimesel korral õigesti, siis
saab kuldkarika, kui teisel korral, siis hõbekarika ja kolmandal korral pronkskarika.</p>
<p>Ühe mängu läbimiseks peab mängija lahendama 12 ülesannet (iga teema kohta 4), 
peale ülesannete lahendamist saab mängija diplomi, kus on info vastavalt karikate värvile 
tema teadmiste taseme kohta igas valdkonnas ning teave, kas ta peaks
veel harjutama või on tulemus nii hea, et saab juba järgmisele tasemele.
Iga valdkonna juurde ilmuvad karikad vastavalt, mitmendal korral ülesanne õigesti vastati.
Kui mängijal ei ole hea tulemus, peab ta järgmisele tasemele saamiseks sama taseme 
mängu kordama niikaua, kuni tulemus paraneb.
</p>

<p>Esileht võiks välja näha umbes nii: ![esileht](https://github.com/tluhk/rif21-MM-praktika-3/blob/master/docs/design/images/Esilehe%20variandid/esimene%20leht%2009.04.2023%20FHD.png)</p>



### Mõtteviis
<p>Mäng ei tohi olla liiga keeruline, mängija peaks suutma ülesanded lahendada 
mõne korraga. Mängija peab tundma, et mängimise käigus õpib ja seetõttu on ka 
huvitatud edasi mängimisest. Mängu edukal läbimisel võidab mängija kuldseid karikaid rohkem, kui
hõbedasi või pronkse, kehvema tulemuse korral saab mängu korrata. Mängu edukal läbimisel 
saab mängida järgmisel tasemel.</p>

## Tehniline info

### Ekraanid
<ol>
    <li>Tiitelleht
    <ul>
        <li>Mängu sissejuhatav tekst</li>  
    </ul>
    </li>
    <li>Taseme/klassi valik tahvlilt. Alguses saab mängija valida esimese taseme, 
uuele tasemele saab siis, kui eelmise taseme ülesanded on hästi lahendatud.</li>
    <li>Mäng
        <ul>
            <li>Ülesanded erinevates klassides</li>  
                    </ul>
    </li>
<li>Lõpuekraan
        <ul>
            <li>Diplom/Tulemuse kontroll/Karikate värvid vastavalt tasemele/Järgmine tase</li>  
        </ul>
    </li>
    
</ol>

### Juhtimine
<p>Mängija saab arvutis hiirega.</p>

### Hindamine
<p>Mängija saab iga ülesande eduka lahendamise eest karika, kui lahendab 
üleesimesel korral õigesti, saab kuldse karika, kui teisel korral, siis hõbedase,
kui kolmandal korral, siis pronkskarika. Igal tasemel peab lahendama 12 ülesannet
heade tulemustega, siis saab järgmisele tasemele.</p>

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
    <li>Seejärel liigub mängija klassi uksest sisse ja lahendab ülesande. Ülesande 
valikvastused kuvatakse tahvlil, mängija valib õige vastuse vajutades tahvlile.
</li>
    <li>Juhul, kui vastus on õige, siis läheb vastuse tahvel roheliseks ning uks avaneb, 
mängija saab edasi liikuda järgmisse ruumi järgmise ülesande juurde.
    <li>Juhul, kui vastus on vale, siis läheb vastuse tahvel punaseks ning ei 
avane, mängija peab valima vastuseid niikaua, kuni saab õige vastuse et siis edasi 
liikuda järgmise ülesande juurde. </li>
<li>Õige vastuse korral saab mängija karika - esimesel korral õigesti vastates
kuldse karika, teisel korral hõbedase karika, kolmandal korral pronkskarika.
Karikaid kuvatakse tahvli all riiulis, karikate arvu järgi on näha, kui paljudele
küsimustele on juba vastatud ja kui palju on veel vaja vastata mängu lõpuni.
</li>
    <li>Nii peab lahendama 12 ülesannet järjest.</li>
    <li>Peale ülesannete lahendamist saab mängija teada oma teadmiste üldise taseme 
ning valdkonna, kus tema teadmised on kõige paremad. Mängija peab vastava taseme 
mängu niikaua läbi tegema, kui kõik tulemus on hea.</li>
    <li>Ülesannete kordamiseks liigub mängija uuesti 1. taseme ukse juurde ja 
alustab mängimist.</li>
    <li>Peale heade tulemuste saavutamist saab mängija liikuda 
uuele tasemele.</li>
    
</ol>

## Arendus

### Mängumootor
<p>Mängu mootor on Godot. Mängu elemendid kujundatakse Blenderis ja Affinity 
Designeris.</p>

## Graafika

### Kujundus
<p>Mängus on kasutatud lastepärast kujundust - rõõmsaid värvitoone ja toredaid pilte.</p>
<p>Fondiks on valitud: Nunito-SemiBold</p>
<p>Värvid:
<ol>
   <li>roheline tahvel #7B811D</li>
   <li>tumeroheline tekst #004259</li>
   <li>kollane taust #FAFDC8</li>
   <li>oranz #D86604</li>
</ol>
</p>

## Heli

<p>Vale vastuse ja õige vastuse puhul tekivad erinevad heliefektid, lõpuekraanil kõlab
tilin, taustaks mängib rahulik muusika.</p>

### Stiil
<p>Mängus kõlab mängimise ajal muusika, on mõned heliefektid, mis tekivad siis, 
kui mängija on saanud ülesande lahenduse vastuse - erinevate tulemuste korral 
kõlavad erinevad heliefektid. Taseme edukal läbimisel kõlab lõbus muusika. </p>

### Vajalikud heliefektid
<ol>
    <li>Ülesannete lahendamise ajal mängiv muusika</li>
    <li>Õige vastuse heli</li>
    <li>Vale vastuse heli</li>
    <li>Diplomi/mängu tulemuse heli</li>
    </ol>
<p></p>
