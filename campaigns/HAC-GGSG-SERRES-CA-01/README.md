# ⚠️ À LIRE EN PREMIER — état au 2026-11-04 (remplace les règles plus bas)

**Aucun agent (Codex, Claude, tâche planifiée, Apollo) n'envoie de courriel de prospection.** Depuis le 2026-11-02, seul Felipe envoie, avec le bouton « 📧 Prospection HAC » (Apps Script) du Google Sheet, connecté à felipe@hortamericascanada.com. Les séquences Apollo et la tâche « Envoyer 20 prospects HAC » ne doivent plus envoyer.

Dans le Sheet, lire d'abord l'onglet **« LISEZ-MOI agents »**.

**Travail déjà fait — ne pas refaire :**
- Lot 2026-11-02 : 20 courriels envoyés (bouton).
- Lot 2026-11-03 : 20 courriels envoyés (bouton).
- Lot 2026-11-04 : 20 courriels rédigés, statut « Prêt — non envoyé », en attente du bouton de Felipe.
- Extraction Apollo « Apollo 2026-11 » faite le 2026-11-04 : 60 prospects ajoutés (Prospects HAC, lignes 349–408), dédoublonnés. 3 exclus, 57 actifs (20 dans le lot du 04, 37 pour les prochains lots). Ne pas relancer l'extraction ni révéler ces courriels de nouveau.

**Ne pas recontacter** un prospect si : col. Y (Date dernier envoi) remplie, col. AE (Arrêt) = TRUE, ligne dans « Journal échanges », état « Envoyé » dans un onglet Lot, adresse présente dans les Envoyés Gmail de felipe@hortamericascanada.com, ou statut « Planifié — Lot AAAA-MM-JJ (non envoyé) ».

**Règles de rédaction actuelles (Felipe, 2026-11-02) :** présentation de Felipe et Hort Americas Canada, expertise et aide, **aucun produit mentionné** (la section « Message » plus bas, avec GrowGenius/SafeGrow AG, est obsolète), personnalisation selon l'activité réelle du prospect, toujours terminer par une question, français pour les francophones et anglais pour les anglophones. La signature et le désabonnement sont ajoutés par le script.

**Ciblage :** Canada seulement (entreprise canadienne et contact basé au Canada; les É.-U. relèvent de la LLC). Exclus pour l'instant : distributeurs, cannabis, universités. Produits internes (colonnes Produit 1/2 seulement) : Aranet, GrowGenius (priorité tomates/poivrons), SafeGrow AG, Safe Disinfectant.

**Rôle d'un agent :** préparer un onglet « Lot AAAA-MM-JJ » (20 max par jour, même structure que les lots précédents), passer les prospects choisis au statut « Planifié — Lot AAAA-MM-JJ (non envoyé) », puis s'arrêter. En cas de doute, ne rien envoyer et demander à Felipe.

---

## Modèle maître — conclusion à inclure
FR : « Je vous invite à jeter un coup d’œil à notre site : https://hortamericascanada.com. Vous pouvez communiquer directement avec moi ou avec mon collègue Francis à francis@hortamericascanada.com; nous serons heureux de répondre à vos questions. Nous pouvons également vous accompagner dans vos projets d’éclairage horticole, un domaine dans lequel Hort Americas Canada possède une solide expérience. »
EN : “I invite you to take a look at our website: https://hortamericascanada.com. You can contact me directly or reach my colleague Francis at francis@hortamericascanada.com; we’ll be happy to answer your questions. We can also help with your horticultural lighting projects, an area where Hort Americas Canada has extensive experience.”
Cette conclusion vient après la présentation GrowGenius puis SafeGrow AG et avant la signature habituelle. Garder le ton individuel et personnalisé; utiliser seulement les détails d’entreprise vérifiés.

# Campagne de prospection HAC — GGSG-SERRES-CA-01

