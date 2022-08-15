# Part: Het analyseren van Jumbo's belangrijkste metrics
id: load-transform-data
url: load-transform-data

## Description

Interpreteer snel de belangrijkste metrics van Jumbo met de meestgebruikte visualisaties.

## Welcome Message

Hi and welcome to the PowerBI Fundamentals course! This course is specially designed to offer a hands-on guided-learning approach that helps you meet your goals quickly, gain confidence, and learn at your own pace. 

## Summary Message

Congrats! You have successfully completed the first part of the PowerBI Fundamentals course! In the next parts we will further deep dive into developing your data-driven decision making skills!


### Section: Vergelijk omzet met staafdiagrammen
id: get-data
url: get-data

#### Exercise: Duik dieper in op omzet ########################
id: types-getdata
url: types-getdata
type: video
video: https://vimeo.com/733967891/38fe45ac6f

##### Content

<p>Hallo en welkom bij deze les over het vergelijken van omzet met staafdiagrammen.</p> 

<p>In het vorige hoofdstuk heb je meer geleerd over de meest gebruikte grafieken en welke grafiek het beste werkt in voor welke use case.
</p>

<p>In dit hoofdstuk gaan we hier dieper op in om beter te begrijpen hoe je met deze grafieken de belangrijkste metrics van Jumbo beter kunt begrijpen. Hierdoor kun je snel analyseren en de inzichten krijgen die je nodig hebt voor jouw beslissingen. In de eerste les focussen we op omzet en staafdiagrammen.</p>


<p>Zoals je kunt zien in de grafiek kunnen verticale grafieken worden gebruikt om de ontwikkeling van de omzet per week te laten zien, daarmee kun je de omzet vergelijken en de verschillen uitleggen.

Op de X-as vind je het weeknummer en op de Y-as de omzet.

Dit maakt het eenvoudig om wekelijkse omzet te vergelijken en snel te kunnen zien dat bijvoorbeeld week 15 met 12 miljoen euro de hoogste omzet had.
</p>

<p>Maar nadat je deze week-op-week analyse hebt gedaan ben je vast ook benieuwd welke Assortimentsclusters hebben bijgedragen aan de veranderingen.</p>

<p>Hiervoor zijn gestapelde staafdiagrammen of 100% gestapelde staafdiagrammen een goede oplossing, omdat ze deze verdieping duidelijk weergeven.</p>

<p>Andere opties voor het vergelijken van omzet zijn horizontale staafdiagrammen of geclusterde staafdiagrammen.

De belangrijkste reden om te beslissen welke grafiek je gebruikt is de inzichten waar je naar op zoek bent: de absolute waarde van de omzet van de Assortimentsclusters of de relatieve waarde.
</p>

<p>
Laten we nu naar een voorbeeld kijken en een niveau dieper gaan. Van Assortimentscluster naar Presentatiegroep, als we van Brood/VVP/BED/ZAV week 14 met week 15 vergelijken.

Hier kunnen watervalgrafieken ook waardevolle inzichten geven, omdat ze een duidelijk laten zien hoe de initiële waarde wordt beïnvloed door een serie aan positieve en negatieve waardes.

Daarnaast: als je met je cursor over elke Presentatiegroep gaat vind je meer details over de absolute en relatieve week-over-week veranderingen. 
</p>

<p>
Op dezelfde manier kun je nog dieper gaan: van Presentatiegroep naar Segment en van Segment naar Artikel niveau. 

Deze functionaliteit heet drill-down en hier gaan we in de volgende lessen dieper op in.
</p>

Maar laten we eerst een aantal oefeningen gaan doen met het lezen van staafdiagrammen en het analyseren van de wekelijkse veranderingen in omzet.
</p>

#### Exercise: Spot wekelijkse veranderingen in Assortimentsclusters
id: quiz-multichoice-demo
url: quiz-multichoice-demo
type: quiz
answer: 3

##### Content

<p>Als Assortmentmanager bij Jumbo ben je elke maandagochtend bezig met het analyseren van de wekelijkse omzet om deze te vergelijken met voorgaande weken en veranderingen uit te kunnen leggen. Hieronder vind je de wekelijkse omzet per Assortimentscluster:</p>

<p align="middle"><img src="/static/RevenuePresentatieGroup.png" alt="recursion" align="middle" style="max-width: 100%"></p>


##### Task: Ontdek wekelijkse veranderingen
type: multichoice
answer: 2

###### Question

<p>Analyseer de omzetverdeling hierboven. Welk Assortimentscluster had de hoogste bijdrage (absolute waarde) in de toename in omzet tussen week 14 en week 15?</p>


###### Option #1

<p>Zuivel drink houdb</p>

####### Option Feedback

<p>Weet je het zeker? Kijk nog eens naar de staafdiagram.</p>

###### Option #2

<p>Frisdranken</p>

####### Option Feedback

<p>Dat klopt! Frisdranken leverde een toename van 0.42 miljoen euro omzet in week 15 vergeleken met week 14.</p>

###### Option #3

<p>Brood VVP/BED/ZAV</p>

####### Option Feedback

