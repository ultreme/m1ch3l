#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

paroles="Jeanne d'arc est le symbole de la femme au foyer
Si Jeanne d'arc avait du diabète ça aurait senti le caramel dans tout Rouen
Quel est la différence entre un chameau et un dromadaire ?
On dit que Mozart est mort mais quand tu ouvres ton frigo Mozart est là !
C'est l'histoire de paf le chien qui traverse la rue. Et paf le chien.
C'est une blague à 2 balles. Pan! Pan!
C'est l'histoire d'un schtroumpf qui court, qui tombe et qui se fait un bleu.
C'est l'histoire d'un petit manchot qui veut du chocolat mais pas de bras pas de chocolat.
C'est l'histoire d’un pingouin qui respire par les fesses, Un jour il s'assit et il meurt .
C'est l'histoire du ptit dej, vous la connaissez ? Pas de bol.
C'est l'histoire d'une blague vaseuse. Mets tes bottes.
C'est l'histoire de l'eunuque décapité. Une histoire sans queue ni tête.
C'est l'histoire d'un mec qui a 5 penis. Son slip lui va comme un gant.
Qu'est ce qui fait toin-toin ? Un tanard.
Deux asticots se retrouvent dans une pomme; Tiens ! Je na savais pas que vous habitiez le quartier !
C'est l'histoire d'un mec qui rentre dans un café. Et plouf.
Je suis inquiet, je vois des points noirs. Tu a vu l'oculiste ? Non, des points noirs ! 
Quel est la différence entre un vieux pneu et 365 capotes usagées ? Aucune, it was a good year !
Je connais un type, il est tellement petit que ses cheveux sentent les pieds !
Vous connaissez l'histoire de toto aux toilettes ? Non c'est normal il avait fermé la porte à clé !
Docteur, je ne suis pas malade. Ca tombe bien, je ne suis pas docteur !
Vous connaissez l'histoire du lit vertical? C'est une histoire à dormir debout.
Connaissez-vous la blague de la chaise? Elle est pliante.
Comment ramasse-t-on la papaye? Avec une foufourche
Deux tomates traversent la rue, une des deux se fait écraser et l'autre dit 'Alors tu viens, Ketchup'.
C'est un citron et une vache qui font un hold up, le citron dit : Plus un zeste ! La vache se retourne sur les otages et rajoute Que personne ne bouze !
Que fait Jean Claude Van Damme quand il rentre dans sa voiture ? Il fout le contact !
Qu'est ce qui est transparent et qui court dans un champ ? Un troupeau de vitres !
Un mec demande à son copain : Qu'est ce que ça veut dire : I don't know ? Et l'autre répond : Je ne sais pas.
Quelle est la différence entre un oeuf et un peigne ? Le peigne ne se mange pas.
Un monsieur très radin dit à ses enfants : si vous êtes gentils ce soir, je vous montrerai la photo de quelqu'un qui mange de la glace.
Pourquoi les aiguilles sont-elles moins intelligentes que les épingles? Parce qu'elles n'ont pas de tête.
Pourquoi la mariée change de couleur le jour de son mariage ? Parce que le matin elle est en blanc, et le soir elle est en foncé.
Un gendarme fais stopper une automobiliste. Vous n'aviez pas vu le feu rouge ? Si, c'est vous que je n'avais pas vu !
Pourquoi les pompiers portent des bretelles rouges ? Réponse : C'est pour tenir leur pantalon !
Qu'est-ce qui fait nioc-noic ? Un canard qui essaye de parler le verlan.
Vous saviez que les girafes n'existent pas ? c'est un cou monté !
Qu'est-ce qui fait 'zzzb, zzzb,...' ? Une mouche qui vole à l'envers
C'est l'histoire de Poum l'éléphant qui traverse la rue et... poum la voiture !
Un homme tend un verre d'aspirine à sa femme. Mais je n'ai pas la migraine. Ah, alors on peut faire l'amour
Qu'est ce qui est vert et qui se déplace sous l'eau? Un choux marin.
Tu prends un fruit exotique, genre kiwi, et une vache. Tu prends les deux, ça fait la vache kiwi...
Quelle est la différence entre un meuble et un autre meuble identique ? Il ny'en a pas...
Mc Gyver se retrouve enfermé dans une toure qui va explose, il a à sa disposition une balle de ping-pong, du magnésium et un pot de peinture. Comment se sauve-t-il? En delta-plane...
Comment reconnait-on un voyou très très con? C'est le seul qui se bat avec un rasoir electrique.
Qu'est-ce qui est rouge et qui porte une cape ? Super Banane biensûr !
Quelle est la différence entre tintin et milou ? Ben milou n'a pas de chien !
C'est Carlos et Pavaroti qui sont sur un bateau. Le bateau coule.
C'est l'histoire du nain aux 26 enfants. Elle est courte mais elle est bonne."

text=$(echo "$paroles" | sort -R | head -1)

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
