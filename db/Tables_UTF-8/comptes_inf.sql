
INSERT INTO comptes_inf (sous_comptes_id, name, nbr, description)
VALUES
(1, 'Capital souscrit, non appele', '1011', 'Montant du capital que les actionnaires se sont engages a verser mais qui n''a pas encore ete demande par l''entreprise.'),
(1, 'Capital souscrit, appele, non verse', '1012', 'Montant du capital qui a ete demande par l''entreprise mais qui n''a pas encore ete verse par les actionnaires.'),
(1, 'Capital souscrit, appele, verse, non amorti', '1013', 'Montant du capital qui a ete verse par les actionnaires mais qui n''a pas encore ete affecte a des actifs specifiques.'),
(1, 'Capital souscrit, appele, verse, amorti', '1014', 'Montant du capital qui a ete verse par les actionnaires et qui a ete affecte a des actifs specifiques.'),
(1, 'Capital souscrit soumis a des conditions particulieres', '1018', 'Montant du capital qui est soumis a des conditions specifiques enoncees dans les statuts de l''entreprise.'),

(2, 'Dotation initiale', '1021', 'Montant initial alloue a un fonds, une reserve ou un compte specifique.'),
(2, 'Dotations complementaires', '1022', 'Montant ajoute a un fonds, une reserve ou un compte specifique apres la dotation initiale.'),
(2, 'Autres dotations', '1028', 'Montant ajoute a un fonds, une reserve ou un compte specifique pour des raisons autres que la dotation initiale ou les dotations complementaires.'),

(4, 'Apports temporaires', '1041', 'Montant apporte temporairement a l''entreprise pour repondre a des besoins specifiques et qui sera restitue ulterieurement.'),
(4, 'Operations courantes', '1042', 'Charges liees aux operations habituelles de l''entreprise, y compris les frais generaux et les depenses operationnelles.'),
(4, 'Remunerations, impots et autres charges personnelles', '1043', 'Depenses liees a la remuneration du personnel, aux impots sur le revenu et autres charges personnelles.'),
(4, 'Prelevements d''autoconsommation', '1047', 'Biens ou services preleves par l''entreprise pour ses propres besoins internes.'),
(4, 'Autres prelevements', '1048', 'Tout autre prelevement effectue par l''entreprise pour des raisons specifiques non couvertes par les autres comptes.'),

(5, 'Primes d''emission', '1051', 'Montants recus par une entreprise lors de l''emission d''actions au-dessus de la valeur nominale.'),
(5, 'Primes d''apport', '1052', 'Montants recus en plus de la valeur nominale lorsqu''un actif est apporte a une entreprise.'),
(5, 'Primes de fusion', '1053', 'Montants recus en plus de la valeur nominale lorsqu''une entreprise fusionne avec une autre.'),
(5, 'Primes de conversion', '1054', 'Montants recus en plus de la valeur nominale lors de la conversion de valeurs mobilieres en actions.'),
(5, 'Autres primes', '1058', 'Toutes autres primes qui ne sont pas specifiquement classees dans les categories precedentes.'),

(6, 'ecarts de reevaluation legale', '1061', 'Differences positives entre la valeur reevaluee d''un actif et sa valeur comptable initiale, conformement a des dispositions legales specifiques.'),
(6, 'ecarts de reevaluation libre', '1062', 'Differences positives entre la valeur reevaluee d''un actif et sa valeur comptable initiale, effectuee librement par l''entreprise.'),

(10, 'Reserves de plus-values nettes a long terme', '1131', 'Montant accumule des benefices non distribues provenant de la vente d''actifs a long terme a un prix superieur a leur valeur comptable.'),
(10, 'Reserves d''attribution gratuite d''actions au personnel salarie et aux dirigeants', '1132', 'Montant des benefices non distribues attribues sous forme d''actions gratuites aux salaries et aux dirigeants de l''entreprise.'),
(10, 'Reserves consecutives a l''octroi de subventions d''investissement', '1133', 'Montant des benefices non distribues provenant de subventions specifiquement destinees a des investissements.'),
(10, 'Reserves des valeurs mobilieres donnant acces au capital', '1134', 'Montant des benefices non distribues lies a des valeurs mobilieres (actions, obligations convertibles) qui donnent acces au capital de l''entreprise.'),
(10, 'Autres reserves reglementees', '1138', 'Autres montants de benefices non distribues soumis a des reglementations specifiques.'),

(11, 'Reserves facultatives', '1181', 'Montant des benefices non distribues qui ont ete mis de cote de maniere discretionnaire par la direction de l''entreprise.'),
(11, 'Reserves diverses', '1188', 'Autres montants de benefices non distribues mis de cote pour differentes raisons et non specifiquement reglementes.'),

(13, 'Perte nette a reporter', '1291', 'Montant cumulatif des pertes nettes accumulees au fil du temps et reportees d''un exercice a l''autre.'),
(13, 'Perte - Amortissements reputes differes', '1292', 'Montant cumulatif des amortissements reputes differes qui ont ete comptabilises et reportes sur plusieurs periodes comptables.'),

(14, 'Resultat en instance d''affectation : Benefice', '1301', 'Montant des benefices qui sont en attente d''affectation a la cloture de l''exercice comptable.'),
(14, 'Resultat en instance d''affectation : Perte', '1309', 'Montant des pertes qui sont en attente d''affectation a la cloture de l''exercice comptable.'),

(22, 'Resultat de fusion', '1381', 'Montant resultant de l''operation de fusion entre deux entites commerciales, qui est affecte au bilan de la nouvelle entite.'),
(22, 'Resultat d''apport partiel d''actif', '1382', 'Montant resultant de l''operation d''apport partiel d''actif, ou une societe apporte une partie de ses actifs a une autre societe en echange de titres.'),
(22, 'Resultat de scission', '1383', 'Montant resultant de l''operation de scission, ou une societe divise ses activites en plusieurs entites distinctes.'),
(22, 'Resultat de liquidation', '1384', 'Montant resultant de la liquidation d''une societe, apres que tous ses actifs ont ete vendus et ses dettes payees.'),

(24, 'etat', '1411', 'Montants dus a l''etat pour divers impots, taxes ou redevances.'),
(24, 'Regions', '1412', 'Montants dus aux regions pour divers impots, taxes ou redevances.'),
(24, 'Departements', '1413', 'Montants dus aux departements pour divers impots, taxes ou redevances.'),
(24, 'Communes et collectivites publiques decentralisees', '1414', 'Montants dus aux communes et collectivites publiques decentralisees pour divers impots, taxes ou redevances.'),
(24, 'Entites publiques ou mixtes', '1415', 'Montants dus a des entites publiques ou mixtes pour divers impots, taxes ou redevances.'),
(24, 'Entites et organismes prives', '1416', 'Montants dus a des entites et organismes prives pour divers impots, taxes ou redevances.'),
(24, 'Organismes internationaux', '1417', 'Montants dus a des organismes internationaux pour diverses contributions ou redevances.'),
(24, 'Autres', '1418', 'Autres montants dus pour des impots, taxes ou redevances non specifies.'),

(28, 'Fonds National', '1531', 'Montants affectes au fonds national pour diverses fins.'),
(28, 'Prelevement pour le Budget', '1532', 'Montants preleves pour alimenter le budget national ou d''autres entites.'),

(30, 'Reconstitution des gisements miniers et petroliers', '1551', 'Montants affectes a la reconstitution des gisements miniers et petroliers pour assurer la durabilite des ressources.'),

(31, 'Hausse de prix', '1561', 'Enregistre les variations positives des prix des biens ou services par rapport a une periode anterieure.'),
(31, 'Fluctuation des cours', '1562', 'Comprend les variations des cours des valeurs mobilieres, des matieres premieres ou d''autres actifs financiers par rapport a une periode anterieure.'),

(34, 'Emprunts obligataires ordinaires', '1611', 'Ce compte enregistre les emprunts obligataires ordinaires contractes par l''entreprise.'),
(34, 'Emprunts obligataires convertibles en actions', '1612', 'Ce compte enregistre les emprunts obligataires convertibles en actions contractes par l''entreprise.'),
(34, 'Emprunts obligataires convertibles en actions', '1613', 'Ce compte enregistre les emprunts obligataires convertibles en actions contractes par l''entreprise.'),
(34, 'Autres emprunts obligataires', '1618', 'Ce compte enregistre les autres emprunts obligataires contractes par l''entreprise.'),

(38, 'Depots', '1651', 'Inclut les montants deposes aupres d''institutions financieres ou d''autres entites en tant que garantie ou pour des besoins specifiques.'),
(38, 'Cautionnements', '1652', 'Comprend les sommes deposees ou garanties par une tierce partie en tant que garantie pour l''execution d''un contrat ou le respect d''une obligation financiere.'),

(39, 'Sur emprunts obligataires', '1661', 'Comprend les interets courus sur les emprunts obligataires.'),
(39, 'Sur emprunts et dettes aupres des etablissements de credit', '1662', 'Inclut les interets courus sur les emprunts et les dettes contractees aupres des etablissements de credit.'),
(39, 'Sur avances recues de l''etat', '1663', 'Comprend les interets courus sur les avances recues de l''etat.'),
(39, 'Sur avances recues et comptes courants bloques', '1664', 'Inclut les interets courus sur les avances recues et les comptes courants bloques.'),
(39, 'Sur depots et cautionnements recus', '1665', 'Comprend les interets courus sur les depots et les cautionnements recus.'),
(39, 'Sur avances assorties de conditions particulieres', '1667', 'Inclut les interets courus sur les avances assorties de conditions particulieres.'),
(39, 'Sur autres emprunts et dettes', '1668', 'Comprend les interets courus sur d''autres emprunts et dettes.'),

(40, 'Avances bloquees pour augmentation du capital', '1671', 'Comprend les avances bloquees destinees a etre utilisees pour augmenter le capital.'),
(40, 'Avances conditionnees par l''etat', '1672', 'Inclut les avances conditionnees accordees par l''etat.'),
(40, 'Avances conditionnees par les autres organismes africains', '1673', 'Comprend les avances conditionnees accordees par d''autres organismes africains.'),
(40, 'Avances conditionnees par les organismes internationaux', '1674', 'Inclut les avances conditionnees accordees par des organismes internationaux.'),

(41, 'Rentes viageres capitalisees', '1681', 'Comprend les rentes viageres qui ont ete capitalisees.'),
(41, 'Billets de fonds', '1682', 'Inclut les billets de fonds.'),
(41, 'Dettes consecutives a des titres empruntes', '1683', 'Comprend les dettes qui resultent de l''emprunt de titres.'),
(41, 'Emprunts participatifs', '1684', 'Inclut les emprunts participatifs.'),
(41, 'Participation des travailleurs aux benefices', '1685', 'Comprend la participation des travailleurs aux benefices.'),
(41, 'Emprunts et dettes contractes aupres des autres tiers', '1686', 'Inclut les emprunts et les dettes contractes aupres d''autres tiers.'),

(45, 'Sur dettes de location - acquisition / credit-bail immobilier', '1762', 'Comprend les interets capitalises sur les dettes de location - acquisition ou credit-bail immobilier.'),
(45, 'Sur dettes de location - acquisition / credit-bail mobilier', '1763', 'Inclut les interets capitalises sur les dettes de location - acquisition ou credit-bail mobilier.'),
(45, 'Sur dettes de location - acquisition/location-vente', '1764', 'Comprend les interets capitalises sur les dettes de location - acquisition ou location-vente.'),
(45, 'Sur autres dettes de location - acquisition', '1768', 'Inclut les interets capitalises sur d''autres dettes de location - acquisition.'),

(47, 'Dettes liees a des participations (groupe)', '1811', 'Englobe les dettes resultant de participations dans des societes du meme groupe.'),
(47, 'Dettes liees a des participations (hors groupe)', '1812', 'Englobe les dettes resultant de participations dans des societes hors du groupe.'),

(60, 'Provisions pour pensions et obligations similaires engagement de retraite', '1961', 'Comprend les provisions constituees pour couvrir les obligations de l''entreprise envers ses employes en matiere de pensions et de retraites, ainsi que d''autres obligations similaires.'),
(60, 'Actif du regime de retraite', '1962', 'Englobe les actifs detenus par le regime de retraite pour couvrir les engagements de retraite futurs.'),

(62, 'Provisions pour amendes et penalites', '1981', 'Comprend les provisions constituees pour faire face a des amendes ou des penalites eventuelles resultant d''infractions ou de manquements a des obligations legales ou contractuelles.'),
(62, 'Provisions pour propre assureur', '1983', 'Englobe les provisions constituees pour couvrir des risques assures par l''entreprise elle-meme, generalement en l''absence de couverture d''une compagnie d''assurance externe.'),
(62, 'Provision pour demantelement et remise en etat', '1984', 'Comprend les provisions constituees pour couvrir les couts estimes du demantelement et de la remise en etat d''installations ou d''equipements a la fin de leur vie utile.'),
(62, 'Provisions pour droit a reduction ou avantage en nature (cheque cadeau, cartes de fidelite)', '1985', 'Englobe les provisions constituees pour honorer les droits a reduction ou les avantages en nature qui seront accordes aux clients, tels que les cheques cadeaux ou les cartes de fidelite.'),
(62, 'Provisions pour divers risques et charges', '1988', 'Regroupe les provisions constituees pour couvrir divers risques et charges non specifiquement mentionnes dans d''autres comptes de provisions.'),

(64, 'Brevets', '2121', 'Comprend les couts lies a l''acquisition ou au developpement de brevets, qui sont des droits exclusifs accordes pour une invention.'),
(64, 'Licences', '2122', 'Englobe les couts associes a l''acquisition ou a l''utilisation de licences, qui sont des droits d''utilisation ou de distribution accordes par le titulaire du droit.'),
(64, 'Concessions de service public', '2123', 'Comprend les couts lies a l''acquisition ou a l''exploitation de concessions de service public, qui sont des droits exclusifs accordes par l''autorite publique pour fournir un service au public.'),
(64, 'Autres concessions et droits similaires', '2128', 'Regroupe les couts associes a l''acquisition ou a l''exploitation d''autres concessions et droits similaires non specifiquement mentionnes dans d''autres comptes de concessions et droits.'),

(65, 'Logiciels', '2131', 'Englobe les couts lies a l''acquisition ou au developpement de logiciels informatiques, qui sont des programmes ou des applications utilises pour executer des taches sur un ordinateur.'),
(65, 'Sites internet', '2132', 'Comprend les couts lies a l''acquisition ou au developpement de sites internet, qui sont des pages web ou des plateformes en ligne utilisees pour diffuser des informations ou fournir des services.'),

(70, 'Frais de prospection et d''evaluation de ressources minerales', '2181', 'Englobe les couts engages pour rechercher et evaluer les ressources minerales, telles que le petrole, le gaz ou les minerais, dans le but de les exploiter commercialement.'),
(70, 'Couts d''obtention du contrat', '2182', 'Comprend les couts associes a l''obtention d''un contrat ou d''une licence pour l''exploitation de droits ou de services, tels que les frais juridiques, les honoraires de conseil et les couts de negociation.'),
(70, 'Fichiers clients, notices, titres de journaux et magazines', '2183', 'Englobe les couts lies a l''acquisition ou a la creation de fichiers clients, de notices publicitaires, de droits sur des titres de journaux ou de magazines, utilises dans le cadre des activites commerciales.'),
(70, 'Couts des franchises', '2184', 'Comprend les frais engages pour acquerir ou utiliser une franchise commerciale, qui permet a une entreprise d''utiliser un modele commercial et une marque deja etablis en echange de redevances ou de frais.'),
(70, 'Divers droits et valeurs incorporelles', '2188', 'Englobe d''autres droits et valeurs incorporelles non specifiquement mentionnes dans les categories precedentes, tels que les droits d''auteur, les marques de commerce ou les secrets commerciaux.'),

(71, 'Frais de developpement', '2191', 'Comprend les couts lies au developpement de nouveaux produits, services ou technologies, tels que les frais de recherche, de conception et de test.'),
(71, 'Logiciels et internet', '2193', 'Englobe les couts associes a l''acquisition ou au developpement de logiciels informatiques et de solutions Internet, y compris les licences, les developpements sur mesure et les abonnements a des services en ligne.'),
(71, 'Autres droits et valeurs incorporels', '2198', 'Englobe d''autres droits et valeurs incorporels non specifiquement mentionnes dans les categories precedentes, tels que les droits d''auteur, les marques de commerce ou les secrets commerciaux.'),

(72, 'Terrains d''exploitation agricole', '2211', 'Inclut les terrains utilises pour l''agriculture, tels que les champs cultives, les vergers et les vignobles.'),
(72, 'Terrains d''exploitation forestiere', '2212', 'Englobe les terrains destines a l''exploitation forestiere, notamment les forets exploitees pour le bois de construction, le bois de chauffage ou d''autres produits forestiers.'),
(72, 'Autres terrains', '2218', 'Comprend les terrains qui ne sont pas specifiquement utilises pour l''agriculture ou l''exploitation forestiere, tels que les terrains destines a la construction, les terrains vacants ou les terrains non developpes.'),

(73, 'Terrains a batir', '2221', 'Designe les terrains destines a la construction de batiments, tels que les parcelles reservees pour des projets immobiliers ou des developpements urbains.'),
(73, 'Autres terrains nus', '2228', 'Englobe les terrains non batis qui ne sont pas specifiquement reserves a la construction, comme les terrains non developpes pour lesquels aucun projet de construction n''est prevu a court terme.'),

(74, 'Pour batiments industriels et agricoles', '2231', 'Comprend les terrains utilises pour la construction de batiments destines a des activites industrielles ou agricoles, comme les usines ou les exploitations agricoles.'),
(74, 'Pour batiments administratifs et commerciaux', '2232', 'Englobe les terrains reserves a la construction de batiments destines a des activites administratives ou commerciales, tels que les bureaux ou les magasins.'),
(74, 'Pour batiments affectes aux autres operations professionnelles', '2234', 'Inclut les terrains destines a la construction de batiments utilises pour d''autres types d''activites professionnelles non specifiquement industrielles, agricoles, administratives ou commerciales.'),
(74, 'Pour batiments affectes aux autres operations non professionnelles', '2235', 'Comprend les terrains reserves a la construction de batiments utilises pour des operations non professionnelles, telles que des installations sportives ou recreatives.'),
(74, 'Autres terrains batis', '2238', 'Englobe les terrains sur lesquels des batiments ont ete construits mais qui ne correspondent pas aux categories specifiques enumerees ci-dessus.'),

(75, 'Plantation d''arbres et d''arbustes', '2241', 'Comprend les couts lies a la plantation d''arbres et d''arbustes sur des terrains, souvent dans le cadre d''activites forestieres ou de reboisement.'),
(75, 'Ameliorations du fonds', '2245', 'Englobe les couts associes a l''amelioration ou a la modification des terrains, tels que l''assainissement, le drainage ou d''autres travaux visant a ameliorer la qualite ou l''utilite des terrains.'),
(75, 'Autres travaux', '2248', 'Inclut les couts des travaux sur les terrains qui ne correspondent pas aux categories specifiques enumerees ci-dessus.'),

(76, 'Carrieres', '2251', 'Englobe les couts lies a l''acquisition et a l''exploitation de carrieres pour l''extraction de materiaux tels que la pierre, le sable, le gravier, etc.'),

(77, 'Parkings', '2261', 'Comprend les couts lies a l''acquisition, a la construction et a l''amenagement de parkings destines au stationnement de vehicules.'),

(79, 'Terrains immeubles de placement', '2281', 'Comprend les terrains detenus a des fins d''investissement ou de placement.'),
(79, 'Terrains des logements affectes au personnel', '2285', 'Comprend les terrains reserves a la construction de logements destines au personnel de l''entreprise ou de l''organisation.'),
(79, 'Terrains de location – acquisition', '2286', 'Comprend les terrains acquis dans le cadre de contrats de location-acquisition.'),
(79, 'Divers terrains', '2288', 'Comprend les terrains qui ne rentrent pas dans les categories precedentes.'),

(80, 'Terrains agricoles et forestiers', '2291', 'Comprend les terrains utilises pour des activites agricoles ou forestieres.'),
(80, 'Terrains nus', '2292', 'Comprend les terrains non developpes ou non construits.'),
(80, 'Terrains de carrieres – trefonds', '2295', 'Comprend les terrains exploites pour des activites de carrieres ou de trefonds.'),
(80, 'Autres terrains', '2298', 'Comprend les terrains qui ne rentrent pas dans les categories precedentes.'),

(81, 'Batiments industriels', '2311', 'Comprend les batiments utilises pour des activites industrielles.'),
(81, 'Batiments agricoles', '2312', 'Comprend les batiments utilises pour des activites agricoles.'),
(81, 'Batiments administratifs et commerciaux', '2313', 'Comprend les batiments utilises pour des activites administratives ou commerciales.'),
(81, 'Batiments affectes au logement du personnel', '2314', 'Comprend les batiments utilises pour le logement du personnel.'),
(81, 'Batiments - immeubles de placement', '2315', 'Comprend les batiments utilises comme investissement.'),
(81, 'Batiments de location-acquisition', '2316', 'Comprend les batiments acquis dans le cadre de contrats de location-acquisition.'),

(82, 'Batiments industriels', '2321', 'Comprend les batiments industriels.'),
(82, 'Batiments agricoles', '2322', 'Comprend les batiments utilises pour des activites agricoles.'),
(82, 'Batiments administratifs et commerciaux', '2323', 'Comprend les batiments utilises a des fins administratives ou commerciales.'),
(82, 'Batiments affectes au logement du personnel', '2324', 'Comprend les batiments utilises pour le logement du personnel.'),
(82, 'Batiments - immeubles de placement', '2325', 'Comprend les batiments utilises comme investissement.'),
(82, 'Batiments de location – acquisition', '2326', 'Comprend les batiments acquis dans le cadre de contrats de location-acquisition.'),

(83, 'Voies de terre', '2331', 'Comprend les routes et chemins terrestres.'),
(83, 'Voies de fer', '2332', 'Comprend les voies ferrees.'),
(83, 'Voies d''eau', '2333', 'Comprend les voies navigables telles que les rivieres, les canaux et les ports.'),
(83, 'Barrages, Digues', '2334', 'Comprend les ouvrages de retenue d''eau et les digues.'),
(83, 'Pistes d''aerodrome', '2335', 'Comprend les pistes d''atterrissage et de decollage des aeroports.'),
(83, 'Autres ouvrages d''infrastructures', '2338', 'Comprend d''autres types d''infrastructures non specifies.'),

(84, 'Installations complexes specialisees sur sol propre', '2341', 'Comprend les installations specialisees sur un terrain appartenant a l''entreprise.'),
(84, 'Installations complexes specialisees sur sol d''autrui', '2342', 'Comprend les installations specialisees sur un terrain appartenant a un tiers.'),
(84, 'Installations a caractere specifique sur sol propre', '2343', 'Comprend les installations specifiques sur un terrain appartenant a l''entreprise.'),
(84, 'Installations a caractere specifique sur sol d''autrui', '2344', 'Comprend les installations specifiques sur un terrain appartenant a un tiers.'),
(84, 'Amenagements et agencements des batiments', '2345', 'Comprend les travaux d''amenagement et d''agencement des batiments.'),

(85, 'Installations generales', '2351', 'Comprend les installations generales dans les locaux de l''entreprise.'),
(85, 'Autres amenagements de bureaux', '2358', 'Comprend les autres amenagements specifiques des bureaux.'),

(88, 'Batiments en cours', '2391', 'Comprend les batiments en cours de construction ou de renovation.'),
(88, 'Installations en cours', '2392', 'Comprend les installations en cours de construction ou d''installation.'),
(88, 'Ouvrages d''infastructures en cours', '2393', 'Comprend les ouvrages d''infrastructures en cours de construction ou de renovation.'),
(88, 'Amenagements et agencements et installations techniques en cours', '2394', 'Comprend les amenagements, les agencements et les installations techniques en cours de realisation.'),
(88, 'Amenagements de bureaux en cours', '2395', 'Comprend les amenagements de bureaux en cours de realisation.'),
(88, 'Autres installations et agencements en cours', '2398', 'Comprend les autres installations et agencements en cours de realisation.'),

(89, 'Materiel industriel', '2411', 'Comprend le materiel utilise dans le processus de production industrielle.'),
(89, 'Outillage industriel', '2412', 'Comprend les outils et equipements utilises dans le processus de production industrielle.'),
(89, 'Materiel commercial', '2413', 'Comprend le materiel utilise dans les activites commerciales.'),
(89, 'Outillage commercial', '2414', 'Comprend les outils et equipements utilises dans les activites commerciales.'),
(89, 'Materiel et outillage industriel et commercial de location - acquisition', '2416', 'Comprend le materiel et l''outillage industriel et commercial acquis dans le cadre de la location.'),

(90, 'Materiel agricole', '2421', 'Comprend le materiel utilise dans les activites agricoles.'),
(90, 'Outillage agricole', '2422', 'Comprend les outils et equipements utilises dans les activites agricoles.'),
(90, 'Materiel et outillage agricole de location – acquisition', '2426', 'Comprend le materiel et l''outillage agricole acquis dans le cadre de la location.'),

(92, 'Materiel de bureau', '2441', 'Comprend le materiel utilise dans un bureau, tel que des photocopieuses, des fax, etc.'),
(92, 'Materiel informatique', '2442', 'Comprend le materiel informatique, comme les ordinateurs, les serveurs, etc.'),
(92, 'Materiel bureautique', '2443', 'Comprend le materiel de bureau specifiquement utilise pour les taches administratives.'),
(92, 'Mobilier de bureau', '2444', 'Comprend le mobilier utilise dans un bureau, comme les chaises, les bureaux, etc.'),
(92, 'Materiel et mobilier - immeubles de placement', '2445', 'Comprend le materiel et le mobilier utilise dans des immeubles de placement.'),
(92, 'Materiel et mobilier de location – acquisition', '2446', 'Comprend le materiel et le mobilier acquis dans le cadre de la location.'),
(92, 'Materiel et mobilier des logements du personnel', '2447', 'Comprend le materiel et le mobilier fourni dans les logements du personnel.'),

(93, 'Materiel automobile', '2451', 'Comprend les vehicules a moteur utilises pour le transport terrestre, tels que les voitures, les camions, etc.'),
(93, 'Materiel ferroviaire', '2452', 'Comprend le materiel utilise dans le transport ferroviaire, comme les locomotives, les wagons, etc.'),
(93, 'Materiel fluvial, lagunaire', '2453', 'Comprend le materiel utilise dans le transport fluvial et lagunaire.'),
(93, 'Materiel naval', '2454', 'Comprend le materiel utilise dans le transport maritime, comme les navires, les bateaux, etc.'),
(93, 'Materiel aerien', '2455', 'Comprend le materiel utilise dans le transport aerien, comme les avions, les helicopteres, etc.'),
(93, 'Materiel de transport de location – acquisition', '2456', 'Comprend le materiel de transport acquis dans le cadre de la location.'),
(93, 'Materiel hippomobile', '2457', 'Comprend le materiel utilise dans le transport hippomobile, comme les chariots, les caleches, etc.'),
(93, 'Autres materiels de transport', '2458', 'Comprend d''autres types de materiel de transport non specifies dans les categories precedentes.'),

(94, 'Cheptel, animaux de trait', '2461', 'Comprend les animaux utilises pour le travail agricole, tels que les chevaux, les bœufs, etc.'),
(94, 'Cheptel, animaux reproducteurs', '2462', 'Comprend les animaux destines a la reproduction dans le cadre de l''elevage, comme les taureaux, les vaches, etc.'),
(94, 'Animaux de garde', '2463', 'Comprend les animaux utilises pour la garde et la securite, tels que les chiens de garde, les chiens de police, etc.'),
(94, 'Plantations agricoles', '2465', 'Comprend les plantations destinees a l''agriculture, comme les champs de cereales, les vergers, les vignobles, etc.'),
(94, 'Autres actifs biologiques', '2468', 'Comprend d''autres actifs biologiques non specifies dans les categories precedentes.'),

(95, 'Agencements et amenagements du materiel', '2471', 'Comprend les couts lies a l''installation et a l''amenagement du materiel, tels que les travaux de montage, d''installation electrique, etc.'),
(95, 'Agencements et amenagements des actifs biologiques', '2472', 'Comprend les couts lies a l''agencement et a l''amenagement des actifs biologiques, tels que l''amenagement des paturages, des etables, etc.'),
(95, 'Autres agencements, amenagements du materiel et actifs biologiques', '2478', 'Comprend d''autres couts d''agencement et d''amenagement non specifies dans les categories precedentes.'),

(96, 'Collections et œuvres d''art', '2481', 'Comprend les collections et les œuvres d''art detenues par l''entite.'),
(96, 'Divers materiels mobiliers', '2488', 'Comprend d''autres materiels mobiliers non specifies dans les categories precedentes.'),

(97, 'Materiel et outillage industriel et commercial', '2491', 'Comprend le materiel et l''outillage utilises dans les activites industrielles et commerciales.'),
(97, 'Materiel et outillage agricole', '2492', 'Comprend le materiel et l''outillage utilises dans les activites agricoles.'),
(97, 'Materiel d''emballage recuperable et identifiable', '2493', 'Comprend le materiel d''emballage qui peut etre recupere et identifie apres utilisation.'),
(97, 'Materiel et mobilier de bureau', '2494', 'Comprend le materiel et le mobilier utilises dans les bureaux.'),
(97, 'Materiel de transport', '2495', 'Comprend le materiel utilise pour le transport de biens ou de personnes.'),
(97, 'Actifs biologiques', '2496', 'Comprend les actifs biologiques tels que le cheptel, les animaux reproducteurs, les plantations agricoles, etc.'),
(97, 'Agencements et amenagements du materiel et des actifs biologiques', '2497', 'Comprend les agencements et les amenagements realises sur le materiel et les actifs biologiques.'),
(97, 'Autres materiels et actifs biologiques en cours', '2498', 'Comprend d''autres materiels et actifs biologiques en cours de traitement ou d''utilisation.'),

(106, 'Prets participatifs', '2711', 'Prets accordes avec une participation aux resultats ou aux pertes de l''entreprise emprunteuse.'),
(106, 'Prets aux associes', '2712', 'Prets accordes aux associes de l''entreprise.'),
(106, 'Billets de fonds', '2713', 'Creances resultant de la souscription de billets de fonds.'),
(106, 'Creances de location financement', '2714', 'Creances resultant de contrats de location financement.'),
(106, 'Titres pretes', '2715', 'Titres financiers pretes a des tiers.'),
(106, 'Autres prets et creances', '2718', 'Autres prets et creances non specifiquement categorises.'),

(107, 'Prets immobiliers', '2721', 'Prets accordes pour des acquisitions ou des investissements immobiliers.'),
(107, 'Prets mobiliers et d''installation', '2722', 'Prets accordes pour l''acquisition de biens mobiliers ou pour des frais d''installation.'),
(107, 'Autres prets au personnel', '2728', 'Autres types de prets accordes au personnel de l''entreprise.'),

(108, 'Retenues de garantie', '2731', 'Montants retenus en garantie pour assurer l''execution d''un contrat ou d''une prestation.'),
(108, 'Fonds reglementes', '2733', 'Fonds reglementes specifiques.'),
(108, 'Creances sur le concedant', '2734', 'Montants dus par le concedant, souvent dans le cadre d''un contrat de concession.'),
(108, 'Autres creances sur l''etat', '2738', 'Creances dues par l''etat pour des raisons autres que celles specifiees dans d''autres comptes.'),

(109, 'Titres immobilises de l''activite de portefeuille (T.I.A.P.)', '2741', 'Titres detenus en portefeuille dans le cadre de l''activite d''investissement de l''entite, generalement en vue de generer des revenus par le biais de dividendes, d''interets ou de gains en capital.'),
(109, 'Titres participatifs', '2742', 'Titres financiers donnant droit a une part des benefices de l''entreprise emettrice, sans pour autant conferer de droit de vote.'),
(109, 'Certificats d''investissement', '2743', 'Titres representant une participation dans un actif ou un portefeuille d''actifs, souvent emis par des fonds d''investissement ou des societes de placement.'),
(109, 'Parts de fonds commun de placement (F.C.P.)', '2744', 'Fraction du capital d''un fonds commun de placement, qui detient des actifs financiers varies, gere de maniere collective par une societe de gestion pour le compte de plusieurs investisseurs.'),
(109, 'Obligations', '2745', 'Titres de creance emis par des entreprises ou des entites publiques, qui representent des emprunts contractes aupres des investisseurs et pour lesquels l''emetteur s''engage a rembourser le capital emprunte a une date future convenue, ainsi qu''a verser des interets periodiques.'),
(109, 'Actions ou parts propres', '2746', 'Actions ou parts d''une entreprise detenues par elle-meme, souvent acquises dans le cadre d''un rachat d''actions ou de parts propres.'),
(109, 'Autres titres immobilises', '2748', 'Tout autre titre immobilise non specifiquement mentionne dans les categories precedentes, comme des titres de participation dans d''autres entreprises.'),