<p>Ook al liet Brood VVP/BED/ZAV een sterke groei liet zien, dit Assortimentscluster had het niet de grootste bijdrage aan de totale groei.</p>

###### Hint

<p>Kijk naar de omzetverdeling hierboven. Welk Assortimentscluster had the hoogste bijdrage (absolute waarde) in de toename van de omzet in week 15 in vergelijking met week 14?.</p>


#### Exercise: Drill down op Presentatiegroep ###########
id: sales-by-month
url: sales-by-month
type: powerbi
video: https://vimeo.com/733967891/38fe45ac6f


##### Context

<p>In de vorige opdracht zag je dat het Frisdranken Assortimentscluster de hoogste bijdrage had aan de hogere omzet in week 15 in vergelijking met week 14.</p>

<p>In deze opdracht doen we een drill down van Assortimentscluster naar Presentatiegroep niveau om deze toename beter te begrijpen.</p>


##### Instructions

###### Step #1

<p>Open het <code>2.1_Consumentenomzet.pbx</code> dashboard uit de Exercise map.</p>


####### Step Hint 

<p>Om het dashboard te openen, klik op File -> Open report -> Browse reports en selecteer dan het <code>2.1_Consumentenomzet.pbx</code> dashboard.</p>


###### Step #2

<p>Ga naar de <code>Frisdranken WoW</code> pagina.</p>

<p>Kijk naar de wekelijkse omzet drill down op Presentatiegroep voor Frisdranken.</p>

####### Step Hint 

<p>Kijk nog eens naar de staafdiagram.</p>


##### Task
type: multichoice
answer: 1

###### Question

<p>Welke Presentatiegroep had de hoogste absolute bijdrage op de wekelijkse toename van Frisdranken?</p>

###### Option #1

<p>Cola</p>

####### Option Feedback

<p>Zeker! Cola had de hoogste absolute bijdrage met 160.000 euro omzet toename.</p>

###### Option #2

<p>Frisdrank</p>

####### Option Feedback

<p>Weet je het zeker? Kijk nog eens beter.</p>

###### Option #3

<p>Water</p>

####### Option Feedback

<p>Water had niet de hoogste bijdrage in de toename van de omzet, probeer het nog eens.</p>

###### Hint

<p>In deze grafiek zie je de bijdrage van Presentatiegroep op de veranderingen in wekelijkse Consumentenomzet van week 14 naar week 15.</p>

#### Exercise: Verdere drill down op Presentatiegroep ###########
id: sales-by-month2
url: sales-by-month2
type: powerbi
video: https://vimeo.com/733967891/38fe45ac6f

##### Context

<p>Als Assortimentsmanager ben je geïnteresseerd in zowel de absolute als de relatieve toename. In de vorige opdracht heb je alleen gekeken naar de absolute toename van week 14 naar week 15.</p>

<p>In deze opdracht kijken we ook naar de relatieve toename binnen de Presentatiegroep Frisdranken.</p>


##### Task: Identify weekly changes
type: multichoice
answer: 3

###### Question

<p>Je kijkt nu naar dezelfde grafiek als in de vorige opdracht. Welke presentatiegroep is  <b>relatief</b> het hardst gegroeid in week 15 ten opzichte van week 14?</p>


###### Option #1

<p>Cola</p>

####### Option Feedback

<p>Gotcha! Deze keer waren we op zoek naar de relatieve (%) groei, niet de absolute groei. Probeer het nog eens.</p>

###### Option #2

<p>Water</p>

####### Option Feedback

<p>Niet echt, kijk nog eens en probeer een ander antwoord!</p>

###### Option #3

<p>Frisdr gek</p>

####### Option Feedback

<p>Dat klopt! Met 24.22% was dit de hoogste omzettoename van week 14 naar week 15.</p>

###### Hint

<p>Als je met de cursor over de Presentatiegroep gaat zie je een tekstveld verschijnen. Onderin het tekstveld vind je de wekelijkse omzetverandering in %.</p>


### Section: Ontdek de omzettrends door de tijd
id: transform-data
url: transform-data

#### Exercise: Ontdek de omzettrends door de tijd###########################
id: power-query
url: power-query
type: video
video: https://vimeo.com/733967891/38fe45ac6f

#### Exercise: Adding or removing columns###########################
id: transform-02
url: transform-02
type: video
video: https://vimeo.com/654067950

#### Exercise: Changing data types ###########################
id: change-data
url: change-data
type: video
video: https://vimeo.com/654067950

#### Exercise: Splitting columns ###########################
id: split-data
url: split-data
type: video
video: https://vimeo.com/654067950

#### Exercise: Other tasks ###########################
id: other-data
url: other-data
type: video
video: https://vimeo.com/654067950


### Section: Laat productcategorieën zien
id: clean-data
url: clean-data

#### Exercise: Handling missing values###########################
id: miss-values
url: miss-values
type: video
video: https://vimeo.com/654067950

#### Exercise: Removing duplicates###########################
id: remove-dupli
url: remove-dupli
type: video
video: https://vimeo.com/654067950

#### Exercise: Tips and tricks ###########################
id: tips-tricks
url: tips-tricks
type: video
video: https://vimeo.com/654067950


