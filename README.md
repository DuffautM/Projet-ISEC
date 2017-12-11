# Projet ISEC

## Cadrage du projet

### Charte du projet

#### Objectifs et enjeux

Pour notre 1ère année en cycle d'Ingénieur au sein de l'école **CESI.EXIA à Toulouse**, nous avons dû réaliser un projet en réseau. Ce projet avait pour but de nous faire réaliser une architeture d'annuaire avec installation de service reposant sur Active Directory et supervision des installations.

Pour ce projet, une entreprise, ISEC, ayant récemment acquis une filiale dans les télécoms souhaiterait rajouter cette dernière dans son réseau. La maison mère du groupe possède une forêt Active Directory dans laquelle se trouve le domaine isec-group.local. Il est contrôlé par 2 contrôleurs de domaine sous Windows Server : 1 principal et 1 réplica. L'ensembles des filiales déjà présentes sont aussi équipées de 2 contrôleurs de domaines. La nouvelle filiale télécom quant à elle, possède une forêt avec un domaine isec-telecom.local contrôlé par un unique contrôleur sous Windows Server.

### Cahier des charges 

#### Diagramme de cas d'utilisation

#### Besoins

Selon le sujet du projet, il nous est demandé de travailler en particulier sur seulement 2 domaines en particulier du réseau comme représenté sur le schéma suivant :

![Servers&Domains](/Livrables/Images/Servers&Domains.jpg)

Pour répondre aux attentes de l'entreprise, il est nécessaire d'implémenter les fonctionnalités suivantes :

1. Chaque service aura accès à son propre répértoire commun
2. Redirection du dossier Documents vers un répértoire personnel sur le contrôleur de domaine principal
3. Les imprimantes sont communes à tous les utilisateurs, quel que soit le groupe
4. Chaque service doit avoir son fond d'écran, indiquant le nom de la structure et le nom du service dans lequel se trouve l'utilisateur
5. Les mots de passe doivent se renouveler tous le 90 jours etfaire au minimum 8 charactères
6. Un employé peut tenter jusqu'à 3 essais de connexion avant que le compte utilisateur ne soit verouiller 
7. L'exécution automatique des périphériques amovibles doit être désactivée sur les postes
8. Actie Directory doit déployer le logiciel 7zip sur tous les postes
9. Une relation d'approbation doit être établie entre les 2 forêts, les utilisateurs du groupe principal peuvent accèder aux ressources du domaine de la filiale

De plus il est demandé par l'entreprise de mettre en place un système de supervision de notre choix. Ce système a pour but de surveiller la charge de travaile des serveurs du groupe Télécom et plus particulièrement :

* La charge CPU
* La mémoire
* L'espace disque
* Le traffic de la carte réseau
* Les interruptions du services DNS
* Les interruptions du services DHCP

#### Contraintes

### Planning

#### OBS

![OBS](/Livrables/Images/obs.jpeg)

#### PBS

![PBS](/Livrables/Images/pbs.jpeg)

#### WBS

![WBS](/Livrables/Images/wbs.jpeg)

#### PERT

![PERT](/Livrables/Images/pert.jpg)

#### GANTT

![GANTT](/Livrables/Images/gantt.jpg)

## Réalisation du projet

### Définition de l'architecture

#### Diagramme de composant

#### Diagramme de paquetage

### Sprint Meeting

#### Création d'une version

#### Panning Poker

## Clôture du projet

#### Evaluation de la vélocité

#### Bilan

#### Planning réel

### Annexes

## Outils

## Gestion des exigences

## Plannification