(110, 'Depots pour loyers d''avance', '2751', 'Sommes deposees a l''avance par l''entite en tant que garantie pour le paiement futur des loyers de biens immobiliers loues.'),
(110, 'Depots pour l''electricite', '2752', 'Montants verses a titre de depot de garantie pour l''electricite fournie par des fournisseurs de services publics ou d''autres fournisseurs d''electricite.'),
(110, 'Depots pour l''eau', '2753', 'Fonds deposes a titre de garantie pour l''utilisation future de services d''approvisionnement en eau, generalement fournis par des societes de services publics ou des autorites locales.'),
(110, 'Depots pour le gaz', '2754', 'Sommes deposees en garantie pour l''utilisation future de services de fourniture de gaz, souvent par des societes de services publics ou des fournisseurs de gaz.'),
(110, 'Depots pour le telephone, le telex, la telecopie', '2755', 'Montants deposes en tant que garantie pour l''utilisation future des services de telecommunications, y compris le telephone, le telex et la telecopie, fournis par des operateurs de telecommunications.'),
(110, 'Cautionnements sur marches publics', '2756', 'Garanties financieres fournies par l''entite pour garantir la bonne execution de contrats ou de marches conclus avec des entites publiques.'),
(110, 'Cautionnements sur autres operations', '2757', 'Garanties financieres fournies par l''entite dans le cadre d''autres transactions ou operations, en dehors des marches publics.'),
(110, 'Autres depots et cautionnement', '2758', 'Tout autre depot ou cautionnement non specifiquement lie aux categories precedentes, utilise comme garantie pour diverses transactions ou obligations.'),

(111, 'Prets et creances non commerciales', '2761', 'Montants dus a l''entite qui ne decoulent pas d''activites commerciales habituelles, souvent lies a des prets consentis ou a des creances resultant de transactions non commerciales.'),
(111, 'Prets au personnel', '2762', 'Montants pretes au personnel de l''entite, souvent dans le cadre de politiques de pret interne ou de programmes d''aide financiere aux employes.'),
(111, 'Creances sur l''etat', '2763', 'Montants dus a l''entite par des organismes gouvernementaux ou des entites publiques pour diverses raisons, telles que des subventions, des remboursements d''impots ou des paiements pour des biens ou services fournis.'),
(111, 'Titres immobilises', '2764', 'Instruments financiers detenus par l''entite a long terme, tels que des actions ou des obligations, qui ne sont pas destines a etre negocies activement sur le marche.'),
(111, 'Depots et cautionnements verses', '2765', 'Montants verses par l''entite a titre de depots ou de garanties dans le cadre de diverses transactions ou obligations.'),
(111, 'Creances rattachees a des participations', '2767', 'Montants dus a l''entite resultant de participations dans d''autres entreprises, souvent sous forme de dividendes a recevoir ou d''interets sur des prets consentis a ces entreprises.'),
(111, 'Immobilisations financieres diverses', '2768', 'Autres actifs financiers a long terme detenus par l''entite et qui ne sont pas specifiquement categorises dans les autres rubriques.'),

(112, 'Creances rattachees a des participations (groupe)', '2771', 'Montants dus a l''entite resultant de participations dans d''autres entreprises appartenant au meme groupe economique, souvent sous forme de dividendes a recevoir ou d''interets sur des prets consentis a ces entreprises.'),
(112, 'Creances rattachees a des participations (hors groupe)', '2772', 'Montants dus a l''entite resultant de participations dans d''autres entreprises qui ne font pas partie du meme groupe economique, souvent sous forme de dividendes a recevoir ou d''interets sur des prets consentis a ces entreprises.'),
(112, 'Creances rattachees a des societes en participation', '2773', 'Montants dus a l''entite resultant de participations dans des societes en participation, souvent sous forme de dividendes a recevoir ou d''interets sur des prets consentis a ces societes.'),
(112, 'Avances a des Groupements d''interet economique (G.I.E.)', '2774', 'Montants avances par l''entite a des Groupements d''interet economique (G.I.E.), souvent dans le cadre de partenariats ou de collaborations commerciales.'),

(113, 'Creances diverses groupe', '2781', 'Ensemble des montants dus a l''entite resultant de diverses transactions commerciales ou financieres avec des entites appartenant au meme groupe economique, autres que les creances rattachees a des participations.'),
(113, 'Creances diverses hors groupe', '2782', 'Ensemble des montants dus a l''entite resultant de diverses transactions commerciales ou financieres avec des entites qui ne font pas partie du meme groupe economique, autres que les creances rattachees a des participations.'),
(113, 'Banques depots a terme', '2784', 'Montants places par l''entite sous forme de depots a terme dans des banques ou des institutions financieres, generalement pour une duree fixe et a un taux d''interet convenu a l''avance.'),
(113, 'Or et metaux precieux (1)', '2785', 'Montants investis par l''entite dans l''achat et la detention d''or et d''autres metaux precieux a des fins d''investissement ou de speculation.'),
(113, 'Autres immobilisations financieres', '2788', 'Ensemble des autres actifs financiers detenus par l''entite qui ne rentrent pas dans les categories specifiques deja mentionnees, tels que les prets non commerciaux, les titres immobilises, etc.'),

(114, 'Amortissements des frais de developpement', '2811', 'Montants comptabilises periodiquement pour amortir les frais engages par l''entite pour developper de nouveaux produits, procedes ou services, generalement repartis sur leur duree d''utilisation prevue.'),
(114, 'Amortissements des brevets, licences, concessions et droits similaires', '2812', 'Montants comptabilises periodiquement pour amortir la valeur des brevets, licences, concessions et droits similaires detenus par l''entite, generalement repartis sur leur duree d''utilisation prevue.'),
(114, 'Amortissements des logiciels et sites internet', '2813', 'Montants comptabilises periodiquement pour amortir la valeur des logiciels et sites internet detenus par l''entite, generalement repartis sur leur duree d''utilisation prevue.'),
(114, 'Amortissements des marques', '2814', 'Montants comptabilises periodiquement pour amortir la valeur des marques detenues par l''entite, generalement repartis sur leur duree d''utilisation prevue.'),
(114, 'Amortissements du fonds commercial', '2815', 'Montants comptabilises periodiquement pour amortir la valeur du fonds commercial de l''entite, generalement repartis sur sa duree d''utilisation prevue.'),
(114, 'Amortissements du droit au bail', '2816', 'Montants comptabilises periodiquement pour amortir la valeur du droit au bail detenu par l''entite, generalement repartis sur sa duree d''utilisation prevue.'),
(114, 'Amortissements des investissements de creation', '2817', 'Montants comptabilises periodiquement pour amortir la valeur des investissements de creation realises par l''entite, generalement repartis sur leur duree d''utilisation prevue.'),
(114, 'Amortissements des autres droits et valeurs incorporels', '2818', 'Montants comptabilises periodiquement pour amortir la valeur des autres droits et valeurs incorporels detenus par l''entite, generalement repartis sur leur duree d''utilisation prevue.'),

(115, 'Amortissements des travaux de mise en valeur des terrains', '2824', 'Montants comptabilises periodiquement pour amortir la valeur des travaux de mise en valeur des terrains realises par l''entite, generalement repartis sur leur duree d''utilisation prevue.'),

