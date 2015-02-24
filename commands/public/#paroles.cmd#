#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

paroles="Je suis une poule je ponds des œufs pour œufs
Peu m'importe que tu ne parles pas, peu m'importe que tu n'aies pas de bras, tu danses, tu danses
30 giga ça prend beaucoup de place mais ça veut pas dire que tu es grosse
Salut, J'aimerais savoir comment faire une bonne purée
Les hommes se nourrissent d'animaux sauvages qu'ils chassent et de fruits qu'ils cueillent. On les appelle les chasseurs-cueilleurs.
Brigitte j'ai des sentiments
Mais ces sentiments, ces sentiments je les connais ?
Excuse moi mais c'est pas ça que j'avais demandé
Le problème avec ma purée c'est qu'elle n'est pas onctueuse
Peux-tu m'expliquer, comment obtenir une texture parfaite ? 
La purée onctueuse ce qu'il faut déjà
C'est pas trop la mélanger ou l'écraser
Puisque comme dans la purée il y a du gluten ça va devenir très élastique
L’utilisation du presse-purée à levier permet d’obtenir une purée plus fine et légère
Tout est dans la texture
Car la purée trop collante est vraiment très décevante
Pense à ça avant de cuisiner et tu réussiras une bonne purée
Tu verras, c'est plus facile que ça en a l'air
Et surtout après ça tu ne voudras plus d'une autre purée
J'ai 4 hommes à la maison et ils se régalent tous
Il n'en reste jamais !
Merci Nature d'être là, Super sympa
Quand le rythme s'accélère
De la pierre pierre pierre pierre pierre
Ces sentiments, c'est comme manger le fromage râpé avec les doigts ?
Je sais déjà faire la ratatouille, les endives au jambon, le gratin et plein d'autres plats qui n'ont rien à voir avec une bonne purée.
Quel est votre secret ?"

text=$(echo "$paroles" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
