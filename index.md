# RAPPORT S2.03 Installation de services réseau

## Présentation du projet

Lors de cette SAE nous avions le choix de notre projet. Cela nous a offert de très nombreuses possibilités, c’est pourquoi nous nous somme penchés sur un site de stockage vidéos, ainsi qu’un système pour télécharger ou visionner ses dernières. 

Nous avons fait ce choix car cela arrive que certaines vidéos ou playlists sur Youtube se fassent supprimer, nous voulions donc proposer une solution pour pouvoir stocker une version d'une playlist à un instant t dans un serveur et de pouvoir y acceder facilement.

Afin de réaliser ce projet nous avons utilisé les logiciels suivant : 

- Docker : une plateforme conçue pour lancer des applications ;
- GitHub : une plateforme de développement ;
- Jellyfin : un serveur d'hebergement de fichier multimédia ;
- Youtube-dl : un gestionnaire de téléchargement vidéo et audio de YouTube ;

## Les étapes du projets

Pour commencer le projet nous avons tout d’abords répartis le projet en différentes étapes. En premier lieu il a fallut créer un répertoire GitHub pour l’équipe, et en attribuer les droits de lecture et d’écriture à nos membres. 

A l'origine, nous avons fait un serveur Apache avec un script bash qui récupèrait la playlist à téléchager ou non et un programme Java qui, à partir d'un .data généré par un autre script bash, créait une page HTML avec chaque vidéos avec son titre, son auteur, sa date et sa description. Ce projet est disponible [ici](https://github.com/YamineTamourt/Gproject).

Mais, car le serveur Apache était déjà un exemple du cours, nous nous sommes tournés vers le serveur jellyfin.

Dans notre Dockerfile, nous avons dût installer youtube-dl et jellyfin sur notre image Debian en suivant les tutoriels disponible sur Tnternet, puis il fallait deplacer les videos d'exemples dans le répertoire /media, et enfin, faire en sorte de lancer à la création du conteneur la commande qui lance le serveur jellyfin, et notre script bash qui récupère la playlist à téléchager ou non et à l'envoyer dans le répertoire /media.

L'inconvénient de ce projet est que nous n'avons pas les métadonnées des vidéos comme sur le projet avec le serveur Apache.

## Membre du groupe 

Groupe 25

- C TAMOURT Yamine
- C LETOURNEAU Thomas
- C CELLIER Florian
- D PASTEL Kellian
