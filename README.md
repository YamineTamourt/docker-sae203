# Instructions d'installation

- Cloner le référentiel :
```shell
git clone git@github.com:YamineTamourt/legende
```

- Aller au répertoire :
```shell
cd Gproject
```

- Construction du conteneur :
```
docker build -t legende .
```
- Lancer le service :
```
docker run -it -p 8000:8096 legende
```

- Copier le lien de la video ou playlist youtube à télécharger et qui sera dans la médaithèque, ou ne rien mettre pour obtenir la médiathèque d'exemple :

```
Entrer le lien de la playlist/video (vide pour generer la playlist d'exemple)
https://www.youtube.com/watch?v=ZA3Tym3SQTs
telechargement de la playlist/video ...
```
- Après le téléchargement, vérifier que l'application est en cours d'exécution. Pour ce faire, ouvrez un navigateur et tapez ```localhost:8000/```

- Choisir votre langue d'affichage, puis cliquer sur Prochain (ou Next en anglais) :

![demarrage](images/demarrage.png)

- Creer un nom d'utilisateur ainsi qu'un mot de passe, puis cliquer sur Prochain :

![compte](images/compte.png)

- Cliquer sur "+" pour ajouter une médiatheque :

![mediatheque](images/mediatheque.png)

- Ajouter un nom a votre mediatheque et cliquer sur "+" :

![nom](images/nom.png)

- Selectionner le répertoire "/media", puis cliquer sur OK et encore sur OK

![media](images/media.png)

- Cliquer sur Prochain

![prochain](images/prochain.png)

- Choisir une langue pour les métadonnées, puis cliquer sur Prochain

![metadonnees](images/metadonnees.png)

- Cliquer sur Prochain

![acces](images/acces.png)

- Cliquer sur Terminer

![termine](images/termine.png)

- Se connecter avec le compte utilisateur créé précédemment

![connection](images/connection.png)

- Voici donc les vidéos téléchargés

![fini](images/fini.png)
