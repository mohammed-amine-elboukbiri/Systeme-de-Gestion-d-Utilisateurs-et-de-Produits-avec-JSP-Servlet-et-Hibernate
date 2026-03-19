# 📦 Inventory Manager — Jakarta EE

Une application web de gestion d'inventaire construite avec **Jakarta EE**, suivant le pattern **MVC** et s'appuyant sur **Hibernate** comme ORM.

---

## 📸 Structure du projet

<img width="316" height="966" alt="structure" src="https://github.com/user-attachments/assets/01b30cf3-c163-4768-a2a9-ad47c6dd1d3b" />


---

## 🎬 Démonstration


https://github.com/user-attachments/assets/5a403b93-902c-4272-9671-e43c576ca64e



---


## 🗂 Aperçu

Cette application permet de gérer deux entités principales :

| Entité | Opérations disponibles |
|---|---|
| 👤 Utilisateurs | Créer, Lire, Modifier, Supprimer |
| 🛒 Produits | Créer, Lire, Modifier, Supprimer |

L'interface est construite avec **JSP** et **Bootstrap**, offrant une navigation simple et une expérience utilisateur fluide.

---

## 🛠 Technologies utilisées

| Couche | Technologie |
|---|---|
| Présentation | JSP, Bootstrap |
| Contrôleur | Jakarta Servlets |
| Persistance | Hibernate (ORM) |
| Base de données | MySQL|
| Serveur d'application | Apache Tomcat |
| Build | Maven |

---

## 🏗 Architecture

Le projet suit le modèle **MVC (Model-View-Controller)** avec une séparation claire des responsabilités :

```
┌─────────────┐     ┌──────────────┐     ┌─────────────────┐
│  Vue (JSP)  │────▶│  Contrôleur  │────▶│  Modèle / DAO   │
│  Bootstrap  │◀────│  (Servlets)  │◀────│  (Hibernate)    │
└─────────────┘     └──────────────┘     └─────────────────┘
```

- **Vue** : pages JSP rendues côté serveur, stylisées avec Bootstrap.
- **Contrôleur** : Servlets Jakarta EE qui reçoivent les requêtes HTTP et orchestrent la logique.
- **Modèle / DAO** : un DAO générique factorise les opérations CRUD de base ; des DAOs spécifiques étendent ce générique pour chaque entité.
- **SessionFactory** : initialisée au démarrage via un `ServletContextListener`.

---

## ✨ Fonctionnalités

- ✅ CRUD complet sur les **Utilisateurs** et les **Produits**
- ✅ DAO générique réutilisable
- ✅ Configuration centralisée d'Hibernate
- ✅ Initialisation de la `SessionFactory` via un Listener
- ✅ Mapping objet-relationnel avec annotations Hibernate
- ✅ Interface responsive avec Bootstrap

---