(116, 'Amortissements des batiments industriels, agricoles, administratifs et commerciaux sur sol propre', '2831', 'Montants comptabilises periodiquement pour amortir la valeur des batiments industriels, agricoles, administratifs et commerciaux construits sur un terrain propre a l''entite.'),
(116, 'Amortissements des batiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '2832', 'Montants comptabilises periodiquement pour amortir la valeur des batiments industriels, agricoles, administratifs et commerciaux construits sur un terrain appartenant a une autre entite.'),
(116, 'Amortissements des ouvrages d''infrastructure', '2833', 'Montants comptabilises periodiquement pour amortir la valeur des ouvrages d''infrastructure tels que les routes, les ponts, les digues, etc.'),
(116, 'Amortissements des amenagements, agencements et installations techniques', '2834', 'Montants comptabilises periodiquement pour amortir la valeur des amenagements, agencements et installations techniques realises par l''entite.'),
(116, 'Amortissements des amenagements de bureaux', '2835', 'Montants comptabilises periodiquement pour amortir la valeur des amenagements specifiques realises dans les bureaux de l''entite.'),
(116, 'Amortissements des batiments industriels, agricoles et commerciaux mis en concession', '2837', 'Montants comptabilises periodiquement pour amortir la valeur des batiments industriels, agricoles et commerciaux mis en concession par l''entite.'),
(116, 'Amortissements des autres installations et agencements', '2838', 'Montants comptabilises periodiquement pour amortir la valeur des autres installations et agencements realises par l''entite.'),

(117, 'Amortissements du materiel et outillage industriel et commercial', '2841', 'Montants comptabilises periodiquement pour amortir la valeur du materiel et de l''outillage utilises dans les activites industrielles et commerciales de l''entite.'),
(117, 'Amortissements du materiel et outillage agricole', '2842', 'Montants comptabilises periodiquement pour amortir la valeur du materiel et de l''outillage utilises dans les activites agricoles de l''entite.'),
(117, 'Amortissements du materiel d''emballage recuperable et identifiable', '2843', 'Montants comptabilises periodiquement pour amortir la valeur du materiel d''emballage recuperable et identifiable utilise par l''entite.'),
(117, 'Amortissements du materiel et mobilier', '2844', 'Montants comptabilises periodiquement pour amortir la valeur du materiel et du mobilier utilises par l''entite.'),
(117, 'Amortissements du materiel de transport', '2845', 'Montants comptabilises periodiquement pour amortir la valeur du materiel de transport utilise par l''entite.'),
(117, 'Amortissements des actifs biologiques', '2846', 'Montants comptabilises periodiquement pour amortir la valeur des actifs biologiques detenus par l''entite.'),
(117, 'Amortissements des agencements et amenagements du materiel et des actifs biologiques', '2847', 'Montants comptabilises periodiquement pour amortir la valeur des agencements et amenagements realises sur le materiel et les actifs biologiques detenus par l''entite.'),
(117, 'Amortissements des autres materiels', '2848', 'Montants comptabilises periodiquement pour amortir la valeur des autres materiels detenus par l''entite.'),

(118, 'Depreciations des frais de developpement', '2911', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des frais de developpement engages par l''entite.'),
(118, 'Depreciations des brevets, licences, concessions et droits similaires', '2912', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des brevets, licences, concessions et droits similaires detenus par l''entite.'),
(118, 'Depreciations des logiciels et sites internet', '2913', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des logiciels et sites internet detenus par l''entite.'),
(118, 'Depreciations des marques', '2914', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des marques detenues par l''entite.'),
(118, 'Depreciations du fonds commercial', '2915', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du fonds commercial detenu par l''entite.'),
(118, 'Depreciations du droit au bail', '2916', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du droit au bail detenu par l''entite.'),
(118, 'Depreciations des investissements de creation', '2917', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des investissements de creation realises par l''entite.'),
(118, 'Depreciations des autres droits et valeurs incorporels', '2918', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des autres droits et valeurs incorporels detenus par l''entite.'),
(118, 'Depreciations des immobilisations incorporelles en cours', '2919', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des immobilisations incorporelles en cours de realisation par l''entite.'),

(119, 'Depreciations des terrains agricoles et forestiers', '2921', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des terrains agricoles et forestiers detenus par l''entite.'),
(119, 'Depreciations des terrains nus', '2922', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des terrains nus detenus par l''entite.'),
(119, 'Depreciations des terrains batis', '2923', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des terrains batis detenus par l''entite.'),
(119, 'Depreciations des travaux de mise en valeur des terrains', '2924', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des travaux de mise en valeur des terrains realises par l''entite.'),
(119, 'Depreciations des terrains de gisement', '2925', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des terrains de gisement detenus par l''entite.'),
(119, 'Depreciations des terrains amenages', '2926', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des terrains amenages detenus par l''entite.'),
(119, 'Depreciations des terrains mis en concession', '2927', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des terrains mis en concession detenus par l''entite.'),
(119, 'Depreciations des autres terrains', '2928', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des autres terrains detenus par l''entite.'),
(119, 'Depreciations des amenagements de terrains en cours', '2929', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des amenagements de terrains en cours de realisation par l''entite.'),

(120, 'Depreciations des batiments industriels, agricoles, administratifs et commerciaux sur sol propre', '2931', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des batiments industriels, agricoles, administratifs et commerciaux construits sur un sol appartenant a l''entite.'),
(120, 'Depreciations des batiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '2932', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des batiments industriels, agricoles, administratifs et commerciaux construits sur un sol appartenant a autrui, mais utilises par l''entite.'),
(120, 'Depreciations des ouvrages d''infrastructures', '2933', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des ouvrages d''infrastructures, tels que les routes, les ponts, les tunnels, etc., detenus par l''entite.'),
(120, 'Depreciations des amenagements, agencements et installations techniques', '2934', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des amenagements, agencements et installations techniques realises par l''entite.'),
(120, 'Depreciations des amenagements de bureaux', '2935', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des amenagements realises dans les bureaux de l''entite.'),
(120, 'Depreciations des batiments industriels, agricoles et commerciaux mis en concession', '2937', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des batiments industriels, agricoles et commerciaux construits sur un sol concede a l''entite.'),
(120, 'Depreciations des autres installations et agencements', '2938', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des autres installations et agencements realises par l''entite.'),
(120, 'Depreciations des batiments et installations en cours', '2939', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des batiments et installations en cours de realisation par l''entite.'),

(121, 'Depreciations du materiel et outillage industriel et commercial', '2941', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du materiel et de l''outillage utilises dans les activites industrielles et commerciales de l''entite.'),
(121, 'Depreciations du materiel et outillage agricole', '2942', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du materiel et de l''outillage utilises dans les activites agricoles de l''entite.'),
(121, 'Depreciations du materiel d''emballage recuperable et identifiable', '2943', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du materiel d''emballage recuperable et identifiable utilise dans les operations de l''entite.'),
(121, 'Depreciations du materiel et mobilier', '2944', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du materiel et du mobilier utilise dans les activites de l''entite.'),
(121, 'Depreciations du materiel de transport', '2945', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du materiel de transport utilise dans les operations de l''entite.'),
(121, 'Depreciations des actifs biologiques', '2946', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des actifs biologiques detenus par l''entite, tels que le cheptel ou les plantations.'),
(121, 'Depreciations des agencements et amenagements du materiel et des actifs biologiques', '2947', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des agencements et amenagements realises sur le materiel et les actifs biologiques de l''entite.'),
(121, 'Depreciations des autres materiels', '2948', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur des autres materiels detenus par l''entite et non specifiquement categorises ailleurs.'),
(121, 'Depreciations de materiel en cours', '2949', 'Montants comptabilises periodiquement pour constater la depreciation de la valeur du materiel en cours de realisation par l''entite.'),

(122, 'Depreciations des avances et acomptes verses sur immobilisations incorporelles', '2951', 'Montants comptabilises periodiquement pour constater la depreciation des avances et acomptes verses sur des immobilisations incorporelles qui sont en cours de realisation ou dont la valeur a diminue.'),
(122, 'Depreciations des avances et acomptes verses sur immobilisations corporelles', '2952', 'Montants comptabilises periodiquement pour constater la depreciation des avances et acomptes verses sur des immobilisations corporelles qui sont en cours de realisation ou dont la valeur a diminue.'),

(123, 'Depreciations des titres de participation dans des societes sous controle exclusif', '2961', 'Montants comptabilises periodiquement pour constater la depreciation des titres de participation dans des societes ou l''entreprise exerce un controle exclusif, lorsque leur valeur a diminue de maniere durable.'),
(123, 'Depreciations des titres de participation dans les societes sous controle conjoint', '2962', 'Montants comptabilises periodiquement pour constater la depreciation des titres de participation dans des societes ou l''entreprise exerce un controle conjoint, lorsque leur valeur a diminue de maniere durable.'),
(123, 'Depreciations des titres de participation dans les societes conferant une influence notable', '2963', 'Montants comptabilises periodiquement pour constater la depreciation des titres de participation dans des societes ou l''entreprise detient une influence notable, lorsque leur valeur a diminue de maniere durable.'),
(123, 'Depreciations des participations dans des organismes professionnels', '2965', 'Montants comptabilises periodiquement pour constater la depreciation des participations dans des organismes professionnels lorsque leur valeur a diminue de maniere durable.'),
(123, 'Depreciations des parts dans des GIE', '2966', 'Montants comptabilises periodiquement pour constater la depreciation des parts dans des Groupements d''Interet economique lorsque leur valeur a diminue de maniere durable.'),
(123, 'Depreciations des autres titres de participation', '2968', 'Montants comptabilises periodiquement pour constater la depreciation des autres titres de participation lorsque leur valeur a diminue de maniere durable.'),

(124, 'Depreciations des prets et creances', '2971', 'Montants comptabilises periodiquement pour constater la depreciation des prets et creances lorsque leur valeur a diminue de maniere durable.'),
(124, 'Depreciations des prets au personnel', '2972', 'Montants comptabilises periodiquement pour constater la depreciation des prets consentis au personnel lorsque leur valeur a diminue de maniere durable.'),
(124, 'Depreciations des creances sur l''etat', '2973', 'Montants comptabilises periodiquement pour constater la depreciation des creances sur l''etat lorsque leur valeur a diminue de maniere durable.'),
(124, 'Depreciations des titres immobilises', '2974', 'Montants comptabilises periodiquement pour constater la depreciation des titres immobilises lorsque leur valeur a diminue de maniere durable.'),
(124, 'Depreciations des depots et cautionnements verses', '2975', 'Montants comptabilises periodiquement pour constater la depreciation des depots et cautionnements verses lorsque leur valeur a diminue de maniere durable.'),
(124, 'Depreciations des creances rattachees a des participations et avances a des GIE', '2977', 'Montants comptabilises periodiquement pour constater la depreciation des creances rattachees a des participations et avances a des Groupements d''Interet economique lorsque leur valeur a diminue de maniere durable.'),
(124, 'Depreciations des creances financieres diverses', '2978', 'Montants comptabilises periodiquement pour constater la depreciation des autres creances financieres lorsque leur valeur a diminue de maniere durable.'),

(125, 'Marchandises A1', '3111', 'Comprend les biens destines a la revente qui sont classes dans la categorie A1.'),
(125, 'Marchandises A2', '3112', 'Comprend les biens destines a la revente qui sont classes dans la categorie A2.'),

(126, 'Marchandises B1', '3121', 'Comprend les biens destines a la revente qui sont classes dans la categorie B1.'),
(126, 'Marchandises B2', '3122', 'Comprend les biens destines a la revente qui sont classes dans la categorie B2.'),

(127, 'Animaux', '3131', 'Comprend les animaux destines a la revente ou a etre utilises dans le processus de production.'),
(127, 'Vegetaux', '3132', 'Comprend les plantes destinees a la revente ou a etre utilisees dans le processus de production.'),

(136, 'Emballages perdus', '3351', 'Comprend les emballages perdus lors du processus de vente ou de production.'),
(136, 'Emballages recuperables non identifiables', '3352', 'Comprend les emballages qui peuvent etre recuperes mais qui ne sont pas identifiables de maniere individuelle.'),
(136, 'Emballages a usage mixte', '3353', 'Comprend les emballages pouvant etre reutilises a des fins multiples.'),
(136, 'Autres emballages', '3358', 'Comprend les emballages non inclus dans les categories precedentes.'),

(138, 'Produits en cours P1', '3411', 'Comprend les produits en cours de fabrication ou de transformation, correspondant a une etape specifique du processus de production.'),
(138, 'Produits en cours P2', '3412', 'Comprend les produits en cours de fabrication ou de transformation, correspondant a une autre etape specifique du processus de production.'),

(139, 'Travaux en cours T1', '3421', 'Comprend les travaux en cours correspondant a une etape specifique d''un chantier ou d''un projet en cours.'),
(139, 'Travaux en cours T2', '3422', 'Comprend les travaux en cours correspondant a une autre etape specifique d''un chantier ou d''un projet en cours.'),

(140, 'Produits intermediaires A', '3431', 'Comprend les produits en cours de fabrication qui sont a un stade intermediaire de production et qui necessitent encore des transformations ou des processus supplementaires.'),
(140, 'Produits intermediaires B', '3432', 'Comprend les produits en cours de fabrication qui sont a un stade intermediaire de production et qui necessitent encore des transformations ou des processus supplementaires.'),

(141, 'Produits residuels A', '3441', 'Comprend les produits restants apres le processus de production principale, pouvant etre recycles, retraites ou utilises dans d''autres processus.'),
(141, 'Produits residuels B', '3442', 'Comprend les produits restants apres le processus de production principale, pouvant etre recycles, retraites ou utilises dans d''autres processus.'),

(142, 'Animaux', '3451', 'Comprend les animaux utilises dans le processus de production ou destines a la vente.'),
(142, 'Vegetaux', '3452', 'Comprend les plantes et les cultures utilisees dans le processus de production ou destinees a la vente.'),

(143, 'etudes en cours E1', '3511', 'Comprend les etudes en cours pour le developpement de nouveaux produits ou services.'),
(143, 'etudes en cours E2', '3512', 'Comprend les etudes en cours pour l''amelioration des produits ou services existants.'),

(144, 'Prestations de services S1', '3521', 'Comprend les prestations de services en cours pour des clients ou des partenaires.'),
(144, 'Prestations de services S2', '3522', 'Comprend les prestations de services en cours internes a l''entreprise.'),

(147, 'Animaux', '3631', 'Comprend les stocks d''animaux detenus pour des activites annexes.'),
(147, 'Vegetaux', '3632', 'Comprend les stocks de vegetaux detenus pour des activites annexes.'),
(147, 'Autres stocks (activites annexe)', '3638', 'Comprend les autres types de stocks detenus pour des activites annexes.'),

(148, 'Produits intermediaires A', '3711', 'Comprend les produits intermediaires de type A.'),
(148, 'Produits intermediaires B', '3712', 'Comprend les produits intermediaires de type B.'),

(149, 'Dechets', '3721', 'Comprend les dechets generes par le processus de production ou d''autres activites.'),
(149, 'Rebuts', '3722', 'Comprend les rebuts produits lors du processus de production ou d''autres activites.'),
(149, 'Matieres de recuperation', '3723', 'Comprend les matieres pouvant etre recuperees ou recyclees.'),

(150, 'Animaux', '3731', 'Comprend les animaux detenus en stock pour diverses activites, comme l''elevage ou la revente.'),
(150, 'Vegetaux', '3732', 'Comprend les vegetaux detenus en stock pour diverses activites, comme l''agriculture ou la vente de plantes.'),
(150, 'Autres stocks (activites annexe)', '3738', 'Comprend les autres types de stocks detenus pour des activites annexes non specifiees.'),

(155, 'Stock en consignation', '3871', 'Stock de marchandises ou de produits place chez un tiers (consignataire) en vue de leur vente.'),
(155, 'Stock en depot', '3872', 'Stock de marchandises ou de produits entrepose chez un tiers (depositaire) pour diverses raisons, comme le stockage temporaire ou la distribution ulterieure.'),

(165, 'Fournisseurs', '4011', 'Montant du aux fournisseurs pour l''achat de biens ou services.'),
(165, 'Fournisseurs Groupe', '4012', 'Montant du aux fournisseurs faisant partie du meme groupe d''entreprises.'),
(165, 'Fournisseurs sous-traitants', '4013', 'Montant du aux fournisseurs qui fournissent des biens ou services dans le cadre d''une sous-traitance.'),
(165, 'Fournisseurs reserve de propriete', '4016', 'Montant du aux fournisseurs pour des biens dont la propriete n''a pas encore ete transferee a l''acheteur en raison d''une reserve de propriete.'),
(165, 'Fournisseurs retenues de garantie', '4017', 'Montant du aux fournisseurs pour lequel une partie du paiement est retenue en garantie jusqu''a la satisfaction de certaines conditions ou la fin d''une periode donnee.'),

(166, 'Fournisseurs, Effets a payer', '4021', 'Montant du aux fournisseurs pour lequel des effets a payer ont ete emis en tant que moyen de paiement differe.'),
(166, 'Fournisseurs - Groupe, Effets a payer', '4022', 'Montant du aux fournisseurs faisant partie du meme groupe d''entreprises pour lequel des effets a payer ont ete emis en tant que moyen de paiement differe.'),
(166, 'Fournisseurs sous-traitants, Effets a payer', '4023', 'Montant du aux fournisseurs sous-traitants pour lequel des effets a payer ont ete emis en tant que moyen de paiement differe.'),

(167, 'Fournisseurs dettes en compte, immobilisations incorporelles', '4041', 'Montant du aux fournisseurs pour l''acquisition d''immobilisations incorporelles enregistrees en tant que dettes sur compte.'),
(167, 'Fournisseurs dettes en compte, immobilisations corporelles', '4042', 'Montant du aux fournisseurs pour l''acquisition d''immobilisations corporelles enregistrees en tant que dettes sur compte.'),
(167, 'Fournisseurs effets a payer, immobilisations incorporelles', '4046', 'Montant du aux fournisseurs pour l''acquisition d''immobilisations incorporelles pour lesquelles des effets a payer ont ete emis en tant que moyen de paiement differe.'),
(167, 'Fournisseurs effets a payer, immobilisations corporelles', '4047', 'Montant du aux fournisseurs pour l''acquisition d''immobilisations corporelles pour lesquelles des effets a payer ont ete emis en tant que moyen de paiement differe.'),

(168, 'Fournisseurs', '4081', 'Montant du aux fournisseurs pour des biens ou des services fournis.'),
(168, 'Fournisseurs Groupe', '4082', 'Montant du aux fournisseurs appartenant au meme groupe pour des biens ou des services fournis.'),
(168, 'Fournisseurs sous-traitants', '4083', 'Montant du aux fournisseurs qui fournissent des biens ou des services dans le cadre d''un contrat de sous-traitance.'),
(168, 'Fournisseurs, interets courus', '4086', 'Montant du aux fournisseurs pour des interets courus sur des dettes envers eux.'),

(169, 'Fournisseurs avances et acomptes verses', '4091', 'Montant verse aux fournisseurs a titre d''avances ou d''acomptes pour des biens ou des services a fournir.'),
(169, 'Fournisseurs - Groupe avances et acomptes verses', '4092', 'Montant verse aux fournisseurs appartenant au meme groupe a titre d''avances ou d''acomptes pour des biens ou des services a fournir.'),
(169, 'Fournisseurs sous-traitants avances et acomptes verses', '4093', 'Montant verse aux fournisseurs sous-traitants a titre d''avances ou d''acomptes pour des biens ou des services a fournir.'),
(169, 'Fournisseurs creances pour emballages et materiels a rendre', '4094', 'Montant du par les fournisseurs pour les emballages et le materiel qui doivent etre restitues.'),
(169, 'Fournisseurs, rabais, remises, ristournes et autres avoirs a obtenir', '4098', 'Montant attendu des fournisseurs pour les rabais, remises, ristournes et autres avoirs a obtenir.'),

(170, 'Clients', '4111', 'Montant du par les clients pour des biens ou des services fournis.'),
(170, 'Clients Groupe', '4112', 'Montant du par les clients appartenant au meme groupe pour des biens ou des services fournis.'),
(170, 'Clients, etat et Collectivites publiques', '4114', 'Montant du par les clients qui sont des entites gouvernementales ou des collectivites publiques pour des biens ou des services fournis.'),
(170, 'Clients, organismes internationaux', '4115', 'Montant du par les clients qui sont des organismes internationaux pour des biens ou des services fournis.'),
(170, 'Clients, ventes avec reserve de propriete', '4116', 'Montant du par les clients pour des biens ou des services vendus avec reserve de propriete, ce qui signifie que le transfert de propriete n''a pas encore eu lieu.'),
(170, 'Clients, retenues de garantie', '4117', 'Montant retenu par les clients en garantie de la qualite des biens ou des services fournis.'),
(170, 'Clients, degrevement de Taxes sur la Valeur Ajoutee (T.V.A.)', '4118', 'Montant de TVA que les clients peuvent deduire du montant qu''ils doivent payer.'),

(171, 'Clients, Effets a recevoir', '4121', 'Montant du par les clients et payable sous forme de traites ou d''autres effets a recevoir.'),
(171, 'Clients - Groupe, Effets a recevoir', '4122', 'Montant du par les clients appartenant au meme groupe et payable sous forme de traites ou d''autres effets a recevoir.'),
(171, 'etat et Collectivites publiques, Effets a recevoir', '4124', 'Montant du par les entites gouvernementales ou les collectivites publiques et payable sous forme de traites ou d''autres effets a recevoir.'),
(171, 'Organismes Internationaux, Effets a recevoir', '4125', 'Montant du par les organismes internationaux et payable sous forme de traites ou d''autres effets a recevoir.'),
(171, 'Clients, ventes avec reserve de proprietes effets a recevoir', '4126', 'Montant du par les clients pour des ventes avec reserve de proprietes et payable sous forme de traites ou d''autres effets a recevoir.'),

(172, 'Clients, cheques impayes', '4131', 'Montant du par les clients et non paye sous forme de cheques impayes.'),
(172, 'Clients, effets impayes', '4132', 'Montant du par les clients et non paye sous forme d''effets impayes.'),
(172, 'Clients, cartes de credit impayees', '4133', 'Montant du par les clients et non paye avec des cartes de credit impayees.'),
(172, 'Clients, autres valeurs impayes', '4138', 'Montant du par les clients et non paye sous forme d''autres valeurs impayees.'),

(173, 'Creances en compte, immobilisations incorporelles', '4141', 'Montant du par les clients et non paye en compte, concernant des immobilisations incorporelles.'),
(173, 'Creances en compte, immobilisations corporelles', '4142', 'Montant du par les clients et non paye en compte, concernant des immobilisations corporelles.'),
(173, 'Effets a recevoir, immobilisations incorporelles', '4146', 'Montant du par les clients et non paye sous forme d''effets a recevoir, concernant des immobilisations incorporelles.'),
(173, 'Effets a recevoir, immobilisations corporelles', '4147', 'Montant du par les clients et non paye sous forme d''effets a recevoir, concernant des immobilisations corporelles.'),

(175, 'Creances litigieuses', '4161', 'Montant du par les clients, mais dont le paiement est conteste ou sujet a un litige.'),
(175, 'Creances douteuses', '4162', 'Montant du par les clients, mais dont le recouvrement est incertain en raison de leur situation financiere instable ou de difficultes de paiement presumees.'),

(176, 'Clients, factures a etablir', '4181', 'Montant du par les clients pour des biens ou des services fournis, mais pour lesquels les factures n''ont pas encore ete emises.'),
(176, 'Clients, interets courus', '4186', 'Montant du par les clients pour les interets accumules sur des sommes non encore payees.'),

(177, 'Clients, avances et acomptes recus', '4191', 'Montant recu des clients a titre d''avance ou d''acompte pour des biens ou des services qui seront fournis ulterieurement.'),
(177, 'Clients - Groupe, avances et acomptes recus', '4192', 'Montant recu des clients appartenant au groupe a titre d''avance ou d''acompte pour des biens ou des services qui seront fournis ulterieurement.'),
(177, 'Clients, dettes pour emballages et materiels consignes', '4194', 'Montant du aux clients pour les emballages ou les materiels consignes.'),
(177, 'Clients, rabais, remises, ristournes et autres avoirs a accorder', '4198', 'Montant a accorder aux clients sous forme de rabais, de remises, de ristournes ou d''autres avoirs.'),

(178, 'Personnel, avances', '4211', 'Montant avance au personnel pour couvrir des depenses professionnelles.'),
(178, 'Personnel, acomptes', '4212', 'Montant verse au personnel a titre d''acompte sur son salaire ou sur d''autres prestations.'),
(178, 'Frais avances et fournitures au personnel', '4213', 'Montant avance pour couvrir les frais ou fournitures du personnel.'),

(180, 'Personnel, oppositions', '4231', 'Montant saisi sur le salaire du personnel en raison d''une opposition.'),
(180, 'Personnel, saisies arrets', '4232', 'Montant saisi sur le salaire du personnel en raison d''une saisie-arret.'),
(180, 'Personnel, avis a tiers detenteur', '4233', 'Montant saisi sur le salaire du personnel en raison d''un avis a tiers detenteur.'),

(181, 'Assistance medicale', '4241', 'Montant des depenses liees a l''assistance medicale du personnel.'),
(181, 'Allocations familiales', '4242', 'Montant des allocations familiales versees au personnel.'),
(181, 'Organismes sociaux rattaches a l''entite', '4245', 'Montant des cotisations versees aux organismes sociaux rattaches a l''entite.'),
(181, 'Autres œuvres sociales internes', '4248', 'Montant des depenses liees a d''autres œuvres sociales internes.'),

(182, 'Delegues du personnel', '4251', 'Montant des depenses liees aux delegues du personnel.'),
(182, 'Syndicats et Comites d''entreprises, d''etablissement', '4252', 'Montant des depenses liees aux syndicats et aux comites d''entreprises ou d''etablissement.'),
(182, 'Autres representants du personnel', '4258', 'Montant des depenses liees a d''autres representants du personnel.'),

(183, 'Participation aux benefices', '4261', 'Montant des depenses liees a la participation aux benefices des employes.'),
(183, 'Participation au capital', '4264', 'Montant des depenses liees a la participation au capital des employes.'),

(185, 'Dettes provisionnees pour conges a payer', '4281', 'Montant des dettes provisionnees pour les conges a payer aux employes.'),
(185, 'Autres Charges a payer', '4286', 'Montant des autres charges a payer qui ne sont pas specifiquement repertoriees ailleurs.'),
(185, 'Produits a recevoir', '4287', 'Montant des produits a recevoir qui sont dus mais pas encore recus.'),

(186, 'Prestations familiales', '4311', 'Montant des cotisations versees pour les prestations familiales.'),
(186, 'Accidents de travail', '4312', 'Montant des cotisations versees pour les accidents du travail.'),
(186, 'Caisse de retraite obligatoire', '4313', 'Montant des cotisations versees pour la caisse de retraite obligatoire.'),
(186, 'Caisse de retraite facultative', '4314', 'Montant des cotisations versees pour la caisse de retraite facultative.'),
(186, 'Autres cotisations sociales', '4318', 'Montant des cotisations versees pour d''autres types de prestations sociales.'),

(188, 'Mutuelle', '4331', 'Montant des cotisations versees pour la mutuelle.'),
(188, 'Assurance retraite', '4332', 'Montant des cotisations versees pour l''assurance retraite.'),
(188, 'Assurance et organismes de sante', '4333', 'Montant des cotisations versees pour l''assurance et les organismes de sante.'),

(189, 'Charges sociales sur gratifications a payer', '4381', 'Montant des charges sociales dues sur les gratifications a payer.'),
(189, 'Charges sociales sur conges a payer', '4382', 'Montant des charges sociales dues sur les conges a payer.'),
(189, 'Autres charges a payer', '4386', 'Montant des autres charges a payer.'),
(189, 'Produits a recevoir', '4387', 'Montant des produits a recevoir.'),

(191, 'Impots et taxes d''etat', '4421', 'Montant des impots et taxes a payer a l''etat.'),
(191, 'Impots et taxes pour les collectivites publiques', '4422', 'Montant des impots et taxes a payer aux collectivites publiques.'),
(191, 'Impots et taxes recouvrables sur des obligataires', '4423', 'Montant des impots et taxes recouvrables sur des obligataires.'),
(191, 'Impots et taxes recouvrables sur des associes', '4424', 'Montant des impots et taxes recouvrables sur des associes.'),
(191, 'Droits de douane', '4426', 'Montant des droits de douane a payer.'),
(191, 'Autres impots et taxes', '4428', 'Montant des autres impots et taxes a payer.'),

(192, 'T.V.A. facturee sur ventes', '4431', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) facturee sur les ventes de biens.'),
(192, 'T.V.A. facturee sur prestations de services', '4432', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) facturee sur les prestations de services.'),
(192, 'T.V.A. facturee sur travaux', '4433', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) facturee sur les travaux realises.'),
(192, 'T.V.A. facturee sur production livree a soi-meme', '4434', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) facturee sur les productions livrees a soi-meme.'),
(192, 'T.V.A. sur factures a etablir', '4435', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) a etablir sur les factures.'),

(193, 'etat, T.V.A. due', '4441', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) due a l''etat.'),
(193, 'etat, Degrevement T.V.A.', '4445', 'Ce compte enregistre les degrevements de taxe sur la valeur ajoutee (T.V.A.) accordes par l''etat.'),
(193, 'etat, credit de T.V.A. a reporter', '4449', 'Ce compte enregistre les credits de taxe sur la valeur ajoutee (T.V.A.) a reporter a l''etat.'),

(194, 'T.V.A. recuperable sur immobilisations', '4451', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) recuperable sur les immobilisations.'),
(194, 'T.V.A. recuperable sur achats', '4452', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) recuperable sur les achats.'),
(194, 'T.V.A. recuperable sur transport', '4453', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) recuperable sur le transport.'),
(194, 'T.V.A. recuperable sur services exterieurs et autres charges', '4454', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) recuperable sur les services exterieurs et autres charges.'),
(194, 'T.V.A. recuperable sur factures non parvenues', '4455', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) recuperable sur les factures non parvenues.'),
(194, 'T.V.A. transferee par d''autres entites', '4456', 'Ce compte enregistre la taxe sur la valeur ajoutee (T.V.A.) transferee par d''autres entites.'),

(196, 'Impot General sur le revenu', '4471', 'Ce compte enregistre l''impot general sur le revenu.'),
(196, 'Impots sur salaires', '4472', 'Ce compte enregistre les impots sur les salaires.'),
(196, 'Contribution nationale', '4473', 'Ce compte enregistre la contribution nationale.'),
(196, 'Contribution nationale de solidarite', '4474', 'Ce compte enregistre la contribution nationale de solidarite.'),
(196, 'Autres impots et contributions', '4478', 'Ce compte enregistre d''autres impots et contributions.'),

(197, 'Charges a payer', '4486', 'Ce compte enregistre les charges a payer.'),
(197, 'Produits a recevoir', '4487', 'Ce compte enregistre les produits a recevoir.'),

(198, 'etat, obligations cautionnees', '4491', 'Ce compte enregistre les obligations cautionnees a l''etat.'),
(198, 'etat, avances et acomptes verses sur impots', '4492', 'Ce compte enregistre les avances et acomptes verses sur impots a l''etat.'),
(198, 'etat, fonds de dotation a recevoir', '4493', 'Ce compte enregistre les fonds de dotation a recevoir de l''etat.'),
(198, 'etat, subventions investissement a recevoir', '4494', 'Ce compte enregistre les subventions d''investissement a recevoir de l''etat.'),
(198, 'etat, subventions d''exploitation a recevoir', '4495', 'Ce compte enregistre les subventions d''exploitation a recevoir de l''etat.'),
(198, 'etat, subventions d''equilibre a recevoir', '4496', 'Ce compte enregistre les subventions d''equilibre a recevoir de l''etat.'),
(198, 'etat avances sur subventions', '4497', 'Ce compte enregistre les avances sur subventions a l''etat.'),
(198, 'etat, fonds reglementes provisionnes', '4499', 'Ce compte enregistre les fonds reglementes provisionnes a l''etat.'),

(201, 'Organismes internationaux, fonds de dotation a recevoir', '4581', 'Ce compte enregistre les fonds de dotation a recevoir des organismes internationaux.'),
(201, 'Organismes internationaux, subventions a recevoir', '4582', 'Ce compte enregistre les subventions a recevoir des organismes internationaux.'),

(202, 'Apporteurs, apports en nature', '4611', 'Ce compte enregistre les apports en nature effectues par les apporteurs.'),
(202, 'Apporteurs, apports en numeraire', '4612', 'Ce compte enregistre les apports en numeraire effectues par les apporteurs.'),
(202, 'Apporteurs, capital appele, non verse', '4613', 'Ce compte enregistre le capital appele mais non verse par les apporteurs.'),
(202, 'Apporteurs, compte d''apport, operations de restructuration (fusion)', '4614', 'Ce compte enregistre les operations de restructuration (fusion) sur le compte d''apport des apporteurs.'),
(202, 'Apporteurs, versements recus sur augmentation de capital', '4615', 'Ce compte enregistre les versements recus sur l''augmentation de capital par les apporteurs.'),
(202, 'Apporteurs, versements anticipes', '4616', 'Ce compte enregistre les versements anticipes effectues par les apporteurs.'),
(202, 'Apporteurs defaillants', '4617', 'Ce compte enregistre les apporteurs defaillants.'),
(202, 'Apporteurs, titres a echanger', '4618', 'Ce compte enregistre les titres a echanger des apporteurs.'),
(202, 'Apporteurs, capital a rembourser', '4619', 'Ce compte enregistre le capital a rembourser aux apporteurs.'),

(203, 'Principal', '4621', 'Ce compte enregistre le montant principal d''une dette ou d''un emprunt.'),
(203, 'Interets courus', '4626', 'Ce compte enregistre les interets courus mais non encore payes sur une dette ou un emprunt.'),

(204, 'Operations courantes', '4631', 'Ce compte enregistre les operations financieres regulieres et habituelles de l''entreprise, telles que les achats, les ventes et les charges courantes.'),
(204, 'Interets courus', '4636', 'Ce compte enregistre les interets accumules mais non encore payes sur des dettes ou des emprunts, jusqu''a la date de comptabilite.'),

(208, 'Debiteurs divers', '4711', 'Ce compte enregistre les montants dus a l''entreprise par divers debiteurs qui ne rentrent pas dans d''autres categories specifiques de creances.'),
(208, 'Crediteurs divers', '4712', 'Ce compte enregistre les montants que l''entreprise doit a divers crediteurs qui ne rentrent pas dans d''autres categories specifiques de dettes.'),
(208, 'Obligataires', '4713', 'Ce compte enregistre les montants dus a des detenteurs d''obligations emises par l''entreprise.'),
(208, 'Creances sur cessions de titres de placements', '4714', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placements.'),
(208, 'Remunerations d''administrateurs', '4715', 'Ce compte enregistre les montants dus aux administrateurs de l''entreprise pour leur remuneration.'),
(208, 'Comptes d''affacturage', '4716', 'Ce compte enregistre les montants lies aux operations d''affacturage, c''est-a-dire la cession de creances commerciales a un etablissement financier.'),
(208, 'Debiteurs divers - retenues de garantie', '4717', 'Ce compte enregistre les montants dus a l''entreprise par divers debiteurs, mais avec des retenues de garantie qui doivent etre deduites.'),
(208, 'Apport, compte de fusion et operations assimilees', '4718', 'Ce compte enregistre les montants lies aux apports lors de fusions, scissions ou autres operations similaires.'),
(208, 'Bons de souscription d''actions et d''obligations', '4719', 'Ce compte enregistre les montants dus aux porteurs de bons de souscription d''actions ou d''obligations emis par l''entreprise.'),

(209, 'Creances sur cessions de titres de placement', '4721', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placement.'),
(209, 'Versements restant a effectuer sur titres de placement non libere', '4726', 'Ce compte enregistre les montants restant a verser pour des titres de placement qui n''ont pas encore ete liberes en totalite.'),

(210, 'Mandants', '4731', 'Ce compte enregistre les montants dus a des mandants, c''est-a-dire des personnes ou des entites qui ont donne mandat a l''entreprise pour agir en leur nom.'),
(210, 'Mandataires', '4732', 'Ce compte enregistre les montants dus a des mandataires, c''est-a-dire des personnes ou des entites agissant au nom de l''entreprise.'),
(210, 'Commettants', '4733', 'Ce compte enregistre les montants dus a des commettants, c''est-a-dire des personnes ou des entites qui ont charge l''entreprise d''executer des taches en leur nom.'),
(210, 'Commissionnaires', '4734', 'Ce compte enregistre les montants dus a des commissionnaires, c''est-a-dire des personnes ou des entites qui agissent en tant qu''intermediaires pour l''entreprise dans des transactions commerciales.'),
(210, 'etats, collectivites publiques, fonds global d''allocation', '4739', 'Ce compte enregistre les montants dus a des etats, des collectivites publiques ou des fonds globaux d''allocation.'),

(211, 'Compte de repartition periodique des charges', '4746', 'Ce compte enregistre les montants utilises pour repartir periodiquement les charges entre differentes categories ou departements de l''entreprise.'),
(211, 'Compte de repartition periodique des produits', '4747', 'Ce compte enregistre les montants utilises pour repartir periodiquement les produits entre differentes categories ou departements de l''entreprise.'),

(212, 'Compte actif', '4751', 'Ce compte enregistre les elements d''actif de l''entreprise, c''est-a-dire les biens et les droits detenus par l''entreprise.'),
(212, 'Compte passif', '4752', 'Ce compte enregistre les elements de passif de l''entreprise, c''est-a-dire les dettes et les obligations financieres de l''entreprise.'),

(215, 'Diminution des creances d''exploitation', '4781', 'Ce compte enregistre les diminutions des creances resultant d''activites d''exploitation, telles que les ventes a credit ou les services fournis.'),
(215, 'Diminution de creances financieres', '4782', 'Ce compte enregistre les diminutions des creances financieres, telles que les prets accordes a des tiers.'),
(215, 'Augmentation des dettes d''exploitation', '4783', 'Ce compte enregistre les augmentations des dettes resultant d''activites d''exploitation, telles que les achats a credit ou les depenses engagees.'),
(215, 'Augmentation des dettes financieres', '4784', 'Ce compte enregistre les augmentations des dettes financieres, telles que les emprunts ou les obligations emises par l''entreprise.'),
(215, 'Differences d''evaluation sur instruments de tresorerie', '4786', 'Ce compte enregistre les differences de valorisation sur les instruments de tresorerie, comme les devises etrangeres, les titres financiers ou les contrats a terme.'),
(215, 'Differences compensees par couverture de change', '4788', 'Ce compte enregistre les differences de valorisation compensees par des instruments de couverture de change, telles que les contrats a terme ou les options de change.'),

(216, 'Augmentation des creances d''exploitation', '4791', 'Ce compte enregistre les augmentations des creances resultant d''activites d''exploitation, telles que les ventes a credit ou les services fournis.'),
(216, 'Augmentation des creances financieres', '4792', 'Ce compte enregistre les augmentations des creances financieres, telles que les prets accordes a des tiers.'),
(216, 'Diminution des dettes d''exploitation', '4793', 'Ce compte enregistre les diminutions des dettes resultant d''activites d''exploitation, telles que les achats a credit ou les depenses engagees.'),
(216, 'Diminution des dettes financieres', '4794', 'Ce compte enregistre les diminutions des dettes financieres, telles que les emprunts ou les obligations emises par l''entreprise.'),
(216, 'Differences d''evaluation sur instruments de tresorerie', '4797', 'Ce compte enregistre les differences de valorisation sur les instruments de tresorerie, comme les devises etrangeres, les titres financiers ou les contrats a terme.'),
(216, 'Differences compensees par couverture de change', '4798', 'Ce compte enregistre les differences de valorisation compensees par des instruments de couverture de change, telles que les contrats a terme ou les options de change.'),

(217, 'Immobilisations incorporelles', '4811', 'Ce compte enregistre les actifs non materiels de l''entreprise, tels que les brevets, les marques, les logiciels et les licences.'),
(217, 'Immobilisations corporelles', '4812', 'Ce compte enregistre les actifs materiels de l''entreprise, tels que les terrains, les batiments, les equipements et les vehicules.'),
(217, 'Versements restant a effectuer sur titres de participation et titres immobilises non liberes', '4813', 'Ce compte enregistre les montants restant a verser pour des titres de participation ou des titres immobilises qui n''ont pas encore ete liberes en totalite.'),
(217, 'Reserve de propriete', '4816', 'Ce compte enregistre les biens vendus par l''entreprise mais pour lesquels la propriete reste avec l''entreprise jusqu''au paiement complet.'),
(217, 'Retenues de garantie (2)', '4817', 'Ce compte enregistre les retenues de garantie effectuees par les clients ou les fournisseurs pour assurer l''execution correcte des contrats.'),
(217, 'Factures non parvenues (2)', '4818', 'Ce compte enregistre les montants qui n''ont pas encore ete factures mais qui doivent etre comptabilises comme des charges ou des produits.'),

(218, 'Immobilisations incorporelles', '4821', 'Ce compte enregistre les actifs non materiels de l''entreprise, tels que les brevets, les marques, les logiciels et les licences.'),
(218, 'Immobilisations corporelles', '4822', 'Ce compte enregistre les actifs materiels de l''entreprise, tels que les terrains, les batiments, les equipements et les vehicules.'),

(220, 'En compte, immobilisations incorporelles', '4851', 'Ce compte enregistre les immobilisations incorporelles qui sont en attente d''etre inscrites au bilan de l''entreprise.'),
(220, 'En compte, immobilisations corporelles', '4852', 'Ce compte enregistre les immobilisations corporelles qui sont en attente d''etre inscrites au bilan de l''entreprise.'),
(220, 'Effets a recevoir, immobilisations incorporelles', '4853', 'Ce compte enregistre les effets (comme des cheques ou des traites) a recevoir lies aux transactions impliquant des immobilisations incorporelles.'),
(220, 'Effets a recevoir, immobilisations corporelles', '4854', 'Ce compte enregistre les effets (comme des cheques ou des traites) a recevoir lies aux transactions impliquant des immobilisations corporelles.'),
(220, 'Effets escomptes non echus', '4855', 'Ce compte enregistre les effets escomptes qui n''ont pas encore atteint leur date d''echeance.'),
(220, 'Retenues de garantie', '4857', 'Ce compte enregistre les montants retenus par les clients ou les fournisseurs en garantie de l''execution correcte des contrats.'),
(220, 'Factures a etablir', '4858', 'Ce compte enregistre les montants a facturer mais qui n''ont pas encore ete emis sous forme de factures.'),

(223, 'Creances litigieuses', '4911', 'Ce compte enregistre les creances pour lesquelles un litige est en cours, ce qui signifie qu''il existe un differend ou un desaccord entre l''entreprise et le debiteur quant au montant du ou a d''autres conditions de paiement.'),
(223, 'Creances douteuses', '4912', 'Ce compte enregistre les creances pour lesquelles il existe des doutes raisonnables quant a la capacite du debiteur a payer, souvent en raison de retards de paiement importants ou de difficultes financieres.'),

(228, 'Associes, comptes courants', '4962', 'Ce compte enregistre les montants dus aux associes de l''entreprise au titre de comptes courants, qui representent des avances de fonds ou des prets consentis par les associes a l''entreprise.'),
(228, 'Associes, operations faites en commun', '4963', 'Ce compte enregistre les operations realisees en commun avec les associes de l''entreprise, telles que les coentreprises ou les partenariats.'),
(228, 'Groupe, comptes courants', '4966', 'Ce compte enregistre les montants dus aux entreprises du meme groupe au titre de comptes courants, qui representent des avances de fonds ou des prets consentis par ces entreprises a l''entreprise.'),

(230, 'Creances sur cessions d''immobilisations', '4985', 'Ce compte enregistre les montants que l''entreprise attend de la cession d''immobilisations, telles que des biens immobiliers ou des equipements.'),
(230, 'Creances sur cessions de titres de placement', '4986', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placement, tels que des actions ou des obligations.'),
(230, 'Autres Creances H.A.O.', '4988', 'Ce compte enregistre les autres creances hors activites ordinaires (H.A.O.) de l''entreprise, qui ne rentrent pas dans d''autres categories specifiques de creances.'),

(231, 'Sur operations d''exploitation', '4991', 'Ce compte enregistre les produits et les charges sur les operations d''exploitation de l''entreprise, telles que les ventes de biens ou de services.'),
(231, 'Sur operations financieres', '4997', 'Ce compte enregistre les produits et les charges sur les operations financieres de l''entreprise, telles que les revenus d''interets ou les pertes de change.'),
(231, 'Sur operations H.A.O.', '4998', 'Ce compte enregistre les produits et les charges sur les operations hors activites ordinaires (H.A.O.) de l''entreprise, qui ne rentrent pas dans d''autres categories specifiques.'),

(232, 'Titres du Tresor a court terme', '5011', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Tresor a court terme, emis par le gouvernement et ayant une echeance a court terme.'),
(232, 'Titres d''organismes financiers', '5012', 'Ce compte enregistre les investissements de l''entreprise dans des titres emis par des organismes financiers, tels que des obligations ou des actions.'),
(232, 'Bons de caisse a court terme', '5013', 'Ce compte enregistre les investissements de l''entreprise dans des bons de caisse a court terme, qui sont des titres de creance emis par des institutions financieres.'),
(232, 'Frais d''acquisition des titres de tresor et bons de caisse', '5016', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition de titres du Tresor a court terme et de bons de caisse.'),

(233, 'Actions ou parts propres', '5021', 'Ce compte enregistre les actions ou parts d''entreprise detenues par l''entreprise elle-meme, souvent dans le cadre de programmes de rachat d''actions.'),
(233, 'Actions cotees', '5022', 'Ce compte enregistre les actions cotees en bourse detenues par l''entreprise comme investissement.'),
(233, 'Actions non cotees', '5023', 'Ce compte enregistre les actions non cotees en bourse detenues par l''entreprise comme investissement.'),
(233, 'Actions demembrees (certificats d''investissement ; droits de vote)', '5024', 'Ce compte enregistre les actions demembrees, telles que les certificats d''investissement ou les droits de vote separes des droits economiques.'),
(233, 'Autres actions', '5025', 'Ce compte enregistre les actions de l''entreprise qui ne rentrent pas dans d''autres categories specifiques.'),
(233, 'Frais d''acquisition des actions', '5026', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition d''actions, tels que les frais de courtage ou les honoraires d''avocats.'),

(234, 'Obligations emises par la societe et rachetees par elle', '5031', 'Ce compte enregistre les obligations emises par l''entreprise et rachetees ulterieurement par elle-meme.'),
(234, 'Obligations cotees', '5032', 'Ce compte enregistre les obligations cotees en bourse detenues par l''entreprise comme investissement.'),
(234, 'Obligations non cotees', '5033', 'Ce compte enregistre les obligations non cotees en bourse detenues par l''entreprise comme investissement.'),
(234, 'Autres obligations', '5035', 'Ce compte enregistre les obligations de l''entreprise qui ne rentrent pas dans d''autres categories specifiques.'),
(234, 'Frais d''acquisition des obligations', '5036', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition d''obligations, tels que les frais de courtage ou les honoraires d''avocats.'),

(235, 'Bons de souscription d''actions', '5042', 'Ce compte enregistre les bons de souscription d''actions emis par l''entreprise, qui donnent a leur detenteur le droit d''acheter des actions de l''entreprise a un prix specifie et pendant une periode determinee.'),
(235, 'Bons de souscription d''obligations', '5043', 'Ce compte enregistre les bons de souscription d''obligations emis par l''entreprise, qui donnent a leur detenteur le droit d''acheter des obligations de l''entreprise a un prix specifie et pendant une periode determinee.'),

(237, 'Titres du Tresor et bons de caisse a court terme', '5061', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Tresor et des bons de caisse a court terme, qui sont des instruments financiers a faible risque et a maturite courte.'),
(237, 'Actions', '5062', 'Ce compte enregistre les investissements de l''entreprise dans des actions d''autres societes, qui representent des participations dans le capital de ces societes.'),
(237, 'Obligations', '5063', 'Ce compte enregistre les investissements de l''entreprise dans des obligations emises par d''autres entites, qui representent des dettes contractees par ces entites envers l''entreprise.'),

(244, 'Warrants', '5181', 'Ce compte enregistre les warrants detenus par l''entreprise, qui sont des options permettant d''acheter ou de vendre des actions a un prix specifie pendant une periode determinee.'),
(244, 'Billets de fonds', '5182', 'Ce compte enregistre les billets de fonds detenus par l''entreprise, qui sont des instruments de dette a court terme emis par des institutions financieres.'),
(244, 'Cheques de voyage', '5185', 'Ce compte enregistre les cheques de voyage detenus par l''entreprise, qui sont des moyens de paiement securises utilises par les voyageurs.'),
(244, 'Coupons echus', '5186', 'Ce compte enregistre les coupons d''obligations echus mais non encore encaisses par l''entreprise.'),
(244, 'Interets echus des obligations', '5187', 'Ce compte enregistre les interets echus des obligations detenues par l''entreprise mais non encore encaisses.'),

(245, 'Banques en monnaie nationale', '5211', 'Ce compte enregistre les fonds detenus par l''entreprise aupres de banques nationales dans la monnaie nationale du pays ou elle opere.'),
(245, 'Banques en devises', '5215', 'Ce compte enregistre les fonds detenus par l''entreprise aupres de banques dans des devises etrangeres autres que sa monnaie nationale.'),

(250, 'Banque, interets courus charges a payer', '5261', 'Ce compte enregistre les interets courus sur les charges a payer de l''entreprise, tels que les interets a payer sur des emprunts ou des dettes.'),
(250, 'Banque, interets courus produits a recevoir', '5267', 'Ce compte enregistre les interets courus sur les produits a recevoir de l''entreprise, tels que les interets a recevoir sur des placements ou des creances.'),

(270, 'Caisse en monnaie nationale', '5711', 'Ce compte enregistre les fonds en especes detenus par l''entreprise dans la monnaie nationale du pays ou elle opere.'),
(270, 'Caisse en devises', '5712', 'Ce compte enregistre les fonds en especes detenus par l''entreprise dans des devises etrangeres autres que la monnaie nationale.'),

(271, 'En monnaie nationale', '5721', 'Ce compte enregistre les fonds detenus par l''entreprise dans la monnaie nationale du pays ou elle opere, autres que ceux en caisse.'),
(271, 'En devise', '5722', 'Ce compte enregistre les fonds detenus par l''entreprise dans des devises etrangeres autres que la monnaie nationale, autres que ceux en caisse.'),

(272, 'En monnaie nationale', '5731', 'Ce compte enregistre les fonds detenus par l''entreprise dans la monnaie nationale du pays ou elle opere, autres que ceux en caisse ou en banque.'),
(272, 'En devise', '5732', 'Ce compte enregistre les fonds detenus par l''entreprise dans des devises etrangeres autres que la monnaie nationale, autres que ceux en caisse ou en banque.'),

(283, 'Dans la Region', '6011', 'Ce compte enregistre les achats effectues par l''entreprise dans la region specifiee.'),
(283, 'Hors Region', '6012', 'Ce compte enregistre les achats effectues par l''entreprise en dehors de la region specifiee.'),
(283, 'Aux entites du groupe dans la Region', '6013', 'Ce compte enregistre les achats effectues par l''entreprise aupres des entites de son groupe situees dans la region specifiee.'),
(283, 'Aux entites du groupe hors Region', '6014', 'Ce compte enregistre les achats effectues par l''entreprise aupres des entites de son groupe situees en dehors de la region specifiee.'),
(283, 'Frais sur achats', '6015', 'Ce compte enregistre les frais associes aux achats effectues par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(283, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6019', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats, qui ne sont pas ventiles dans d''autres comptes specifiques.'),

(284, 'Dans la Region', '6021', 'Ce compte enregistre les achats effectues par l''entreprise dans la region specifiee.'),
(284, 'Hors Region', '6022', 'Ce compte enregistre les achats effectues par l''entreprise en dehors de la region specifiee.'),
(284, 'Aux entites du groupe dans la Region', '6023', 'Ce compte enregistre les achats effectues par l''entreprise aupres des entites de son groupe situees dans la region specifiee.'),
(284, 'Aux entites du groupe hors Region', '6024', 'Ce compte enregistre les achats effectues par l''entreprise aupres des entites de son groupe situees en dehors de la region specifiee.'),
(284, 'Frais sur achats', '6025', 'Ce compte enregistre les frais associes aux achats effectues par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(284, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6029', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats, qui ne sont pas ventiles dans d''autres comptes specifiques.'),

(285, 'Variations des stocks de marchandises', '6031', 'Ce compte enregistre les variations de valeur des stocks de marchandises detenus par l''entreprise, generalement en raison de changements de prix ou de quantites.'),
(285, 'Variations des stocks de matieres premieres et fournitures liees', '6032', 'Ce compte enregistre les variations de valeur des stocks de matieres premieres et fournitures liees detenus par l''entreprise, generalement en raison de changements de prix ou de quantites.'),
(285, 'Variations des stocks d''autres approvisionnements', '6033', 'Ce compte enregistre les variations de valeur des autres approvisionnements detenus par l''entreprise, tels que les produits semi-finis ou les fournitures de bureau, generalement en raison de changements de prix ou de quantites.'),

(286, 'Matieres consommables', '6041', 'Ce compte enregistre les matieres consommables utilisees par l''entreprise dans son processus de production ou dans la prestation de services.'),
(286, 'Matieres combustibles', '6042', 'Ce compte enregistre les matieres combustibles utilisees par l''entreprise, telles que le charbon, le gaz ou le fioul.'),
(286, 'Produits d''entretien', '6043', 'Ce compte enregistre les produits d''entretien utilises par l''entreprise pour maintenir ses installations et ses equipements en bon etat.'),
(286, 'Fournitures d''atelier et d''usine', '6044', 'Ce compte enregistre les fournitures utilisees dans les ateliers et les usines de l''entreprise, telles que les outils et les equipements de protection individuelle.'),
(286, 'Frais sur achats', '6045', 'Ce compte enregistre les frais associes aux achats effectues par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(286, 'Fournitures de magasin', '6046', 'Ce compte enregistre les fournitures utilisees dans les magasins de l''entreprise, telles que les emballages ou les etiquettes.'),
(286, 'Fournitures de bureau', '6047', 'Ce compte enregistre les fournitures utilisees dans les bureaux de l''entreprise, telles que les fournitures de papeterie ou les equipements informatiques.'),
(286, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6049', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures, qui ne sont pas ventiles dans d''autres comptes specifiques.'),

(287, 'Fournitures non stockables - Eau', '6051', 'Ce compte enregistre les achats de fournitures non stockables liees a l''eau, telles que l''eau potable ou l''eau pour usage industriel.'),
(287, 'Fournitures non stockables - electricite', '6052', 'Ce compte enregistre les achats de fournitures non stockables liees a l''electricite, telles que l''electricite utilisee pour les installations de l''entreprise.'),
(287, 'Fournitures non stockables - Autres energies', '6053', 'Ce compte enregistre les achats de fournitures non stockables liees a d''autres formes d''energie, telles que le gaz ou le fioul.'),
(287, 'Fournitures d''entretien non stockables', '6054', 'Ce compte enregistre les achats de fournitures d''entretien non stockables utilisees par l''entreprise pour maintenir ses installations en bon etat.'),
(287, 'Fournitures de bureau non stockables', '6055', 'Ce compte enregistre les achats de fournitures de bureau non stockables utilisees par l''entreprise dans ses operations quotidiennes.'),
(287, 'Achats de petit materiel et outillage', '6056', 'Ce compte enregistre les achats de petit materiel et d''outillage utilises par l''entreprise dans ses activites de production ou de service.'),
(287, 'Achats d''etudes et prestations de services', '6057', 'Ce compte enregistre les achats d''etudes et de prestations de services externes realises par l''entreprise.'),
(287, 'Achats de travaux, materiels et equipements', '6058', 'Ce compte enregistre les achats de travaux, de materiels et d''equipements realises par l''entreprise pour son exploitation.'),
(287, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6059', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures non stockables, qui ne sont pas ventiles dans d''autres comptes specifiques.'),

(288, 'Emballages perdus', '6081', 'Ce compte enregistre les achats d''emballages qui sont perdus ou non recuperables apres utilisation par l''entreprise.'),
(288, 'Emballages recuperables non identifiables', '6082', 'Ce compte enregistre les achats d''emballages qui sont recuperables mais ne peuvent pas etre identifies individuellement apres utilisation par l''entreprise.'),
(288, 'Emballages a usage mixte', '6083', 'Ce compte enregistre les achats d''emballages qui peuvent etre utilises a la fois comme emballages et comme produits finis.'),
(288, 'Frais sur achats', '6085', 'Ce compte enregistre les frais associes aux achats effectues par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(288, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6089', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats d''emballages, qui ne sont pas ventiles dans d''autres comptes specifiques.'),

(293, 'Voyages et deplacements', '6181', 'Ce compte enregistre les frais lies aux voyages et deplacements effectues par le personnel de l''entreprise, tels que les frais de transport, d''hebergement et de restauration.'),
(293, 'Transports entre etablissements ou chantiers', '6182', 'Ce compte enregistre les frais lies aux transports de biens ou de personnes entre les differents etablissements ou chantiers de l''entreprise.'),
(293, 'Transports administratifs', '6183', 'Ce compte enregistre les frais lies aux transports administratifs, tels que les frais de courrier ou de messagerie.'),

(295, 'Locations de terrains', '6221', 'Ce compte enregistre les frais de location de terrains payes par l''entreprise pour l''utilisation de terrains appartenant a des tiers.'),
(295, 'Locations de batiments', '6222', 'Ce compte enregistre les frais de location de batiments payes par l''entreprise pour l''utilisation de locaux appartenant a des tiers.'),
(295, 'Locations de materiels et outillages', '6223', 'Ce compte enregistre les frais de location de materiels et d''outillages payes par l''entreprise pour l''utilisation d''equipements appartenant a des tiers.'),
(295, 'Malis sur emballages', '6224', 'Ce compte enregistre les pertes financieres resultant de la location d''emballages, generalement dues a des dommages ou a des pertes.'),
(295, 'Locations d''emballages', '6225', 'Ce compte enregistre les frais de location d''emballages payes par l''entreprise pour l''utilisation d''emballages appartenant a des tiers.'),
(295, 'Fermages et loyers du foncier', '6226', 'Ce compte enregistre les frais de location de terres agricoles ou de proprietes foncieres payes par l''entreprise pour des activites agricoles ou immobilieres.'),
(295, 'Locations et charges locatives diverses', '6228', 'Ce compte enregistre les frais de location et autres charges locatives payes par l''entreprise pour d''autres types de biens ou d''equipements.'),

(296, 'Credit-bail immobilier', '6232', 'Ce compte enregistre les frais lies au credit-bail immobilier, une forme de financement ou l''entreprise loue un bien immobilier avec une option d''achat a la fin du contrat.'),
(296, 'Credit-bail mobilier', '6233', 'Ce compte enregistre les frais lies au credit-bail mobilier, une forme de financement ou l''entreprise loue des equipements ou des biens mobiliers avec une option d''achat a la fin du contrat.'),
(296, 'Location-vente', '6234', 'Ce compte enregistre les frais lies a la location-vente, une transaction ou l''entreprise loue un bien avec l''intention de l''acheter a la fin de la periode de location.'),
(296, 'Autres contrats de location acquisition', '6238', 'Ce compte enregistre les frais lies a d''autres types de contrats de location acquisition qui ne rentrent pas dans les categories precedentes.'),

(297, 'Entretien et reparations des biens immobiliers', '6241', 'Ce compte enregistre les frais lies a l''entretien et aux reparations des biens immobiliers de l''entreprise, tels que les batiments, les installations et les equipements fixes.'),
(297, 'Entretien et reparations des biens mobiliers', '6242', 'Ce compte enregistre les frais lies a l''entretien et aux reparations des biens mobiliers de l''entreprise, tels que les equipements, les machines et les vehicules.'),
(297, 'Maintenance', '6243', 'Ce compte enregistre les frais lies a la maintenance preventive et corrective des equipements et des installations de l''entreprise, visant a assurer leur bon fonctionnement et leur durabilite.'),
(297, 'Charges de demantelement et remise en etat', '6244', 'Ce compte enregistre les charges liees au demantelement et a la remise en etat des installations ou des equipements de l''entreprise, generalement en fin de vie utile.'),
(297, 'Autres entretiens et reparations', '6248', 'Ce compte enregistre les frais lies a d''autres types d''entretiens et de reparations qui ne rentrent pas dans les categories precedentes.'),

(298, 'Assurances multirisques', '6251', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour une couverture multirisques, qui protege contre plusieurs types de risques, tels que les dommages materiels, les pertes financieres et la responsabilite civile.'),
(298, 'Assurances materielles de transport', '6252', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour couvrir les biens materiels lors de leur transport, que ce soit par voie terrestre, maritime, aerienne ou ferroviaire.'),
(298, 'Assurances risques d''exploitation', '6253', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour couvrir les risques specifiques lies a son activite commerciale ou industrielle, tels que les pertes d''exploitation, les dommages causes par des tiers ou les interruptions d''activite.'),
(298, 'Assurances responsabilite du producteur', '6254', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour couvrir sa responsabilite en tant que producteur, notamment en cas de dommages ou de prejudices causes par ses produits.'),
(298, 'Assurances insolvabilite clients', '6255', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour se premunir contre les risques d''insolvabilite de ses clients, garantissant ainsi le paiement des creances impayees.'),
(298, 'Assurances transport sur ventes', '6257', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour couvrir les risques lies au transport des marchandises vendues a ses clients, assurant ainsi leur livraison et leur integrite.'),
(298, 'Autres primes d''assurances', '6258', 'Ce compte enregistre les primes d''assurance payees par l''entreprise pour d''autres types de couvertures qui ne rentrent pas dans les categories precedentes.'),

(299, 'etudes et recherches', '6261', 'Ce compte enregistre les frais lies aux etudes et aux recherches menees par l''entreprise pour developper de nouveaux produits, ameliorer les processus existants ou explorer de nouvelles opportunites commerciales.'),
(299, 'Documentation generale', '6265', 'Ce compte enregistre les frais lies a la documentation generale utilisee par l''entreprise, tels que les abonnements a des revues professionnelles, les achats de livres ou les frais d''acces a des bases de donnees.'),
(299, 'Documentation technique', '6266', 'Ce compte enregistre les frais lies a la documentation technique utilisee par l''entreprise, tels que les manuels d''utilisation, les specifications techniques ou les plans de construction.'),

(300, 'Annonces, insertions', '6271', 'Ce compte enregistre les frais lies a la publication d''annonces et d''insertions publicitaires dans les medias, tels que les journaux, les magazines ou les sites web.'),
(300, 'Catalogues, imprimes publicitaires', '6272', 'Ce compte enregistre les frais lies a la creation et a l''impression de catalogues et d''autres supports publicitaires utilises par l''entreprise pour promouvoir ses produits ou ses services.'),
(300, 'echantillons', '6273', 'Ce compte enregistre les frais lies a la distribution d''echantillons gratuits de produits par l''entreprise, dans le but de promouvoir leur vente ou leur utilisation.'),
(300, 'Foires et expositions', '6274', 'Ce compte enregistre les frais lies a la participation de l''entreprise a des foires commerciales, des salons professionnels ou des expositions, pour presenter ses produits ou ses services.'),
(300, 'Publications', '6275', 'Ce compte enregistre les frais lies a la publication de publications d''entreprise, telles que des magazines d''entreprise ou des bulletins d''information, destinees a informer et a communiquer avec les clients, les employes ou d''autres parties prenantes.'),
(300, 'Cadeaux a la clientele', '6276', 'Ce compte enregistre les frais lies a l''achat de cadeaux destines aux clients ou aux partenaires commerciaux de l''entreprise, dans le cadre d''actions de fidelisation ou de relations publiques.'),
(300, 'Frais de colloques, seminaires, conferences', '6277', 'Ce compte enregistre les frais lies a la participation de l''entreprise a des colloques, des seminaires ou des conferences, que ce soit en tant qu''organisateur ou en tant que participant.'),
(300, 'Autres charges de publicite et relations publiques', '6278', 'Ce compte enregistre les autres frais lies a la publicite et aux relations publiques qui ne rentrent pas dans les categories precedentes.'),

(301, 'Frais de telephone', '6281', 'Ce compte enregistre les frais lies aux communications telephoniques effectuees par l''entreprise, que ce soit pour les appels locaux, nationaux ou internationaux.'),
(301, 'Frais de telex', '6282', 'Ce compte enregistre les frais lies a l''utilisation du telex, un systeme de communication par ecrit utilisant des terminaux specifiques et des lignes telephoniques.'),
(301, 'Frais de telecopie', '6283', 'Ce compte enregistre les frais lies a l''utilisation de la telecopie, un systeme de transmission de documents a distance par voie telephonique.'),
(301, 'Autres frais de telecommunications', '6288', 'Ce compte enregistre les autres frais lies aux communications electroniques ou telephoniques qui ne rentrent pas dans les categories precedentes.'),

(302, 'Frais sur titres (vente, garde)', '6311', 'Ce compte enregistre les frais lies a la detention et a la gestion des titres financiers par l''entreprise, tels que les frais de courtage, de conservation ou de gestion de portefeuille.'),
(302, 'Frais sur effets', '6312', 'Ce compte enregistre les frais lies a la gestion et au traitement des effets de commerce, tels que les frais de remise, d''encaissement ou de gestion de cheques et de traites.'),
(302, 'Location de coffres', '6313', 'Ce compte enregistre les frais lies a la location de coffres-forts dans les banques ou autres etablissements financiers, utilises pour la conservation de valeurs ou de documents importants.'),
(302, 'Commissions d''affacturage', '6314', 'Ce compte enregistre les commissions payees par l''entreprise a une societe d''affacturage pour la gestion de ses creances clients, notamment l''assurance-credit, le recouvrement et le financement.'),
(302, 'Commissions sur cartes de credit', '6315', 'Ce compte enregistre les commissions payees par l''entreprise aux emetteurs de cartes de credit pour l''utilisation de leurs services de paiement electronique par carte.'),
(302, 'Frais d''emission d''emprunts', '6316', 'Ce compte enregistre les frais lies a l''emission d''emprunts par l''entreprise, tels que les frais d''emission, de placement ou de garantie associes a l''emission de titres de dette.'),
(302, 'Frais sur instruments monnaie electronique', '6317', 'Ce compte enregistre les frais lies a l''utilisation d''instruments de monnaie electronique, tels que les cartes prepayees ou les portefeuilles electroniques, pour effectuer des transactions financieres.'),
(302, 'Autres frais bancaires', '6318', 'Ce compte enregistre les autres frais bancaires payes par l''entreprise qui ne rentrent pas dans les categories precedentes.'),

(303, 'Commissions et courtages sur ventes', '6322', 'Ce compte enregistre les commissions et les courtages payes par l''entreprise a des intermediaires ou des agents pour la vente de ses produits ou services.'),
(303, 'Honoraires des professions reglementees', '6324', 'Ce compte enregistre les honoraires payes par l''entreprise a des professions reglementees, telles que les avocats, les experts-comptables ou les notaires, pour des services professionnels rendus.'),
(303, 'Frais d''actes et de contentieux', '6325', 'Ce compte enregistre les frais lies a la redaction d''actes juridiques et aux procedures contentieuses, tels que les frais de notaire, les frais d''huissier ou les honoraires d''avocat.'),
(303, 'Remunerations d''affacturage', '6326', 'Ce compte enregistre les remunerations payees par l''entreprise a une societe d''affacturage pour la gestion de ses creances clients, notamment l''assurance-credit, le recouvrement et le financement.'),
(303, 'Remunerations des autres prestataires de services', '6327', 'Ce compte enregistre les remunerations payees par l''entreprise a d''autres prestataires de services pour des services rendus, tels que les consultants, les agences de communication ou les prestataires informatiques.'),
(303, 'Divers frais', '6328', 'Ce compte enregistre les autres frais de services qui ne rentrent pas dans les categories precedentes, tels que les frais de nettoyage, de gardiennage ou de maintenance.'),

(305, 'Redevances pour brevets, licences', '6342', 'Ce compte enregistre les redevances payees par l''entreprise pour l''utilisation de brevets ou de licences detenus par des tiers, permettant l''exploitation de technologies ou de proprietes intellectuelles protegees.'),
(305, 'Redevances pour logiciels', '6343', 'Ce compte enregistre les redevances payees par l''entreprise pour l''utilisation de logiciels detenus par des tiers, permettant l''exploitation de programmes informatiques ou d''applications specifiques.'),
(305, 'Redevances pour marques', '6344', 'Ce compte enregistre les redevances payees par l''entreprise pour l''utilisation de marques detenues par des tiers, permettant l''utilisation de marques deposees ou de noms commerciaux proteges.'),
(305, 'Redevances pour site internet', '6345', 'Ce compte enregistre les redevances payees par l''entreprise pour l''utilisation de sites internet ou de contenus en ligne detenus par des tiers, permettant l''acces a des plateformes web ou a des contenus specifiques.'),
(305, 'Redevances pour concessions, droits et valeurs similaires', '6346', 'Ce compte enregistre les redevances payees par l''entreprise pour l''obtention de concessions, de droits ou de valeurs similaires detenus par des tiers, permettant l''utilisation de biens ou de services specifiques.'),

(306, 'Cotisations', '6351', 'Ce compte enregistre les cotisations payees par l''entreprise a des organismes, associations ou syndicats, pour adherer a des groupements professionnels, des chambres de commerce ou des organisations sectorielles.'),
(306, 'Concours divers', '6358', 'Ce compte enregistre les frais lies a la participation de l''entreprise a differents concours, competitions ou prix, ainsi que les dons verses a des fondations ou des œuvres caritatives dans le cadre de concours ou d''evenements.'),

(307, 'Personnel interimaire', '6371', 'Ce compte enregistre les frais lies a l''emploi de personnel interimaire ou temporaire, recrute par une agence d''interim pour repondre a des besoins ponctuels ou temporaires de l''entreprise.'),
(307, 'Personnel detache ou prete a l''entite', '6372', 'Ce compte enregistre les frais lies a l''emploi de personnel detache ou prete a l''entreprise par une autre entite, telle qu''une societe mere, une filiale ou une entreprise partenaire, pour une periode determinee.'),

(308, 'Frais de recrutement du personnel', '6381', 'Ce compte enregistre les frais lies au recrutement de personnel par l''entreprise, tels que les honoraires d''agences de recrutement, les frais de publicite pour les offres d''emploi ou les frais de selection des candidats.'),
(308, 'Frais de demenagement', '6382', 'Ce compte enregistre les frais lies au demenagement de personnel, notamment les frais de transport, d''emballage, de stockage ou de reinstallation associes a un changement de residence pour les besoins professionnels.'),
(308, 'Receptions', '6383', 'Ce compte enregistre les frais lies a l''organisation de receptions ou d''evenements professionnels par l''entreprise, tels que les frais de restauration, de location de salle, d''animation ou de materiel evenementiel.'),
(308, 'Missions', '6384', 'Ce compte enregistre les frais lies aux missions professionnelles effectuees par le personnel de l''entreprise, tels que les frais de deplacement, d''hebergement, de restauration ou les frais professionnels engages lors de deplacements professionnels.'),
(308, 'Charges de copropriete', '6385', 'Ce compte enregistre les charges liees a la copropriete des locaux occupes par l''entreprise, telles que les charges de gestion, d''entretien, d''assurance ou de travaux communs.'),
(308, 'Charges externes diverses', '6388', 'Ce compte enregistre les autres charges externes supportees par l''entreprise qui ne rentrent pas dans les categories precedentes, telles que les honoraires de consultants, les frais de formation externe ou les frais de communication externes.'),

(309, 'Impots fonciers et taxes annexes', '6411', 'Ce compte enregistre les impots fonciers et les taxes associees payes par l''entreprise sur ses biens immobiliers ou ses terrains, ainsi que les taxes annexes liees a la propriete immobiliere.'),
(309, 'Patentes, licences et taxes annexes', '6412', 'Ce compte enregistre les patentes, licences et autres taxes similaires payees par l''entreprise pour l''exercice de ses activites commerciales ou professionnelles, ainsi que les taxes annexes associees.'),
(309, 'Taxes sur appointements et salaires', '6413', 'Ce compte enregistre les taxes ou cotisations sociales prelevees sur les salaires et les remunerations verses par l''entreprise a ses employes, notamment les cotisations sociales patronales et salariales.'),
(309, 'Taxes d''apprentissage', '6414', 'Ce compte enregistre les taxes d''apprentissage payees par l''entreprise pour financer la formation des apprentis, conformement a la reglementation en vigueur sur l''apprentissage.'),
(309, 'Formation professionnelle continue', '6415', 'Ce compte enregistre les depenses liees a la formation professionnelle continue des employes de l''entreprise, telles que les frais de formation, les frais pedagogiques ou les frais de deplacement associes a la formation.'),
(309, 'Autres impots et taxes directs', '6418', 'Ce compte enregistre les autres impots et taxes directs payes par l''entreprise qui ne rentrent pas dans les categories precedentes, tels que l''impot sur les societes, l''impot sur le revenu des entreprises ou d''autres taxes similaires.'),

(311, 'Droits de mutation', '6461', 'Ce compte enregistre les droits de mutation payes par l''entreprise lors de l''acquisition ou du transfert de biens immobiliers ou de droits immobiliers, tels que les droits de mutation a titre onereux ou les droits de mutation a titre gratuit.'),
(311, 'Droits de timbre', '6462', 'Ce compte enregistre les droits de timbre payes par l''entreprise sur certains actes ou documents legaux, tels que les actes notaries, les contrats ou les titres de propriete, conformement a la legislation en vigueur sur les droits de timbre.'),
(311, 'Taxes sur les vehicules de societes', '6463', 'Ce compte enregistre les taxes annuelles payees par l''entreprise sur les vehicules de societes utilises dans le cadre de son activite professionnelle, conformement a la legislation en vigueur sur la fiscalite des vehicules de societe.'),
(311, 'Vignettes', '6464', 'Ce compte enregistre les frais lies a l''achat de vignettes ou de certificats d''immatriculation pour les vehicules utilises par l''entreprise, permettant leur circulation sur les routes ou autoroutes soumises a peage.'),
(311, 'Autres droits', '6468', 'Ce compte enregistre les autres droits ou taxes specifiques payes par l''entreprise qui ne rentrent pas dans les categories precedentes, tels que les droits de succession, les droits de douane ou d''autres droits similaires.'),

(312, 'Penalites d''assiette, impots directs', '6471', 'Ce compte enregistre les penalites d''assiette appliquees par l''administration fiscale sur les impots directs, telles que l''impot sur les societes, l''impot sur le revenu des entreprises ou d''autres impots similaires.'),
(312, 'Penalites d''assiette, impots indirects', '6472', 'Ce compte enregistre les penalites d''assiette appliquees par l''administration fiscale sur les impots indirects, tels que la TVA, la taxe sur les produits petroliers ou d''autres taxes indirectes.'),
(312, 'Penalites de recouvrement, impots directs', '6473', 'Ce compte enregistre les penalites de recouvrement appliquees par l''administration fiscale sur les impots directs en cas de retard ou de non-paiement, conformement a la legislation fiscale en vigueur.'),
(312, 'Penalites de recouvrement, impots indirects', '6474', 'Ce compte enregistre les penalites de recouvrement appliquees par l''administration fiscale sur les impots indirects en cas de retard ou de non-paiement, conformement a la legislation fiscale en vigueur.'),
(312, 'Autres amendes penales et fiscales', '6478', 'Ce compte enregistre les autres amendes penales et fiscales payees par l''entreprise qui ne rentrent pas dans les categories precedentes, telles que les amendes pour non-respect des obligations legales ou reglementaires.'),

(314, 'Clients', '6511', 'Ce compte enregistre les montants dus par les clients a l''entreprise pour des biens vendus ou des services rendus, mais pas encore payes. Il represente les creances commerciales de l''entreprise sur ses clients.'),
(314, 'Autres debiteurs', '6515', 'Ce compte enregistre les autres montants dus a l''entreprise par des tiers autres que les clients, tels que les avances versees, les creances diverses ou les autres debiteurs non classes dans les categories precedentes.'),

(315, 'Quote-part transferee de benefices (comptabilite du gerant)', '6521', 'Ce compte enregistre la quote-part des benefices de l''entreprise transferee a la comptabilite du gerant, generalement dans le cadre d''une societe de personnes ou le gerant detient une part des benefices.'),
(315, 'Pertes imputees par transfert (comptabilite des associes non-gerants)', '6525', 'Ce compte enregistre les pertes imputees par transfert a la comptabilite des associes non-gerants, generalement dans le cadre d''une societe de personnes ou les associes non-gerants supportent une part des pertes de l''entreprise.'),

(316, 'Immobilisations incorporelles', '6541', 'Ce compte enregistre les immobilisations incorporelles de l''entreprise, telles que les brevets, les marques, les logiciels informatiques ou les droits d''exploitation.'),
(316, 'Immobilisations corporelles', '6542', 'Ce compte enregistre les immobilisations corporelles de l''entreprise, telles que les terrains, les batiments, les machines, les equipements ou les vehicules utilises dans le cadre de l''activite professionnelle.'),

(319, 'Indemnites de fonction et autres remunerations d''administrateurs', '6581', 'Ce compte enregistre les indemnites de fonction et autres remunerations versees aux administrateurs de l''entreprise pour leurs services rendus. Il peut egalement inclure d''autres types de remunerations specifiques aux administrateurs.'),
(319, 'Dons', '6582', 'Ce compte enregistre les dons faits par l''entreprise a des organismes de charite ou a des causes sociales. Les dons peuvent etre en nature ou en especes et sont generalement destines a soutenir des initiatives philanthropiques.'),
(319, 'Mecenat', '6583', 'Ce compte enregistre les depenses liees au mecenat culturel ou artistique de l''entreprise. Le mecenat implique generalement le soutien financier ou en nature a des projets culturels, artistiques ou patrimoniaux, sans attente de contrepartie commerciale.'),
(319, 'Autres charges diverses', '6588', 'Ce compte enregistre les autres charges diverses qui ne rentrent pas dans les categories precedentes. Il peut inclure divers frais et depenses qui ne sont pas directement lies aux activites operationnelles de l''entreprise.'),

(320, 'sur risques a court terme', '6591', 'Ce compte enregistre les charges pour depreciations et provisions liees aux risques a court terme encourus par l''entreprise. Ces provisions sont constituees pour couvrir les pertes potentielles resultant de risques specifiques survenant a court terme.'),
(320, 'sur stocks', '6592', 'Ce compte enregistre les charges pour depreciations et provisions liees aux stocks de l''entreprise. Ces provisions sont constituees pour couvrir les pertes potentielles resultant de la depreciation ou de l''obsolescence des stocks.'),
(320, 'sur creances', '6594', 'Ce compte enregistre les charges pour depreciations et provisions liees aux creances de l''entreprise. Ces provisions sont constituees pour couvrir les pertes potentielles resultant du non-paiement ou du paiement partiel des creances par les debiteurs.'),
(320, 'Autres charges pour depreciations et provisions pour risques a court terme', '6598', 'Ce compte enregistre les autres charges pour depreciations et provisions liees aux risques a court terme qui ne rentrent pas dans les categories precedentes. Il peut inclure des provisions pour d''autres types de risques specifiques a court terme.'),

(321, 'Appointements salaires et commissions', '6611', 'Ce compte enregistre les appointements, salaires et commissions verses aux employes de l''entreprise pour leur travail. Il inclut les remunerations de base, les commissions basees sur les ventes ou les performances, ainsi que d''autres paiements salariaux.'),
(321, 'Primes et gratifications', '6612', 'Ce compte enregistre les primes et gratifications versees aux employes de l''entreprise en recompense de leur performance exceptionnelle, de leur anciennete ou pour d''autres raisons specifiques.'),
(321, 'Conges payes', '6613', 'Ce compte enregistre les charges liees aux conges payes accordes aux employes de l''entreprise. Il inclut les salaires verses pendant les periodes de conge annuel ou de conge de maladie, ainsi que les cotisations sociales associees.'),
(321, 'Indemnites de preavis, de licenciement et de recherche d''embauche', '6614', 'Ce compte enregistre les indemnites versees aux employes de l''entreprise dans le cadre de preavis de licenciement, de licenciement ou de recherche d''emploi. Ces indemnites peuvent etre dues a la fin d''un contrat de travail ou a d''autres circonstances.'),
(321, 'Indemnites de maladie versees aux travailleurs', '6615', 'Ce compte enregistre les indemnites de maladie versees aux travailleurs de l''entreprise en cas de conge de maladie. Ces indemnites sont destinees a compenser la perte de salaire due a l''incapacite de travailler en raison de la maladie.'),
(321, 'Supplement familial', '6616', 'Ce compte enregistre les supplements familiaux verses aux employes de l''entreprise en fonction de leur situation familiale. Il peut s''agir de prestations sociales destinees a soutenir les familles des employes, telles que les allocations familiales ou les prestations pour enfants a charge.'),
(321, 'Avantages en nature', '6617', 'Ce compte enregistre la valeur des avantages en nature fournis aux employes de l''entreprise en plus de leur salaire en especes. Les avantages en nature peuvent inclure le logement, la voiture de fonction, les repas ou d''autres avantages non monetaires.'),
(321, 'Autres remunerations directes', '6618', 'Ce compte enregistre les autres remunerations directes versees aux employes de l''entreprise qui ne rentrent pas dans les categories precedentes. Il peut inclure des paiements specifiques lies a des conditions de travail particulieres ou a des avantages sociaux specifiques.'),

(322, 'Appointements salaires et commissions', '6621', 'Ce compte enregistre les appointements, salaires et commissions verses aux employes de l''entreprise pour leur travail. Il inclut les remunerations de base, les commissions basees sur les ventes ou les performances, ainsi que d''autres paiements salariaux.'),
(322, 'Primes et gratifications', '6622', 'Ce compte enregistre les primes et gratifications versees aux employes de l''entreprise en recompense de leur performance exceptionnelle, de leur anciennete ou pour d''autres raisons specifiques.'),
(322, 'Conges payes', '6623', 'Ce compte enregistre les charges liees aux conges payes accordes aux employes de l''entreprise. Il inclut les salaires verses pendant les periodes de conge annuel ou de conge de maladie, ainsi que les cotisations sociales associees.'),
(322, 'Indemnites de preavis, de licenciement et de recherche d''embauche', '6624', 'Ce compte enregistre les indemnites versees aux employes de l''entreprise dans le cadre de preavis de licenciement, de licenciement ou de recherche d''emploi. Ces indemnites peuvent etre dues a la fin d''un contrat de travail ou a d''autres circonstances.'),
(322, 'Indemnites de maladie versees aux travailleurs', '6625', 'Ce compte enregistre les indemnites de maladie versees aux travailleurs de l''entreprise en cas de conge de maladie. Ces indemnites sont destinees a compenser la perte de salaire due a l''incapacite de travailler en raison de la maladie.'),
(322, 'Supplement familial', '6626', 'Ce compte enregistre les supplements familiaux verses aux employes de l''entreprise en fonction de leur situation familiale. Il peut s''agir de prestations sociales destinees a soutenir les familles des employes, telles que les allocations familiales ou les prestations pour enfants a charge.'),
(322, 'Avantages en nature', '6627', 'Ce compte enregistre la valeur des avantages en nature fournis aux employes de l''entreprise en plus de leur salaire en especes. Les avantages en nature peuvent inclure le logement, la voiture de fonction, les repas ou d''autres avantages non monetaires.'),
(322, 'Autres remunerations directes', '6628', 'Ce compte enregistre les autres remunerations directes versees aux employes de l''entreprise qui ne rentrent pas dans les categories precedentes. Il peut inclure des paiements specifiques lies a des conditions de travail particulieres ou a des avantages sociaux specifiques.'),

(323, 'Indemnites de logement', '6631', 'Ce compte enregistre les indemnites de logement versees aux employes de l''entreprise pour compenser les frais lies au logement, tels que le loyer ou les frais de logement temporaires.'),
(323, 'Indemnites de representation', '6632', 'Ce compte enregistre les indemnites de representation versees aux employes de l''entreprise pour couvrir les frais lies a la representation de l''entreprise lors d''evenements officiels, de reunions avec des clients ou d''autres occasions professionnelles.'),
(323, 'Indemnites d''expatriation', '6633', 'Ce compte enregistre les indemnites d''expatriation versees aux employes de l''entreprise qui travaillent a l''etranger. Ces indemnites sont destinees a compenser les couts supplementaires associes a la vie a l''etranger, tels que le logement, les deplacements ou les frais de subsistance.'),
(323, 'Indemnites de transport', '6634', 'Ce compte enregistre les indemnites de transport versees aux employes de l''entreprise pour couvrir les frais de deplacement entre leur domicile et leur lieu de travail, ainsi que pour d''autres deplacements professionnels lies a leur emploi.'),
(323, 'Autres indemnites et avantages divers', '6638', 'Ce compte enregistre les autres indemnites et avantages divers verses aux employes de l''entreprise qui ne rentrent pas dans les categories precedentes. Il peut inclure des avantages tels que les remboursements de frais medicaux, les indemnites pour uniformes ou d''autres prestations specifiques.'),

(324, 'Charges sociales sur remuneration du personnel national', '6641', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la remuneration versee a son personnel national. Ces charges sociales peuvent inclure les cotisations de securite sociale, les contributions aux regimes de retraite et d''assurance chomage, ainsi que d''autres charges sociales obligatoires.'),
(324, 'Charges sociales sur remuneration du personnel non national', '6642', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la remuneration versee a son personnel non national, tel que les expatries ou les travailleurs detaches. Ces charges sociales peuvent inclure les cotisations de securite sociale, les contributions aux regimes de retraite et d''assurance chomage, ainsi que d''autres charges sociales obligatoires.'),

(325, 'Remuneration du travail de l''exploitant', '6661', 'Ce compte enregistre la remuneration versee a l''exploitant ou au dirigeant de l''entreprise pour son travail. Il peut s''agir de salaires, de dividendes ou d''autres formes de remuneration.'),
(325, 'Charges sociales', '6662', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la remuneration versee a l''exploitant ou au dirigeant de l''entreprise. Ces charges sociales peuvent inclure les cotisations de securite sociale, les contributions aux regimes de retraite et d''assurance chomage, ainsi que d''autres charges sociales obligatoires.'),

(326, 'Personnel interimaire', '6671', 'Ce compte enregistre les couts lies au personnel interimaire employe par l''entreprise pour repondre a des besoins temporaires en main-d''œuvre. Ces couts peuvent inclure les salaires, les charges sociales et les honoraires verses a l''agence d''interim.'),
(326, 'Personnel detache ou prete a l''entite', '6672', 'Ce compte enregistre les couts lies au personnel detache ou prete a l''entite par d''autres entreprises ou agences de travail temporaire. Ces couts peuvent inclure les salaires, les charges sociales et les frais de mise a disposition.'),

(327, 'Versements aux syndicats et comites d''entreprise, d''etablissement', '6681', 'Ce compte enregistre les versements effectues par l''entreprise aux syndicats et aux comites d''entreprise ou d''etablissement. Ces versements peuvent etre destines a financer les activites syndicales, les œuvres sociales ou les actions des comites.'),
(327, 'Versements aux comites d''hygiene et de securite', '6682', 'Ce compte enregistre les versements effectues par l''entreprise aux comites d''hygiene et de securite. Ces versements peuvent etre destines a financer les activites de prevention des risques professionnels et a assurer la sante et la securite des travailleurs.'),
(327, 'Versements et contributions aux autres œuvres sociales', '6683', 'Ce compte enregistre les versements et contributions effectues par l''entreprise a d''autres œuvres sociales ou associations caritatives. Ces versements peuvent etre destines a soutenir des initiatives locales ou des projets sociaux specifiques.'),
(327, 'Medecine du travail et pharmacie', '6684', 'Ce compte enregistre les charges liees a la medecine du travail et a la pharmacie pour les employes de l''entreprise. Il inclut les frais medicaux, les examens de sante, les medicaments et les services de sante au travail.'),
(327, 'Assurances et organismes de sante', '6685', 'Ce compte enregistre les charges liees aux assurances et aux organismes de sante pour les employes de l''entreprise. Il inclut les primes d''assurance maladie, les cotisations aux regimes de prevoyance et les frais medicaux non rembourses par l''assurance.'),
(327, 'Assurances retraite et fonds de pension', '6686', 'Ce compte enregistre les charges liees aux assurances retraite et aux fonds de pension pour les employes de l''entreprise. Il inclut les cotisations aux regimes de retraite complementaire, les contributions aux plans d''epargne retraite et les frais de gestion des fonds de pension.'),
(327, 'Majorations et penalites sociales', '6687', 'Ce compte enregistre les majorations et penalites sociales imposees a l''entreprise en cas de non-respect des obligations sociales. Ces majorations peuvent etre dues a des retards de paiement, des erreurs de declaration ou d''autres infractions.'),
(327, 'Charges sociales diverses', '6688', 'Ce compte enregistre les autres charges sociales de l''entreprise qui ne rentrent pas dans les categories precedentes. Il peut inclure des charges telles que les cotisations de formation professionnelle, les contributions au financement de la securite sociale ou d''autres frais sociaux specifiques.'),

(328, 'Emprunts obligataires', '6711', 'Ce compte enregistre les emprunts contractes par l''entreprise sous forme d''obligations. Les obligations sont des titres de creance emis par l''entreprise et vendus sur les marches financiers. Les fonds ainsi obtenus sont generalement utilises pour financer des investissements ou des projets specifiques.'),
(328, 'Emprunts aupres des etablissements de credit', '6712', 'Ce compte enregistre les emprunts contractes par l''entreprise aupres des etablissements de credit tels que les banques et les institutions financieres. Ces emprunts peuvent prendre la forme de prets a court terme, de lignes de credit renouvelables ou de facilites de credit a long terme.'),
(328, 'Dettes liees a des participations', '6713', 'Ce compte enregistre les dettes contractees par l''entreprise en relation avec des participations dans d''autres entreprises ou entites. Ces dettes peuvent resulter de l''acquisition de participations minoritaires ou majoritaires dans d''autres entreprises, et sont generalement liees a des operations de fusion-acquisition ou de developpement strategique.'),
(328, 'Primes de remboursements des obligations', '6714', 'Ce compte enregistre les primes de remboursement versees par l''entreprise lors du remboursement anticipe d''obligations. Les primes de remboursement sont des montants supplementaires verses aux detenteurs d''obligations en cas de remboursement anticipe pour compenser la perte d''interets futurs.'),

(329, 'Interets dans loyers de location acquisition/credit-bail immobilier', '6722', 'Ce compte enregistre les interets percus par l''entreprise sur les loyers de location acquisition ou credit-bail immobilier qu''elle accorde a ses clients. Ces interets representent la remuneration financiere associee a la mise a disposition d''actifs immobiliers par l''entreprise.'),
(329, 'Interets dans loyers de location acquisition/credit-bail mobilier', '6723', 'Ce compte enregistre les interets percus par l''entreprise sur les loyers de location acquisition ou credit-bail mobilier qu''elle accorde a ses clients. Ces interets representent la remuneration financiere associee a la mise a disposition d''actifs mobiliers par l''entreprise.'),
(329, 'Interets dans loyers de location acquisition/location-vente', '6724', 'Ce compte enregistre les interets percus par l''entreprise sur les loyers de location acquisition ou location-vente qu''elle accorde a ses clients. Ces interets representent la remuneration financiere associee a la mise a disposition d''actifs par l''entreprise dans le cadre de contrats de location ou de location-vente.'),
(329, 'Interets dans loyers des autres locations acquisition', '6728', 'Ce compte enregistre les interets percus par l''entreprise sur les loyers de locations acquisition autres que celles specifiees dans les comptes precedents. Ces interets representent la remuneration financiere associee a la mise a disposition d''actifs par l''entreprise dans le cadre de contrats de location.'),

(331, 'Avances recues et depots crediteurs', '6741', 'Ce compte enregistre les avances recues par l''entreprise de la part de tiers ainsi que les depots crediteurs. Les avances recues sont des paiements anticipes effectues par les clients ou d''autres parties prenantes, tandis que les depots crediteurs representent des fonds deposes aupres de l''entreprise par des tiers.'),
(331, 'Comptes courants bloques', '6742', 'Ce compte enregistre les fonds deposes dans des comptes courants bloques, c''est-a-dire des comptes ou les fonds sont temporairement inaccessibles ou soumis a des restrictions de retrait.'),
(331, 'Interets sur obligations cautionnees', '6743', 'Ce compte enregistre les interets percus par l''entreprise sur les obligations cautionnees qu''elle a emises. Les obligations cautionnees sont des titres de creance assortis d''une garantie de remboursement fournie par un tiers, generalement une institution financiere ou une compagnie d''assurance.'),
(331, 'Interets sur dettes commerciales', '6744', 'Ce compte enregistre les interets percus par l''entreprise sur les dettes commerciales qu''elle a contractees. Les dettes commerciales comprennent generalement les dettes fournisseurs et les dettes resultant d''achats a credit.'),
(331, 'Interets bancaires et sur operations de financement (escompte)', '6745', 'Ce compte enregistre les interets percus par l''entreprise sur les operations de financement, y compris les interets bancaires et les interets resultant d''operations d''escompte de creances commerciales.'),
(331, 'Interets sur dettes diverses', '6748', 'Ce compte enregistre les interets percus par l''entreprise sur des dettes autres que celles specifiees dans les comptes precedents. Il peut s''agir par exemple d''interets sur des prets inter-entreprises ou des prets a des tiers.'),

(334, 'Pertes sur cessions de titre de placement', '6771', 'Ce compte enregistre les pertes subies par l''entreprise lors de la cession de titres de placement. Ces pertes resultent generalement de la difference entre le prix de vente des titres et leur cout d''acquisition ou leur valeur comptable.'),
(334, 'Malis provenant d''attribution gratuite d''actions au personnel salarie et aux dirigeants', '6772', 'Ce compte enregistre les malis resultant de l''attribution gratuite d''actions au personnel salarie et aux dirigeants de l''entreprise. Ces malis correspondent a la difference entre la valeur des actions attribuees gratuitement et leur valeur comptable.'),

(335, 'sur rentes viageres', '6781', 'Ce compte enregistre les produits financiers percus par l''entreprise sur les rentes viageres qu''elle a accordees. Les rentes viageres sont des paiements reguliers effectues par l''entreprise a un beneficiaire pendant toute sa vie en echange d''un capital initial.'),
(335, 'sur operations financieres', '6782', 'Ce compte enregistre les produits financiers percus par l''entreprise sur des operations financieres autres que celles specifiees dans les comptes precedents. Il peut s''agir par exemple de produits sur des operations de placement ou de produits sur des operations de couverture de risques.'),
(335, 'sur instruments de tresorerie', '6784', 'Ce compte enregistre les produits financiers percus par l''entreprise sur des instruments de tresorerie, tels que les comptes bancaires, les certificats de depot ou les billets de tresorerie.'),

(336, 'sur risques financiers', '6791', 'Ce compte enregistre les charges liees aux depreciations et provisions pour risques financiers a court terme encourus par l''entreprise. Ces charges sont constituees pour couvrir les pertes potentielles resultant de risques financiers tels que les fluctuations des taux de change, des taux d''interet ou des prix des matieres premieres.'),
(336, 'sur titres de placement', '6795', 'Ce compte enregistre les charges liees aux depreciations et provisions pour risques a court terme sur les titres de placement detenus par l''entreprise. Ces charges sont constituees pour couvrir les pertes potentielles resultant de la depreciation de la valeur des titres de placement.'),
(336, 'Autres charges pour depreciations et provisions pour risques a court terme financieres', '6798', 'Ce compte enregistre d''autres charges liees aux depreciations et provisions pour risques financiers a court terme qui ne sont pas specifiquement couvertes par les comptes precedents. Ces charges sont constituees pour couvrir les pertes potentielles resultant de divers risques financiers.'),

(337, 'Dotations aux amortissements des immobilisations incorporelles', '6812', 'Ce compte enregistre les dotations aux amortissements comptabilisees par l''entreprise pour les immobilisations incorporelles, telles que les brevets, les licences et les logiciels. Les dotations aux amortissements representent la repartition du cout d''acquisition ou de production de ces immobilisations sur leur duree d''utilisation prevue.'),
(337, 'Dotations aux amortissements des immobilisations corporelles', '6813', 'Ce compte enregistre les dotations aux amortissements comptabilisees par l''entreprise pour les immobilisations corporelles, telles que les batiments, les machines et le materiel. Les dotations aux amortissements representent la repartition du cout d''acquisition ou de production de ces immobilisations sur leur duree d''utilisation prevue.'),

(338, 'Dotations aux provisions pour risques et charges', '6911', 'Ce compte enregistre les dotations aux provisions comptabilisees par l''entreprise pour couvrir les risques et charges identifies mais non encore realises a la date de cloture de l''exercice financier. Les dotations aux provisions sont constituees pour anticiper les pertes probables ou les charges futures incertaines.'),
(338, 'Dotations aux depreciations des immobilisations incorporelles', '6913', 'Ce compte enregistre les dotations aux depreciations comptabilisees par l''entreprise pour les immobilisations incorporelles, telles que les brevets, les licences et les logiciels. Les dotations aux depreciations sont constituees lorsque la valeur recouvrable d''une immobilisation incorporelle est inferieure a sa valeur nette comptable.'),
(338, 'Dotations aux depreciations des immobilisations corporelles', '6914', 'Ce compte enregistre les dotations aux depreciations comptabilisees par l''entreprise pour les immobilisations corporelles, telles que les batiments, les machines et le materiel. Les dotations aux depreciations sont constituees lorsque la valeur recouvrable d''une immobilisation corporelle est inferieure a sa valeur nette comptable.'),

(339, 'Dotations aux provisions pour risques et charges', '6971', 'Ce compte enregistre les dotations aux provisions comptabilisees par l''entreprise pour couvrir les risques et charges identifies mais non encore realises a la date de cloture de l''exercice financier. Les dotations aux provisions sont constituees pour anticiper les pertes probables ou les charges futures incertaines.'),
(339, 'Dotations aux depreciations des immobilisations financieres', '6972', 'Ce compte enregistre les dotations aux depreciations comptabilisees par l''entreprise pour les immobilisations financieres, telles que les participations dans d''autres societes ou les prets accordes a des tiers. Les dotations aux depreciations sont constituees lorsque la valeur recouvrable d''une immobilisation financiere est inferieure a sa valeur nette comptable.'),

(340, 'dans la Region (7)', '7011', 'Ce compte enregistre les ventes effectuees dans la region specifiee. Il est utilise pour suivre les revenus generes par les ventes realisees dans cette region.'),
(340, 'hors la Region (7)', '7012', 'Ce compte enregistre les ventes effectuees en dehors de la region specifiee. Il est utilise pour suivre les revenus generes par les ventes realisees en dehors de cette region.'),
(340, 'Aux entites du groupe dans la Region', '7013', 'Ce compte enregistre les ventes realisees dans la region specifiee aux entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les revenus generes par les ventes internes au groupe dans cette region.'),
(340, 'Aux entites du groupe hors region', '7014', 'Ce compte enregistre les ventes realisees en dehors de la region specifiee aux entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les revenus generes par les ventes internes au groupe en dehors de cette region.'),
(340, 'Sur internet', '7015', 'Ce compte enregistre les ventes realisees via des canaux de vente sur internet. Il est utilise pour suivre les revenus generes par les ventes en ligne.'),
(340, 'Rabais, remises, ristournes accordes (non ventiles)', '7019', 'Ce compte enregistre les rabais, remises et ristournes accordes par l''entreprise sur ses ventes, qui ne sont pas ventiles par destination ou type. Il est utilise pour suivre le montant total des reductions accordees sur les ventes.'),

(341, 'dans la Region (7)', '7021', 'Ce compte enregistre les achats effectues dans la region specifiee. Il est utilise pour suivre les depenses realisees dans cette region.'),
(341, 'hors la Region (7)', '7022', 'Ce compte enregistre les achats effectues en dehors de la region specifiee. Il est utilise pour suivre les depenses realisees en dehors de cette region.'),
(341, 'aux entites du groupe dans la Region', '7023', 'Ce compte enregistre les achats effectues dans la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les achats internes au groupe dans cette region.'),
(341, 'Aux entites du groupe hors region', '7024', 'Ce compte enregistre les achats effectues en dehors de la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les achats internes au groupe en dehors de cette region.'),
(341, 'Sur internet', '7025', 'Ce compte enregistre les achats realises via des canaux en ligne. Il est utilise pour suivre les depenses effectuees par le biais d''achats en ligne.'),
(341, 'Rabais, remises, ristournes accordes (non ventiles)', '7029', 'Ce compte enregistre les rabais, remises et ristournes accordes par l''entreprise sur ses achats, qui ne sont pas ventiles par destination ou type. Il est utilise pour suivre le montant total des reductions accordees sur les achats.'),

(342, 'dans la Region (7)', '7031', 'Ce compte enregistre les autres charges liees aux operations effectuees dans la region specifiee. Il est utilise pour suivre les autres depenses realisees dans cette region.'),
(342, 'hors la Region (7)', '7032', 'Ce compte enregistre les autres charges liees aux operations effectuees en dehors de la region specifiee. Il est utilise pour suivre les autres depenses realisees en dehors de cette region.'),
(342, 'aux entites du groupe dans la Region', '7033', 'Ce compte enregistre les autres charges liees aux operations effectuees dans la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres depenses internes au groupe dans cette region.'),
(342, 'aux entites du groupe hors region', '7034', 'Ce compte enregistre les autres charges liees aux operations effectuees en dehors de la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres depenses internes au groupe en dehors de cette region.'),
(342, 'Sur internet', '7035', 'Ce compte enregistre les autres charges liees aux operations realisees via des canaux en ligne. Il est utilise pour suivre les autres depenses effectuees par le biais d''operations en ligne.'),
(342, 'Rabais, remises, ristournes accordes (non ventiles)', '7039', 'Ce compte enregistre les rabais, remises et ristournes accordes par l''entreprise sur d''autres charges, qui ne sont pas ventiles par destination ou type. Il est utilise pour suivre le montant total des reductions accordees sur d''autres charges.'),

(343, 'dans la Region (7)', '7041', 'Ce compte enregistre les autres produits generes dans la region specifiee. Il est utilise pour suivre les autres revenus obtenus dans cette region.'),
(343, 'hors la Region (7)', '7042', 'Ce compte enregistre les autres produits generes en dehors de la region specifiee. Il est utilise pour suivre les autres revenus obtenus en dehors de cette region.'),
(343, 'aux entites du groupe dans la Region', '7043', 'Ce compte enregistre les autres produits generes dans la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres revenus internes au groupe dans cette region.'),
(343, 'Aux entites du groupe hors Region', '7044', 'Ce compte enregistre les autres produits generes en dehors de la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres revenus internes au groupe en dehors de cette region.'),
(343, 'Sur internet', '7045', 'Ce compte enregistre les autres produits generes par le biais d''operations en ligne. Il est utilise pour suivre les autres revenus obtenus via des canaux en ligne.'),
(343, 'Rabais, remises, ristournes accordes (non ventiles)', '7049', 'Ce compte enregistre les rabais, remises et ristournes accordes par l''entreprise sur d''autres produits, qui ne sont pas ventiles par destination ou type. Il est utilise pour suivre le montant total des reductions accordees sur d''autres produits.'),

(344, 'dans la Region (7)', '7051', 'Ce compte enregistre les autres charges financieres generees dans la region specifiee. Il est utilise pour suivre les autres frais financiers supportes dans cette region.'),
(344, 'hors la Region (7)', '7052', 'Ce compte enregistre les autres charges financieres generees en dehors de la region specifiee. Il est utilise pour suivre les autres frais financiers supportes en dehors de cette region.'),
(344, 'aux entites du groupe dans la Region', '7053', 'Ce compte enregistre les autres charges financieres generees dans la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres frais financiers internes au groupe dans cette region.'),
(344, 'aux entites du groupe hors region', '7054', 'Ce compte enregistre les autres charges financieres generees en dehors de la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres frais financiers internes au groupe en dehors de cette region.'),
(344, 'Sur internet', '7055', 'Ce compte enregistre les autres charges financieres generees par le biais d''operations en ligne. Il est utilise pour suivre les autres frais financiers supportes via des canaux en ligne.'),
(344, 'Rabais, remises, ristournes accordes (non ventiles)', '7059', 'Ce compte enregistre les rabais, remises et ristournes accordes par l''entreprise sur d''autres charges financieres, qui ne sont pas ventiles par destination ou type. Il est utilise pour suivre le montant total des reductions accordees sur d''autres charges financieres.'),

(345, 'dans la Region (7)', '7061', 'Ce compte enregistre les autres produits financiers generes dans la region specifiee. Il est utilise pour suivre les autres revenus financiers obtenus dans cette region.'),
(345, 'hors la Region (7)', '7062', 'Ce compte enregistre les autres produits financiers generes en dehors de la region specifiee. Il est utilise pour suivre les autres revenus financiers obtenus en dehors de cette region.'),
(345, 'aux entites du groupe dans la Region', '7063', 'Ce compte enregistre les autres produits financiers generes dans la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres revenus financiers internes au groupe dans cette region.'),
(345, 'aux entites du groupe hors Region', '7064', 'Ce compte enregistre les autres produits financiers generes en dehors de la region specifiee aupres des entites faisant partie du meme groupe que l''entreprise. Il est utilise pour suivre les autres revenus financiers internes au groupe en dehors de cette region.'),
(345, 'Sur internet', '7065', 'Ce compte enregistre les autres produits financiers generes par le biais d''operations en ligne. Il est utilise pour suivre les autres revenus financiers obtenus via des canaux en ligne.'),
(345, 'Rabais, remises, ristournes accordes', '7069', 'Ce compte enregistre les rabais, remises et ristournes accordes par l''entreprise sur d''autres produits financiers.'),

(346, 'Ports, emballages perdus et autres frais factures', '7071', 'Ce compte enregistre les frais lies aux ports, aux emballages perdus et a d''autres frais factures.'),
(346, 'Commissions et courtages (8)', '7072', 'Ce compte enregistre les commissions et courtages factures. Il est utilise pour suivre les frais lies aux services de courtage et de commissionnement.'),
(346, 'Locations (8)', '7073', 'Ce compte enregistre les frais de location factures. Il est utilise pour suivre les frais associes a la location de biens ou de services.'),
(346, 'Bonis sur reprises et cessions d''emballages', '7074', 'Ce compte enregistre les bonus obtenus sur les reprises et les cessions d''emballages.'),
(346, 'Mise a disposition de personnel (8)', '7075', 'Ce compte enregistre les frais lies a la mise a disposition de personnel. Il est utilise pour suivre les couts associes a la fourniture de personnel a des tiers.'),
(346, 'Redevances pour brevets, logiciels, marques et droits similaires (8)', '7076', 'Ce compte enregistre les redevances percues pour l''utilisation de brevets, de logiciels, de marques et de droits similaires.'),
(346, 'Services exploites dans l''interet du personnel', '7077', 'Ce compte enregistre les frais lies aux services exploites dans l''interet du personnel.'),
(346, 'Autres produits accessoires', '7078', 'Ce compte enregistre les autres produits accessoires generes par l''entreprise.'),

(351, 'Versees par l''Etat et les collectivites publiques', '7181', 'Ce compte enregistre les subventions versees par l''etat et les collectivites publiques.'),
(351, 'Versees par les organismes internationaux', '7182', 'Ce compte enregistre les subventions versees par les organismes internationaux.'),
(351, 'Versees par des tiers', '7183', 'Ce compte enregistre les subventions versees par des tiers.'),

(353, 'Immobilisations corporelles (hors actif biologiques)', '7221', 'Ce compte enregistre les immobilisations corporelles, a l''exclusion des actifs biologiques.'),
(353, 'Immobilisations corporelles (actifs biologiques)', '7222', 'Ce compte enregistre les immobilisations corporelles qui sont des actifs biologiques.'),

(356, 'Produits en cours', '7341', 'Ce compte enregistre les produits en cours, c''est-a-dire les produits qui sont en cours de fabrication ou de production et qui ne sont pas encore termines.'),
(356, 'Travaux en cours', '7342', 'Ce compte enregistre les travaux en cours, c''est-a-dire les travaux qui sont en cours de realisation et qui ne sont pas encore acheves.'),

(357, 'Etudes en cours', '7351', 'Ce compte enregistre les etudes en cours, c''est-a-dire les projets d''etudes qui sont en cours de realisation et qui ne sont pas encore acheves.'),
(357, 'Prestations de services en cours', '7352', 'Ce compte enregistre les prestations de services en cours, c''est-a-dire les services qui sont en cours de realisation et qui ne sont pas encore acheves.'),

(359, 'Produits intermediaires', '7371', 'Ce compte enregistre les produits intermediaires, c''est-a-dire les produits qui sont generes au cours du processus de production mais qui ne sont pas encore des produits finis.'),
(359, 'Produits residuels', '7372', 'Ce compte enregistre les produits residuels, c''est-a-dire les produits qui restent apres le processus de production et qui ne peuvent pas etre vendus ou utilises comme produits finis.'),

(361, 'Quote-part transferee de pertes (comptabilite du gerant)', '7521', 'Ce compte enregistre la quote-part transferee de pertes dans la comptabilite du gerant.'),
(361, 'Benefices attribues par transfert (comptabilite des associes non-gerants)', '7525', 'Ce compte enregistre les benefices attribues par transfert dans la comptabilite des associes non-gerants.'),

(362, 'Immobilisations incorporelles', '7541', 'Ce compte enregistre les immobilisations incorporelles, c''est-a-dire les actifs non materiels comme les brevets, les marques, les logiciels, etc.'),
(362, 'Immobilisations corporelles', '7542', 'Ce compte enregistre les immobilisations corporelles, c''est-a-dire les actifs materiels comme les terrains, les batiments, les equipements, etc.'),

(364, 'Indemnites de fonction et autres remunerations d''administrateurs', '7581', 'Ce compte enregistre les indemnites de fonction et autres remunerations versees aux administrateurs de l''entreprise.'),
(364, 'Indemnites d''assurances recues', '7582', 'Ce compte enregistre les indemnites recues de compagnies d''assurance.'),
(364, 'Autres produits divers', '7588', 'Ce compte enregistre d''autres produits divers qui ne rentrent pas dans les categories precedentes.'),

(365, 'Sur risques a court terme', '7591', 'Ce compte enregistre les provisions pour risques a court terme lies a l''exploitation de l''entreprise.'),
(365, 'Sur stocks', '7593', 'Ce compte enregistre les provisions pour risques lies aux stocks de l''entreprise.'),
(365, 'Sur creances', '7594', 'Ce compte enregistre les provisions pour risques lies aux creances de l''entreprise.'),
(365, 'Sur autres charges pour depreciations et provisions pour risques a court terme d''exploitation', '7598', 'Ce compte enregistre les provisions pour risques a court terme d''exploitation qui ne rentrent pas dans les categories precedentes.'),

(366, 'Interets de prets', '7712', 'Ce compte enregistre les interets percus sur les prets accordes par l''entreprise.'),
(366, 'Interets sur creances diverses', '7713', 'Ce compte enregistre les interets percus sur les differentes creances de l''entreprise.'),

(367, 'Revenus des titres de participation', '7721', 'Ce compte enregistre les revenus provenant des titres de participation detenus par l''entreprise.'),
(367, 'Revenus autres titres immobilises', '7722', 'Ce compte enregistre les revenus provenant d''autres titres immobilises detenus par l''entreprise.'),

(369, 'Revenus des obligations', '7745', 'Ce compte enregistre les revenus provenant des obligations detenues par l''entreprise.'),
(369, 'Revenus des titres de placement', '7746', 'Ce compte enregistre les revenus provenant des titres de placement detenus par l''entreprise.'),

(373, 'sur rentes viageres', '7781', 'Ce compte enregistre les charges liees aux rentes viageres payees par l''entreprise.'),
(373, 'sur operations financieres', '7782', 'Ce compte enregistre les charges liees aux operations financieres de l''entreprise.'),
(373, 'sur instruments de tresorerie', '7784', 'Ce compte enregistre les charges liees aux instruments de tresorerie de l''entreprise.'),

(374, 'sur risques financiers', '7791', 'Ce compte enregistre les charges liees aux risques financiers de l''entreprise.'),
(374, 'sur titres de placement', '7795', 'Ce compte enregistre les charges liees aux titres de placement de l''entreprise.'),
(374, 'sur autres charges pour depreciations et provisions pour risques a court terme financieres', '7798', 'Ce compte enregistre les charges liees a d''autres depreciations et provisions pour risques a court terme financieres de l''entreprise.'),

(377, 'pour risques et charges', '7911', 'Ce compte enregistre les dotations aux provisions pour risques et charges de l''entreprise.'),
(377, 'des immobilisations incorporelles', '7913', 'Ce compte enregistre les dotations aux depreciations des immobilisations incorporelles de l''entreprise.'),
(377, 'des immobilisations corporelles', '7914', 'Ce compte enregistre les dotations aux depreciations des immobilisations corporelles de l''entreprise.'),

(378, 'pour risques et charges', '7971', 'Ce compte enregistre les dotations aux provisions pour risques et charges de l''entreprise.'),
(378, 'des immobilisations financieres', '7972', 'Ce compte enregistre les dotations aux depreciations des immobilisations financieres de l''entreprise.'),

(419, 'Activites exercees dans l''etat', '8911', 'Ce compte enregistre les activites exercees dans l''etat.'),
(419, 'Activites exercees dans les autres etats de la Region', '8912', 'Ce compte enregistre les activites exercees dans les autres etats de la Region.'),
(419, 'Activites exercees hors Region', '8913', 'Ce compte enregistre les activites exercees hors Region.'),

(422, 'Degrevements', '8991', 'Ce compte enregistre les degrevements.'),
(422, 'Annulations pour pertes retroactives', '8994', 'Ce compte enregistre les annulations pour pertes retroactives.'),

(424, 'Credits confirmes obtenus', '9011', 'Ce compte enregistre les credits confirmes obtenus.'),
(424, 'Emprunts restant a encaisser', '9012', 'Ce compte enregistre les emprunts restant a encaisser.'),
(424, 'Facilites de financement renouvelables', '9013', 'Ce compte enregistre les facilites de financement renouvelables.'),
(424, 'Facilites d''emission', '9014', 'Ce compte enregistre les facilites d''emission.'),
(424, 'Autres engagements de financements obtenus', '9018', 'Ce compte enregistre les autres engagements de financements obtenus.'),

(425, 'Avals obtenus', '9021', 'Ce compte enregistre les avals obtenus.'),
(425, 'Cautions, garanties obtenues', '9022', 'Ce compte enregistre les cautions, garanties obtenues.'),
(425, 'Hypotheques obtenues', '9023', 'Ce compte enregistre les hypotheques obtenues.'),
(425, 'Effets endosses par des tiers', '9024', 'Ce compte enregistre les effets endosses par des tiers.'),
(425, 'Autres garanties obtenues', '9028', 'Ce compte enregistre les autres garanties obtenues.'),

(426, 'Achats de marchandises a terme', '9031', 'Ce compte enregistre les achats de marchandises a terme.'),
(426, 'Achats a termes de devises', '9032', 'Ce compte enregistre les achats a termes de devises.'),
(426, 'Commandes fermes des clients', '9033', 'Ce compte enregistre les commandes fermes des clients.'),
(426, 'Autres engagements reciproques', '9038', 'Ce compte enregistre les autres engagements reciproques.'),

(427, 'Abandons de creances conditionnels', '9041', 'Ce compte enregistre les abandons de creances conditionnels.'),
(427, 'Ventes avec clause de reserve de propriete', '9043', 'Ce compte enregistre les ventes avec clause de reserve de propriete.'),
(427, 'Divers engagements obtenus', '9048', 'Ce compte enregistre les divers engagements obtenus.'),
(427, 'ENGAGEMENTS ACCORDeS 905 a 908', '9049', 'Ce compte enregistre les engagements accordes de 905 a 908.'),

(428, 'Credits accordes non decaisses', '9051', 'Ce compte enregistre les credits accordes mais non encore decaisses.'),
(428, 'Autres engagements de financement accordes', '9058', 'Ce compte enregistre les autres engagements de financement accordes.'),

(429, 'Avals obtenus', '9061', 'Ce compte enregistre les avals obtenus par l''entite.'),
(429, 'Cautions, garanties accordees', '9062', 'Ce compte enregistre les cautions et garanties accordees par l''entite.'),
(429, 'Hypotheques accordees', '9063', 'Ce compte enregistre les hypotheques accordees par l''entite.'),
(429, 'Effets endosses par l''entite', '9064', 'Ce compte enregistre les effets endosses par l''entite.'),
(429, 'Autres garanties accordees', '9068', 'Ce compte enregistre les autres garanties accordees par l''entite.'),

(430, 'Ventes de marchandises a terme', '9071', 'Ce compte enregistre les ventes de marchandises a terme effectuees par l''entite.'),
(430, 'Ventes a terme de devises', '9072', 'Ce compte enregistre les ventes a terme de devises effectuees par l''entite.'),
(430, 'Commandes fermes aux fournisseurs', '9073', 'Ce compte enregistre les commandes fermes passees aux fournisseurs par l''entite.'),
(430, 'Autres engagements reciproques', '9078', 'Ce compte enregistre les autres engagements reciproques de l''entite.'),

(431, 'Annulations conditionnelles de dettes', '9081', 'Ce compte enregistre les annulations conditionnelles de dettes par l''entite.'),
(431, 'Engagements de retraite', '9082', 'Ce compte enregistre les engagements de retraite pris par l''entite.'),
(431, 'Achats avec clause de reserve de propriete', '9083', 'Ce compte enregistre les achats effectues avec une clause de reserve de propriete par l''entite.'),
(431, 'Divers engagements accordes', '9088', 'Ce compte enregistre les autres engagements accordes par l''entite.'),

(444, 'en numeraire', '1011', 'Ce compte enregistre les apports en numeraire.'),
(444, 'en nature', '1015', 'Ce compte enregistre les apports en nature.'),

(445, 'en numeraire', '1021', 'Ce compte enregistre les apports en numeraire.'),
(445, 'en nature', '1025', 'Ce compte enregistre les apports en nature.'),

(447, 'Dotation consomptible', '1041', 'Cette categorie de dotation est destinee a couvrir les charges consomptibles non prises en compte dans les autres categories de dotations.'),
(447, 'Dotation consomptible inscrite au compte de resultat', '1049', 'Cette categorie de dotation represente la part de la dotation consomptible qui est directement inscrite au compte de resultat, affectant ainsi le resultat net de l''entreprise.'),

(448, 'ecarts de reevaluation sur des biens sans droit de reprise', '1061', 'Ces ecarts de reevaluation concernent les biens pour lesquels l''entreprise n''a pas le droit de les reprendre, tels que les immobilisations corporelles et financieres.'),
(448, 'ecarts de reevaluation sur des biens sans droit de reprise immobilisations corporelle', '10611', 'Ces ecarts de reevaluation portent specifiquement sur les immobilisations corporelles pour lesquelles l''entreprise n''a pas le droit de les reprendre.'),
(448, 'ecarts de reevaluation sur des biens sans droit de reprise immobilisations financieres', '10612', 'Ces ecarts de reevaluation concernent les immobilisations financieres pour lesquelles l''entreprise n''a pas le droit de les reprendre.'),
(448, 'ecarts de reevaluation sur des biens avec droit de reprise', '1062', 'Ces ecarts de reevaluation concernent les biens pour lesquels l''entreprise a le droit de les reprendre.'),
(448, 'ecarts de reevaluation sur des biens avec droit de reprise immobilisations corporelles', '10621', 'Ces ecarts de reevaluation portent specifiquement sur les immobilisations corporelles pour lesquelles l''entreprise a le droit de les reprendre.'),
(448, 'ecarts de reevaluation sur des biens avec droit de reprise immobilisations-financiere', '10622', 'Ces ecarts de reevaluation concernent les immobilisations financieres pour lesquelles l''entreprise a le droit de les reprendre.'),

(456, 'etat', '1411', 'Ce compte represente les transactions financieres liees a l''etat central. Il est utilise pour enregistrer les operations financieres telles que les recettes et les depenses de l''administration centrale de l''etat.'),
(456, 'Regions', '1412', 'Ce compte est dedie aux transactions financieres des gouvernements regionaux. Il est utilise pour suivre les recettes et les depenses specifiques aux regions administratives d''un pays.'),
(456, 'Departements', '1413', 'Ce compte comptable enregistre les transactions financieres des gouvernements departementaux. Il est utilise pour suivre les recettes et les depenses specifiques aux departements ou aux subdivisions administratives similaires.'),
(456, 'Communes et collectivites publiques decentralisees', '1414', 'Ce compte comptable est utilise pour enregistrer les transactions financieres des municipalites et des autres collectivites publiques decentralisees. Il comprend les recettes et les depenses associees a ces entites locales.'),
(456, 'Entites publiques ou mixtes', '1415', 'Ce compte est utilise pour les transactions financieres impliquant des entites publiques ou mixtes, telles que les entreprises publiques ou les partenariats public-prive.'),
(456, 'Entites et organismes prives', '1416', 'Ce compte comptable est destine a enregistrer les transactions financieres impliquant des entites et des organismes prives, tels que les entreprises privees, les associations et les fondations.'),
(456, 'Organismes internationaux', '1417', 'Ce compte est utilise pour suivre les transactions financieres avec des organismes internationaux tels que les Nations Unies, la Banque mondiale, le Fonds monetaire international, etc.'),
(456, 'Autres', '1418', 'Ce compte est utilise pour enregistrer toutes les transactions financieres qui ne sont pas couvertes par les autres comptes specifies. Il peut inclure des transactions inhabituelles ou exceptionnelles, ainsi que d''autres types de transactions non specifiees ailleurs.'),

(464, 'Affectes', '1671', 'Ce compte enregistre les fonds recus ou affectes a des projets ou a des activites specifiques, avec des restrictions sur leur utilisation.'),
(464, 'Non affectes', '1672', 'Ce compte enregistre les fonds recus ou non affectes a des projets ou a des activites specifiques, avec une liberte d''utilisation plus large.'),
(464, 'Engagements au pres donateur', '1679', 'Ce compte represente les engagements ou les promesses de dons faits par des donateurs ou des bailleurs de fonds.'),

(472, 'Depots', '1851', 'Ce compte enregistre les montants deposes aupres de tiers, generalement des banques, en garantie ou en prevision de transactions futures.'),
(472, 'Cautionnements', '1852', 'Ce compte enregistre les montants deposes comme caution ou garantie pour garantir l''execution d''obligations contractuelles.'),

(473, 'sur emprunts obligataires', '1861', 'Ce compte enregistre les produits financiers lies aux emprunts obligataires emis par l''entreprise.'),
(473, 'sur emprunts et dettes aupres des etablissements de credits', '1862', 'Ce compte enregistre les produits financiers lies aux emprunts et dettes contractes aupres des etablissements de credit.'),
(473, 'sur avances recues de l''Etat', '1863', 'Ce compte enregistre les produits financiers lies aux avances recues de l''etat.'),
(473, 'sur depots et cautionnements recus', '1865', 'Ce compte enregistre les produits financiers lies aux depots et cautionnements recus par l''entreprise.'),
(473, 'sur autres emprunts et dettes', '1868', 'Ce compte enregistre les produits financiers lies a d''autres emprunts et dettes contractes par l''entreprise.'),

(474, 'Dettes de location-acquisition/ credit-bail immobilier', '1871', 'Ce compte enregistre les dettes liees aux operations de location-acquisition ou de credit-bail immobilier.'),
(474, 'Dettes de location - acquisition/ credit -bail mobilier', '1872', 'Ce compte enregistre les dettes liees aux operations de location-acquisition ou de credit-bail mobilier.'),
(474, 'Dettes de location - acquisition/location-vente', '1873', 'Ce compte enregistre les dettes liees aux operations de location-acquisition ou de location-vente.'),
(474, 'Interets courus', '1876', 'Ce compte enregistre les interets courus sur les dettes de l''entreprise.'),

(479, 'Provisions pour amendes et penalites', '1981', 'Ce compte enregistre les provisions constituees pour couvrir les amendes et penalites potentielles encourues par l''entreprise.'),
(479, 'Provisions pour demantelement et remise en etat', '1984', 'Ce compte enregistre les provisions constituees pour couvrir les couts de demantelement et de remise en etat des biens de l''entreprise a la fin de leur vie utile.'),
(479, 'Provisions pour divers risques et charges', '1988', 'Ce compte enregistre les provisions constituees pour couvrir divers risques et charges non specifiquement couverts par d''autres comptes de provisions.'),

(480, 'Usufruit temporaire', '2011', 'Ce compte enregistre les droits temporaires accordes a une partie pour utiliser et profiter des biens de l''entreprise sans en devenir proprietaire.'),
(480, 'Brevets, licences, concessions et droits similaires', '2012', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise tels que les brevets, les licences, les concessions et les droits similaires.'),
(480, 'Logiciels et sites internet', '2013', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise tels que les logiciels et les sites internet.'),
(480, 'Marques', '2014', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de marques commerciales ou de marques deposees.'),
(480, 'Autres', '2017', 'Ce compte enregistre d''autres actifs incorporels acquis par l''entreprise qui ne sont pas specifiquement couverts par d''autres comptes.'),

(485, 'Brevets', '2121', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de brevets.'),
(485, 'Licences', '2122', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de licences.'),
(485, 'Concessions de service public', '2123', 'Ce compte enregistre les concessions accordees par les autorites publiques a l''entreprise pour fournir des services publics.'),
(485, 'Autres concessions et droits similaires', '2128', 'Ce compte enregistre d''autres concessions et droits similaires acquis par l''entreprise qui ne sont pas specifiquement couverts par d''autres comptes.'),

(486, 'Logiciels', '2131', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de logiciels.'),
(486, 'Sites internet', '2132', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de sites internet.'),

(488, 'Indemnites de transfert aux joueurs', '2181', 'Ce compte enregistre les montants payes par l''entreprise en indemnites de transfert aux joueurs.'),

(489, 'Logiciels et sites internet', '2193', 'Ce compte enregistre les depenses liees a l''acquisition ou au developpement de logiciels et de sites internet.'),
(489, 'Autres droits et valeurs incorporels', '2198', 'Ce compte regroupe les autres droits et valeurs incorporels de l''entreprise qui ne sont pas specifiquement mentionnes dans d''autres comptes.'),

(490, 'Terrains d''exploitation agricole', '2211', 'Ce compte enregistre la valeur des terrains utilises pour des activites agricoles.'),
(490, 'Terrains d''exploitation forestiere', '2212', 'Ce compte enregistre la valeur des terrains utilises pour des activites forestieres.'),
(490, 'Autres terrains', '2218', 'Ce compte regroupe la valeur des terrains qui ne sont pas specifiquement lies aux activites agricoles ou forestieres de l''entreprise.'),

(491, 'Terrains a batir', '2221', 'Ce compte enregistre la valeur des terrains destines a la construction de batiments.'),
(491, 'Autres terrains nus', '2228', 'Ce compte regroupe la valeur des terrains nus qui ne sont pas destines a la construction et qui ne sont pas specifiquement lies aux activites agricoles ou forestieres de l''entreprise.'),

(492, 'pour batiments industriels et agricoles', '2231', 'Ce compte enregistre la valeur des terrains batis destines a des activites industrielles ou agricoles.'),
(492, 'pour batiments administratifs et commerciaux', '2232', 'Ce compte regroupe la valeur des terrains batis utilises a des fins administratives ou commerciales.'),
(492, 'pour batiments affectes aux autres operations professionnelles', '2234', 'Ce compte enregistre la valeur des terrains batis utilises pour d''autres operations professionnelles non specifiquement liees a l''industrie, a l''agriculture, a l''administration ou au commerce.'),
(492, 'pour batiments affectes aux autres operations non professionnelles', '2235', 'Ce compte regroupe la valeur des terrains batis utilises pour d''autres operations non professionnelles.'),
(492, 'Autres terrains batis', '2238', 'Ce compte enregistre la valeur des terrains batis qui ne rentrent pas dans les categories precedentes.'),

(493, 'Plantation d''arbres et d''arbustes', '2241', 'Ce compte enregistre les depenses liees a la plantation et a l''entretien d''arbres et d''arbustes sur les terrains de l''entreprise.'),
(493, 'Ameliorations du fonds', '2245', 'Ce compte regroupe les depenses visant a ameliorer la qualite ou la valeur des terrains de l''entreprise.'),
(493, 'Autres travaux', '2248', 'Ce compte regroupe les depenses liees a d''autres travaux realises sur les terrains de l''entreprise et qui ne rentrent pas dans les categories precedentes.'),

(494, 'Parkings', '2261', 'Ce compte enregistre les depenses liees a la construction ou a l''amenagement de parkings pour vehicules sur les terrains de l''entreprise.'),

(495, 'Terrains-immeubles de placement', '2281', 'Ce compte enregistre la valeur des terrains destines a etre conserves ou utilises pour generer des revenus, tels que les terrains destines a la location ou a la revente.'),
(495, 'Terrains des logements affectes au personnel', '2285', 'Ce compte enregistre la valeur des terrains utilises pour la construction de logements destines au personnel de l''entreprise.'),
(495, 'Terrains de location-acquisition', '2286', 'Ce compte enregistre la valeur des terrains acquis dans le cadre de contrats de location-acquisition.'),
(495, 'Divers terrains', '2288', 'Ce compte regroupe la valeur des terrains qui ne sont pas specifiquement categorises dans d''autres comptes.'),

(496, 'Terrains agricoles et forestiers', '2291', 'Ce compte enregistre la valeur des terrains utilises pour des activites agricoles ou forestieres.'),
(496, 'Terrains nus', '2292', 'Ce compte enregistre la valeur des terrains qui ne sont pas encore developpes ou amenages.'),
(496, 'Autres terrains', '2298', 'Ce compte regroupe la valeur des terrains qui ne sont pas specifiquement categorises dans d''autres comptes.'),

(497, 'Batiments industriels', '2311', 'Ce compte enregistre la valeur des batiments utilises a des fins industrielles.'),
(497, 'Batiments agricoles', '2312', 'Ce compte enregistre la valeur des batiments utilises pour des activites agricoles.'),
(497, 'Batiments administratifs et commerciaux', '2313', 'Ce compte enregistre la valeur des batiments utilises a des fins administratives ou commerciales.'),
(497, 'Batiments affectes au logement du personnel', '2314', 'Ce compte enregistre la valeur des batiments utilises pour loger le personnel de l''entreprise.'),
(497, 'Batiments-immeubles de placement', '2315', 'Ce compte enregistre la valeur des batiments detenus a des fins de placement immobilier.'),
(497, 'Batiments de location-acquisition', '2316', 'Ce compte enregistre la valeur des batiments acquis dans le cadre de contrats de location-acquisition.'),
(497, 'Edifices religieux et assimiles', '2317', 'Ce compte enregistre la valeur des edifices religieux et autres structures similaires.'),
(497, 'Autres batiments sur sol propre', '2318', 'Ce compte regroupe la valeur des batiments qui ne sont pas specifiquement categorises dans d''autres comptes.'),

(498, 'Batiments industriels', '2321', 'Ce compte enregistre la valeur des batiments utilises a des fins industrielles.'),
(498, 'Batiments agricoles', '2322', 'Ce compte enregistre la valeur des batiments utilises pour des activites agricoles.'),
(498, 'Batiments administratifs et commerciaux', '2323', 'Ce compte enregistre la valeur des batiments utilises a des fins administratives ou commerciales.'),
(498, 'Batiments affectes au logement du personnel', '2324', 'Ce compte enregistre la valeur des batiments utilises pour loger le personnel de l''entreprise.'),
(498, 'Batiments-immeubles de placement', '2325', 'Ce compte enregistre la valeur des batiments detenus a des fins de placement immobilier.'),
(498, 'Batiments de location-acquisition', '2326', 'Ce compte enregistre la valeur des batiments acquis dans le cadre de contrats de location-acquisition.'),
(498, 'Edifices religieux et assimiles', '2327', 'Ce compte enregistre la valeur des edifices religieux et autres structures similaires.'),
(498, 'Autres batiments sur sol d''autrui', '2328', 'Ce compte regroupe la valeur des batiments construits sur un sol qui n''appartient pas a l''entreprise.'),

(499, 'Voies de terre', '2331', 'Ce compte enregistre la valeur des routes, chemins et autres voies terrestres.'),
(499, 'Voies de fer', '2332', 'Ce compte enregistre la valeur des voies ferrees.'),
(499, 'Voies d''eau', '2333', 'Ce compte enregistre la valeur des voies navigables telles que les canaux, les rivieres et les fleuves.'),
(499, 'Barrages, digues', '2334', 'Ce compte enregistre la valeur des ouvrages construits pour retenir ou controler l''ecoulement de l''eau.'),
(499, 'Pistes d''aerodrome', '2335', 'Ce compte enregistre la valeur des pistes utilisees pour les decollages et les atterrissages des aeronefs.'),
(499, 'Autres ouvrages d''infrastructures', '2338', 'Ce compte regroupe la valeur des autres ouvrages d''infrastructures qui ne sont pas specifiquement inclus dans les comptes precedents.'),

(500, 'Installations complexes specialisees sur sol propre', '2341', 'Ce compte enregistre la valeur des installations complexes et specialisees construites sur un terrain appartenant a l''entreprise.'),
(500, 'Installations complexes specialisees sur sol d''autrui', '2342', 'Ce compte enregistre la valeur des installations complexes et specialisees construites sur un terrain appartenant a un tiers.'),
(500, 'Installations a caractere specifique sur sol propre', '2343', 'Ce compte enregistre la valeur des installations a caractere specifique construites sur un terrain appartenant a l''entreprise.'),
(500, 'Installations a caractere specifique sur sol d''autrui', '2344', 'Ce compte enregistre la valeur des installations a caractere specifique construites sur un terrain appartenant a un tiers.'),
(500, 'Amenagements et agencements des batiments', '2345', 'Ce compte enregistre la valeur des amenagements et agencements realises dans les batiments de l''entreprise pour les adapter a ses besoins specifiques.'),

(501, 'Installations generales', '2351', 'Ce compte enregistre la valeur des installations generales realisees dans les locaux de l''entreprise.'),
(501, 'Autres amenagements de bureaux', '2358', 'Ce compte enregistre la valeur des amenagements specifiques realises dans les bureaux de l''entreprise.'),

(502, 'Autres installations et agencements des edifices religieux et assimiles', '2381', 'Ce compte enregistre la valeur des installations et agencements autres que les batiments religieux et assimiles.'),
(502, 'Autres installations et agencements des stades et autres infrastructures sportives', '2382', 'Ce compte enregistre la valeur des installations et agencements autres que les stades et autres infrastructures sportives.'),

(503, 'Batiments sur sol propre en cours', '2391', 'Ce compte enregistre la valeur des batiments en cours de construction sur sol propre.'),
(503, 'Batiments sur sol d''autrui en cours', '2392', 'Ce compte enregistre la valeur des batiments en cours de construction sur sol d''autrui.'),
(503, 'Amenagements, agencements et installations techniques en cours', '2394', 'Ce compte enregistre la valeur des amenagements, agencements et installations techniques en cours de realisation.'),
(503, 'Amenagements de bureaux en cours', '2395', 'Ce compte enregistre la valeur des amenagements de bureaux en cours de realisation.'),
(503, 'Batiments en cours-immeubles de placement', '2396', 'Ce compte enregistre la valeur des batiments en cours de construction affectes comme immeubles de placement.'),
(503, 'Autres installations et agencements en cours', '2398', 'Ce compte enregistre la valeur des autres installations et agencements en cours de realisation.'),

(504, 'Materiel industriel', '2411', 'Ce compte enregistre la valeur du materiel industriel possede par l''entreprise.'),
(504, 'Outillage industriel', '2412', 'Ce compte enregistre la valeur de l''outillage industriel possede par l''entreprise.'),
(504, 'Materiel commercial', '2413', 'Ce compte enregistre la valeur du materiel commercial possede par l''entreprise.'),
(504, 'Outillage commercial', '2414', 'Ce compte enregistre la valeur de l''outillage commercial possede par l''entreprise.'),
(504, 'Materiel et outillage industriel et commercial de location-acquisition', '2416', 'Ce compte enregistre la valeur du materiel et de l''outillage industriel et commercial acquis en location-acquisition.'),

(505, 'Materiel agricole', '2421', 'Ce compte enregistre la valeur du materiel agricole possede par l''entreprise.'),
(505, 'Outillage agricole', '2422', 'Ce compte enregistre la valeur de l''outillage agricole possede par l''entreprise.'),
(505, 'Materiel et outillage agricole de location-acquisition', '2426', 'Ce compte enregistre la valeur du materiel et de l''outillage agricole acquis en location-acquisition.'),

(507, 'Materiel et mobilier de bureau', '2411', 'Ce compte enregistre la valeur du materiel et du mobilier de bureau possedes par l''entreprise.'),
(507, 'Materiel informatique et bureautique', '2442', 'Ce compte enregistre la valeur du materiel informatique et bureautique possede par l''entreprise.'),
(507, 'Materiel et mobilier religieux', '2443', 'Ce compte enregistre la valeur du materiel et du mobilier religieux possedes par l''entreprise.'),
(507, 'Materiel et mobilier sportifs', '2444', 'Ce compte enregistre la valeur du materiel et du mobilier sportifs possedes par l''entreprise.'),
(507, 'Materiel et mobilier - immeubles de placement', '2445', 'Ce compte enregistre la valeur du materiel et du mobilier lies aux immeubles de placement possedes par l''entreprise.'),
(507, 'Materiel et mobilier de location-acquisition', '2446', 'Ce compte enregistre la valeur du materiel et du mobilier acquis en location-acquisition.'),
(507, 'Materiel et mobilier des logements du personnel', '2447', 'Ce compte enregistre la valeur du materiel et du mobilier des logements du personnel possedes par l''entreprise.'),

(508, 'Materiel automobile', '2451', 'Ce compte enregistre la valeur du materiel automobile possede par l''entreprise.'),
(508, 'Materiel ferroviaire', '2452', 'Ce compte enregistre la valeur du materiel ferroviaire possede par l''entreprise.'),
(508, 'Materiel fluvial, lagunaire', '2453', 'Ce compte enregistre la valeur du materiel fluvial et lagunaire possede par l''entreprise.'),
(508, 'Materiel naval', '2454', 'Ce compte enregistre la valeur du materiel naval possede par l''entreprise.'),
(508, 'Materiel aerien', '2455', 'Ce compte enregistre la valeur du materiel aerien possede par l''entreprise.'),
(508, 'Materiel de transport de location - acquisition', '2456', 'Ce compte enregistre la valeur du materiel de transport acquis en location-acquisition.'),
(508, 'Materiel hippomobile', '2457', 'Ce compte enregistre la valeur du materiel hippomobile possede par l''entreprise.'),
(508, 'Autres materiels de transports', '2458', 'Ce compte enregistre la valeur des autres materiels de transport possedes par l''entreprise.'),

(509, 'Cheptel, animaux de trait', '2461', 'Ce compte enregistre la valeur du cheptel et des animaux de trait possedes par l''entreprise.'),
(509, 'Cheptel, animaux reproducteurs', '2462', 'Ce compte enregistre la valeur du cheptel et des animaux reproducteurs possedes par l''entreprise.'),
(509, 'Animaux de garde', '2463', 'Ce compte enregistre la valeur des animaux de garde possedes par l''entreprise.'),
(509, 'Plantations agricoles', '2465', 'Ce compte enregistre la valeur des plantations agricoles possedees par l''entreprise.'),
(509, 'Autres actifs biologiques', '2468', 'Ce compte enregistre la valeur des autres actifs biologiques possedes par l''entreprise.'),

(510, 'Agencements et amenagements du materiel', '2471', 'Ce compte enregistre les couts d''agencement et d''amenagement du materiel possede par l''entreprise.'),
(510, 'Agencements et amenagements des actifs biologiques', '2472', 'Ce compte enregistre les couts d''agencement et d''amenagement des actifs biologiques possedes par l''entreprise.'),
(510, 'Autres agencements, amenagements du materiel et des actifs biologiques', '2478', 'Ce compte enregistre les autres couts d''agencement et d''amenagement du materiel et des actifs biologiques possedes par l''entreprise.'),

(511, 'Collections et œuvres d''art', '2481', 'Ce compte enregistre la valeur des collections et des œuvres d''art possedees par l''entreprise.'),
(511, 'Divers materiels et mobilier', '2488', 'Ce compte enregistre la valeur des divers materiels et mobilier possedes par l''entreprise.'),

(512, 'Materiel et outillage industriel et commercial', '2491', 'Ce compte enregistre la valeur du materiel et de l''outillage industriel et commercial possedes par l''entreprise.'),
(512, 'Materiel et outillage agricole', '2492', 'Ce compte enregistre la valeur du materiel et de l''outillage agricole possedes par l''entreprise.'),
(512, 'Materiel d''emballage recuperable et identifiable', '2493', 'Ce compte enregistre la valeur du materiel d''emballage recuperable et identifiable possede par l''entreprise.'),
(512, 'Materiel et mobilier de bureau', '2494', 'Ce compte enregistre la valeur du materiel et du mobilier de bureau possedes par l''entreprise.'),
(512, 'Materiel de transport', '2495', 'Ce compte enregistre la valeur du materiel de transport possede par l''entreprise.'),
(512, 'Actifs biologiques', '2496', 'Ce compte enregistre la valeur des actifs biologiques possedes par l''entreprise.'),
(512, 'Agencements et amenagements du materiel et des actifs biologiques', '2497', 'Ce compte enregistre la valeur des agencements et amenagements du materiel et des actifs biologiques possedes par l''entreprise.'),
(512, 'Autres materiels et actifs biologiques', '2498', 'Ce compte enregistre la valeur des autres materiels et actifs biologiques possedes par l''entreprise.'),

(519, 'Prets participatifs', '2711', 'Ce compte enregistre les prets participatifs accordes par l''entreprise.'),
(519, 'Billets de fonds', '2713', 'Ce compte enregistre les billets de fonds detenus par l''entreprise.'),
(519, 'Titres pretes', '2715', 'Ce compte enregistre les titres pretes par l''entreprise.'),
(519, 'Autres prets et creances', '2718', 'Ce compte enregistre les autres prets et creances detenus par l''entreprise.'),

(520, 'Prets immobiliers', '2721', 'Ce compte enregistre les prets immobiliers accordes par l''entreprise.'),
(520, 'Prets mobiliers et d''installation', '2722', 'Ce compte enregistre les prets mobiliers et d''installation accordes par l''entreprise.'),
(520, 'Autres prets au personnel', '2728', 'Ce compte enregistre les autres prets accordes au personnel de l''entreprise.'),

(521, 'Retenues de garantie', '2731', 'Ce compte enregistre les sommes retenues par l''entreprise a titre de garantie.'),
(521, 'Fonds reglemente', '2733', 'Ce compte enregistre les fonds reglementes detenus par l''entreprise.'),
(521, 'Autres creances sur l''Etat', '2738', 'Ce compte enregistre les autres creances de l''entreprise sur l''etat.'),

(522, 'Titres immobilises de l''activite de portefeuille (T.I.A.P.)', '2741', 'Ce compte enregistre les titres immobilises de l''activite de portefeuille (T.I.A.P.) de l''entreprise.'),
(522, 'Titres participatifs', '2742', 'Ce compte enregistre les titres participatifs detenus par l''entreprise.'),
(522, 'Certificats d''investissement', '2743', 'Ce compte enregistre les certificats d''investissement detenus par l''entreprise.'),
(522, 'Parts de fonds commun de placement (F.C.P.)', '2744', 'Ce compte enregistre les parts de fonds commun de placement (F.C.P.) detenues par l''entreprise.'),
(522, 'Obligations', '2745', 'Ce compte enregistre les obligations detenues par l''entreprise.'),
(522, 'Autres titres immobilises', '2748', 'Ce compte enregistre les autres titres immobilises detenus par l''entreprise.'),

(523, 'Depots pour loyers d''avance', '2751', 'Ce compte enregistre les depots effectues pour les loyers d''avance.'),
(523, 'Depots pour l''electricite', '2752', 'Ce compte enregistre les depots effectues pour l''electricite.'),
(523, 'Depots pour l''eau', '2753', 'Ce compte enregistre les depots effectues pour l''eau.'),
(523, 'Depots pour le gaz', '2754', 'Ce compte enregistre les depots effectues pour le gaz.'),
(523, 'Depots pour le telephone, la telecopie', '2755', 'Ce compte enregistre les depots effectues pour le telephone et la telecopie.'),
(523, 'Autres depots et cautionnement', '2758', 'Ce compte enregistre les autres depots et cautionnements effectues.'),

(524, 'Prets et creances', '2761', 'Ce compte enregistre les prets et creances accordes par l''entreprise.'),
(524, 'Prets au personnel', '2762', 'Ce compte enregistre les prets accordes au personnel.'),
(524, 'Creances sur l''Etat', '2763', 'Ce compte enregistre les creances sur l''etat.'),
(524, 'Titres immobilises', '2764', 'Ce compte enregistre les titres immobilises.'),
(524, 'Depots et cautionnements verses', '2765', 'Ce compte enregistre les depots et cautionnements verses.'),
(524, 'Immobilisations financieres diverses', '2768', 'Ce compte enregistre les immobilisations financieres diverses.'),

(525, 'Creances diverses', '2781', 'Ce compte enregistre les creances diverses de l''entreprise.'),
(525, 'Banques depots a terme et operations assimilees', '2784', 'Ce compte enregistre les depots a terme et operations assimilees effectues aupres des banques.'),
(525, 'Or et metaux precieux', '2785', 'Ce compte enregistre les avoirs en or et metaux precieux de l''entreprise.'),
(525, 'Autres immobilisations financieres', '2788', 'Ce compte enregistre les autres immobilisations financieres de l''entreprise.'),

(527, 'Amortissements des brevets, licences, concessions et droits similaires', '2812', 'Ce compte enregistre les amortissements des brevets, licences, concessions et droits similaires de l''entreprise.'),
(527, 'Amortissements des logiciels et sites internet', '2813', 'Ce compte enregistre les amortissements des logiciels et sites internet de l''entreprise.'),
(527, 'Amortissements des marques', '2814', 'Ce compte enregistre les amortissements des marques de l''entreprise.'),
(527, 'Amortissements des Indemnites de transfert aux joueurs', '2817', 'Ce compte enregistre les amortissements des indemnites de transfert aux joueurs de l''entreprise.'),
(527, 'Amortissements des autres droits et valeurs incorporels', '2818', 'Ce compte enregistre les amortissements des autres droits et valeurs incorporels de l''entreprise.'),

(528, 'Amortissements des travaux de mise en valeur des terrains', '2824', 'Ce compte enregistre les amortissements des travaux de mise en valeur des terrains de l''entreprise.'),

(529, 'Amortissements des batiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre', '2831', 'Ce compte enregistre les amortissements des batiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre de l''entreprise.'),
(529, 'Amortissements des batiments industriels agricoles, administratifs, commerciaux, religieux sur sol d''autrui', '2832', 'Ce compte enregistre les amortissements des batiments industriels, agricoles, administratifs, commerciaux, religieux sur sol d''autrui de l''entreprise.'),
(529, 'Amortissements des ouvrages d''infrastructure', '2833', 'Ce compte enregistre les amortissements des ouvrages d''infrastructure de l''entreprise.'),
(529, 'Amortissements des amenagements, agencements et installations techniques', '2834', 'Ce compte enregistre les amortissements des amenagements, agencements et installations techniques de l''entreprise.'),
(529, 'Amortissements des amenagements de bureaux', '2835', 'Ce compte enregistre les amortissements des amenagements de bureaux de l''entreprise.'),
(529, 'Amortissements des autres installations et agencements', '2838', 'Ce compte enregistre les amortissements des autres installations et agencements de l''entreprise.'),

(530, 'Amortissements du materiel et de l''outillage industriel et commercial', '2841', 'Ce compte enregistre les amortissements du materiel et de l''outillage industriel et commercial de l''entreprise.'),
(530, 'Amortissements du materiel et de l''outillage industriel agricole', '2842', 'Ce compte enregistre les amortissements du materiel et de l''outillage industriel agricole de l''entreprise.'),
(530, 'Amortissements du materiel d''emballage recuperable et identifiable', '2843', 'Ce compte enregistre les amortissements du materiel d''emballage recuperable et identifiable de l''entreprise.'),
(530, 'Amortissements du materiel et du mobilier', '2844', 'Ce compte enregistre les amortissements du materiel et du mobilier de l''entreprise.'),
(530, 'Amortissements du materiel de transport', '2845', 'Ce compte enregistre les amortissements du materiel de transport de l''entreprise.'),
(530, 'Amortissements des actifs biologiques', '2846', 'Ce compte enregistre les amortissements des actifs biologiques de l''entreprise.'),
(530, 'Amortissements des agencements et amenagements du materiel et des actifs biologiques', '2847', 'Ce compte enregistre les amortissements des agencements et amenagements du materiel et des actifs biologiques de l''entreprise.'),
(530, 'Amortissements des autres materiels', '2848', 'Ce compte enregistre les amortissements des autres materiels de l''entreprise.'),

(531, 'Depreciations d''usufruit temporaire', '2901', 'Ce compte enregistre les depreciations d''usufruit temporaire de l''entreprise.'),
(531, 'Depreciations de l''immobilisation, destinee a la vente provenant de dons et legs non encore recus', '2902', 'Ce compte enregistre les depreciations de l''immobilisation, destinee a la vente provenant de dons et legs non encore recus de l''entreprise.'),

(532, 'Depreciations des brevets, licences, concessions et droits similaires', '2912', 'Ce compte enregistre les depreciations des brevets, licences, concessions et droits similaires de l''entreprise.'),
(532, 'Depreciations des logiciels et sites internet', '2913', 'Ce compte enregistre les depreciations des logiciels et sites internet de l''entreprise.'),
(532, 'Depreciations des marques', '2914', 'Ce compte enregistre les depreciations des marques de l''entreprise.'),
(532, 'Depreciations des autres droits et valeurs incorporels', '2918', 'Ce compte enregistre les depreciations des autres droits et valeurs incorporels de l''entreprise.'),
(532, 'Depreciations des immobilisations incorporelles en cours', '2919', 'Ce compte enregistre les depreciations des immobilisations incorporelles en cours de l''entreprise.'),

(533, 'Depreciations des terrains agricoles et forestiers', '2921', 'Ce compte enregistre les depreciations des terrains agricoles et forestiers de l''entreprise.'),
(533, 'Depreciations des terrains nus', '2922', 'Ce compte enregistre les depreciations des terrains nus de l''entreprise.'),
(533, 'Depreciations des terrains batis', '2923', 'Ce compte enregistre les depreciations des terrains batis de l''entreprise.'),
(533, 'Depreciations des travaux de mise en valeur des terrains', '2924', 'Ce compte enregistre les depreciations des travaux de mise en valeur des terrains de l''entreprise.'),
(533, 'Depreciations des terrains amenages', '2926', 'Ce compte enregistre les depreciations des terrains amenages de l''entreprise.'),
(533, 'Depreciations des autres terrains', '2928', 'Ce compte enregistre les depreciations des autres terrains de l''entreprise.'),
(533, 'Depreciations des amenagements de terrains en cours', '2929', 'Ce compte enregistre les depreciations des amenagements de terrains en cours de l''entreprise.'),

(534, 'Depreciations des batiments industriels, agricoles, administratifs, commerciaux, religieux et autres sol propre', '2931', 'Ce compte enregistre les depreciations des batiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre de l''entreprise.'),
(534, 'Depreciations des batiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui', '2932', 'Ce compte enregistre les depreciations des batiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui de l''entreprise.'),
(534, 'Depreciations des ouvrages d''infrastructures', '2933', 'Ce compte enregistre les depreciations des ouvrages d''infrastructures de l''entreprise.'),
(534, 'Depreciations des amenagements, agencements et installations techniques', '2934', 'Ce compte enregistre les depreciations des amenagements, agencements et installations techniques de l''entreprise.'),
(534, 'Depreciations des amenagements de bureaux', '2935', 'Ce compte enregistre les depreciations des amenagements de bureaux de l''entreprise.'),
(534, 'Depreciations des autres installations et agencements ', '2938', 'Ce compte enregistre les depreciations des autres installations et agencements de l''entreprise.'),
(534, 'Depreciations des batiments et installations en cours', '2939', 'Ce compte enregistre les depreciations des batiments et installations en cours de l''entreprise.'),

(535, 'Depreciations du materiel et de l''outillage industriel et commercial', '2941', 'Ce compte enregistre les depreciations du materiel et de l''outillage industriel et commercial de l''entreprise.'),
(535, 'Depreciations du materiel et de l''outillage agricole', '2942', 'Ce compte enregistre les depreciations du materiel et de l''outillage agricole de l''entreprise.'),
(535, 'Depreciations du materiel d''emballage recuperable et identifiable', '2943', 'Ce compte enregistre les depreciations du materiel d''emballage recuperable et identifiable de l''entreprise.'),
(535, 'Depreciations du materiel et du mobilier', '2944', 'Ce compte enregistre les depreciations du materiel et du mobilier de l''entreprise.'),
(535, 'Depreciations du materiel de transport', '2945', 'Ce compte enregistre les depreciations du materiel de transport de l''entreprise.'),
(535, 'Depreciations des actifs biologiques', '2946', 'Ce compte enregistre les depreciations des actifs biologiques de l''entreprise.'),
(535, 'Depreciations des amenagements et agencements du materiel et des actifs biologiques ', '2947', 'Ce compte enregistre les depreciations des amenagements et agencements du materiel et des actifs biologiques de l''entreprise.'),
(535, 'Depreciations des autres materiels', '2948', 'Ce compte enregistre les depreciations des autres materiels de l''entreprise.'),
(535, 'Depreciations de materiel en cours', '2949', 'Ce compte enregistre les depreciations de materiel en cours de l''entreprise.'),

(536, 'Depreciations des avances et acomptes verses sur immobilisations incorporelles', '2951', 'Ce compte enregistre les depreciations des avances et acomptes verses sur les immobilisations incorporelles de l''entreprise.'),
(536, 'Depreciations des avances et acomptes verses sur immobilisations corporelles', '2952', 'Ce compte enregistre les depreciations des avances et acomptes verses sur les immobilisations corporelles de l''entreprise.'),

(537, 'Depreciations des titres de participations', '2961', 'Ce compte enregistre les depreciations des titres de participations de l''entreprise.'),
(537, 'Depreciations des participations dans les organismes professionnels', '2965', 'Ce compte enregistre les depreciations des participations dans les organismes professionnels de l''entreprise.'),
(537, 'Depreciations des parts des GIE', '2966', 'Ce compte enregistre les depreciations des parts des groupements d''interet economique (GIE), de l''entreprise.'),
(537, 'Depreciations des autres titres de participation', '2968', 'Ce compte enregistre les depreciations des autres titres de participation de l''entreprise.'),

(538, 'Depreciations des prets et creances', '2971', 'Ce compte enregistre les depreciations des prets et creances de l''entreprise.'),
(538, 'Depreciations des prets au personnel', '2972', 'Ce compte enregistre les depreciations des prets accordes au personnel de l''entreprise.'),
(538, 'Depreciations des creances sur l''Etat', '2973', 'Ce compte enregistre les depreciations des creances de l''entreprise sur l''Etat.'),
(538, 'Depreciations des titres immobilises', '2974', 'Ce compte enregistre les depreciations des titres immobilises de l''entreprise.'),
(538, 'Depreciations des depots et cautionnements verses', '2975', 'Ce compte enregistre les depreciations des depots et cautionnements verses par l''entreprise.'),
(538, 'Depreciations des creances rattachees a des participations et avances a des GIE', '2977', 'Ce compte enregistre les depreciations des creances rattachees a des participations et avances a des groupements d''interet economique (GIE), de l''entreprise.'),
(538, 'Depreciations des creances financieres diverses', '2978', 'Ce compte enregistre les depreciations des autres creances financieres de l''entreprise.'),

(549, 'Emballages perdus', '3351', 'Ce compte enregistre la valeur des emballages perdus par l''entreprise.'),
(549, 'Emballages recuperables non identifiables', '3352', 'Ce compte enregistre la valeur des emballages recuperables mais non identifiables par l''entreprise.'),
(549, 'Emballages a usage mixte', '3353', 'Ce compte enregistre la valeur des emballages utilises a la fois pour des produits vendus et des produits de l''entreprise.'),
(549, 'Autres emballages', '3358', 'Ce compte enregistre la valeur des autres types d''emballages utilises par l''entreprise.'),

(553, 'Animaux', '3631', 'Ce compte enregistre la valeur des animaux detenus en stock par l''entreprise.'),
(553, 'Vegetaux', '3632', 'Ce compte enregistre la valeur des vegetaux detenus en stock par l''entreprise.'),
(553, 'Autres stocks (activites annexes)', '3638', 'Ce compte enregistre la valeur des autres types de stocks lies a des activites annexes de l''entreprise.'),

(558, 'Stock en consignation', '3771', 'Ce compte enregistre la valeur des stocks places en consignation, c''est-a-dire des biens detenus par l''entreprise mais appartenant a des tiers et destines a etre vendus ou utilises ulterieurement.'),
(558, 'Stock en depot', '3772', 'Ce compte enregistre la valeur des stocks detenus en depot par l''entreprise, c''est-a-dire des biens qui sont entreposes chez l''entreprise pour le compte de tiers.'),

(567, 'Fournisseurs', '4011', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetes.'),
(567, 'Fournisseurs sous-traitant', '4013', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs sous-traitants pour des biens ou des services achetes.'),
(567, 'Fournisseurs, reserves de propriete', '4016', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetes, avec reserve de propriete.'),
(567, 'Fournisseurs, retenues de garantie', '4017', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetes, avec retenue de garantie.'),

(568, 'Fournisseurs, effets a payer', '4021', 'Ce compte enregistre les effets a payer par l''entreprise a ses fournisseurs pour des biens ou des services achetes.'),
(568, 'Fournisseurs sous-traitant, effets a payer', '4023', 'Ce compte enregistre les effets a payer par l''entreprise a ses fournisseurs sous-traitants pour des biens ou des services achetes.'),

(569, 'Fournisseurs', '4081', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetes.'),
(569, 'Fournisseurs sous-traitants', '4083', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs sous-traitants pour des biens ou des services achetes.'),
(569, 'Fournisseurs, interets courus', '4086', 'Ce compte enregistre les interets courus sur les dettes de l''entreprise envers ses fournisseurs.'),

(570, 'Fournisseurs avances et acomptes verses', '4091', 'Ce compte enregistre les avances et acomptes verses par l''entreprise a ses fournisseurs pour des biens ou des services a recevoir.'),
(570, 'Fournisseurs sous-traitants avances et acomptes verses', '4093', 'Ce compte enregistre les avances et acomptes verses par l''entreprise a ses fournisseurs sous-traitants pour des biens ou des services a recevoir.'),
(570, 'Fournisseurs creances pour emballages et materiels a rendre', '4094', 'Ce compte enregistre les creances de l''entreprise sur ses fournisseurs pour des emballages et materiels a rendre.'),
(570, 'Fournisseurs, rabais, remises, ristournes et autres avoirs a obtenir', '4098', 'Ce compte enregistre les rabais, remises, ristournes et autres avoirs a obtenir de la part des fournisseurs.'),

(573, 'Adherents, cheques impayes', '4131', 'Ce compte enregistre les cheques impayes emis par les adherents.'),
(573, 'Clients-usagers, cheques impayes', '4132', 'Ce compte enregistre les cheques impayes emis par les clients-usagers.'),
(573, 'Adherents, Autres valeurs impayes', '4133', 'Ce compte enregistre les autres valeurs impayees emises par les adherents.'),
(573, 'Clients-usagers, autres valeurs impayes', '4138', 'Ce compte enregistre les autres valeurs impayees emises par les clients-usagers.'),

(574, 'Adherents cotisations litigieuses ou douteuses', '4161', 'Ce compte enregistre les cotisations litigieuses ou douteuses emises par les adherents.'),
(574, 'Creances-usagers, factures a etablir', '4162', 'Ce compte enregistre les factures a etablir dues par les clients-usagers.'),
(574, 'Adherents, clients-usagers, interets courus', '4186', 'Ce compte enregistre les interets courus dus par les adherents et les clients-usagers.'),

(575, 'Adherents, Clients-usagers crediteurs', '4191', 'Ce compte enregistre les montants dus par les adherents et les clients-usagers qui ont un solde crediteur.'),
(575, 'Clients-usagers, avances et acomptes recus', '4192', 'Ce compte enregistre les avances et acomptes recus des clients-usagers.'),
(575, 'Clients-usagers, dettes pour emballages et materiels consignes', '4194', 'Ce compte enregistre les dettes pour emballages et materiels consignes des clients-usagers.'),
(575, 'Clients-usagers, rabais, remises, ristournes et autres avoirs a accorder', '4198', 'Ce compte enregistre les rabais, remises, ristournes et autres avoirs a accorder aux clients-usagers.'),

(576, 'Personnel, avances', '4211', 'Ce compte enregistre les avances faites au personnel.'),
(576, 'Personnel, acomptes', '4212', 'Ce compte enregistre les acomptes verses au personnel.'),
(576, 'Frais avances et fournitures au personnel', '4213', 'Ce compte enregistre les frais avances et les fournitures fournies au personnel.'),

(579, 'Assistance medicale', '4241', 'Ce compte enregistre les depenses liees a l''assistance medicale fournie au personnel.'),
(579, 'Allocations familiales', '4242', 'Ce compte enregistre les allocations familiales versees au personnel.'),
(579, 'Organismes sociaux rattaches a l''entite', '4245', 'Ce compte enregistre les contributions versees aux organismes sociaux rattaches a l''entite.'),
(579, 'Autres œuvres sociales internes', '4248', 'Ce compte enregistre les depenses liees a d''autres œuvres sociales internes a l''entite.'),

(580, 'Delegues du personnel', '4251', 'Ce compte enregistre les frais relatifs aux delegues du personnel.'),
(580, 'Syndicats et assimiles', '4252', 'Ce compte enregistre les frais relatifs aux syndicats et aux representants du personnel assimiles.'),
(580, 'Autres representants du personnel', '4258', 'Ce compte enregistre les frais relatifs a d''autres representants du personnel.'),

(582, 'Personnel conges a payer', '4281', 'Ce compte enregistre les charges liees aux conges a payer pour le personnel.'),
(582, 'Autres charges a payer', '4286', 'Ce compte enregistre d''autres charges a payer.'),
(582, 'Produits a recevoir', '4287', 'Ce compte enregistre les produits a recevoir.'),

(583, 'Prestations familiales', '4311', 'Ce compte enregistre les cotisations sociales liees aux prestations familiales.'),
(583, 'Accidents de travail', '4312', 'Ce compte enregistre les cotisations sociales liees aux accidents de travail.'),
(583, 'Autres cotisations sociales', '4318', 'Ce compte enregistre les autres cotisations sociales.'),

(584, 'Caisse de retraite obligatoire', '4321', 'Ce compte enregistre les cotisations sociales versees a la caisse de retraite obligatoire.'),
(584, 'Caisse de retraite complementaire', '4322', 'Ce compte enregistre les cotisations sociales versees a la caisse de retraite complementaire.'),
(584, 'Autres caisses de retraites', '4328', 'Ce compte enregistre les cotisations sociales versees a d''autres caisses de retraites.'),

(585, 'Mutuelle de sante', '4331', 'Ce compte enregistre les cotisations sociales versees a la mutuelle de sante.'),
(585, 'Assurances retraite', '4332', 'Ce compte enregistre les cotisations sociales versees aux assurances retraite.'),
(585, 'Assurances et organismes de sante', '4333', 'Ce compte enregistre les cotisations sociales versees aux assurances et organismes de sante.'),

(586, 'Charges sociales sur gratifications a payer', '4381', 'Ce compte enregistre les charges sociales a payer sur les gratifications du personnel.'),
(586, 'Charges sociales sur conges a payer', '4382', 'Ce compte enregistre les charges sociales a payer sur les conges du personnel.'),
(586, 'Autres charges a payer', '4386', 'Ce compte enregistre d''autres charges a payer.'),
(586, 'Produits a recevoir', '4387', 'Ce compte enregistre les produits a recevoir.'),

(587, 'Impots et taxes d''Etat', '4421', 'Ce compte enregistre les impots et taxes dus a l''etat.'),
(587, 'Impots et taxes pour les collectivites publiques', '4422', 'Ce compte enregistre les impots et taxes dus aux collectivites publiques.'),
(587, 'Impots et taxes recouvrables sur des obligataires', '4423', 'Ce compte enregistre les impots et taxes recouvrables sur des obligataires.'),
(587, 'Impots et taxes recouvrables sur des adherents et autres', '4424', 'Ce compte enregistre les impots et taxes recouvrables sur des adherents et autres.'),
(587, 'Droits de douane', '4426', 'Ce compte enregistre les droits de douane.'),
(587, 'Autres impots et taxes', '4428', 'Ce compte enregistre d''autres impots et taxes.'),

(592, 'Impots general sur le revenu', '4471', 'Ce compte enregistre l''impot general sur le revenu.'),
(592, 'Impots sur salaires', '4472', 'Ce compte enregistre les impots sur les salaires.'),
(592, 'Contribution nationale', '4473', 'Ce compte enregistre la contribution nationale.'),
(592, 'Contribution nationale de solidarite', '4474', 'Ce compte enregistre la contribution nationale de solidarite.'),
(592, 'Autres impots et contributions', '4478', 'Ce compte enregistre d''autres impots et contributions.'),

(593, 'Charges a payer', '4486', 'Ce compte enregistre les charges a payer.'),
(593, 'Produits a recevoir', '4487', 'Ce compte enregistre les produits a recevoir.'),

(594, 'etat, Subvention a recevoir', '4491', 'Ce compte enregistre les subventions a recevoir de l''etat.'),

(595, 'Apporteurs en nature', '4511', 'Ce compte enregistre les apports en nature effectues par les associes ou actionnaires a la societe.'),
(595, 'Apporteurs en numeraire', '4512', 'Ce compte enregistre les apports en numeraire effectues par les associes ou actionnaires a la societe.'),
(595, 'Adherents, dirigeants, comptes courants', '4515', 'Ce compte enregistre les sommes deposees par les adherents, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants.'),

(596, 'Apporteurs en nature', '4521', 'Ce compte enregistre les apports en nature effectues par les associes ou actionnaires lors de la creation de la societe.'),
(596, 'Apporteurs en numeraire', '4522', 'Ce compte enregistre les apports en numeraire effectues par les associes ou actionnaires lors de la creation de la societe.'),
(596, 'Fondateurs, dirigeants, comptes courants', '4525', 'Ce compte enregistre les sommes deposees par les fondateurs, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants lors de la creation de la societe.'),

(597, 'Apporteurs en nature', '4531', 'Ce compte enregistre les apports en nature effectues par les associes ou actionnaires lors de la creation de la societe ou ulterieurement.'),
(597, 'Apporteurs en numeraire', '4532', 'Ce compte enregistre les apports en numeraire effectues par les associes ou actionnaires lors de la creation de la societe ou ulterieurement.'),
(597, 'Membres, dirigeants, comptes courants', '4535', 'Ce compte enregistre les sommes deposees par les membres, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants.'),

(598, 'Apporteurs en nature', '4541', 'Ce compte enregistre les apports en nature effectues par les associes ou actionnaires lors de la creation de la societe ou ulterieurement.'),
(598, 'Apporteurs en numeraire', '4542', 'Ce compte enregistre les apports en numeraire effectues par les associes ou actionnaires lors de la creation de la societe ou ulterieurement.'),
(598, 'Adherents, dirigeants, comptes courants', '4545', 'Ce compte enregistre les sommes deposees par les adherents ou dirigeants sous forme de comptes courants.'),

(599, 'Congregations religieuses et assimilees', '4561', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des congregations religieuses ou entites similaires.'),
(599, 'Waqf et assimiles', '4562', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des Waqf ou entites similaires.'),

(600, 'Mecenes et assimiles', '4571', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des mecenes ou entites similaires.'),
(600, 'Benevoles et assimiles', '4572', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des benevoles ou entites similaires.'),

(605, 'Bailleurs-fonds d''administration a recevoir', '4692', 'Ce compte enregistre les montants dus aux bailleurs de fonds pour les frais administratifs a recevoir.'),
(605, 'Etat-Fonds d''administration a recevoir', '4693', 'Ce compte enregistre les montants dus a l''etat pour les frais administratifs a recevoir.'),
(605, 'Autres tiers ou organismes de financement assimiles Fonds d''administration a recevoir', '4694', 'Ce compte enregistre les montants dus a d''autres tiers ou organismes de financement pour les frais administratifs a recevoir.'),

(606, 'Debiteurs divers', '4711', 'Ce compte enregistre les montants dus a l''entreprise par des debiteurs divers qui ne sont pas specifiquement classes ailleurs dans le systeme comptable.'),
(606, 'Crediteurs divers', '4712', 'Ce compte enregistre les montants dus par l''entreprise a des crediteurs divers qui ne sont pas specifiquement classes ailleurs dans le systeme comptable.'),
(606, 'Crediteurs, dons en nature courant non consommes', '4713', 'Ce compte enregistre les dons en nature recus par l''entreprise qui n''ont pas encore ete consommes ou utilises dans ses operations courantes.'),
(606, 'Debiteurs divers-retenues de garantie', '4717', 'Ce compte enregistre les montants dus a l''entreprise par des debiteurs divers, avec des retenues de garantie ou des provisions pour des reclamations potentielles.'),
(606, 'Bons de souscription d''actions et d''obligations', '4719', 'Ce compte enregistre les bons de souscription d''actions et d''obligations emis par l''entreprise, qui donnent le droit a leur detenteur de souscrire a de nouvelles actions ou obligations a des conditions specifiees.'),

(607, 'Creances sur cessions de titres de placement', '4721', 'Ce compte enregistre les creances decoulant de la cession de titres de placement, c''est-a-dire les montants dus a l''entreprise resultant de la vente de titres de placement.'),
(607, 'Versements restant a effectuer sur titres de placement non liberes', '4726', 'Ce compte enregistre les montants restant a verser sur des titres de placement qui n''ont pas encore ete entierement liberes ou payes.'),

(608, 'Subventions d''investissement a recevoir', '4731', 'Ce compte enregistre les subventions accordees a l''entreprise pour financer des investissements specifiques qui n''ont pas encore ete recues.'),
(608, 'Subventions d''exploitation a recevoir', '4732', 'Ce compte enregistre les subventions accordees a l''entreprise pour soutenir ses activites operationnelles courantes qui n''ont pas encore ete recues.'),
(608, 'Subventions d''equilibre a recevoir', '4733', 'Ce compte enregistre les subventions accordees a l''entreprise pour maintenir son equilibre financier qui n''ont pas encore ete recues.'),
(608, 'Autres subventions a recevoir', '4738', 'Ce compte enregistre d''autres types de subventions a recevoir qui ne sont pas specifiquement couverts par les comptes precedents.'),
(608, 'Subventions a reverser', '4739', 'Ce compte enregistre les subventions que l''entreprise doit reverser a d''autres entites ou organismes conformement a des accords ou des reglementations specifiques.'),

(609, 'Compte de repartition periodique des charges', '4746', 'Ce compte est utilise pour repartir periodiquement les charges sur plusieurs periodes comptables, generalement pour des charges qui ne peuvent pas etre directement imputees a une seule periode.'),
(609, 'Compte de repartition periodique des produits', '4747', 'Ce compte est utilise pour repartir periodiquement les produits sur plusieurs periodes comptables, generalement pour des produits qui ne peuvent pas etre directement attribues a une seule periode.'),

(613, 'Diminution des creances d''exploitation et HAO', '4781', 'Ce compte enregistre les diminutions des creances d''exploitation et des creances hors activites ordinaires (HAO) de l''entreprise.'),
(613, 'Diminution des creances d''exploitation', '47811', 'Ce sous-compte enregistre specifiquement les diminutions des creances resultant des operations d''exploitation de l''entreprise.'),
(613, 'Diminution des creances HAO', '47818', 'Ce sous-compte enregistre specifiquement les diminutions des creances hors activites ordinaires (HAO) de l''entreprise.'),
(613, 'Diminution des creances financieres', '4782', 'Ce compte enregistre les diminutions des creances financieres de l''entreprise.'),
(613, 'Augmentation des dettes d''exploitation et HAO', '4783', 'Ce compte enregistre les augmentations des dettes d''exploitation et des dettes hors activites ordinaires (HAO) de l''entreprise.'),
(613, 'Augmentation des dettes d''exploitation', '47831', 'Ce sous-compte enregistre specifiquement les augmentations des dettes resultant des operations d''exploitation de l''entreprise.'),
(613, 'Augmentation des dettes HAO', '47838', 'Ce sous-compte enregistre specifiquement les augmentations des dettes hors activites ordinaires (HAO) de l''entreprise.'),
(613, 'Augmentation des dettes financieres', '4784', 'Ce compte enregistre les augmentations des dettes financieres de l''entreprise.'),
(613, 'Differences d''evaluation sur instruments de tresorerie', '4786', 'Ce compte enregistre les differences entre la valeur comptable et la valeur de marche des instruments de tresorerie.'),
(613, 'Differences compensees par couverture de change', '4788', 'Ce compte enregistre les differences compensees par des operations de couverture de change pour minimiser les risques de change de l''entreprise.'),

(614, 'Augmentation des creances d''exploitation et HAO', '4791', 'Ce compte enregistre les augmentations des creances d''exploitation et des creances hors activites ordinaires (HAO) de l''entreprise.'),
(614, 'Augmentation des creances d''exploitation', '47911', 'Ce sous-compte enregistre specifiquement les augmentations des creances resultant des operations d''exploitation de l''entreprise.'),
(614, 'Augmentation des creances HAO', '47918', 'Ce sous-compte enregistre specifiquement les augmentations des creances hors activites ordinaires (HAO) de l''entreprise.'),
(614, 'Augmentation des creances financieres', '4792', 'Ce compte enregistre les augmentations des creances financieres de l''entreprise.'),
(614, 'Diminution des dettes d''exploitation et HAO', '4793', 'Ce compte enregistre les diminutions des dettes d''exploitation et des dettes hors activites ordinaires (HAO) de l''entreprise.'),
(614, 'Diminution des dettes d''exploitation', '47931', 'Ce sous-compte enregistre specifiquement les diminutions des dettes resultant des operations d''exploitation de l''entreprise.'),
(614, 'Diminution des dettes HAO', '47938', 'Ce sous-compte enregistre specifiquement les diminutions des dettes hors activites ordinaires (HAO) de l''entreprise.'),
(614, 'Diminution des dettes financieres', '4794', 'Ce compte enregistre les diminutions des dettes financieres de l''entreprise.'),
(614, 'Differences d''evaluation sur instruments de tresorerie', '4797', 'Ce compte enregistre les differences entre la valeur comptable et la valeur de marche des instruments de tresorerie.'),
(614, 'Differences compensees par couverture de change', '4798', 'Ce compte enregistre les differences compensees par des operations de couverture de change pour minimiser les risques de change de l''entreprise.'),

(615, 'Fournisseurs, immobilisations incorporelles', '4811', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour l''acquisition d''immobilisations incorporelles, telles que les brevets, les licences ou les logiciels.'),
(615, 'Fournisseurs, immobilisations corporelles', '4812', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour l''acquisition d''immobilisations corporelles, telles que les equipements, les machines ou les batiments.'),
(615, 'Versements restant a effectuer sur titres de placement non liberes', '4813', 'Ce compte enregistre les montants restant a verser sur des titres de placement qui n''ont pas encore ete entierement liberes ou payes.'),
(615, 'Fournisseurs, reserves de propriete-immobilisations', '4816', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs qui ont accorde une reserve de propriete sur des immobilisations, c''est-a-dire une clause stipulant que la propriete de l''immobilisation n''est transferee a l''acheteur qu''apres le paiement complet.'),
(615, 'Fournisseurs, reserve de propriete-immobilisations incorporelles', '48161', 'Ce sous-compte enregistre specifiquement les dettes de l''entreprise envers les fournisseurs avec une reserve de propriete sur des immobilisations incorporelles.'),
(615, 'Fournisseurs, reserves de propriete-immobilisations corporelles', '48162', 'Ce sous-compte enregistre specifiquement les dettes de l''entreprise envers les fournisseurs avec une reserve de propriete sur des immobilisations corporelles.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations', '4817', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs qui ont retenu une garantie sur des immobilisations, generalement pour assurer la qualite ou la conformite des biens livres.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations incorporelles', '48171', 'Ce sous-compte enregistre specifiquement les dettes de l''entreprise envers les fournisseurs avec une retenue de garantie sur des immobilisations incorporelles.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations corporelles', '48172', 'Ce sous-compte enregistre specifiquement les dettes de l''entreprise envers les fournisseurs avec une retenue de garantie sur des immobilisations corporelles.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations', '4818', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore ete recues ou enregistrees dans les comptes de l''entreprise.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations incorporelles', '48181', 'Ce sous-compte enregistre specifiquement les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore ete recues ou enregistrees dans les comptes de l''entreprise, concernant des immobilisations incorporelles.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations corporelles', '48182', 'Ce sous-compte enregistre specifiquement les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore ete recues ou enregistrees dans les comptes de l''entreprise, concernant des immobilisations corporelles.'),

(617, 'Creances, en compte, immobilisation incorporelles', '4851', 'Ce compte enregistre les creances sur des tiers pour des immobilisations incorporelles qui sont comptabilisees en compte.'),
(617, 'Creances, en compte, immobilisation corporelles', '4852', 'Ce compte enregistre les creances sur des tiers pour des immobilisations corporelles qui sont comptabilisees en compte.'),
(617, 'Creances, immobilisation financieres', '4856', 'Ce compte enregistre les creances sur des tiers pour des immobilisations financieres.'),
(617, 'Creances, retenues de garantie sur cession d''immobilisation', '4857', 'Ce compte enregistre les creances sur des tiers pour des retenues de garantie sur la cession d''immobilisation.'),
(617, 'Creances sur cession d''immobilisations, facture a etablir', '4858', 'Ce compte enregistre les creances sur des tiers pour des cessions d''immobilisations pour lesquelles une facture doit encore etre etablie.'),

(618, 'Dettes des dons et legs d''immobilisations', '4861', 'Ce compte enregistre les dettes de l''entreprise liees aux dons et legs d''immobilisations qu''elle a recus.'),
(618, 'Creances recues sur dons et legs d''immobilisation', '4865', 'Ce compte enregistre les creances de l''entreprise decoulant des dons et legs d''immobilisations qu''elle a recus.'),

(619, 'Crediteurs, dons en nature HAO non consommes', '4881', 'Ce compte enregistre les montants dus par l''entreprise pour des dons en nature hors activites ordinaires (HAO) qui n''ont pas encore ete consommes ou utilises dans ses operations courantes.'),

(621, 'Depreciations des creances litigieuses', '4911', 'Ce compte enregistre les depreciations comptables appliquees aux creances litigieuses, c''est-a-dire les montants estimes comme irrecouvrables en raison de litiges ou de contestations.'),
(621, 'Depreciations des creances douteuses', '4912', 'Ce compte enregistre les depreciations comptables appliquees aux creances douteuses, c''est-a-dire les montants estimes comme presentant un risque de non-paiement en raison de l''incertitude quant a la solvabilite du debiteur.'),

(626, 'Depreciations des creances sur cessions d''immobilisations', '4985', 'Ce compte enregistre les depreciations comptables appliquees aux creances resultant de cessions d''immobilisations, c''est-a-dire les montants estimes comme irrecouvrables ou presentant un risque de non-paiement.'),
(626, 'Depreciations des autres creances H.A.O.', '4988', 'Ce compte enregistre les depreciations comptables appliquees aux autres creances hors activites ordinaires (H.A.O.), c''est-a-dire les montants estimes comme irrecouvrables ou presentant un risque de non-paiement, mais qui ne sont pas specifiquement lies a des cessions d''immobilisations.'),

(627, 'Provisions pour risques sur operations d''exploitation', '4991', 'Ce compte enregistre les provisions comptables constituees pour couvrir les risques potentiels lies aux operations d''exploitation de l''entreprise, tels que les litiges, les garanties ou les pertes sur creances.'),
(627, 'Provisions pour risques sur operations H.A.O.', '4998', 'Ce compte enregistre les provisions comptables constituees pour couvrir les risques potentiels lies aux autres operations hors activites ordinaires (H.A.O.) de l''entreprise, qui ne sont pas specifiquement lies aux operations d''exploitation.'),

(628, 'Titres du Tresor a court terme', '5011', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Tresor a court terme, qui sont des titres de dette emis par le gouvernement et ayant une echeance de moins d''un an.'),
(628, 'Titres d''organismes financiers', '5012', 'Ce compte enregistre les investissements de l''entreprise dans des titres emis par des organismes financiers, tels que des obligations ou des actions, et ayant une echeance de moins d''un an.'),
(628, 'Bons de caisse a court terme', '5013', 'Ce compte enregistre les investissements de l''entreprise dans des bons de caisse a court terme, qui sont des titres de creance emis par des institutions financieres et ayant une echeance de moins d''un an.'),
(628, 'Frais d''acquisition des titres de tresor et bons de caisse', '5016', 'Ce compte enregistre les frais d''acquisition supportes par l''entreprise lors de l''achat de titres du Tresor et de bons de caisse, tels que les commissions ou les frais de courtage.'),

(629, 'Actions cotees', '5022', 'Ce compte enregistre les investissements de l''entreprise dans des actions cotees en bourse, c''est-a-dire des actions dont le cours est publie sur un marche financier.'),
(629, 'Actions non cotees', '5023', 'Ce compte enregistre les investissements de l''entreprise dans des actions non cotees en bourse, c''est-a-dire des actions qui ne sont pas negociees sur un marche financier public.'),
(629, 'Autres actions', '5025', 'Ce compte enregistre les investissements de l''entreprise dans d''autres types d''actions qui ne sont pas specifiquement couverts par les comptes precedents.'),
(629, 'Frais d''acquisition des obligations', '5026', 'Ce compte enregistre les frais d''acquisition supportes par l''entreprise lors de l''achat d''obligations, tels que les commissions ou les frais de courtage.'),

(630, 'Obligations cotees', '5032', 'Ce compte enregistre les investissements de l''entreprise dans des obligations cotees en bourse, c''est-a-dire des obligations dont le cours est publie sur un marche financier.'),
(630, 'Obligations non cotees', '5033', 'Ce compte enregistre les investissements de l''entreprise dans des obligations non cotees en bourse, c''est-a-dire des obligations qui ne sont pas negociees sur un marche financier public.'),
(630, 'Autres obligations', '5035', 'Ce compte enregistre les investissements de l''entreprise dans d''autres types d''obligations qui ne sont pas specifiquement couverts par les comptes precedents.'),
(630, 'Frais d''acquisition d''obligations', '5036', 'Ce compte enregistre les frais d''acquisition supportes par l''entreprise lors de l''achat d''obligations, tels que les commissions ou les frais de courtage.'),

(631, 'Bons de souscription d''actions', '5042', 'Ce compte enregistre les bons de souscription d''actions emis par l''entreprise, qui donnent le droit a leur detenteur de souscrire a de nouvelles actions de l''entreprise a un prix predetermine.'),
(631, 'Bons de souscription d''obligations', '5043', 'Ce compte enregistre les bons de souscription d''obligations emis par l''entreprise, qui donnent le droit a leur detenteur de souscrire a de nouvelles obligations de l''entreprise a un prix predetermine.'),

(633, 'Titres du tresor et bons de caisse a court terme', '5061', 'Ce compte regroupe les investissements de l''entreprise dans des titres du Tresor et des bons de caisse a court terme, representant des instruments de placement a court terme emis par le gouvernement ou des institutions financieres.'),
(633, 'Actions', '5062', 'Ce compte regroupe les investissements de l''entreprise dans des actions, representant des parts de propriete dans des societes.'),
(633, 'Obligations', '5063', 'Ce compte regroupe les investissements de l''entreprise dans des obligations, representant des titres de creance emis par des gouvernements, des societes ou d''autres entites.'),

(638, 'Cheque de voyage', '5185', 'Ce compte enregistre les cheques de voyage detenus par l''entreprise, qui sont des instruments de paiement prepayes utilises comme alternative aux especes lors de voyages internationaux.'),
(638, 'Coupons echus', '5186', 'Ce compte enregistre les coupons echus, c''est-a-dire les interets qui n''ont pas ete encaisses par les detenteurs d''obligations a leur date d''echeance.'),
(638, 'Interets echus des obligations', '5187', 'Ce compte enregistre les interets echus mais non encore payes sur les obligations detenues par l''entreprise, qui doivent etre comptabilises comme une charge a payer.'),

(639, 'Banques en monnaie nationale', '5211', 'Ce compte enregistre les soldes detenus par l''entreprise dans des comptes bancaires libelles dans la monnaie nationale du pays.'),
(639, 'Banques en devises', '5215', 'Ce compte enregistre les soldes detenus par l''entreprise dans des comptes bancaires libelles dans des devises etrangeres autres que la monnaie nationale.'),

(644, 'Banque, interets courus charges a payer', '5261', 'Ce compte enregistre les interets sur des charges qui ont ete accumules mais qui n''ont pas encore ete payes par l''entreprise.'),
(644, 'Banque, interets courus produits a recevoir', '5267', 'Ce compte enregistre les interets sur des produits qui ont ete accumules mais qui n''ont pas encore ete recus par l''entreprise.'),

(648, 'Etablissements financiers, interets courus charges a payer', '5361', 'Ce compte enregistre les interets sur des charges qui ont ete accumules mais qui n''ont pas encore ete payes par l''entreprise aupres d''etablissements financiers.'),
(648, 'Etablissements financiers, interets courus produits a recevoir', '5367', 'Ce compte enregistre les interets sur des produits qui ont ete accumules mais qui n''ont pas encore ete recus par l''entreprise de la part d''etablissements financiers.'),

(668, 'Achats de biens et services lies a l''activite dans l''Etat partie', '6011', 'Ce compte enregistre les depenses d''achat de biens et services necessaires a l''activite de l''entreprise realisees dans l''etat partie.'),
(668, 'Achats de biens et services lies a l''activite dans la Region', '6012', 'Ce compte enregistre les depenses d''achat de biens et services necessaires a l''activite de l''entreprise realisees dans la region specifiee.'),
(668, 'Achats de biens et services lies a l''activite hors Region', '6013', 'Ce compte enregistre les depenses d''achat de biens et services necessaires a l''activite de l''entreprise realisees en dehors de la region specifiee.'),
(668, 'Frais sur achats de biens et services lies a l''activite', '6015', 'Ce compte enregistre les frais associes aux achats de biens et services necessaires a l''activite de l''entreprise, tels que les frais de transport, de manutention, etc.'),
(668, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6019', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de biens et services, qui n''ont pas ete ventiles dans des comptes specifiques.'),

(669, 'Achats de marchandises et matieres premieres dans l''Etat partie', '6021', 'Ce compte enregistre les depenses d''achat de marchandises et de matieres premieres realisees dans l''etat partie.'),
(669, 'Achats de marchandises et matieres premieres dans la Region', '6022', 'Ce compte enregistre les depenses d''achat de marchandises et de matieres premieres realisees dans la region specifiee.'),
(669, 'Achats de marchandises et matieres premieres hors Region', '6023', 'Ce compte enregistre les depenses d''achat de marchandises et de matieres premieres realisees en dehors de la region specifiee.'),
(669, 'Frais sur achats de marchandises et matieres', '6025', 'Ce compte enregistre les frais associes aux achats de marchandises et de matieres premieres, tels que les frais de transport, de manutention, etc.'),
(669, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6029', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de marchandises et matieres premieres, qui n''ont pas ete ventiles dans des comptes specifiques.'),

(670, 'Variations des stocks de biens et services lies a l''activite', '6031', 'Ce compte enregistre les variations des stocks de biens et services necessaires a l''activite de l''entreprise.'),
(670, 'Variations des stocks de marchandises', '6032', 'Ce compte enregistre les variations des stocks de marchandises detenues par l''entreprise.'),
(670, 'Variations des stocks de matieres premieres et fournitures liees', '6033', 'Ce compte enregistre les variations des stocks de matieres premieres et de fournitures liees utilisees par l''entreprise.'),
(670, 'Variations des stocks d''autres approvisionnements', '6034', 'Ce compte enregistre les variations des stocks d''autres types d''approvisionnements detenus par l''entreprise.'),
(670, 'Variations de stocks de dons en nature a distribuer', '6035', 'Ce compte enregistre les variations des stocks de dons en nature a distribuer, c''est-a-dire les biens donnes a l''entreprise mais pas encore distribues.'),

(671, 'Matieres consommables', '6041', 'Ce compte enregistre les achats de matieres consommables utilisees dans le processus de production ou dans d''autres activites de l''entreprise.'),
(671, 'Matieres combustibles', '6042', 'Ce compte enregistre les achats de matieres combustibles utilisees dans le processus de production ou dans d''autres activites de l''entreprise.'),
(671, 'Produits d''entretien', '6043', 'Ce compte enregistre les achats de produits d''entretien utilises pour maintenir les installations et l''equipement de l''entreprise en bon etat de fonctionnement.'),
(671, 'Frais sur achats matieres et fournitures consommables', '6045', 'Ce compte enregistre les frais associes aux achats de matieres et de fournitures consommables, tels que les frais de transport, de manutention, etc.'),
(671, 'Fournitures de magasin', '6046', 'Ce compte enregistre les achats de fournitures de magasin utilisees pour soutenir les operations quotidiennes de l''entreprise, telles que les fournitures de bureau, les fournitures de nettoyage, etc.'),
(671, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6049', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de matieres et fournitures, qui n''ont pas ete ventiles dans des comptes specifiques.'),

(672, 'Fournitures non stockables-Eau', '6051', 'Ce compte enregistre les achats de fournitures non stockables liees a l''eau, telles que les frais d''approvisionnement en eau.'),
(672, 'Fournitures non stockables-Electricite', '6052', 'Ce compte enregistre les achats de fournitures non stockables liees a l''electricite, telles que les frais d''approvisionnement en electricite.'),
(672, 'Fournitures non stockables-Autres energies', '6053', 'Ce compte enregistre les achats de fournitures non stockables liees a d''autres formes d''energie, telles que le gaz, le fioul, etc.'),
(672, 'Fournitures d''entretien non stockables', '6054', 'Ce compte enregistre les achats de fournitures d''entretien non stockables utilisees pour maintenir les installations et l''equipement de l''entreprise en bon etat de fonctionnement.'),
(672, 'Fournitures de bureau non stockables', '6055', 'Ce compte enregistre les achats de fournitures de bureau non stockables utilisees pour soutenir les operations quotidiennes de l''entreprise.'),
(672, 'Achat de petit materiel et outillage', '6056', 'Ce compte enregistre les achats de petit materiel et d''outillage utilises dans le processus de production ou dans d''autres activites de l''entreprise.'),
(672, 'Achats d''etudes et prestations de services', '6057', 'Ce compte enregistre les achats de services d''etudes et de prestations de services externes realises par l''entreprise.'),
(672, 'Achats de travaux, materiels et equipements', '6058', 'Ce compte enregistre les achats de travaux, de materiels et d''equipements realises par l''entreprise pour ses activites.'),
(672, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6059', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures et prestations de services, qui n''ont pas ete ventiles dans des comptes specifiques.'),

(673, 'Billetteries', '6061', 'Ce compte enregistre les achats de billets pour des evenements ou des transports.'),
(673, 'Tombola et autres jeux', '6062', 'Ce compte enregistre les achats de billets ou de fournitures pour des jeux de hasard ou des loteries.'),
(673, 'Bons d''achats', '6063', 'Ce compte enregistre les achats de bons d''achats utilises pour des recompenses, des cadeaux ou des promotions.'),
(673, 'Voyages et sorties', '6064', 'Ce compte enregistre les achats lies aux voyages et sorties d''entreprise.'),
(673, 'Autres activites', '6068', 'Ce compte regroupe les achats lies a d''autres activites non specifiquement couvertes par les comptes precedents.'),

(674, 'Emballages perdus', '6081', 'Ce compte enregistre les achats d''emballages qui sont perdus ou endommages pendant le processus de production ou de transport.'),
(674, 'Emballages recuperables non identifiables', '6082', 'Ce compte enregistre les achats d''emballages qui peuvent etre recuperes mais dont l''identification precise n''est pas possible.'),
(674, 'Emballages a usage mixte', '6083', 'Ce compte enregistre les achats d''emballages qui peuvent etre utilises a des fins multiples.'),
(674, 'Frais sur achats d''emballages', '6085', 'Ce compte enregistre les frais associes aux achats d''emballages, tels que les frais de transport, de manutention, etc.'),
(674, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6089', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats d''emballages, qui n''ont pas ete ventiles dans des comptes specifiques.'),

(678, 'Voyages et deplacements', '6181', 'Ce compte enregistre les depenses liees aux voyages et deplacements des employes de l''entreprise pour des missions professionnelles.'),
(678, 'Transports administratifs', '6183', 'Ce compte enregistre les depenses liees aux transports administratifs effectues par l''entreprise, tels que les deplacements pour des reunions ou des visites de clients.'),

(681, 'Locations de terrains', '6221', 'Ce compte enregistre les depenses liees a la location de terrains pour une periode determinee.'),
(681, 'Locations de batiments', '6222', 'Ce compte enregistre les depenses liees a la location de batiments pour une periode determinee.'),
(681, 'Locations de materiels et outillage', '6223', 'Ce compte enregistre les depenses liees a la location de materiels et d''outillage pour une periode determinee.'),
(681, 'Malis sur emballages', '6224', 'Ce compte enregistre les pertes sur les emballages loues.'),
(681, 'Locations d''emballages', '6225', 'Ce compte enregistre les depenses liees a la location d''emballages pour une periode determinee.'),
(681, 'Fermages et loyers du foncier', '6226', 'Ce compte enregistre les depenses liees a la location de terrains agricoles (fermages) ou de biens fonciers (loyers).'),
(681, 'Locations et charges locatives diverses', '6228', 'Ce compte enregistre les depenses liees a d''autres types de locations et de charges locatives qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(682, 'Credit-bail immobilier', '6232', 'Ce compte enregistre les depenses liees aux contrats de credit-bail immobilier, ou une entreprise loue un bien immobilier avec une option d''achat a la fin du contrat.'),
(682, 'Credit-bail mobilier', '6233', 'Ce compte enregistre les depenses liees aux contrats de credit-bail mobilier, ou une entreprise loue des biens mobiliers avec une option d''achat a la fin du contrat.'),
(682, 'Location-vente', '6234', 'Ce compte enregistre les depenses liees aux contrats de location-vente, ou une entreprise loue un bien avec l''intention de l''acheter a la fin du contrat.'),
(682, 'Autres contrats de location-acquisition', '6238', 'Ce compte enregistre les depenses liees a d''autres types de contrats de location-acquisition qui ne sont pas specifiquement couverts par les comptes precedents.'),

(683, 'Entretien et repartition des biens immobiliers', '6241', 'Ce compte enregistre les depenses liees a l''entretien et a la reparation des biens immobiliers de l''entreprise, tels que les batiments et les terrains.'),
(683, 'Entretien et repartition des biens mobiliers', '6242', 'Ce compte enregistre les depenses liees a l''entretien et a la reparation des biens mobiliers de l''entreprise, tels que le materiel et les equipements.'),
(683, 'Maintenance', '6243', 'Ce compte enregistre les depenses liees a la maintenance preventive et corrective des equipements et des installations de l''entreprise.'),
(683, 'Charges de demantelement et remise en etat', '6244', 'Ce compte enregistre les charges liees au demantelement et a la remise en etat des biens de l''entreprise a la fin de leur cycle de vie.'),
(683, 'Autres entretiens et repartitions', '6248', 'Ce compte enregistre les depenses liees a d''autres types d''entretiens et de reparations qui ne sont pas specifiquement couverts par les comptes precedents.'),

(684, 'Assurances multirisques', '6251', 'Ce compte enregistre les primes d''assurance pour une police d''assurance multirisque, qui couvre plusieurs types de risques.'),
(684, 'Assurances materiel de transport', '6252', 'Ce compte enregistre les primes d''assurance pour le materiel de transport de l''entreprise, tels que les vehicules et les machines.'),
(684, 'Assurances risques d''exploitation', '6253', 'Ce compte enregistre les primes d''assurance pour les risques lies a l''exploitation de l''entreprise, tels que les pertes d''exploitation et les responsabilites civiles.'),
(684, 'Autres primes d''assurances', '6258', 'Ce compte enregistre les primes d''assurance pour d''autres types de risques qui ne sont pas specifiquement couverts par les comptes precedents.'),

(685, 'Etudes et recherches', '6261', 'Ce compte enregistre les depenses liees aux etudes et aux recherches menees par l''entreprise pour developper de nouveaux produits ou ameliorer ses processus.'),
(685, 'Documentation generale', '6265', 'Ce compte enregistre les depenses liees a la documentation generale de l''entreprise, telle que la creation et la gestion de documents administratifs.'),
(685, 'Documentation technique', '6266', 'Ce compte enregistre les depenses liees a la documentation technique de l''entreprise, telle que la creation de manuels d''utilisation et de guides techniques.'),

(686, 'Annonces, insertions', '6271', 'Ce compte enregistre les depenses liees aux annonces et aux insertions publicitaires dans les medias.'),
(686, 'Catalogues, imprimes publicitaires', '6272', 'Ce compte enregistre les depenses liees a la creation et a la diffusion de catalogues et d''imprimes publicitaires.'),
(686, 'Congres, universites et assimiles', '6273', 'Ce compte enregistre les depenses liees a la participation a des congres, des universites et des evenements similaires.'),
(686, 'Manifestations', '6274', 'Ce compte enregistre les depenses liees a l''organisation de manifestations, telles que des salons professionnels et des expositions.'),
(686, 'Publications', '6275', 'Ce compte enregistre les depenses liees a la publication de documents promotionnels, tels que des brochures et des depliants.'),
(686, 'Frais de colloques, seminaires, conferences', '6277', 'Ce compte enregistre les frais lies a la participation a des colloques, des seminaires et des conferences.'),
(686, 'Autres charges de publicite et relations publiques', '6278', 'Ce compte enregistre d''autres charges liees a la publicite et aux relations publiques qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(687, 'Frais de telephone', '6281', 'Ce compte enregistre les frais lies aux communications telephoniques de l''entreprise, y compris les abonnements et les frais d''utilisation.'),
(687, 'Frais de telecopie', '6283', 'Ce compte enregistre les frais lies a l''envoi et a la reception de telecopies par l''entreprise.'),
(687, 'Frais d''internet', '6284', 'Ce compte enregistre les frais lies a l''acces a Internet et aux services en ligne utilises par l''entreprise.'),
(687, 'Autres frais de telecommunication', '6288', 'Ce compte enregistre d''autres frais lies aux communications et aux telecommunications qui ne sont pas specifiquement couverts par les comptes precedents.'),

(688, 'Frais sur titres (vente, garde)', '6311', 'Ce compte enregistre les frais lies a la vente et a la garde de titres, tels que les frais de courtage et les frais de garde.'),
(688, 'Frais sur effets', '6312', 'Ce compte enregistre les frais lies aux effets financiers, tels que les frais de traitement des cheques et des virements.'),
(688, 'Locations de coffres', '6313', 'Ce compte enregistre les frais lies a la location de coffres-forts pour le stockage de biens de valeur.'),
(688, 'Commissions sur cartes de credit', '6315', 'Ce compte enregistre les commissions payees par l''entreprise pour l''utilisation de cartes de credit dans ses transactions.'),
(688, 'Frais d''emission d''emprunts', '6316', 'Ce compte enregistre les frais lies a l''emission d''emprunts, tels que les frais de dossier et les frais de placement.'),
(688, 'Frais sur instruments de monnaie electronique', '6317', 'Ce compte enregistre les frais lies a l''utilisation d''instruments de monnaie electronique, tels que les frais de traitement des paiements electroniques.'),
(688, 'Autres frais bancaires', '6318', 'Ce compte enregistre d''autres frais bancaires qui ne sont pas specifiquement couverts par les comptes precedents.'),

(689, 'Commissions', '6322', 'Ce compte enregistre les commissions payees par l''entreprise pour divers services, tels que les commissions sur les ventes ou les commissions de courtage.'),
(689, 'Honoraires des professions reglementees', '6324', 'Ce compte enregistre les honoraires verses aux professions reglementees, telles que les honoraires des avocats, des experts-comptables, etc.'),
(689, 'Frais d''actes et de contentieux', '6325', 'Ce compte enregistre les frais lies aux actes juridiques et aux procedures contentieuses, tels que les frais de notaire et les frais de justice.'),
(689, 'Remunerations des autres prestataires de services', '6327', 'Ce compte enregistre les remunerations versees a d''autres prestataires de services qui ne sont pas specifiquement couverts par les comptes precedents.'),
(689, 'Divers frais', '6328', 'Ce compte enregistre les frais divers qui ne sont pas specifiquement couverts par les comptes precedents.'),

(691, 'Redevances pour brevets, licences', '6342', 'Ce compte enregistre les redevances payees pour l''utilisation de brevets et de licences.'),
(691, 'Redevances pour logiciels', '6343', 'Ce compte enregistre les redevances payees pour l''utilisation de logiciels.'),
(691, 'Redevances pour sites internet', '6345', 'Ce compte enregistre les redevances payees pour l''utilisation de sites internet.'),
(691, 'Redevances pour concessions, droits et valeurs similaires', '6346', 'Ce compte enregistre les redevances payees pour l''utilisation de concessions, de droits et de valeurs similaires.'),
(691, 'Autres redevances', '6248', 'Ce compte enregistre d''autres types de redevances qui ne sont pas specifiquement couverts par les comptes precedents.'),

(692, 'Cotisations', '6351', 'Ce compte enregistre les cotisations versees, telles que les cotisations sociales ou les cotisations syndicales.'),
(692, 'Concours divers', '6358', 'Ce compte enregistre les frais de participation a des concours et competitions divers.'),

(694, 'Personnel interimaire', '6371', 'Ce compte enregistre les depenses liees au personnel interimaire, c''est-a-dire les travailleurs temporaires embauches pour une periode determinee.'),
(694, 'Personnel detache ou prete a l''entite', '6372', 'Ce compte enregistre les depenses liees au personnel detache ou prete a l''entite, c''est-a-dire les employes mis a disposition par une autre entite ou entreprise.'),

(695, 'Frais de recrutement du personnel', '6381', 'Ce compte enregistre les frais lies au recrutement du personnel, tels que les honoraires des agences de recrutement ou les frais de publicite pour les postes vacants.'),
(695, 'Frais de demenagement', '6382', 'Ce compte enregistre les frais lies au demenagement du personnel, tels que les frais de transport ou les frais de logement temporaires.'),
(695, 'Receptions', '6383', 'Ce compte enregistre les frais lies a l''organisation de receptions, tels que les frais de restauration ou les frais de location de salles.'),
(695, 'Missions', '6384', 'Ce compte enregistre les frais lies aux missions professionnelles effectuees par le personnel, tels que les frais de deplacement ou les frais de subsistance.'),
(695, 'Charges de copropriete', '6385', 'Ce compte enregistre les charges liees a la copropriete des locaux utilises par l''entreprise, telles que les frais d''entretien des parties communes ou les frais de gestion de la copropriete.'),
(695, 'Charges externes diverses', '6388', 'Ce compte enregistre les autres charges externes qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(696, 'Impots fonciers et taxes annexes', '6411', 'Ce compte enregistre les impots fonciers et les taxes annexes payes sur les biens immobiliers de l''entreprise, tels que la taxe fonciere.'),
(696, 'Licences et taxes annexes', '6412', 'Ce compte enregistre les frais de licences et les taxes annexes payes pour exercer certaines activites, telles que les licences commerciales ou les taxes professionnelles.'),
(696, 'Taxes sur appointements et salaires', '6413', 'Ce compte enregistre les taxes prelevees sur les appointements et les salaires verses aux employes, telles que les cotisations sociales ou les contributions a la securite sociale.'),
(696, 'Taxes d''apprentissage', '6414', 'Ce compte enregistre les taxes versees pour financer l''apprentissage, telles que la taxe d''apprentissage.'),
(696, 'Formation professionnelle continue', '6415', 'Ce compte enregistre les depenses liees a la formation professionnelle continue des employes, telles que les frais de formation ou les frais de certification.'),
(696, 'Patente ou contribution economique locale', '6416', 'Ce compte enregistre les taxes locales payees pour exercer une activite economique, telles que la patente ou la contribution economique locale.'),
(696, 'Autres impots et taxes directs', '6418', 'Ce compte enregistre les autres impots et taxes directs qui ne sont pas specifiquement couverts par les comptes precedents.'),

(698, 'Droits de mutation', '6461', 'Ce compte enregistre les droits de mutation payes par l''entreprise lors de l''acquisition de biens immobiliers ou de titres.'),
(698, 'Droits de timbre', '6462', 'Ce compte enregistre les droits de timbre payes par l''entreprise sur certains actes juridiques ou commerciaux.'),
(698, 'Vignettes', '6464', 'Ce compte enregistre les vignettes payees par l''entreprise pour certains types de vehicules ou de produits.'),
(698, 'Autres droits d''enregistrement', '6468', 'Ce compte enregistre les autres droits d''enregistrement payes par l''entreprise.'),

(699, 'Penalites d''assiette, impots directs', '6471', 'Ce compte enregistre les penalites percues sur les impots directs en raison d''erreurs ou d''irregularites dans l''assiette fiscale.'),
(699, 'Penalites d''assiette, impots indirects', '6472', 'Ce compte enregistre les penalites percues sur les impots indirects en raison d''erreurs ou d''irregularites dans l''assiette fiscale.'),
(699, 'Penalites de recouvrement, impots directs', '6473', 'Ce compte enregistre les penalites percues sur les impots directs en raison de retards ou de defauts de paiement.'),
(699, 'Penalites de recouvrement, impots indirects', '6474', 'Ce compte enregistre les penalites percues sur les impots indirects en raison de retards ou de defauts de paiement.'),
(699, 'Autres penalites et amendes fiscales', '6478', 'Ce compte enregistre les autres penalites et amendes fiscales qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(702, 'Clients-usagers', '6511', 'Ce compte enregistre les montants dus par les clients ou usagers pour des biens ou services fournis par l''entreprise.'),
(702, 'Adherents', '6512', 'Ce compte enregistre les montants dus par les adherents ou membres pour des cotisations ou des frais associes a leur adhesion ou leur affiliation a l''entreprise.'),
(702, 'Autres debiteurs', '6515', 'Ce compte enregistre les montants dus par des tiers autres que les clients ou adherents, tels que des avances ou des prets accordes par l''entreprise.'),

(704, 'Dons en nature courant a distribuer non affectes', '6541', 'Ce compte enregistre les dons en nature courants a distribuer qui ne sont pas specifiquement affectes a une fin particuliere.'),
(704, 'Dons en nature courants a distribuer affectes', '6545', 'Ce compte enregistre les dons en nature courants a distribuer qui sont specifiquement affectes a une fin particuliere.'),

(707, 'Provisions sur risques a court terme', '6591', 'Ce compte enregistre les provisions constituees par l''entreprise pour faire face a des risques identifies a court terme.'),
(707, 'Charges pour depreciations sur stocks', '6593', 'Ce compte enregistre les charges liees a la depreciation des stocks de l''entreprise.'),
(707, 'Charges pour depreciations sur creances', '6594', 'Ce compte enregistre les charges liees a la depreciation des creances de l''entreprise.'),
(707, 'Autres charges pour depreciations et provisions pour risques a court terme', '6598', 'Ce compte enregistre d''autres charges liees aux depreciations et aux provisions pour risques a court terme qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(708, 'Appointements salaires et commissions', '6611', 'Ce compte enregistre les depenses liees aux salaires, appointements et commissions verses aux employes de l''entreprise.'),
(708, 'Primes et gratifications', '6612', 'Ce compte enregistre les depenses liees aux primes et gratifications accordees aux employes de l''entreprise.'),
(708, 'Conges payes', '6613', 'Ce compte enregistre les depenses liees aux conges payes accordes aux employes de l''entreprise.'),
(708, 'Indemnites de preavis et de licenciement', '6614', 'Ce compte enregistre les depenses liees aux indemnites de preavis et de licenciement versees aux employes de l''entreprise.'),
(708, 'Indemnites de maladie versees aux travailleurs', '6615', 'Ce compte enregistre les depenses liees aux indemnites de maladie versees aux travailleurs de l''entreprise.'),
(708, 'Supplement familial', '6616', 'Ce compte enregistre les depenses liees au supplement familial verse aux employes de l''entreprise.'),
(708, 'Avantages en nature', '6617', 'Ce compte enregistre les depenses liees aux avantages en nature fournis aux employes de l''entreprise.'),
(708, 'Autres remunerations directes', '6618', 'Ce compte enregistre d''autres types de remunerations directes versees aux employes de l''entreprise qui ne sont pas specifiquement couverts par les comptes precedents.'),

(709, 'Appointements salaires et commissions', '6621', 'Ce compte enregistre les depenses liees aux salaires, appointements et commissions verses aux employes de l''entreprise.'),
(709, 'Primes et gratifications', '6622', 'Ce compte enregistre les depenses liees aux primes et gratifications accordees aux employes de l''entreprise.'),
(709, 'Conges payes', '6623', 'Ce compte enregistre les depenses liees aux conges payes accordes aux employes de l''entreprise.'),
(709, 'Indemnites de preavis et de licenciement', '6624', 'Ce compte enregistre les depenses liees aux indemnites de preavis et de licenciement versees aux employes de l''entreprise.'),
(709, 'Indemnites de maladie versees aux travailleurs', '6625', 'Ce compte enregistre les depenses liees aux indemnites de maladie versees aux travailleurs de l''entreprise.'),
(709, 'Supplement familial', '6626', 'Ce compte enregistre les depenses liees au supplement familial verse aux employes de l''entreprise.'),
(709, 'Avantages en nature', '6627', 'Ce compte enregistre les depenses liees aux avantages en nature fournis aux employes de l''entreprise.'),
(709, 'Autres remunerations directes', '6628', 'Ce compte enregistre d''autres types de remunerations directes versees aux employes de l''entreprise qui ne sont pas specifiquement couverts par les comptes precedents.'),

(710, 'Indemnites de logement', '6631', 'Ce compte enregistre les depenses liees aux indemnites de logement accordees aux employes de l''entreprise.'),
(710, 'Indemnites de representation', '6632', 'Ce compte enregistre les depenses liees aux indemnites de representation accordees aux employes de l''entreprise.'),
(710, 'Indemnites d''expatriation', '6633', 'Ce compte enregistre les depenses liees aux indemnites d''expatriation accordees aux employes de l''entreprise lorsqu''ils travaillent a l''etranger.'),
(710, 'Indemnites de transport', '6634', 'Ce compte enregistre les depenses liees aux indemnites de transport accordees aux employes de l''entreprise.'),
(710, 'Autres indemnites et avantages divers', '6638', 'Ce compte enregistre d''autres types d''indemnites et d''avantages divers accordes aux employes de l''entreprise qui ne sont pas specifiquement couverts par les comptes precedents.'),

(711, 'Charges sociales sur remuneration du personnel national', '6641', 'Ce compte enregistre les charges sociales liees a la remuneration du personnel national de l''entreprise.'),
(711, 'Charges sociales sur remuneration du personnel non national', '6642', 'Ce compte enregistre les charges sociales liees a la remuneration du personnel non national de l''entreprise.'),

(713, 'Personnel interimaire', '6671', 'Ce compte enregistre les depenses liees au personnel interimaire employe par l''entreprise.'),
(713, 'Personnel detache ou prete a l''entite', '6672', 'Ce compte enregistre les depenses liees au personnel detache ou prete a l''entreprise par d''autres entites.'),

(714, 'Versements aux syndicats et assimiles', '6681', 'Ce compte enregistre les versements aux syndicats et autres organisations similaires.'),
(714, 'Versements aux comites d''hygiene et de securite', '6682', 'Ce compte enregistre les versements aux comites d''hygiene et de securite au travail.'),
(714, 'Versements et contributions aux autres œuvres sociales', '6683', 'Ce compte enregistre les versements et contributions aux autres œuvres sociales et activites connexes.'),
(714, 'Medecine du travail et pharmacie', '6684', 'Ce compte enregistre les depenses liees aux services de medecine du travail et d''achat de medicaments.'),
(714, 'Assurances et organismes de sante', '6685', 'Ce compte enregistre les paiements relatifs aux assurances sante et aux organismes de sante.'),
(714, 'Assurances retraite et fonds de pensions', '6686', 'Ce compte enregistre les depenses liees aux assurances retraite et aux fonds de pensions.'),
(714, 'Majorations et penalites sociales', '6687', 'Ce compte enregistre les majorations et penalites liees aux charges sociales.'),
(714, 'Charges sociales diverses', '6688', 'Ce compte enregistre les autres charges sociales qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(716, 'Emprunts obligataires', '6711', 'Ce compte enregistre les emprunts contractes sous forme d''obligations.'),
(716, 'Emprunts aupres des etablissements de credit', '6712', 'Ce compte enregistre les emprunts contractes aupres des etablissements de credit.'),
(716, 'Primes de remboursement des obligations', '6713', 'Ce compte enregistre les primes de remboursement versees lors du remboursement anticipe des obligations.'),

(717, 'Interets dans loyers de location-acquisition/credit-bail immobilier', '6721', 'Ce compte enregistre les interets percus sur les loyers de location-acquisition ou de credit-bail immobilier.'),
(717, 'Interets dans loyers de location-acquisition/credit-bail mobilier', '6722', 'Ce compte enregistre les interets percus sur les loyers de location-acquisition ou de credit-bail mobilier.'),
(717, 'Interets dans loyers de location-acquisition/location-vente', '6723', 'Ce compte enregistre les interets percus sur les loyers de location-acquisition ou de location-vente.'),
(717, 'Interets dans loyers des autres locations-acquisition', '6724', 'Ce compte enregistre les interets percus sur les loyers des autres contrats de location-acquisition.'),

(719, 'Avances recues et depots crediteurs', '6741', 'Ce compte enregistre les avances recues et les depots crediteurs effectues par des tiers.'),
(719, 'Comptes courants bloques', '6742', 'Ce compte enregistre les fonds detenus dans des comptes courants bloques.'),
(719, 'Interets sur dettes commerciales', '6744', 'Ce compte enregistre les interets percus sur les dettes commerciales.'),
(719, 'Interets bancaires et sur operations de financement (escompte…)', '6745', 'Ce compte enregistre les interets percus sur les operations bancaires et de financement, y compris l''escompte.'),
(719, 'Interets sur dettes diverses', '6748', 'Ce compte enregistre les interets percus sur d''autres types de dettes.'),

(721, 'Pertes sur cessions de titres de placement', '6771', 'Ce compte enregistre les pertes resultant de la cession de titres de placement.'),

(722, 'Sur rentes viageres', '6781', 'Ce compte enregistre les interets percus sur les rentes viageres.'),
(722, 'Sur operations financieres', '6782', 'Ce compte enregistre les gains sur les operations financieres.'),

(723, 'Sur risques financiers', '6791', 'Ce compte enregistre les charges liees aux risques financiers.'),
(723, 'Sur titres de placement', '6795', 'Ce compte enregistre les charges liees aux depreciations et provisions pour risques sur les titres de placement.'),
(723, 'Autres charges pour depreciations et provisions pour risques a court terme financieres', '6798', 'Ce compte enregistre d''autres charges pour depreciations et provisions pour risques a court terme financieres.'),

(725, 'Dotations aux amortissements des immobilisations incorporelles', '6812', 'Ce compte enregistre les dotations aux amortissements des immobilisations incorporelles.'),
(725, 'Dotations aux amortissements des immobilisations corporelles', '6813', 'Ce compte enregistre les dotations aux amortissements des immobilisations corporelles.'),

(726, 'Dotations aux provisions pour risques et charges', '6911', 'Ce compte enregistre les dotations aux provisions pour risques et charges.'),
(726, 'Dotations aux depreciations des immobilisations incorporelles', '6913', 'Ce compte enregistre les dotations aux depreciations des immobilisations incorporelles.'),
(726, 'Dotations aux depreciations des immobilisations corporelles', '6914', 'Ce compte enregistre les dotations aux depreciations des immobilisations corporelles.'),

(727, 'Dotations aux depreciations d''usufruit temporaire', '6951', 'Ce compte enregistre les dotations aux depreciations d''usufruit temporaire.'),
(727, 'Dotations aux depreciations d''immobilisations destinees a la vente provenant des dons et legs non recues', '6952', 'Ce compte enregistre les dotations aux depreciations d''immobilisations destinees a la vente provenant des dons et legs non recues.'),

(728, 'Dotations aux provisions pour risques et charges', '6971', 'Ce compte enregistre les dotations aux provisions destinees a couvrir les risques et charges anticipes.'),
(728, 'Dotations aux depreciations des immobilisations financieres', '6972', 'Ce compte enregistre les dotations aux depreciations des immobilisations financieres, telles que les participations dans d''autres entreprises ou les titres de placement a long terme, afin de refleter leur valeur comptable reduite.'),

(732, 'Dons', '7041', 'Ce compte enregistre les revenus provenant de dons volontaires faits a l''entreprise, generalement sans contrepartie directe.'),
(732, 'Legs', '7042', 'Ce compte enregistre les revenus provenant d''heritages legues a l''entreprise apres le deces d''une personne.'),
(732, 'Dimes du culte', '7043', 'Ce compte enregistre les revenus provenant des contributions regulieres des fideles a des institutions religieuses.'),
(732, 'Zakat, Dime, quete et assimilees', '7044', 'Ce compte enregistre les revenus provenant de prelevements religieux ou de contributions volontaires collectees a des fins religieuses.'),
(732, 'Celebrations', '7045', 'Ce compte enregistre les revenus generes par des evenements ou des celebrations organises par l''entreprise.'),
(732, 'Mecenats', '7046', 'Ce compte enregistre les revenus provenant de mecenes ou de sponsors qui soutiennent financierement l''entreprise ou ses activites.'),
(732, 'Parrainage', '7047', 'Ce compte enregistre les revenus provenant de partenariats de parrainage ou de sponsoring entre l''entreprise et d''autres entites.'),
(732, 'Autres revenus lies a la generosite', '7048', 'Ce compte enregistre les autres revenus lies a la generosite qui ne sont pas specifiquement couverts par les comptes precedents.'),

(733, 'Ventes de marchandises', '7051', 'Ce compte enregistre les revenus generes par la vente de biens marchands, tels que des produits physiques ou des marchandises.'),
(733, 'Services vendus', '7052', 'Ce compte enregistre les revenus generes par la fourniture de services par l''entreprise a ses clients.'),
(733, 'Ventes de produits finis', '7053', 'Ce compte enregistre les revenus generes par la vente de produits finis fabriques par l''entreprise.'),
(733, 'Ventes de produits intermediaires', '7054', 'Ce compte enregistre les revenus generes par la vente de produits intermediaires ou semi-finis fabriques par l''entreprise et destines a etre utilises comme matieres premieres par d''autres entreprises.'),
(733, 'Ventes de produits residuels', '7055', 'Ce compte enregistre les revenus generes par la vente de produits residuels ou derives issus des processus de production de l''entreprise.'),

(736, 'Ventes de dons en nature', '7081', 'Ce compte enregistre les revenus generes par la vente de dons recus sous forme de biens ou de produits.'),
(736, 'Revenus d''usufruit', '7082', 'Ce compte enregistre les revenus generes par la mise a disposition temporaire d''un bien ou d''un actif en echange d''un paiement regulier, tel que des loyers ou des redevances.'),

(748, 'Dons en nature courants recus a distribuer', '7542', 'Ce compte enregistre les dons en nature courants recus par l''entreprise et destines a etre distribues a des tiers.'),

(749, 'Indemnites d''assurances recues', '7582', 'Ce compte enregistre les indemnites d''assurances recues par l''entreprise en compensation de pertes ou de dommages couverts par une police d''assurance.'),
(749, 'Abandons de frais par les benevoles', '7583', 'Ce compte enregistre les abandons de frais consentis par des benevoles a l''entreprise.'),
(749, 'Autres produits divers', '7588', 'Ce compte enregistre les autres produits divers qui ne sont pas specifiquement couverts par les comptes precedents.'),

(750, 'Reprises provisions sur risques a court terme', '7591', 'Ce compte enregistre les reprises de provisions sur risques a court terme precedemment constituees.'),
(750, 'Reprises de charges pour depreciations sur stocks', '7593', 'Ce compte enregistre les reprises de charges pour depreciations sur stocks precedemment constatees.'),
(750, 'Reprises de charges pour depreciations sur creances', '7594', 'Ce compte enregistre les reprises de charges pour depreciations sur creances precedemment constatees.'),
(750, 'Autres reprises de charges pour depreciations et provisions pour risques a court terme d''exploitation', '7598', 'Ce compte enregistre les autres reprises de charges pour depreciations et provisions pour risques a court terme d''exploitation qui ne sont pas specifiquement couvertes par les comptes precedents.'),

(751, 'Interets de prets', '7712', 'Ce compte enregistre les interets percus sur les prets accordes par l''entreprise.'),
(751, 'Interets sur creances diverses', '7713', 'Ce compte enregistre les interets percus sur les creances diverses detenues par l''entreprise.'),

(752, 'Revenus des titres de participation', '7721', 'Ce compte enregistre les revenus provenant des titres de participation detenus par l''entreprise.'),
(752, 'Revenus autres titres immobilises', '7722', 'Ce compte enregistre les revenus provenant d''autres titres immobilises detenus par l''entreprise.'),

(754, 'Revenus des obligations', '7745', 'Ce compte enregistre les revenus provenant des obligations detenues par l''entreprise.'),
(754, 'Revenus des titres de placement', '7746', 'Ce compte enregistre les revenus provenant des titres de placement detenus par l''entreprise.'),
(754, 'Revenus des depots a terme et operations assimiles', '7747', 'Ce compte enregistre les revenus provenant des depots a terme et des operations assimilees detenus par l''entreprise.'),
(754, 'Autres revenus de placement', '7748', 'Ce compte enregistre les autres revenus de placement generes par l''entreprise.'),

(757, 'Gains sur rentes viageres', '7781', 'Ce compte enregistre les gains realises sur les rentes viageres detenues par l''entreprise.'),
(757, 'Gains sur operations financieres', '7782', 'Ce compte enregistre les gains realises sur les operations financieres effectuees par l''entreprise.'),

(758, 'Reprises de provisions sur risques financiers', '7791', 'Ce compte enregistre les reprises de provisions sur les risques financiers precedemment constituees par l''entreprise.'),
(758, 'Reprises de charges pour depreciations sur titres de placement', '7795', 'Ce compte enregistre les reprises de charges pour depreciations sur les titres de placement precedemment constatees par l''entreprise.'),
(758, 'Autre reprises de charges pour depreciations et provisions pour risques a court terme financieres', '7798', 'Ce compte enregistre d''autres reprises de charges pour depreciations et provisions pour risques a court terme financieres.'),

(761, 'Reprises de provision pour risques et charges', '7911', 'Ce compte enregistre les reprises de provisions pour risques et charges precedemment constituees par l''entreprise.'),
(761, 'Reprises de depreciations des immobilisations incorporelles', '7913', 'Ce compte enregistre les reprises de depreciations des immobilisations incorporelles precedemment constatees par l''entreprise.'),
(761, 'Reprises de depreciations des immobilisations corporelles', '7914', 'Ce compte enregistre les reprises de depreciations des immobilisations corporelles precedemment constatees par l''entreprise.'),

(762, 'Reprises de fonds affectes et provenant de dons et legs d''immobilisation', '7923', 'Ce compte enregistre les reprises de fonds affectes et provenant de dons et legs d''immobilisation precedemment constatees par l''entreprise.'),
(762, 'Reprises de fonds affectes a un projet specifique', '7925', 'Ce compte enregistre les reprises de fonds affectes a un projet specifique precedemment constatees par l''entreprise.'),
(762, 'Autres reprises de fonds affectes', '7928', 'Ce compte enregistre les autres reprises de fonds affectes precedemment constatees par l''entreprise.'),

(763, 'Reprises des depreciations d''usufruit temporaire', '7951', 'Ce compte enregistre les reprises des depreciations precedemment constatees sur l''usufruit temporaire par l''entreprise.'),
(763, 'Reprises des depreciations d''immobilisation recues destinees a la vente provenant des dons et legs', '7952', 'Ce compte enregistre les reprises des depreciations precedemment constatees sur les immobilisations destinees a la vente provenant des dons et legs par l''entreprise.'),

(764, 'Reprises de fonds reportes provenant de la donation temporaire d''usufruit', '7961', 'Ce compte enregistre les reprises des fonds reportes provenant de la donation temporaire d''usufruit par l''entreprise.'),
(764, 'Reprises de fonds reportes provenant de dons et legs d''immobilisations recues destines a la vente', '7962', 'Ce compte enregistre les reprises des fonds reportes provenant de dons et legs d''immobilisations recues destines a la vente par l''entreprise.'),
(764, 'Autres reprises de fonds reporte', '7968', 'Ce compte enregistre les autres reprises de fonds reportes par l''entreprise.'),

(765, 'Reprises de provisions pour risques et charges', '7971', 'Ce compte enregistre les reprises de provisions pour risques et charges par l''entreprise.'),
(765, 'Reprises de depreciations des immobilisations financieres', '7972', 'Ce compte enregistre les reprises de depreciations des immobilisations financieres par l''entreprise.'),

(777, 'Dons en nature H.A.O. non affectes', '8311', 'Ce compte enregistre les dons en nature non affectes a des fins specifiques par l''entreprise.'),
(777, 'Dons en nature H.A.O. affectes', '8315', 'Ce compte enregistre les dons en nature affectes a des fins specifiques par l''entreprise.'),

(783, 'Dons en nature HAO vendus', '8411', 'Ce compte enregistre les dons en nature HAO vendus par l''entreprise.'),
(783, 'Prestations de services en nature HAO', '8412', 'Ce compte enregistre les prestations de services en nature HAO fournies par l''entreprise.'),
(783, 'Dons en nature HAO a distribuer', '8415', 'Ce compte enregistre les dons en nature HAO a distribuer par l''entreprise.');