## Accès rapide
- Registre maître, contacts et journal : [Google Sheet](https://docs.google.com/spreadsheets/d/1FHNksrU1xBYiHywWCxEQJ2N0huDFlPfPg2iAxD3pOlQ/edit)
- Dépôt d’infrastructure : [Company-Infrastructure](https://github.com/azapata13/Company-Infrastructure)
- Onglets à consulter : « Programmation envois » (planning et statut), « Lot initial GGSG » (destinataires, IDs et textes individuels), « Journal échanges » (messages réellement envoyés/reçus), « Test A-B » (variantes), « Signature Felipe » (signature source).

## Décisions de campagne
- Cible : prospects seulement, serres commerciales de tout type et de toute taille, partout au Canada.
- Québec en français; reste du Canada en anglais.
- Objectif : 20 messages par jour ouvrable au total, relances autorisées comprises. Aucun contenu de relance n’est ajouté sans validation.
- Créneau convenu : 10 h 30, heure locale du prospect.
- Message : présentation personnelle de Felipe et Hort Americas Canada; GrowGenius d’abord (acide monosilicique stabilisé, assimilable, concentré, pH neutre, faible dose), puis SafeGrow AG (HOCl pour lignes et goutteurs; injection continue à faible dose selon protocole approprié). Invitation au site, signature habituelle et possibilité de désabonnement.
- Personnalisation : détail vérifié propre à l’entreprise, culture, localité et destinataire; ne jamais inventer.
- A/B : objet seulement; 10 A / 10 B dans le lot de 20.
- Toute réponse, désabonnement ou rebond arrête les envois à ce contact et déclenche une action humaine.
- Le Sheet est le registre opérationnel. Journal append-only; une ligne par message réellement envoyé ou reçu, avec identifiants, texte intégral, variante, horodatage et prochaine action.

## État vérifié — 2026-10-26
À 10 h 30 America/Toronto, Apollo affichait 20 messages en statut « scheduled » pour le 26 octobre : 18 EN et 2 FR. Les deux séquences EN/FR sont actives; leurs étapes sont approuvées et configurées à 14:30 UTC (10:30 Toronto). Les 20 contenus personnalisés concordent avec le Sheet, incluent GrowGenius avant SafeGrow AG, le site, une signature HTML et aucun crochet/gabarit résiduel. Répartition A/B : 10/10 dans le Sheet; les objets associés sont individualisés aux contacts. À l’instant du contrôle, les messages étaient programmés, pas encore constatés comme envoyés/livrés. La tâche « Suivi prospects HAC » est active pour retrouver et journaliser les messages liés par identifiants. « Envoyer 20 prospects HAC » est active les jours ouvrables.
- EN : séquence Apollo `6adbb0cfb9ca55000c6e09f4`, étape `6adbb0cfb9ca55000c6e09f5`, 18 contacts, horaire 14:30Z.
- FR : séquence Apollo `6adbf6ef25021a00144a91f0`, étape `6adbf6ef25021a00144a91f1`, 2 contacts, horaire 14:30Z.
- Trois contacts de l’Ouest sont en pause et hors quota du lot du 26 octobre.
- Le journal d’échanges est vide au contrôle; aucun faux envoi n’y a été inscrit.

## Historique des vérifications
### 2026-10-26 — préparation du premier lot
- Vérifié le Google Sheet, les séquences Apollo, les fenêtres d’envoi, les étapes, inscriptions et personnalisations par contact.
- Heure configurée : 10:30 America/Toronto pour ce lot. La configuration courante du calendrier Apollo seul est une fenêtre de bureau (8 h–17 h) avec fuseau de contact; elle ne fixe pas à elle seule 10:30. L’étape exacte du lot confirme l’heure.
- Résultat connu au contrôle : 20 programmés; livraison non encore observée.
- Suivi Gmail/Apollo prévu via tâche automatisée, basé sur identifiants explicites. Reprendre le Sheet comme source de vérité et ne pas déduire un envoi d’une simple programmation.

## Procédure de suivi
1. Avant le lot, relire quota, contacts, statut client/prospect, arrêt d’envoi, réponses et doublons dans le Sheet.
2. Confirmer pour chaque prospect l’entreprise, le courriel, la langue, le fuseau, la source de personnalisation, l’objet et le corps HTML.
3. Garder le total quotidien à 20, en comptant les messages déjà envoyés et programmés. Aucun contact déjà client.
4. Vérifier les étapes et contenus Apollo; ne jamais réinscrire un contact ou contourner une protection.
5. Après expédition réelle, ajouter le message au « Journal échanges » avec preuve et ID source. Importer chaque réponse avec son texte intégral, classification, prochaine action et état d’arrêt.
6. Relire le Sheet après chaque écriture. Toute réponse, désabonnement, rebond ou ambiguïté bloque les envois à ce contact et exige un suivi humain.
7. À chaque changement important, ajouter une entrée datée à l’historique ci-dessus et mettre à jour « Programmation envois » sans effacer les anciennes traces.

## Limites et points à surveiller
- « Scheduled » confirme la mise en file par Apollo, pas la livraison.
- La signature complète est conservée dans le Sheet; elle ne doit apparaître qu’une fois par message.
- Le journal de campagne reste vide jusqu’à observation d’un véritable message.
- Conserver ce guide court. Les données nominatives et le texte complet de chaque prospect restent dans le Sheet, pas dans Git.
