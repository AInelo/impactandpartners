
INSERT INTO comptes_inf (sous_comptes_id, name, nbr, description)
VALUES
(1, 'Capital souscrit, non appelé', '1011', 'Montant du capital que les actionnaires se sont engagés à verser mais qui n''a pas encore été demandé par l''entreprise.'),
(1, 'Capital souscrit, appelé, non versé', '1012', 'Montant du capital qui a été demandé par l''entreprise mais qui n''a pas encore été versé par les actionnaires.'),
(1, 'Capital souscrit, appelé, versé, non amorti', '1013', 'Montant du capital qui a été versé par les actionnaires mais qui n''a pas encore été affecté à des actifs spécifiques.'),
(1, 'Capital souscrit, appelé, versé, amorti', '1014', 'Montant du capital qui a été versé par les actionnaires et qui a été affecté à des actifs spécifiques.'),
(1, 'Capital souscrit soumis à des conditions particulières', '1018', 'Montant du capital qui est soumis à des conditions spécifiques énoncées dans les statuts de l''entreprise.'),

(2, 'Dotation initiale', '1021', 'Montant initial alloué à un fonds, une réserve ou un compte spécifique.'),
(2, 'Dotations complémentaires', '1022', 'Montant ajouté à un fonds, une réserve ou un compte spécifique après la dotation initiale.'),
(2, 'Autres dotations', '1028', 'Montant ajouté à un fonds, une réserve ou un compte spécifique pour des raisons autres que la dotation initiale ou les dotations complémentaires.'),

(4, 'Apports temporaires', '1041', 'Montant apporté temporairement à l''entreprise pour répondre à des besoins spécifiques et qui sera restitué ultérieurement.'),
(4, 'Opérations courantes', '1042', 'Charges liées aux opérations habituelles de l''entreprise, y compris les frais généraux et les dépenses opérationnelles.'),
(4, 'Rémunérations, impôts et autres charges personnelles', '1043', 'Dépenses liées à la rémunération du personnel, aux impôts sur le revenu et autres charges personnelles.'),
(4, 'Prélèvements d''autoconsommation', '1047', 'Biens ou services prélevés par l''entreprise pour ses propres besoins internes.'),
(4, 'Autres prélèvements', '1048', 'Tout autre prélèvement effectué par l''entreprise pour des raisons spécifiques non couvertes par les autres comptes.'),

(5, 'Primes d''émission', '1051', 'Montants reçus par une entreprise lors de l''émission d''actions au-dessus de la valeur nominale.'),
(5, 'Primes d''apport', '1052', 'Montants reçus en plus de la valeur nominale lorsqu''un actif est apporté à une entreprise.'),
(5, 'Primes de fusion', '1053', 'Montants reçus en plus de la valeur nominale lorsqu''une entreprise fusionne avec une autre.'),
(5, 'Primes de conversion', '1054', 'Montants reçus en plus de la valeur nominale lors de la conversion de valeurs mobilières en actions.'),
(5, 'Autres primes', '1058', 'Toutes autres primes qui ne sont pas spécifiquement classées dans les catégories précédentes.'),

(6, 'Écarts de réévaluation légale', '1061', 'Différences positives entre la valeur réévaluée d''un actif et sa valeur comptable initiale, conformément à des dispositions légales spécifiques.'),
(6, 'Écarts de réévaluation libre', '1062', 'Différences positives entre la valeur réévaluée d''un actif et sa valeur comptable initiale, effectuée librement par l''entreprise.'),

(10, 'Réserves de plus-values nettes à long terme', '1131', 'Montant accumulé des bénéfices non distribués provenant de la vente d''actifs à long terme à un prix supérieur à leur valeur comptable.'),
(10, 'Réserves d''attribution gratuite d''actions au personnel salarié et aux dirigeants', '1132', 'Montant des bénéfices non distribués attribués sous forme d''actions gratuites aux salariés et aux dirigeants de l''entreprise.'),
(10, 'Réserves consécutives à l''octroi de subventions d''investissement', '1133', 'Montant des bénéfices non distribués provenant de subventions spécifiquement destinées à des investissements.'),
(10, 'Réserves des valeurs mobilières donnant accès au capital', '1134', 'Montant des bénéfices non distribués liés à des valeurs mobilières (actions, obligations convertibles) qui donnent accès au capital de l''entreprise.'),
(10, 'Autres réserves règlementées', '1138', 'Autres montants de bénéfices non distribués soumis à des règlementations spécifiques.'),

(11, 'Réserves facultatives', '1181', 'Montant des bénéfices non distribués qui ont été mis de côté de manière discrétionnaire par la direction de l''entreprise.'),
(11, 'Réserves diverses', '1188', 'Autres montants de bénéfices non distribués mis de côté pour différentes raisons et non spécifiquement réglementés.'),

(13, 'Perte nette à reporter', '1291', 'Montant cumulatif des pertes nettes accumulées au fil du temps et reportées d''un exercice à l''autre.'),
(13, 'Perte - Amortissements réputés différés', '1292', 'Montant cumulatif des amortissements réputés différés qui ont été comptabilisés et reportés sur plusieurs périodes comptables.'),

(14, 'Résultat en instance d''affectation : Bénéfice', '1301', 'Montant des bénéfices qui sont en attente d''affectation à la clôture de l''exercice comptable.'),
(14, 'Résultat en instance d''affectation : Perte', '1309', 'Montant des pertes qui sont en attente d''affectation à la clôture de l''exercice comptable.'),

(22, 'Résultat de fusion', '1381', 'Montant résultant de l''opération de fusion entre deux entités commerciales, qui est affecté au bilan de la nouvelle entité.'),
(22, 'Résultat d''apport partiel d''actif', '1382', 'Montant résultant de l''opération d''apport partiel d''actif, où une société apporte une partie de ses actifs à une autre société en échange de titres.'),
(22, 'Résultat de scission', '1383', 'Montant résultant de l''opération de scission, où une société divise ses activités en plusieurs entités distinctes.'),
(22, 'Résultat de liquidation', '1384', 'Montant résultant de la liquidation d''une société, après que tous ses actifs ont été vendus et ses dettes payées.'),

(24, 'État', '1411', 'Montants dus à l''État pour divers impôts, taxes ou redevances.'),
(24, 'Régions', '1412', 'Montants dus aux régions pour divers impôts, taxes ou redevances.'),
(24, 'Départements', '1413', 'Montants dus aux départements pour divers impôts, taxes ou redevances.'),
(24, 'Communes et collectivités publiques décentralisées', '1414', 'Montants dus aux communes et collectivités publiques décentralisées pour divers impôts, taxes ou redevances.'),
(24, 'Entités publiques ou mixtes', '1415', 'Montants dus à des entités publiques ou mixtes pour divers impôts, taxes ou redevances.'),
(24, 'Entités et organismes privés', '1416', 'Montants dus à des entités et organismes privés pour divers impôts, taxes ou redevances.'),
(24, 'Organismes internationaux', '1417', 'Montants dus à des organismes internationaux pour diverses contributions ou redevances.'),
(24, 'Autres', '1418', 'Autres montants dus pour des impôts, taxes ou redevances non spécifiés.'),

(28, 'Fonds National', '1531', 'Montants affectés au fonds national pour diverses fins.'),
(28, 'Prélèvement pour le Budget', '1532', 'Montants prélevés pour alimenter le budget national ou d''autres entités.'),

(30, 'Reconstitution des gisements miniers et pétroliers', '1551', 'Montants affectés à la reconstitution des gisements miniers et pétroliers pour assurer la durabilité des ressources.'),

(31, 'Hausse de prix', '1561', 'Enregistre les variations positives des prix des biens ou services par rapport à une période antérieure.'),
(31, 'Fluctuation des cours', '1562', 'Comprend les variations des cours des valeurs mobilières, des matières premières ou d''autres actifs financiers par rapport à une période antérieure.'),

(34, 'Emprunts obligataires ordinaires', '1611', 'Ce compte enregistre les emprunts obligataires ordinaires contractés par l''entreprise.'),
(34, 'Emprunts obligataires convertibles en actions', '1612', 'Ce compte enregistre les emprunts obligataires convertibles en actions contractés par l''entreprise.'),
(34, 'Emprunts obligataires convertibles en actions', '1613', 'Ce compte enregistre les emprunts obligataires convertibles en actions contractés par l''entreprise.'),
(34, 'Autres emprunts obligataires', '1618', 'Ce compte enregistre les autres emprunts obligataires contractés par l''entreprise.');

(38, 'Dépôts', '1651', 'Inclut les montants déposés auprès d''institutions financières ou d''autres entités en tant que garantie ou pour des besoins spécifiques.'),
(38, 'Cautionnements', '1652', 'Comprend les sommes déposées ou garanties par une tierce partie en tant que garantie pour l''exécution d''un contrat ou le respect d''une obligation financière.'),

(39, 'Sur emprunts obligataires', '1661', 'Comprend les intérêts courus sur les emprunts obligataires.'),
(39, 'Sur emprunts et dettes auprès des établissements de crédit', '1662', 'Inclut les intérêts courus sur les emprunts et les dettes contractées auprès des établissements de crédit.'),
(39, 'Sur avances reçues de l''État', '1663', 'Comprend les intérêts courus sur les avances reçues de l''État.'),
(39, 'Sur avances reçues et comptes courants bloqués', '1664', 'Inclut les intérêts courus sur les avances reçues et les comptes courants bloqués.'),
(39, 'Sur dépôts et cautionnements reçus', '1665', 'Comprend les intérêts courus sur les dépôts et les cautionnements reçus.'),
(39, 'Sur avances assorties de conditions particulières', '1667', 'Inclut les intérêts courus sur les avances assorties de conditions particulières.'),
(39, 'Sur autres emprunts et dettes', '1668', 'Comprend les intérêts courus sur d''autres emprunts et dettes.'),

(40, 'Avances bloquées pour augmentation du capital', '1671', 'Comprend les avances bloquées destinées à être utilisées pour augmenter le capital.'),
(40, "Avances conditionnées par l'État", '1672', 'Inclut les avances conditionnées accordées par l''État.'),
(40, 'Avances conditionnées par les autres organismes africains', '1673', 'Comprend les avances conditionnées accordées par d''autres organismes africains.'),
(40, 'Avances conditionnées par les organismes internationaux', '1674', 'Inclut les avances conditionnées accordées par des organismes internationaux.'),

(41, 'Rentes viagères capitalisées', '1681', 'Comprend les rentes viagères qui ont été capitalisées.'),
(41, 'Billets de fonds', '1682', 'Inclut les billets de fonds.'),
(41, 'Dettes consécutives à des titres empruntés', '1683', 'Comprend les dettes qui résultent de l''emprunt de titres.'),
(41, 'Emprunts participatifs', '1684', 'Inclut les emprunts participatifs.'),
(41, 'Participation des travailleurs aux bénéfices', '1685', 'Comprend la participation des travailleurs aux bénéfices.'),
(41, 'Emprunts et dettes contractés auprès des autres tiers', '1686', 'Inclut les emprunts et les dettes contractés auprès d''autres tiers.'),

(45, 'Sur dettes de location - acquisition / crédit-bail immobilier', '1762', 'Comprend les intérêts capitalisés sur les dettes de location - acquisition ou crédit-bail immobilier.'),
(45, 'Sur dettes de location - acquisition / crédit-bail mobilier', '1763', 'Inclut les intérêts capitalisés sur les dettes de location - acquisition ou crédit-bail mobilier.'),
(45, 'Sur dettes de location - acquisition/location-vente', '1764', 'Comprend les intérêts capitalisés sur les dettes de location - acquisition ou location-vente.'),
(45, 'Sur autres dettes de location - acquisition', '1768', 'Inclut les intérêts capitalisés sur d''autres dettes de location - acquisition.'),

(47, 'Dettes liées à des participations (groupe)', '1811', 'Englobe les dettes résultant de participations dans des sociétés du même groupe.'),
(47, 'Dettes liées à des participations (hors groupe)', '1812', 'Englobe les dettes résultant de participations dans des sociétés hors du groupe.'),

(60, 'Provisions pour pensions et obligations similaires engagement de retraite', '1961', 'Comprend les provisions constituées pour couvrir les obligations de l''entreprise envers ses employés en matière de pensions et de retraites, ainsi que d''autres obligations similaires.'),
(60, 'Actif du régime de retraite', '1962', 'Englobe les actifs détenus par le régime de retraite pour couvrir les engagements de retraite futurs.'),

(62, 'Provisions pour amendes et pénalités', '1981', 'Comprend les provisions constituées pour faire face à des amendes ou des pénalités éventuelles résultant d''infractions ou de manquements à des obligations légales ou contractuelles.'),
(62, 'Provisions pour propre assureur', '1983', 'Englobe les provisions constituées pour couvrir des risques assurés par l''entreprise elle-même, généralement en l''absence de couverture d''une compagnie d''assurance externe.'),
(62, 'Provision pour démantèlement et remise en état', '1984', 'Comprend les provisions constituées pour couvrir les coûts estimés du démantèlement et de la remise en état d''installations ou d''équipements à la fin de leur vie utile.'),
(62, 'Provisions pour droit à réduction ou avantage en nature (chèque cadeau, cartes de fidélité)', '1985', 'Englobe les provisions constituées pour honorer les droits à réduction ou les avantages en nature qui seront accordés aux clients, tels que les chèques cadeaux ou les cartes de fidélité.'),
(62, 'Provisions pour divers risques et charges', '1988', 'Regroupe les provisions constituées pour couvrir divers risques et charges non spécifiquement mentionnés dans d''autres comptes de provisions.'),

(64, 'Brevets', '2121', 'Comprend les coûts liés à l''acquisition ou au développement de brevets, qui sont des droits exclusifs accordés pour une invention.'),
(64, 'Licences', '2122', 'Englobe les coûts associés à l''acquisition ou à l''utilisation de licences, qui sont des droits d''utilisation ou de distribution accordés par le titulaire du droit.'),
(64, 'Concessions de service public', '2123', 'Comprend les coûts liés à l''acquisition ou à l''exploitation de concessions de service public, qui sont des droits exclusifs accordés par l''autorité publique pour fournir un service au public.'),
(64, 'Autres concessions et droits similaires', '2128', 'Regroupe les coûts associés à l''acquisition ou à l''exploitation d''autres concessions et droits similaires non spécifiquement mentionnés dans d''autres comptes de concessions et droits.'),

(65, 'Logiciels', '2131', 'Englobe les coûts liés à l''acquisition ou au développement de logiciels informatiques, qui sont des programmes ou des applications utilisés pour exécuter des tâches sur un ordinateur.'),
(65, 'Sites internet', '2132', 'Comprend les coûts liés à l''acquisition ou au développement de sites internet, qui sont des pages web ou des plateformes en ligne utilisées pour diffuser des informations ou fournir des services.'),

(70, 'Frais de prospection et d''évaluation de ressources minérales', '2181', 'Englobe les coûts engagés pour rechercher et évaluer les ressources minérales, telles que le pétrole, le gaz ou les minerais, dans le but de les exploiter commercialement.'),
(70, 'Coûts d''obtention du contrat', '2182', 'Comprend les coûts associés à l''obtention d''un contrat ou d''une licence pour l''exploitation de droits ou de services, tels que les frais juridiques, les honoraires de conseil et les coûts de négociation.'),
(70, 'Fichiers clients, notices, titres de journaux et magazines', '2183', 'Englobe les coûts liés à l''acquisition ou à la création de fichiers clients, de notices publicitaires, de droits sur des titres de journaux ou de magazines, utilisés dans le cadre des activités commerciales.'),
(70, 'Coûts des franchises', '2184', 'Comprend les frais engagés pour acquérir ou utiliser une franchise commerciale, qui permet à une entreprise d''utiliser un modèle commercial et une marque déjà établis en échange de redevances ou de frais.'),
(70, 'Divers droits et valeurs incorporelles', '2188', 'Englobe d''autres droits et valeurs incorporelles non spécifiquement mentionnés dans les catégories précédentes, tels que les droits d''auteur, les marques de commerce ou les secrets commerciaux.'),

(71, 'Frais de développement', '2191', 'Comprend les coûts liés au développement de nouveaux produits, services ou technologies, tels que les frais de recherche, de conception et de test.'),
(71, 'Logiciels et internet', '2193', 'Englobe les coûts associés à l''acquisition ou au développement de logiciels informatiques et de solutions Internet, y compris les licences, les développements sur mesure et les abonnements à des services en ligne.'),
(71, 'Autres droits et valeurs incorporels', '2198', 'Englobe d''autres droits et valeurs incorporels non spécifiquement mentionnés dans les catégories précédentes, tels que les droits d''auteur, les marques de commerce ou les secrets commerciaux.'),

(72, 'Terrains d''exploitation agricole', '2211', 'Inclut les terrains utilisés pour l''agriculture, tels que les champs cultivés, les vergers et les vignobles.'),
(72, 'Terrains d''exploitation forestière', '2212', 'Englobe les terrains destinés à l''exploitation forestière, notamment les forêts exploitées pour le bois de construction, le bois de chauffage ou d''autres produits forestiers.'),
(72, 'Autres terrains', '2218', 'Comprend les terrains qui ne sont pas spécifiquement utilisés pour l''agriculture ou l''exploitation forestière, tels que les terrains destinés à la construction, les terrains vacants ou les terrains non développés.'),

(73, 'Terrains à bâtir', '2221', 'Désigne les terrains destinés à la construction de bâtiments, tels que les parcelles réservées pour des projets immobiliers ou des développements urbains.'),
(73, 'Autres terrains nus', '2228', 'Englobe les terrains non bâtis qui ne sont pas spécifiquement réservés à la construction, comme les terrains non développés pour lesquels aucun projet de construction n''est prévu à court terme.'),

(74, 'Pour bâtiments industriels et agricoles', '2231', 'Comprend les terrains utilisés pour la construction de bâtiments destinés à des activités industrielles ou agricoles, comme les usines ou les exploitations agricoles.'),
(74, 'Pour bâtiments administratifs et commerciaux', '2232', 'Englobe les terrains réservés à la construction de bâtiments destinés à des activités administratives ou commerciales, tels que les bureaux ou les magasins.'),
(74, 'Pour bâtiments affectés aux autres opérations professionnelles', '2234', 'Inclut les terrains destinés à la construction de bâtiments utilisés pour d''autres types d''activités professionnelles non spécifiquement industrielles, agricoles, administratives ou commerciales.'),
(74, 'Pour bâtiments affectés aux autres opérations non professionnelles', '2235', 'Comprend les terrains réservés à la construction de bâtiments utilisés pour des opérations non professionnelles, telles que des installations sportives ou récréatives.'),
(74, 'Autres terrains bâtis', '2238', 'Englobe les terrains sur lesquels des bâtiments ont été construits mais qui ne correspondent pas aux catégories spécifiques énumérées ci-dessus.'),

(75, 'Plantation d''arbres et d''arbustes', '2241', 'Comprend les coûts liés à la plantation d''arbres et d''arbustes sur des terrains, souvent dans le cadre d''activités forestières ou de reboisement.'),
(75, 'Améliorations du fonds', '2245', 'Englobe les coûts associés à l''amélioration ou à la modification des terrains, tels que l''assainissement, le drainage ou d''autres travaux visant à améliorer la qualité ou l''utilité des terrains.'),
(75, 'Autres travaux', '2248', 'Inclut les coûts des travaux sur les terrains qui ne correspondent pas aux catégories spécifiques énumérées ci-dessus.'),

(76, 'Carrières', '2251', 'Englobe les coûts liés à l''acquisition et à l''exploitation de carrières pour l''extraction de matériaux tels que la pierre, le sable, le gravier, etc.'),

(77, 'Parkings', '2261', 'Comprend les coûts liés à l''acquisition, à la construction et à l''aménagement de parkings destinés au stationnement de véhicules.'),

(79, 'Terrains immeubles de placement', '2281', 'Comprend les terrains détenus à des fins d''investissement ou de placement.'),
(79, 'Terrains des logements affectés au personnel', '2285', 'Comprend les terrains réservés à la construction de logements destinés au personnel de l''entreprise ou de l''organisation.'),
(79, 'Terrains de location – acquisition', '2286', 'Comprend les terrains acquis dans le cadre de contrats de location-acquisition.'),
(79, 'Divers terrains', '2288', 'Comprend les terrains qui ne rentrent pas dans les catégories précédentes.'),

(80, 'Terrains agricoles et forestiers', '2291', 'Comprend les terrains utilisés pour des activités agricoles ou forestières.'),
(80, 'Terrains nus', '2292', 'Comprend les terrains non développés ou non construits.'),
(80, 'Terrains de carrières – tréfonds', '2295', 'Comprend les terrains exploités pour des activités de carrières ou de tréfonds.'),
(80, 'Autres terrains', '2298', 'Comprend les terrains qui ne rentrent pas dans les catégories précédentes.'),

(81, 'Bâtiments industriels', '2311', 'Comprend les bâtiments utilisés pour des activités industrielles.'),
(81, 'Bâtiments agricoles', '2312', 'Comprend les bâtiments utilisés pour des activités agricoles.'),
(81, 'Bâtiments administratifs et commerciaux', '2313', 'Comprend les bâtiments utilisés pour des activités administratives ou commerciales.'),
(81, 'Bâtiments affectés au logement du personnel', '2314', 'Comprend les bâtiments utilisés pour le logement du personnel.'),
(81, 'Bâtiments - immeubles de placement', '2315', 'Comprend les bâtiments utilisés comme investissement.'),
(81, 'Bâtiments de location-acquisition', '2316', 'Comprend les bâtiments acquis dans le cadre de contrats de location-acquisition.'),

(82, 'Bâtiments industriels', '2321', 'Comprend les bâtiments industriels.'),
(82, 'Bâtiments agricoles', '2322', 'Comprend les bâtiments utilisés pour des activités agricoles.'),
(82, 'Bâtiments administratifs et commerciaux', '2323', 'Comprend les bâtiments utilisés à des fins administratives ou commerciales.'),
(82, 'Bâtiments affectés au logement du personnel', '2324', 'Comprend les bâtiments utilisés pour le logement du personnel.'),
(82, 'Bâtiments - immeubles de placement', '2325', 'Comprend les bâtiments utilisés comme investissement.'),
(82, 'Bâtiments de location – acquisition', '2326', 'Comprend les bâtiments acquis dans le cadre de contrats de location-acquisition.'),

(83, 'Voies de terre', '2331', 'Comprend les routes et chemins terrestres.'),
(83, 'Voies de fer', '2332', 'Comprend les voies ferrées.'),
(83, 'Voies d''eau', '2333', 'Comprend les voies navigables telles que les rivières, les canaux et les ports.'),
(83, 'Barrages, Digues', '2334', 'Comprend les ouvrages de retenue d''eau et les digues.'),
(83, 'Pistes d''aérodrome', '2335', 'Comprend les pistes d''atterrissage et de décollage des aéroports.'),
(83, 'Autres ouvrages d''infrastructures', '2338', 'Comprend d''autres types d''infrastructures non spécifiés.'),

(84, 'Installations complexes spécialisées sur sol propre', '2341', 'Comprend les installations spécialisées sur un terrain appartenant à l''entreprise.'),
(84, 'Installations complexes spécialisées sur sol d''autrui', '2342', 'Comprend les installations spécialisées sur un terrain appartenant à un tiers.'),
(84, 'Installations à caractère spécifique sur sol propre', '2343', 'Comprend les installations spécifiques sur un terrain appartenant à l''entreprise.'),
(84, 'Installations à caractère spécifique sur sol d''autrui', '2344', 'Comprend les installations spécifiques sur un terrain appartenant à un tiers.'),
(84, 'Aménagements et agencements des bâtiments', '2345', 'Comprend les travaux d''aménagement et d''agencement des bâtiments.'),

(85, 'Installations générales', '2351', 'Comprend les installations générales dans les locaux de l''entreprise.'),
(85, 'Autres aménagements de bureaux', '2358', 'Comprend les autres aménagements spécifiques des bureaux.'),

(88, 'Bâtiments en cours', '2391', 'Comprend les bâtiments en cours de construction ou de rénovation.'),
(88, 'Installations en cours', '2392', 'Comprend les installations en cours de construction ou d''installation.'),
(88, 'Ouvrages d''infastructures en cours', '2393', 'Comprend les ouvrages d''infrastructures en cours de construction ou de rénovation.'),
(88, 'Aménagements et agencements et installations techniques en cours', '2394', 'Comprend les aménagements, les agencements et les installations techniques en cours de réalisation.'),
(88, 'Aménagements de bureaux en cours', '2395', 'Comprend les aménagements de bureaux en cours de réalisation.'),
(88, 'Autres installations et agencements en cours', '2398', 'Comprend les autres installations et agencements en cours de réalisation.'),

(89, 'Matériel industriel', '2411', 'Comprend le matériel utilisé dans le processus de production industrielle.'),
(89, 'Outillage industriel', '2412', 'Comprend les outils et équipements utilisés dans le processus de production industrielle.'),
(89, 'Matériel commercial', '2413', 'Comprend le matériel utilisé dans les activités commerciales.'),
(89, 'Outillage commercial', '2414', 'Comprend les outils et équipements utilisés dans les activités commerciales.'),
(89, 'Matériel et outillage industriel et commercial de location - acquisition', '2416', 'Comprend le matériel et l''outillage industriel et commercial acquis dans le cadre de la location.'),

(90, 'Matériel agricole', '2421', 'Comprend le matériel utilisé dans les activités agricoles.'),
(90, 'Outillage agricole', '2422', 'Comprend les outils et équipements utilisés dans les activités agricoles.'),
(90, 'Matériel et outillage agricole de location – acquisition', '2426', 'Comprend le matériel et l''outillage agricole acquis dans le cadre de la location.'),

(92, 'Matériel de bureau', '2441', 'Comprend le matériel utilisé dans un bureau, tel que des photocopieuses, des fax, etc.'),
(92, 'Matériel informatique', '2442', 'Comprend le matériel informatique, comme les ordinateurs, les serveurs, etc.'),
(92, 'Matériel bureautique', '2443', 'Comprend le matériel de bureau spécifiquement utilisé pour les tâches administratives.'),
(92, 'Mobilier de bureau', '2444', 'Comprend le mobilier utilisé dans un bureau, comme les chaises, les bureaux, etc.'),
(92, 'Matériel et mobilier - immeubles de placement', '2445', 'Comprend le matériel et le mobilier utilisé dans des immeubles de placement.'),
(92, 'Matériel et mobilier de location – acquisition', '2446', 'Comprend le matériel et le mobilier acquis dans le cadre de la location.'),
(92, 'Matériel et mobilier des logements du personnel', '2447', 'Comprend le matériel et le mobilier fourni dans les logements du personnel.'),

(93, 'Matériel automobile', '2451', 'Comprend les véhicules à moteur utilisés pour le transport terrestre, tels que les voitures, les camions, etc.'),
(93, 'Matériel ferroviaire', '2452', 'Comprend le matériel utilisé dans le transport ferroviaire, comme les locomotives, les wagons, etc.'),
(93, 'Matériel fluvial, lagunaire', '2453', 'Comprend le matériel utilisé dans le transport fluvial et lagunaire.'),
(93, 'Matériel naval', '2454', 'Comprend le matériel utilisé dans le transport maritime, comme les navires, les bateaux, etc.'),
(93, 'Matériel aérien', '2455', 'Comprend le matériel utilisé dans le transport aérien, comme les avions, les hélicoptères, etc.'),
(93, 'Matériel de transport de location – acquisition', '2456', 'Comprend le matériel de transport acquis dans le cadre de la location.'),
(93, 'Matériel hippomobile', '2457', 'Comprend le matériel utilisé dans le transport hippomobile, comme les chariots, les calèches, etc.'),
(93, 'Autres matériels de transport', '2458', 'Comprend d''autres types de matériel de transport non spécifiés dans les catégories précédentes.'),

(94, 'Cheptel, animaux de trait', '2461', 'Comprend les animaux utilisés pour le travail agricole, tels que les chevaux, les bœufs, etc.'),
(94, 'Cheptel, animaux reproducteurs', '2462', 'Comprend les animaux destinés à la reproduction dans le cadre de l''élevage, comme les taureaux, les vaches, etc.'),
(94, 'Animaux de garde', '2463', 'Comprend les animaux utilisés pour la garde et la sécurité, tels que les chiens de garde, les chiens de police, etc.'),
(94, 'Plantations agricoles', '2465', 'Comprend les plantations destinées à l''agriculture, comme les champs de céréales, les vergers, les vignobles, etc.'),
(94, 'Autres actifs biologiques', '2468', 'Comprend d''autres actifs biologiques non spécifiés dans les catégories précédentes.'),

(95, 'Agencements et aménagements du matériel', '2471', 'Comprend les coûts liés à l''installation et à l''aménagement du matériel, tels que les travaux de montage, d''installation électrique, etc.'),
(95, 'Agencements et aménagements des actifs biologiques', '2472', 'Comprend les coûts liés à l''agencement et à l''aménagement des actifs biologiques, tels que l''aménagement des pâturages, des étables, etc.'),
(95, 'Autres agencements, aménagements du matériel et actifs biologiques', '2478', 'Comprend d''autres coûts d''agencement et d''aménagement non spécifiés dans les catégories précédentes.'),

(96, 'Collections et œuvres d''art', '2481', 'Comprend les collections et les œuvres d''art détenues par l''entité.'),
(96, 'Divers matériels mobiliers', '2488', 'Comprend d''autres matériels mobiliers non spécifiés dans les catégories précédentes.'),

(97, 'Matériel et outillage industriel et commercial', '2491', 'Comprend le matériel et l''outillage utilisés dans les activités industrielles et commerciales.'),
(97, 'Matériel et outillage agricole', '2492', 'Comprend le matériel et l''outillage utilisés dans les activités agricoles.'),
(97, 'Matériel d''emballage récupérable et identifiable', '2493', 'Comprend le matériel d''emballage qui peut être récupéré et identifié après utilisation.'),
(97, 'Matériel et mobilier de bureau', '2494', 'Comprend le matériel et le mobilier utilisés dans les bureaux.'),
(97, 'Matériel de transport', '2495', 'Comprend le matériel utilisé pour le transport de biens ou de personnes.'),
(97, 'Actifs biologiques', '2496', 'Comprend les actifs biologiques tels que le cheptel, les animaux reproducteurs, les plantations agricoles, etc.'),
(97, 'Agencements et aménagements du matériel et des actifs biologiques', '2497', 'Comprend les agencements et les aménagements réalisés sur le matériel et les actifs biologiques.'),
(97, 'Autres matériels et actifs biologiques en cours', '2498', 'Comprend d''autres matériels et actifs biologiques en cours de traitement ou d''utilisation.'),

(106, 'Prêts participatifs', '2711', 'Prêts accordés avec une participation aux résultats ou aux pertes de l''entreprise emprunteuse.'),
(106, 'Prêts aux associés', '2712', 'Prêts accordés aux associés de l''entreprise.'),
(106, 'Billets de fonds', '2713', 'Créances résultant de la souscription de billets de fonds.'),
(106, 'Créances de location financement', '2714', 'Créances résultant de contrats de location financement.'),
(106, 'Titres prêtés', '2715', 'Titres financiers prêtés à des tiers.'),
(106, 'Autres prêts et créances', '2718', 'Autres prêts et créances non spécifiquement catégorisés.'),

(107, 'Prêts immobiliers', '2721', 'Prêts accordés pour des acquisitions ou des investissements immobiliers.'),
(107, 'Prêts mobiliers et d''installation', '2722', 'Prêts accordés pour l''acquisition de biens mobiliers ou pour des frais d''installation.'),
(107, 'Autres prêts au personnel', '2728', 'Autres types de prêts accordés au personnel de l''entreprise.'),

(108, 'Retenues de garantie', '2731', 'Montants retenus en garantie pour assurer l''exécution d''un contrat ou d''une prestation.'),
(108, 'Fonds règlementés', '2733', 'Fonds réglementés spécifiques.'),
(108, 'Créances sur le concédant', '2734', 'Montants dus par le concédant, souvent dans le cadre d''un contrat de concession.'),
(108, 'Autres créances sur l''État', '2738', 'Créances dues par l''État pour des raisons autres que celles spécifiées dans d''autres comptes.'),

(109, 'Titres immobilisés de l''activité de portefeuille (T.I.A.P.)', '2741', 'Titres détenus en portefeuille dans le cadre de l''activité d''investissement de l''entité, généralement en vue de générer des revenus par le biais de dividendes, d''intérêts ou de gains en capital.'),
(109, 'Titres participatifs', '2742', 'Titres financiers donnant droit à une part des bénéfices de l''entreprise émettrice, sans pour autant conférer de droit de vote.'),
(109, 'Certificats d''investissement', '2743', 'Titres représentant une participation dans un actif ou un portefeuille d''actifs, souvent émis par des fonds d''investissement ou des sociétés de placement.'),
(109, 'Parts de fonds commun de placement (F.C.P.)', '2744', 'Fraction du capital d''un fonds commun de placement, qui détient des actifs financiers variés, géré de manière collective par une société de gestion pour le compte de plusieurs investisseurs.'),
(109, 'Obligations', '2745', 'Titres de créance émis par des entreprises ou des entités publiques, qui représentent des emprunts contractés auprès des investisseurs et pour lesquels l''émetteur s''engage à rembourser le capital emprunté à une date future convenue, ainsi qu''à verser des intérêts périodiques.'),
(109, 'Actions ou parts propres', '2746', 'Actions ou parts d''une entreprise détenues par elle-même, souvent acquises dans le cadre d''un rachat d''actions ou de parts propres.'),
(109, 'Autres titres immobilisés', '2748', 'Tout autre titre immobilisé non spécifiquement mentionné dans les catégories précédentes, comme des titres de participation dans d''autres entreprises.'),

(110, 'Dépôts pour loyers d''avance', '2751', 'Sommes déposées à l''avance par l''entité en tant que garantie pour le paiement futur des loyers de biens immobiliers loués.'),
(110, 'Dépôts pour l''électricité', '2752', 'Montants versés à titre de dépôt de garantie pour l''électricité fournie par des fournisseurs de services publics ou d''autres fournisseurs d''électricité.'),
(110, 'Dépôts pour l''eau', '2753', 'Fonds déposés à titre de garantie pour l''utilisation future de services d''approvisionnement en eau, généralement fournis par des sociétés de services publics ou des autorités locales.'),
(110, 'Dépôts pour le gaz', '2754', 'Sommes déposées en garantie pour l''utilisation future de services de fourniture de gaz, souvent par des sociétés de services publics ou des fournisseurs de gaz.'),
(110, 'Dépôts pour le téléphone, le télex, la télécopie', '2755', 'Montants déposés en tant que garantie pour l''utilisation future des services de télécommunications, y compris le téléphone, le télex et la télécopie, fournis par des opérateurs de télécommunications.'),
(110, 'Cautionnements sur marchés publics', '2756', 'Garanties financières fournies par l''entité pour garantir la bonne exécution de contrats ou de marchés conclus avec des entités publiques.'),
(110, 'Cautionnements sur autres opérations', '2757', 'Garanties financières fournies par l''entité dans le cadre d''autres transactions ou opérations, en dehors des marchés publics.'),
(110, 'Autres dépôts et cautionnement', '2758', 'Tout autre dépôt ou cautionnement non spécifiquement lié aux catégories précédentes, utilisé comme garantie pour diverses transactions ou obligations.'),

(111, 'Prêts et créances non commerciales', '2761', 'Montants dus à l''entité qui ne découlent pas d''activités commerciales habituelles, souvent liés à des prêts consentis ou à des créances résultant de transactions non commerciales.'),
(111, 'Prêts au personnel', '2762', 'Montants prêtés au personnel de l''entité, souvent dans le cadre de politiques de prêt interne ou de programmes d''aide financière aux employés.'),
(111, 'Créances sur l''État', '2763', 'Montants dus à l''entité par des organismes gouvernementaux ou des entités publiques pour diverses raisons, telles que des subventions, des remboursements d''impôts ou des paiements pour des biens ou services fournis.'),
(111, 'Titres immobilisés', '2764', 'Instruments financiers détenus par l''entité à long terme, tels que des actions ou des obligations, qui ne sont pas destinés à être négociés activement sur le marché.'),
(111, 'Dépôts et cautionnements versés', '2765', 'Montants versés par l''entité à titre de dépôts ou de garanties dans le cadre de diverses transactions ou obligations.'),
(111, 'Créances rattachées à des participations', '2767', 'Montants dus à l''entité résultant de participations dans d''autres entreprises, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces entreprises.'),
(111, 'Immobilisations financières diverses', '2768', 'Autres actifs financiers à long terme détenus par l''entité et qui ne sont pas spécifiquement catégorisés dans les autres rubriques.'),

(112, 'Créances rattachées à des participations (groupe)', '2771', 'Montants dus à l''entité résultant de participations dans d''autres entreprises appartenant au même groupe économique, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces entreprises.'),
(112, 'Créances rattachées à des participations (hors groupe)', '2772', 'Montants dus à l''entité résultant de participations dans d''autres entreprises qui ne font pas partie du même groupe économique, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces entreprises.'),
(112, 'Créances rattachées à des sociétés en participation', '2773', 'Montants dus à l''entité résultant de participations dans des sociétés en participation, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces sociétés.'),
(112, 'Avances à des Groupements d''intérêt économique (G.I.E.)', '2774', 'Montants avancés par l''entité à des Groupements d''intérêt économique (G.I.E.), souvent dans le cadre de partenariats ou de collaborations commerciales.'),

(113, 'Créances diverses groupe', '2781', 'Ensemble des montants dus à l''entité résultant de diverses transactions commerciales ou financières avec des entités appartenant au même groupe économique, autres que les créances rattachées à des participations.'),
(113, 'Créances diverses hors groupe', '2782', 'Ensemble des montants dus à l''entité résultant de diverses transactions commerciales ou financières avec des entités qui ne font pas partie du même groupe économique, autres que les créances rattachées à des participations.'),
(113, 'Banques dépôts à terme', '2784', 'Montants placés par l''entité sous forme de dépôts à terme dans des banques ou des institutions financières, généralement pour une durée fixe et à un taux d''intérêt convenu à l''avance.'),
(113, 'Or et métaux précieux (1)', '2785', 'Montants investis par l''entité dans l''achat et la détention d''or et d''autres métaux précieux à des fins d''investissement ou de spéculation.'),
(113, 'Autres immobilisations financières', '2788', 'Ensemble des autres actifs financiers détenus par l''entité qui ne rentrent pas dans les catégories spécifiques déjà mentionnées, tels que les prêts non commerciaux, les titres immobilisés, etc.'),

(114, 'Amortissements des frais de développement', '2811', 'Montants comptabilisés périodiquement pour amortir les frais engagés par l''entité pour développer de nouveaux produits, procédés ou services, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des brevets, licences, concessions et droits similaires', '2812', 'Montants comptabilisés périodiquement pour amortir la valeur des brevets, licences, concessions et droits similaires détenus par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des logiciels et sites internet', '2813', 'Montants comptabilisés périodiquement pour amortir la valeur des logiciels et sites internet détenus par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des marques', '2814', 'Montants comptabilisés périodiquement pour amortir la valeur des marques détenues par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements du fonds commercial', '2815', 'Montants comptabilisés périodiquement pour amortir la valeur du fonds commercial de l''entité, généralement répartis sur sa durée d''utilisation prévue.'),
(114, 'Amortissements du droit au bail', '2816', 'Montants comptabilisés périodiquement pour amortir la valeur du droit au bail détenu par l''entité, généralement répartis sur sa durée d''utilisation prévue.'),
(114, 'Amortissements des investissements de création', '2817', 'Montants comptabilisés périodiquement pour amortir la valeur des investissements de création réalisés par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des autres droits et valeurs incorporels', '2818', 'Montants comptabilisés périodiquement pour amortir la valeur des autres droits et valeurs incorporels détenus par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),

(115, 'Amortissements des travaux de mise en valeur des terrains', '2824', 'Montants comptabilisés périodiquement pour amortir la valeur des travaux de mise en valeur des terrains réalisés par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),

(116, 'Amortissements des bâtiments industriels, agricoles, administratifs et commerciaux sur sol propre', '2831', 'Montants comptabilisés périodiquement pour amortir la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un terrain propre à l''entité.'),
(116, 'Amortissements des bâtiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '2832', 'Montants comptabilisés périodiquement pour amortir la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un terrain appartenant à une autre entité.'),
(116, 'Amortissements des ouvrages d''infrastructure', '2833', 'Montants comptabilisés périodiquement pour amortir la valeur des ouvrages d''infrastructure tels que les routes, les ponts, les digues, etc.'),
(116, 'Amortissements des aménagements, agencements et installations techniques', '2834', 'Montants comptabilisés périodiquement pour amortir la valeur des aménagements, agencements et installations techniques réalisés par l''entité.'),
(116, 'Amortissements des aménagements de bureaux', '2835', 'Montants comptabilisés périodiquement pour amortir la valeur des aménagements spécifiques réalisés dans les bureaux de l''entité.'),
(116, 'Amortissements des bâtiments industriels, agricoles et commerciaux mis en concession', '2837', 'Montants comptabilisés périodiquement pour amortir la valeur des bâtiments industriels, agricoles et commerciaux mis en concession par l''entité.'),
(116, 'Amortissements des autres installations et agencements', '2838', 'Montants comptabilisés périodiquement pour amortir la valeur des autres installations et agencements réalisés par l''entité.'),

(117, 'Amortissements du matériel et outillage industriel et commercial', '2841', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel et de l''outillage utilisés dans les activités industrielles et commerciales de l''entité.'),
(117, 'Amortissements du matériel et outillage agricole', '2842', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel et de l''outillage utilisés dans les activités agricoles de l''entité.'),
(117, 'Amortissements du matériel d''emballage récupérable et identifiable', '2843', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel d''emballage récupérable et identifiable utilisé par l''entité.'),
(117, 'Amortissements du matériel et mobilier', '2844', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel et du mobilier utilisés par l''entité.'),
(117, 'Amortissements du matériel de transport', '2845', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel de transport utilisé par l''entité.'),
(117, 'Amortissements des actifs biologiques', '2846', 'Montants comptabilisés périodiquement pour amortir la valeur des actifs biologiques détenus par l''entité.'),
(117, 'Amortissements des agencements et aménagements du matériel et des actifs biologiques', '2847', 'Montants comptabilisés périodiquement pour amortir la valeur des agencements et aménagements réalisés sur le matériel et les actifs biologiques détenus par l''entité.'),
(117, 'Amortissements des autres matériels', '2848', 'Montants comptabilisés périodiquement pour amortir la valeur des autres matériels détenus par l''entité.'),

(118, 'Dépréciations des frais de développement', '2911', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des frais de développement engagés par l''entité.'),
(118, 'Dépréciations des brevets, licences, concessions et droits similaires', '2912', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des brevets, licences, concessions et droits similaires détenus par l''entité.'),
(118, 'Dépréciations des logiciels et sites internet', '2913', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des logiciels et sites internet détenus par l''entité.'),
(118, 'Dépréciations des marques', '2914', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des marques détenues par l''entité.'),
(118, 'Dépréciations du fonds commercial', '2915', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du fonds commercial détenu par l''entité.'),
(118, 'Dépréciations du droit au bail', '2916', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du droit au bail détenu par l''entité.'),
(118, 'Dépréciations des investissements de création', '2917', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des investissements de création réalisés par l''entité.'),
(118, 'Dépréciations des autres droits et valeurs incorporels', '2918', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres droits et valeurs incorporels détenus par l''entité.'),
(118, 'Dépréciations des immobilisations incorporelles en cours', '2919', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des immobilisations incorporelles en cours de réalisation par l''entité.'),

(119, 'Dépréciations des terrains agricoles et forestiers', '2921', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains agricoles et forestiers détenus par l''entité.'),
(119, 'Dépréciations des terrains nus', '2922', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains nus détenus par l''entité.'),
(119, 'Dépréciations des terrains bâtis', '2923', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains bâtis détenus par l''entité.'),
(119, 'Dépréciations des travaux de mise en valeur des terrains', '2924', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des travaux de mise en valeur des terrains réalisés par l''entité.'),
(119, 'Dépréciations des terrains de gisement', '2925', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains de gisement détenus par l''entité.'),
(119, 'Dépréciations des terrains aménagés', '2926', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains aménagés détenus par l''entité.'),
(119, 'Dépréciations des terrains mis en concession', '2927', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains mis en concession détenus par l''entité.'),
(119, 'Dépréciations des autres terrains', '2928', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres terrains détenus par l''entité.'),
(119, 'Dépréciations des aménagements de terrains en cours', '2929', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des aménagements de terrains en cours de réalisation par l''entité.'),

(120, 'Dépréciations des bâtiments industriels, agricoles, administratifs et commerciaux sur sol propre', '2931', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un sol appartenant à l''entité.'),
(120, 'Dépréciations des bâtiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '2932', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un sol appartenant à autrui, mais utilisés par l''entité.'),
(120, 'Dépréciations des ouvrages d''infrastructures', '2933', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des ouvrages d''infrastructures, tels que les routes, les ponts, les tunnels, etc., détenus par l''entité.'),
(120, 'Dépréciations des aménagements, agencements et installations techniques', '2934', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des aménagements, agencements et installations techniques réalisés par l''entité.'),
(120, 'Dépréciations des aménagements de bureaux', '2935', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des aménagements réalisés dans les bureaux de l''entité.'),
(120, 'Dépréciations des bâtiments industriels, agricoles et commerciaux mis en concession', '2937', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments industriels, agricoles et commerciaux construits sur un sol concédé à l''entité.'),
(120, 'Dépréciations des autres installations et agencements', '2938', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres installations et agencements réalisés par l''entité.'),
(120, 'Dépréciations des bâtiments et installations en cours', '2939', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments et installations en cours de réalisation par l''entité.'),

(121, 'Dépréciations du matériel et outillage industriel et commercial', '2941', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel et de l''outillage utilisés dans les activités industrielles et commerciales de l''entité.'),
(121, 'Dépréciations du matériel et outillage agricole', '2942', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel et de l''outillage utilisés dans les activités agricoles de l''entité.'),
(121, 'Dépréciations du matériel d''emballage récupérable et identifiable', '2943', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel d''emballage récupérable et identifiable utilisé dans les opérations de l''entité.'),
(121, 'Dépréciations du matériel et mobilier', '2944', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel et du mobilier utilisé dans les activités de l''entité.'),
(121, 'Dépréciations du matériel de transport', '2945', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel de transport utilisé dans les opérations de l''entité.'),
(121, 'Dépréciations des actifs biologiques', '2946', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des actifs biologiques détenus par l''entité, tels que le cheptel ou les plantations.'),
(121, 'Dépréciations des agencements et aménagements du matériel et des actifs biologiques', '2947', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des agencements et aménagements réalisés sur le matériel et les actifs biologiques de l''entité.'),
(121, 'Dépréciations des autres matériels', '2948', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres matériels détenus par l''entité et non spécifiquement catégorisés ailleurs.'),
(121, 'Dépréciations de matériel en cours', '2949', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel en cours de réalisation par l''entité.')

(122, 'Dépréciations des avances et acomptes versés sur immobilisations incorporelles', '2951', 'Montants comptabilisés périodiquement pour constater la dépréciation des avances et acomptes versés sur des immobilisations incorporelles qui sont en cours de réalisation ou dont la valeur a diminué.'),
(122, 'Dépréciations des avances et acomptes versés sur immobilisations corporelles', '2952', 'Montants comptabilisés périodiquement pour constater la dépréciation des avances et acomptes versés sur des immobilisations corporelles qui sont en cours de réalisation ou dont la valeur a diminué.'),

(123, 'Dépréciations des titres de participation dans des sociétés sous contrôle exclusif', '2961', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres de participation dans des sociétés où l''entreprise exerce un contrôle exclusif, lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des titres de participation dans les sociétés sous contrôle conjoint', '2962', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres de participation dans des sociétés où l''entreprise exerce un contrôle conjoint, lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des titres de participation dans les sociétés conférant une influence notable', '2963', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres de participation dans des sociétés où l''entreprise détient une influence notable, lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des participations dans des organismes professionnels', '2965', 'Montants comptabilisés périodiquement pour constater la dépréciation des participations dans des organismes professionnels lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des parts dans des GIE', '2966', 'Montants comptabilisés périodiquement pour constater la dépréciation des parts dans des Groupements d''Intérêt Économique lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des autres titres de participation', '2968', 'Montants comptabilisés périodiquement pour constater la dépréciation des autres titres de participation lorsque leur valeur a diminué de manière durable.'),

(124, 'Dépréciations des prêts et créances', '2971', 'Montants comptabilisés périodiquement pour constater la dépréciation des prêts et créances lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des prêts au personnel', '2972', 'Montants comptabilisés périodiquement pour constater la dépréciation des prêts consentis au personnel lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des créances sur l''État', '2973', 'Montants comptabilisés périodiquement pour constater la dépréciation des créances sur l''État lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des titres immobilisés', '2974', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres immobilisés lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des dépôts et cautionnements versés', '2975', 'Montants comptabilisés périodiquement pour constater la dépréciation des dépôts et cautionnements versés lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des créances rattachées à des participations et avances à des GIE', '2977', 'Montants comptabilisés périodiquement pour constater la dépréciation des créances rattachées à des participations et avances à des Groupements d''Intérêt Économique lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des créances financières diverses', '2978', 'Montants comptabilisés périodiquement pour constater la dépréciation des autres créances financières lorsque leur valeur a diminué de manière durable.'),

(125, 'Marchandises A1', '3111', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie A1.'),
(125, 'Marchandises A2', '3112', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie A2.'),

(126, 'Marchandises B1', '3121', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie B1.'),
(126, 'Marchandises B2', '3122', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie B2.'),

(127, 'Animaux', '3131', 'Comprend les animaux destinés à la revente ou à être utilisés dans le processus de production.'),
(127, 'Végétaux', '3132', 'Comprend les plantes destinées à la revente ou à être utilisées dans le processus de production.'),

(136, 'Emballages perdus', '3351', 'Comprend les emballages perdus lors du processus de vente ou de production.'),
(136, 'Emballages récupérables non identifiables', '3352', 'Comprend les emballages qui peuvent être récupérés mais qui ne sont pas identifiables de manière individuelle.'),
(136, 'Emballages à usage mixte', '3353', 'Comprend les emballages pouvant être réutilisés à des fins multiples.'),
(136, 'Autres emballages', '3358', 'Comprend les emballages non inclus dans les catégories précédentes.'),

(138, 'Produits en cours P1', '3411', 'Comprend les produits en cours de fabrication ou de transformation, correspondant à une étape spécifique du processus de production.'),
(138, 'Produits en cours P2', '3412', 'Comprend les produits en cours de fabrication ou de transformation, correspondant à une autre étape spécifique du processus de production.'),

(139, 'Travaux en cours T1', '3421', 'Comprend les travaux en cours correspondant à une étape spécifique d''un chantier ou d''un projet en cours.'),
(139, 'Travaux en cours T2', '3422', 'Comprend les travaux en cours correspondant à une autre étape spécifique d''un chantier ou d''un projet en cours.'),

(140, 'Produits intermédiaires A', '3431', 'Comprend les produits en cours de fabrication qui sont à un stade intermédiaire de production et qui nécessitent encore des transformations ou des processus supplémentaires.'),
(140, 'Produits intermédiaires B', '3432', 'Comprend les produits en cours de fabrication qui sont à un stade intermédiaire de production et qui nécessitent encore des transformations ou des processus supplémentaires.'),

(141, 'Produits résiduels A', '3441', 'Comprend les produits restants après le processus de production principale, pouvant être recyclés, retraités ou utilisés dans d''autres processus.'),
(141, 'Produits résiduels B', '3442', 'Comprend les produits restants après le processus de production principale, pouvant être recyclés, retraités ou utilisés dans d''autres processus.'),

(142, 'Animaux', '3451', 'Comprend les animaux utilisés dans le processus de production ou destinés à la vente.'),
(142, 'Végétaux', '3452', 'Comprend les plantes et les cultures utilisées dans le processus de production ou destinées à la vente.'),

(143, 'Études en cours E1', '3511', 'Comprend les études en cours pour le développement de nouveaux produits ou services.'),
(143, 'Études en cours E2', '3512', 'Comprend les études en cours pour l''amélioration des produits ou services existants.'),

(144, 'Prestations de services S1', '3521', 'Comprend les prestations de services en cours pour des clients ou des partenaires.'),
(144, 'Prestations de services S2', '3522', 'Comprend les prestations de services en cours internes à l''entreprise.'),

(147, 'Animaux', '3631', 'Comprend les stocks d''animaux détenus pour des activités annexes.'),
(147, 'Végétaux', '3632', 'Comprend les stocks de végétaux détenus pour des activités annexes.'),
(147, 'Autres stocks (activités annexe)', '3638', 'Comprend les autres types de stocks détenus pour des activités annexes.'),

(148, 'Produits intermédiaires A', '3711', 'Comprend les produits intermédiaires de type A.'),
(148, 'Produits intermédiaires B', '3712', 'Comprend les produits intermédiaires de type B.'),

(149, 'Déchets', '3721', 'Comprend les déchets générés par le processus de production ou d''autres activités.'),
(149, 'Rebuts', '3722', 'Comprend les rebuts produits lors du processus de production ou d''autres activités.'),
(149, 'Matières de récupération', '3723', 'Comprend les matières pouvant être récupérées ou recyclées.'),

(150, 'Animaux', '3731', 'Comprend les animaux détenus en stock pour diverses activités, comme l''élevage ou la revente.'),
(150, 'Végétaux', '3732', 'Comprend les végétaux détenus en stock pour diverses activités, comme l''agriculture ou la vente de plantes.'),
(150, 'Autres stocks (activités annexe)', '3738', 'Comprend les autres types de stocks détenus pour des activités annexes non spécifiées.'),

(155, 'Stock en consignation', '3871', 'Stock de marchandises ou de produits placé chez un tiers (consignataire) en vue de leur vente.'),
(155, 'Stock en dépôt', '3872', 'Stock de marchandises ou de produits entreposé chez un tiers (dépositaire) pour diverses raisons, comme le stockage temporaire ou la distribution ultérieure.'),

(165, 'Fournisseurs', '4011', 'Montant dû aux fournisseurs pour l''achat de biens ou services.')
(165, 'Fournisseurs Groupe', '4012', 'Montant dû aux fournisseurs faisant partie du même groupe d''entreprises.'),
(165, 'Fournisseurs sous-traitants', '4013', 'Montant dû aux fournisseurs qui fournissent des biens ou services dans le cadre d''une sous-traitance.'),
(165, 'Fournisseurs réserve de propriété', '4016', 'Montant dû aux fournisseurs pour des biens dont la propriété n''a pas encore été transférée à l''acheteur en raison d''une réserve de propriété.'),
(165, 'Fournisseurs retenues de garantie', '4017', 'Montant dû aux fournisseurs pour lequel une partie du paiement est retenue en garantie jusqu''à la satisfaction de certaines conditions ou la fin d''une période donnée.'),

(166, 'Fournisseurs, Effets à payer', '4021', 'Montant dû aux fournisseurs pour lequel des effets à payer ont été émis en tant que moyen de paiement différé.'),
(166, 'Fournisseurs - Groupe, Effets à payer', '4022', 'Montant dû aux fournisseurs faisant partie du même groupe d''entreprises pour lequel des effets à payer ont été émis en tant que moyen de paiement différé.'),
(166, 'Fournisseurs sous-traitants, Effets à payer', '4023', 'Montant dû aux fournisseurs sous-traitants pour lequel des effets à payer ont été émis en tant que moyen de paiement différé.'),

(167, 'Fournisseurs dettes en compte, immobilisations incorporelles', '4041', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations incorporelles enregistrées en tant que dettes sur compte.'),
(167, 'Fournisseurs dettes en compte, immobilisations corporelles', '4042', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations corporelles enregistrées en tant que dettes sur compte.'),
(167, 'Fournisseurs effets à payer, immobilisations incorporelles', '4046', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations incorporelles pour lesquelles des effets à payer ont été émis en tant que moyen de paiement différé.'),
(167, 'Fournisseurs effets à payer, immobilisations corporelles', '4047', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations corporelles pour lesquelles des effets à payer ont été émis en tant que moyen de paiement différé.'),

(168, 'Fournisseurs', '4081', 'Montant dû aux fournisseurs pour des biens ou des services fournis.'),
(168, 'Fournisseurs Groupe', '4082', 'Montant dû aux fournisseurs appartenant au même groupe pour des biens ou des services fournis.'),
(168, 'Fournisseurs sous-traitants', '4083', 'Montant dû aux fournisseurs qui fournissent des biens ou des services dans le cadre d''un contrat de sous-traitance.'),
(168, 'Fournisseurs, intérêts courus', '4086', 'Montant dû aux fournisseurs pour des intérêts courus sur des dettes envers eux.'),

(169, 'Fournisseurs avances et acomptes versés', '4091', 'Montant versé aux fournisseurs à titre d''avances ou d''acomptes pour des biens ou des services à fournir.'),
(169, 'Fournisseurs - Groupe avances et acomptes versés', '4092', 'Montant versé aux fournisseurs appartenant au même groupe à titre d''avances ou d''acomptes pour des biens ou des services à fournir.'),
(169, 'Fournisseurs sous-traitants avances et acomptes versés', '4093', 'Montant versé aux fournisseurs sous-traitants à titre d''avances ou d''acomptes pour des biens ou des services à fournir.'),
(169, 'Fournisseurs créances pour emballages et matériels à rendre', '4094', 'Montant dû par les fournisseurs pour les emballages et le matériel qui doivent être restitués.'),
(169, 'Fournisseurs, rabais, remises, ristournes et autres avoirs à obtenir', '4098', 'Montant attendu des fournisseurs pour les rabais, remises, ristournes et autres avoirs à obtenir.'),

(170, 'Clients', '4111', 'Montant dû par les clients pour des biens ou des services fournis.'),
(170, 'Clients Groupe', '4112', 'Montant dû par les clients appartenant au même groupe pour des biens ou des services fournis.'),
(170, 'Clients, État et Collectivités publiques', '4114', 'Montant dû par les clients qui sont des entités gouvernementales ou des collectivités publiques pour des biens ou des services fournis.'),
(170, 'Clients, organismes internationaux', '4115', 'Montant dû par les clients qui sont des organismes internationaux pour des biens ou des services fournis.'),
(170, 'Clients, ventes avec réserve de propriété', '4116', 'Montant dû par les clients pour des biens ou des services vendus avec réserve de propriété, ce qui signifie que le transfert de propriété n''a pas encore eu lieu.'),
(170, 'Clients, retenues de garantie', '4117', 'Montant retenu par les clients en garantie de la qualité des biens ou des services fournis.'),
(170, 'Clients, dégrèvement de Taxes sur la Valeur Ajoutée (T.V.A.)', '4118', 'Montant de TVA que les clients peuvent déduire du montant qu''ils doivent payer.'),

(171, 'Clients, Effets à recevoir', '4121', 'Montant dû par les clients et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'Clients - Groupe, Effets à recevoir', '4122', 'Montant dû par les clients appartenant au même groupe et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'État et Collectivités publiques, Effets à recevoir', '4124', 'Montant dû par les entités gouvernementales ou les collectivités publiques et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'Organismes Internationaux, Effets à recevoir', '4125', 'Montant dû par les organismes internationaux et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'Clients, ventes avec réserve de propriétés effets à recevoir', '4126', 'Montant dû par les clients pour des ventes avec réserve de propriétés et payable sous forme de traites ou d''autres effets à recevoir.'),

(172, 'Clients, chèques impayés', '4131', 'Montant dû par les clients et non payé sous forme de chèques impayés.'),
(172, 'Clients, effets impayés', '4132', 'Montant dû par les clients et non payé sous forme d''effets impayés.'),
(172, 'Clients, cartes de crédit impayées', '4133', 'Montant dû par les clients et non payé avec des cartes de crédit impayées.'),
(172, 'Clients, autres valeurs impayés', '4138', 'Montant dû par les clients et non payé sous forme d''autres valeurs impayées.'),

(173, 'Créances en compte, immobilisations incorporelles', '4141', 'Montant dû par les clients et non payé en compte, concernant des immobilisations incorporelles.'),
(173, 'Créances en compte, immobilisations corporelles', '4142', 'Montant dû par les clients et non payé en compte, concernant des immobilisations corporelles.'),
(173, 'Effets à recevoir, immobilisations incorporelles', '4146', 'Montant dû par les clients et non payé sous forme d''effets à recevoir, concernant des immobilisations incorporelles.'),
(173, 'Effets à recevoir, immobilisations corporelles', '4147', 'Montant dû par les clients et non payé sous forme d''effets à recevoir, concernant des immobilisations corporelles.'),

(175, 'Créances litigieuses', '4161', 'Montant dû par les clients, mais dont le paiement est contesté ou sujet à un litige.'),
(175, 'Créances douteuses', '4162', 'Montant dû par les clients, mais dont le recouvrement est incertain en raison de leur situation financière instable ou de difficultés de paiement présumées.'),

(176, 'Clients, factures à établir', '4181', 'Montant dû par les clients pour des biens ou des services fournis, mais pour lesquels les factures n''ont pas encore été émises.'),
(176, 'Clients, intérêts courus', '4186', 'Montant dû par les clients pour les intérêts accumulés sur des sommes non encore payées.'),

(177, 'Clients, avances et acomptes reçus', '4191', 'Montant reçu des clients à titre d''avance ou d''acompte pour des biens ou des services qui seront fournis ultérieurement.'),
(177, 'Clients - Groupe, avancés et acomptes reçus', '4192', 'Montant reçu des clients appartenant au groupe à titre d''avance ou d''acompte pour des biens ou des services qui seront fournis ultérieurement.'),
(177, 'Clients, dettes pour emballages et matériels consignes', '4194', 'Montant dû aux clients pour les emballages ou les matériels consignés.'),
(177, 'Clients, rabais, remises, ristournes et autres avoirs à accorder', '4198', 'Montant à accorder aux clients sous forme de rabais, de remises, de ristournes ou d''autres avoirs.'),

(178, 'Personnel, avances', '4211', 'Montant avancé au personnel pour couvrir des dépenses professionnelles.'),
(178, 'Personnel, acomptes', '4212', 'Montant versé au personnel à titre d''acompte sur son salaire ou sur d''autres prestations.'),
(178, 'Frais avances et fournitures au personnel', '4213', 'Montant avancé pour couvrir les frais ou fournitures du personnel.'),

(180, 'Personnel, oppositions', '4231', 'Montant saisi sur le salaire du personnel en raison d''une opposition.'),
(180, 'Personnel, saisies arrêts', '4232', 'Montant saisi sur le salaire du personnel en raison d''une saisie-arrêt.'),
(180, 'Personnel, avis à tiers détenteur', '4233', 'Montant saisi sur le salaire du personnel en raison d''un avis à tiers détenteur.'),

(181, 'Assistance médicale', '4241', 'Montant des dépenses liées à l''assistance médicale du personnel.'),
(181, 'Allocations familiales', '4242', 'Montant des allocations familiales versées au personnel.'),
(181, "Organismes sociaux rattachés à l'entité", '4245', 'Montant des cotisations versées aux organismes sociaux rattachés à l''entité.'),
(181, 'Autres œuvres sociales internes', '4248', 'Montant des dépenses liées à d''autres œuvres sociales internes.'),

(182, 'Délégués du personnel', '4251', 'Montant des dépenses liées aux délégués du personnel.'),
(182, 'Syndicats et Comités d''entreprises, d''Établissement', '4252', 'Montant des dépenses liées aux syndicats et aux comités d''entreprises ou d''établissement.'),
(182, 'Autres représentants du personnel', '4258', 'Montant des dépenses liées à d''autres représentants du personnel.'),

(183, 'Participation aux bénéfices', '4261', 'Montant des dépenses liées à la participation aux bénéfices des employés.'),
(183, 'Participation au capital', '4264', 'Montant des dépenses liées à la participation au capital des employés.'),

(185, 'Dettes provisionnées pour congés à payer', '4281', 'Montant des dettes provisionnées pour les congés à payer aux employés.'),
(185, 'Autres Charges à payer', '4286', 'Montant des autres charges à payer qui ne sont pas spécifiquement répertoriées ailleurs.'),
(185, 'Produits à recevoir', '4287', 'Montant des produits à recevoir qui sont dus mais pas encore reçus.'),

(186, 'Prestations familiales', '4311', 'Montant des cotisations versées pour les prestations familiales.'),
(186, 'Accidents de travail', '4312', 'Montant des cotisations versées pour les accidents du travail.'),
(186, 'Caisse de retraite obligatoire', '4313', 'Montant des cotisations versées pour la caisse de retraite obligatoire.'),
(186, 'Caisse de retraite facultative', '4314', 'Montant des cotisations versées pour la caisse de retraite facultative.'),
(186, 'Autres cotisations sociales', '4318', 'Montant des cotisations versées pour d''autres types de prestations sociales.'),

(188, 'Mutuelle', '4331', 'Montant des cotisations versées pour la mutuelle.'),
(188, 'Assurance retraite', '4332', 'Montant des cotisations versées pour l''assurance retraite.'),
(188, 'Assurance et organismes de santé', '4333', 'Montant des cotisations versées pour l''assurance et les organismes de santé.'),

(189, 'Charges sociales sur gratifications à payer', '4381', 'Montant des charges sociales dues sur les gratifications à payer.'),
(189, 'Charges sociales sur congés à payer', '4382', 'Montant des charges sociales dues sur les congés à payer.'),
(189, 'Autres charges à payer', '4386', 'Montant des autres charges à payer.'),
(189, 'Produits à recevoir', '4387', 'Montant des produits à recevoir.'),

(191, 'Impôts et taxes d''état', '4421', 'Montant des impôts et taxes à payer à l''État.'),
(191, 'Impôts et taxes pour les collectivités publiques', '4422', 'Montant des impôts et taxes à payer aux collectivités publiques.'),
(191, 'Impôts et taxes recouvrables sur des obligataires', '4423', 'Montant des impôts et taxes recouvrables sur des obligataires.'),
(191, 'Impôts et taxes recouvrables sur des associes', '4424', 'Montant des impôts et taxes recouvrables sur des associés.'),
(191, 'Droits de douane', '4426', 'Montant des droits de douane à payer.'),
(191, 'Autres impôts et taxes', '4428', 'Montant des autres impôts et taxes à payer.'),

(192, 'T.V.A. facturée sur ventes', '4431', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les ventes de biens.'),
(192, 'T.V.A. facturée sur prestations de services', '4432', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les prestations de services.'),
(192, 'T.V.A. facturée sur travaux', '4433', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les travaux réalisés.'),
(192, 'T.V.A. facturée sur production livrée à soi-même', '4434', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les productions livrées à soi-même.'),
(192, 'T.V.A. sur factures à établir', '4435', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) à établir sur les factures.');

(193, 'État, T.V.A. due', '4441', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) due à l''État.'),
(193, 'État, Dégrèvement T.V.A.', '4445', 'Ce compte enregistre les dégrèvements de taxe sur la valeur ajoutée (T.V.A.) accordés par l''État.'),
(193, 'État, crédit de T.V.A. à reporter', '4449', 'Ce compte enregistre les crédits de taxe sur la valeur ajoutée (T.V.A.) à reporter à l''État.'),

(194, 'T.V.A. récupérable sur immobilisations', '4451', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les immobilisations.'),
(194, 'T.V.A. récupérable sur achats', '4452', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les achats.'),
(194, 'T.V.A. récupérable sur transport', '4453', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur le transport.'),
(194, 'T.V.A. récupérable sur services extérieurs et autres charges', '4454', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les services extérieurs et autres charges.'),
(194, 'T.V.A. récupérable sur factures non parvenues', '4455', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les factures non parvenues.'),
(194, 'T.V.A. transférée par d''autres entités', '4456', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) transférée par d''autres entités.'),

(196, 'Impôt Général sur le revenu', '4471', 'Ce compte enregistre l''impôt général sur le revenu.'),
(196, 'Impôts sur salaires', '4472', 'Ce compte enregistre les impôts sur les salaires.'),
(196, 'Contribution nationale', '4473', 'Ce compte enregistre la contribution nationale.'),
(196, 'Contribution nationale de solidarité', '4474', 'Ce compte enregistre la contribution nationale de solidarité.'),
(196, 'Autres impôts et contributions', '4478', 'Ce compte enregistre d''autres impôts et contributions.'),

(197, 'Charges à payer', '4486', 'Ce compte enregistre les charges à payer.'),
(197, 'Produits à recevoir', '4487', 'Ce compte enregistre les produits à recevoir.'),

(198, 'État, obligations cautionnées', '4491', 'Ce compte enregistre les obligations cautionnées à l''État.'),
(198, 'État, avances et acomptes versés sur impôts', '4492', 'Ce compte enregistre les avances et acomptes versés sur impôts à l''État.'),
(198, 'État, fonds de dotation à recevoir', '4493', 'Ce compte enregistre les fonds de dotation à recevoir de l''État.'),
(198, 'État, subventions investissement à recevoir', '4494', 'Ce compte enregistre les subventions d''investissement à recevoir de l''État.'),
(198, 'État, subventions d''exploitation à recevoir', '4495', 'Ce compte enregistre les subventions d''exploitation à recevoir de l''État.'),
(198, 'État, subventions d''équilibre à recevoir', '4496', 'Ce compte enregistre les subventions d''équilibre à recevoir de l''État.'),
(198, 'État avances sur subventions', '4497', 'Ce compte enregistre les avances sur subventions à l''État.'),
(198, 'État, fonds réglementés provisionnés', '4499', 'Ce compte enregistre les fonds réglementés provisionnés à l''État.'),

(201, 'Organismes internationaux, fonds de dotation à recevoir', '4581', 'Ce compte enregistre les fonds de dotation à recevoir des organismes internationaux.'),
(201, 'Organismes internationaux, subventions à recevoir', '4582', 'Ce compte enregistre les subventions à recevoir des organismes internationaux.'),

(202, 'Apporteurs, apports en nature', '4611', 'Ce compte enregistre les apports en nature effectués par les apporteurs.'),
(202, 'Apporteurs, apports en numéraire', '4612', 'Ce compte enregistre les apports en numéraire effectués par les apporteurs.'),
(202, 'Apporteurs, capital appelé, non versé', '4613', 'Ce compte enregistre le capital appelé mais non versé par les apporteurs.'),
(202, 'Apporteurs, compte d''apport, opérations de restructuration (fusion)', '4614', 'Ce compte enregistre les opérations de restructuration (fusion) sur le compte d''apport des apporteurs.'),
(202, 'Apporteurs, versements reçus sur augmentation de capital', '4615', 'Ce compte enregistre les versements reçus sur l''augmentation de capital par les apporteurs.'),
(202, 'Apporteurs, versements anticipés', '4616', 'Ce compte enregistre les versements anticipés effectués par les apporteurs.'),
(202, 'Apporteurs défaillants', '4617', 'Ce compte enregistre les apporteurs défaillants.'),
(202, 'Apporteurs, titres à échanger', '4618', 'Ce compte enregistre les titres à échanger des apporteurs.'),
(202, 'Apporteurs, capital à rembourser', '4619', 'Ce compte enregistre le capital à rembourser aux apporteurs.'),

(203, 'Principal', '4621', 'Ce compte enregistre le montant principal d''une dette ou d''un emprunt.'),
(203, 'Intérêts courus', '4626', 'Ce compte enregistre les intérêts courus mais non encore payés sur une dette ou un emprunt.'),

(204, 'Opérations courantes', '4631', 'Ce compte enregistre les opérations financières régulières et habituelles de l''entreprise, telles que les achats, les ventes et les charges courantes.'),
(204, 'Intérêts courus', '4636', 'Ce compte enregistre les intérêts accumulés mais non encore payés sur des dettes ou des emprunts, jusqu''à la date de comptabilité.'),

(208, 'Débiteurs divers', '4711', 'Ce compte enregistre les montants dus à l''entreprise par divers débiteurs qui ne rentrent pas dans d''autres catégories spécifiques de créances.'),
(208, 'Créditeurs divers', '4712', 'Ce compte enregistre les montants que l''entreprise doit à divers créditeurs qui ne rentrent pas dans d''autres catégories spécifiques de dettes.'),
(208, 'Obligataires', '4713', 'Ce compte enregistre les montants dus à des détenteurs d''obligations émises par l''entreprise.'),
(208, 'Créances sur cessions de titres de placements', '4714', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placements.'),
(208, 'Rémunérations d''administrateurs', '4715', 'Ce compte enregistre les montants dus aux administrateurs de l''entreprise pour leur rémunération.'),
(208, 'Comptes d''affacturage', '4716', 'Ce compte enregistre les montants liés aux opérations d''affacturage, c''est-à-dire la cession de créances commerciales à un établissement financier.'),
(208, 'Débiteurs divers - retenues de garantie', '4717', 'Ce compte enregistre les montants dus à l''entreprise par divers débiteurs, mais avec des retenues de garantie qui doivent être déduites.'),
(208, 'Apport, compte de fusion et opérations assimilées', '4718', 'Ce compte enregistre les montants liés aux apports lors de fusions, scissions ou autres opérations similaires.'),
(208, 'Bons de souscription d''actions et d''obligations', '4719', 'Ce compte enregistre les montants dus aux porteurs de bons de souscription d''actions ou d''obligations émis par l''entreprise.'),

(209, 'Créances sur cessions de titres de placement', '4721', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placement.'),
(209, 'Versements restant à effectuer sur titres de placement non libéré', '4726', 'Ce compte enregistre les montants restant à verser pour des titres de placement qui n''ont pas encore été libérés en totalité.'),

(210, 'Mandants', '4731', 'Ce compte enregistre les montants dus à des mandants, c''est-à-dire des personnes ou des entités qui ont donné mandat à l''entreprise pour agir en leur nom.'),
(210, 'Mandataires', '4732', 'Ce compte enregistre les montants dus à des mandataires, c''est-à-dire des personnes ou des entités agissant au nom de l''entreprise.'),
(210, 'Commettants', '4733', 'Ce compte enregistre les montants dus à des commettants, c''est-à-dire des personnes ou des entités qui ont chargé l''entreprise d''exécuter des tâches en leur nom.'),
(210, 'Commissionnaires', '4734', 'Ce compte enregistre les montants dus à des commissionnaires, c''est-à-dire des personnes ou des entités qui agissent en tant qu''intermédiaires pour l''entreprise dans des transactions commerciales.'),
(210, 'États, collectivités publiques, fonds global d''allocation', '4739', 'Ce compte enregistre les montants dus à des États, des collectivités publiques ou des fonds globaux d''allocation.'),

(211, 'Compte de répartition périodique des charges', '4746', 'Ce compte enregistre les montants utilisés pour répartir périodiquement les charges entre différentes catégories ou départements de l''entreprise.'),
(211, 'Compte de répartition périodique des produits', '4747', 'Ce compte enregistre les montants utilisés pour répartir périodiquement les produits entre différentes catégories ou départements de l''entreprise.'),

(212, 'Compte actif', '4751', 'Ce compte enregistre les éléments d''actif de l''entreprise, c''est-à-dire les biens et les droits détenus par l''entreprise.'),
(212, 'Compte passif', '4752', 'Ce compte enregistre les éléments de passif de l''entreprise, c''est-à-dire les dettes et les obligations financières de l''entreprise.'),

(215, 'Diminution des créances d''exploitation', '4781', 'Ce compte enregistre les diminutions des créances résultant d''activités d''exploitation, telles que les ventes à crédit ou les services fournis.'),
(215, 'Diminution de créances financières', '4782', 'Ce compte enregistre les diminutions des créances financières, telles que les prêts accordés à des tiers.'),
(215, 'Augmentation des dettes d''exploitation', '4783', 'Ce compte enregistre les augmentations des dettes résultant d''activités d''exploitation, telles que les achats à crédit ou les dépenses engagées.'),
(215, 'Augmentation des dettes financières', '4784', 'Ce compte enregistre les augmentations des dettes financières, telles que les emprunts ou les obligations émises par l''entreprise.'),
(215, 'Différences d''évaluation sur instruments de trésorerie', '4786', 'Ce compte enregistre les différences de valorisation sur les instruments de trésorerie, comme les devises étrangères, les titres financiers ou les contrats à terme.'),
(215, 'Différences compensées par couverture de change', '4788', 'Ce compte enregistre les différences de valorisation compensées par des instruments de couverture de change, telles que les contrats à terme ou les options de change.'),

(216, 'Augmentation des créances d''exploitation', '4791', 'Ce compte enregistre les augmentations des créances résultant d''activités d''exploitation, telles que les ventes à crédit ou les services fournis.'),
(216, 'Augmentation des créances financières', '4792', 'Ce compte enregistre les augmentations des créances financières, telles que les prêts accordés à des tiers.'),
(216, 'Diminution des dettes d''exploitation', '4793', 'Ce compte enregistre les diminutions des dettes résultant d''activités d''exploitation, telles que les achats à crédit ou les dépenses engagées.'),
(216, 'Diminution des dettes financières', '4794', 'Ce compte enregistre les diminutions des dettes financières, telles que les emprunts ou les obligations émises par l''entreprise.'),
(216, 'Différences d''évaluation sur instruments de trésorerie', '4797', 'Ce compte enregistre les différences de valorisation sur les instruments de trésorerie, comme les devises étrangères, les titres financiers ou les contrats à terme.'),
(216, 'Différences compensées par couverture de change', '4798', 'Ce compte enregistre les différences de valorisation compensées par des instruments de couverture de change, telles que les contrats à terme ou les options de change.'),

(217, 'Immobilisations incorporelles', '4811', 'Ce compte enregistre les actifs non matériels de l''entreprise, tels que les brevets, les marques, les logiciels et les licences.'),
(217, 'Immobilisations corporelles', '4812', 'Ce compte enregistre les actifs matériels de l''entreprise, tels que les terrains, les bâtiments, les équipements et les véhicules.'),
(217, 'Versements restant à effectuer sur titres de participation et titres immobilisés non libérés', '4813', 'Ce compte enregistre les montants restant à verser pour des titres de participation ou des titres immobilisés qui n''ont pas encore été libérés en totalité.'),
(217, 'Réserve de propriété', '4816', 'Ce compte enregistre les biens vendus par l''entreprise mais pour lesquels la propriété reste avec l''entreprise jusqu''au paiement complet.'),
(217, 'Retenues de garantie (2)', '4817', 'Ce compte enregistre les retenues de garantie effectuées par les clients ou les fournisseurs pour assurer l''exécution correcte des contrats.'),
(217, 'Factures non parvenues (2)', '4818', 'Ce compte enregistre les montants qui n''ont pas encore été facturés mais qui doivent être comptabilisés comme des charges ou des produits.'),

(218, 'Immobilisations incorporelles', '4821', 'Ce compte enregistre les actifs non matériels de l''entreprise, tels que les brevets, les marques, les logiciels et les licences.'),
(218, 'Immobilisations corporelles', '4822', 'Ce compte enregistre les actifs matériels de l''entreprise, tels que les terrains, les bâtiments, les équipements et les véhicules.'),

(220, 'En compte, immobilisations incorporelles', '4851', 'Ce compte enregistre les immobilisations incorporelles qui sont en attente d''être inscrites au bilan de l''entreprise.'),
(220, 'En compte, immobilisations corporelles', '4852', 'Ce compte enregistre les immobilisations corporelles qui sont en attente d''être inscrites au bilan de l''entreprise.'),
(220, 'Effets à recevoir, immobilisations incorporelles', '4853', 'Ce compte enregistre les effets (comme des chèques ou des traites) à recevoir liés aux transactions impliquant des immobilisations incorporelles.'),
(220, 'Effets à recevoir, immobilisations corporelles', '4854', 'Ce compte enregistre les effets (comme des chèques ou des traites) à recevoir liés aux transactions impliquant des immobilisations corporelles.'),
(220, 'Effets escomptés non échus', '4855', 'Ce compte enregistre les effets escomptés qui n''ont pas encore atteint leur date d''échéance.'),
(220, 'Retenues de garantie', '4857', 'Ce compte enregistre les montants retenus par les clients ou les fournisseurs en garantie de l''exécution correcte des contrats.'),
(220, 'Factures à établir', '4858', 'Ce compte enregistre les montants à facturer mais qui n''ont pas encore été émis sous forme de factures.'),

(223, 'Créances litigieuses', '4911', 'Ce compte enregistre les créances pour lesquelles un litige est en cours, ce qui signifie qu''il existe un différend ou un désaccord entre l''entreprise et le débiteur quant au montant dû ou à d''autres conditions de paiement.'),
(223, 'Créances douteuses', '4912', 'Ce compte enregistre les créances pour lesquelles il existe des doutes raisonnables quant à la capacité du débiteur à payer, souvent en raison de retards de paiement importants ou de difficultés financières.'),

(228, 'Associés, comptes courants', '4962', 'Ce compte enregistre les montants dus aux associés de l''entreprise au titre de comptes courants, qui représentent des avances de fonds ou des prêts consentis par les associés à l''entreprise.'),
(228, 'Associés, opérations faites en commun', '4963', 'Ce compte enregistre les opérations réalisées en commun avec les associés de l''entreprise, telles que les coentreprises ou les partenariats.'),
(228, 'Groupe, comptes courants', '4966', 'Ce compte enregistre les montants dus aux entreprises du même groupe au titre de comptes courants, qui représentent des avances de fonds ou des prêts consentis par ces entreprises à l''entreprise.'),

(230, 'Créances sur cessions d''immobilisations', '4985', 'Ce compte enregistre les montants que l''entreprise attend de la cession d''immobilisations, telles que des biens immobiliers ou des équipements.'),
(230, 'Créances sur cessions de titres de placement', '4986', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placement, tels que des actions ou des obligations.'),
(230, 'Autres Créances H.A.O.', '4988', 'Ce compte enregistre les autres créances hors activités ordinaires (H.A.O.) de l''entreprise, qui ne rentrent pas dans d''autres catégories spécifiques de créances.'),

(231, 'Sur opérations d''exploitation', '4991', 'Ce compte enregistre les produits et les charges sur les opérations d''exploitation de l''entreprise, telles que les ventes de biens ou de services.'),
(231, 'Sur opérations financières', '4997', 'Ce compte enregistre les produits et les charges sur les opérations financières de l''entreprise, telles que les revenus d''intérêts ou les pertes de change.'),
(231, 'Sur opérations H.A.O.', '4998', 'Ce compte enregistre les produits et les charges sur les opérations hors activités ordinaires (H.A.O.) de l''entreprise, qui ne rentrent pas dans d''autres catégories spécifiques.'),

(232, 'Titres du Trésor à court terme', '5011', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Trésor à court terme, émis par le gouvernement et ayant une échéance à court terme.'),
(232, 'Titres d''organismes financiers', '5012', 'Ce compte enregistre les investissements de l''entreprise dans des titres émis par des organismes financiers, tels que des obligations ou des actions.'),
(232, 'Bons de caisse à court terme', '5013', 'Ce compte enregistre les investissements de l''entreprise dans des bons de caisse à court terme, qui sont des titres de créance émis par des institutions financières.'),
(232, 'Frais d''acquisition des titres de trésor et bons de caisse', '5016', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition de titres du Trésor à court terme et de bons de caisse.'),

(233, 'Actions ou parts propres', '5021', 'Ce compte enregistre les actions ou parts d''entreprise détenues par l''entreprise elle-même, souvent dans le cadre de programmes de rachat d''actions.'),
(233, 'Actions cotées', '5022', 'Ce compte enregistre les actions cotées en bourse détenues par l''entreprise comme investissement.'),
(233, 'Actions non cotées', '5023', 'Ce compte enregistre les actions non cotées en bourse détenues par l''entreprise comme investissement.'),
(233, 'Actions démembrées (certificats d''investissement ; droits de vote)', '5024', 'Ce compte enregistre les actions démembrées, telles que les certificats d''investissement ou les droits de vote séparés des droits économiques.'),
(233, 'Autres actions', '5025', 'Ce compte enregistre les actions de l''entreprise qui ne rentrent pas dans d''autres catégories spécifiques.'),
(233, 'Frais d''acquisition des actions', '5026', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition d''actions, tels que les frais de courtage ou les honoraires d''avocats.'),

(234, 'Obligations émises par la société et rachetées par elle', '5031', 'Ce compte enregistre les obligations émises par l''entreprise et rachetées ultérieurement par elle-même.'),
(234, 'Obligations cotées', '5032', 'Ce compte enregistre les obligations cotées en bourse détenues par l''entreprise comme investissement.'),
(234, 'Obligations non cotées', '5033', 'Ce compte enregistre les obligations non cotées en bourse détenues par l''entreprise comme investissement.'),
(234, 'Autres obligations', '5035', 'Ce compte enregistre les obligations de l''entreprise qui ne rentrent pas dans d''autres catégories spécifiques.'),
(234, 'Frais d''acquisition des obligations', '5036', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition d''obligations, tels que les frais de courtage ou les honoraires d''avocats.'),

(235, 'Bons de souscription d''actions', '5042', 'Ce compte enregistre les bons de souscription d''actions émis par l''entreprise, qui donnent à leur détenteur le droit d''acheter des actions de l''entreprise à un prix spécifié et pendant une période déterminée.'),
(235, 'Bons de souscription d''obligations', '5043', 'Ce compte enregistre les bons de souscription d''obligations émis par l''entreprise, qui donnent à leur détenteur le droit d''acheter des obligations de l''entreprise à un prix spécifié et pendant une période déterminée.'),

(237, 'Titres du Trésor et bons de caisse à court terme', '5061', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Trésor et des bons de caisse à court terme, qui sont des instruments financiers à faible risque et à maturité courte.'),
(237, 'Actions', '5062', 'Ce compte enregistre les investissements de l''entreprise dans des actions d''autres sociétés, qui représentent des participations dans le capital de ces sociétés.'),
(237, 'Obligations', '5063', 'Ce compte enregistre les investissements de l''entreprise dans des obligations émises par d''autres entités, qui représentent des dettes contractées par ces entités envers l''entreprise.'),

(244, 'Warrants', '5181', 'Ce compte enregistre les warrants détenus par l''entreprise, qui sont des options permettant d''acheter ou de vendre des actions à un prix spécifié pendant une période déterminée.'),
(244, 'Billets de fonds', '5182', 'Ce compte enregistre les billets de fonds détenus par l''entreprise, qui sont des instruments de dette à court terme émis par des institutions financières.'),
(244, 'Chèques de voyage', '5185', 'Ce compte enregistre les chèques de voyage détenus par l''entreprise, qui sont des moyens de paiement sécurisés utilisés par les voyageurs.'),
(244, 'Coupons échus', '5186', 'Ce compte enregistre les coupons d''obligations échus mais non encore encaissés par l''entreprise.'),
(244, 'Intérêts échus des obligations', '5187', 'Ce compte enregistre les intérêts échus des obligations détenues par l''entreprise mais non encore encaissés.'),

(245, 'Banques en monnaie nationale', '5211', 'Ce compte enregistre les fonds détenus par l''entreprise auprès de banques nationales dans la monnaie nationale du pays où elle opère.'),
(245, 'Banques en devises', '5215', 'Ce compte enregistre les fonds détenus par l''entreprise auprès de banques dans des devises étrangères autres que sa monnaie nationale.'),

(250, 'Banque, intérêts courus charges à payer', '5261', 'Ce compte enregistre les intérêts courus sur les charges à payer de l''entreprise, tels que les intérêts à payer sur des emprunts ou des dettes.'),
(250, 'Banque, intérêts courus produits à recevoir', '5267', 'Ce compte enregistre les intérêts courus sur les produits à recevoir de l''entreprise, tels que les intérêts à recevoir sur des placements ou des créances.'),

(270, 'Caisse en monnaie nationale', '5711', 'Ce compte enregistre les fonds en espèces détenus par l''entreprise dans la monnaie nationale du pays où elle opère.'),
(270, 'Caisse en devises', '5712', 'Ce compte enregistre les fonds en espèces détenus par l''entreprise dans des devises étrangères autres que la monnaie nationale.'),

(271, 'En monnaie nationale', '5721', 'Ce compte enregistre les fonds détenus par l''entreprise dans la monnaie nationale du pays où elle opère, autres que ceux en caisse.'),
(271, 'En devise', '5722', 'Ce compte enregistre les fonds détenus par l''entreprise dans des devises étrangères autres que la monnaie nationale, autres que ceux en caisse.'),

(272, 'En monnaie nationale', '5731', 'Ce compte enregistre les fonds détenus par l''entreprise dans la monnaie nationale du pays où elle opère, autres que ceux en caisse ou en banque.'),
(272, 'En devise', '5732', 'Ce compte enregistre les fonds détenus par l''entreprise dans des devises étrangères autres que la monnaie nationale, autres que ceux en caisse ou en banque.'),

(283, 'Dans la Région', '6011', 'Ce compte enregistre les achats effectués par l''entreprise dans la région spécifiée.'),
(283, 'Hors Région', '6012', 'Ce compte enregistre les achats effectués par l''entreprise en dehors de la région spécifiée.'),
(283, 'Aux entités du groupe dans la Région', '6013', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées dans la région spécifiée.'),
(283, 'Aux entités du groupe hors Région', '6014', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées en dehors de la région spécifiée.'),
(283, 'Frais sur achats', '6015', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(283, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6019', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),

(284, 'Dans la Région', '6021', 'Ce compte enregistre les achats effectués par l''entreprise dans la région spécifiée.'),
(284, 'Hors Région', '6022', 'Ce compte enregistre les achats effectués par l''entreprise en dehors de la région spécifiée.'),
(284, 'Aux entités du groupe dans la Région', '6023', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées dans la région spécifiée.'),
(284, 'Aux entités du groupe hors Région', '6024', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées en dehors de la région spécifiée.'),
(284, 'Frais sur achats', '6025', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(284, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6029', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),

(285, 'Variations des stocks de marchandises', '6031', 'Ce compte enregistre les variations de valeur des stocks de marchandises détenus par l''entreprise, généralement en raison de changements de prix ou de quantités.'),
(285, 'Variations des stocks de matières premières et fournitures liées', '6032', 'Ce compte enregistre les variations de valeur des stocks de matières premières et fournitures liées détenus par l''entreprise, généralement en raison de changements de prix ou de quantités.'),
(285, 'Variations des stocks d''autres approvisionnements', '6033', 'Ce compte enregistre les variations de valeur des autres approvisionnements détenus par l''entreprise, tels que les produits semi-finis ou les fournitures de bureau, généralement en raison de changements de prix ou de quantités.'),

(286, 'Matières consommables', '6041', 'Ce compte enregistre les matières consommables utilisées par l''entreprise dans son processus de production ou dans la prestation de services.'),
(286, 'Matières combustibles', '6042', 'Ce compte enregistre les matières combustibles utilisées par l''entreprise, telles que le charbon, le gaz ou le fioul.'),
(286, 'Produits d''entretien', '6043', 'Ce compte enregistre les produits d''entretien utilisés par l''entreprise pour maintenir ses installations et ses équipements en bon état.'),
(286, 'Fournitures d''atelier et d''usine', '6044', 'Ce compte enregistre les fournitures utilisées dans les ateliers et les usines de l''entreprise, telles que les outils et les équipements de protection individuelle.'),
(286, 'Frais sur achats', '6045', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(286, 'Fournitures de magasin', '6046', 'Ce compte enregistre les fournitures utilisées dans les magasins de l''entreprise, telles que les emballages ou les étiquettes.'),
(286, 'Fournitures de bureau', '6047', 'Ce compte enregistre les fournitures utilisées dans les bureaux de l''entreprise, telles que les fournitures de papeterie ou les équipements informatiques.'),
(286, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6049', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),

(287, 'Fournitures non stockables - Eau', '6051', 'Ce compte enregistre les achats de fournitures non stockables liées à l''eau, telles que l''eau potable ou l''eau pour usage industriel.'),
(287, 'Fournitures non stockables - Électricité', '6052', 'Ce compte enregistre les achats de fournitures non stockables liées à l''électricité, telles que l''électricité utilisée pour les installations de l''entreprise.'),
(287, 'Fournitures non stockables - Autres énergies', '6053', 'Ce compte enregistre les achats de fournitures non stockables liées à d''autres formes d''énergie, telles que le gaz ou le fioul.'),
(287, 'Fournitures d''entretien non stockables', '6054', 'Ce compte enregistre les achats de fournitures d''entretien non stockables utilisées par l''entreprise pour maintenir ses installations en bon état.'),
(287, 'Fournitures de bureau non stockables', '6055', 'Ce compte enregistre les achats de fournitures de bureau non stockables utilisées par l''entreprise dans ses opérations quotidiennes.'),
(287, 'Achats de petit matériel et outillage', '6056', 'Ce compte enregistre les achats de petit matériel et d''outillage utilisés par l''entreprise dans ses activités de production ou de service.'),
(287, 'Achats d''études et prestations de services', '6057', 'Ce compte enregistre les achats d''études et de prestations de services externes réalisés par l''entreprise.'),
(287, 'Achats de travaux, matériels et équipements', '6058', 'Ce compte enregistre les achats de travaux, de matériels et d''équipements réalisés par l''entreprise pour son exploitation.'),
(287, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6059', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures non stockables, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),

(288, 'Emballages perdus', '6081', 'Ce compte enregistre les achats d''emballages qui sont perdus ou non récupérables après utilisation par l''entreprise.'),
(288, 'Emballages récupérables non identifiables', '6082', 'Ce compte enregistre les achats d''emballages qui sont récupérables mais ne peuvent pas être identifiés individuellement après utilisation par l''entreprise.'),
(288, 'Emballages à usage mixte', '6083', 'Ce compte enregistre les achats d''emballages qui peuvent être utilisés à la fois comme emballages et comme produits finis.'),
(288, 'Frais sur achats', '6085', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(288, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6089', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats d''emballages, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),

(293, 'Voyages et déplacements', '6181', 'Ce compte enregistre les frais liés aux voyages et déplacements effectués par le personnel de l''entreprise, tels que les frais de transport, d''hébergement et de restauration.'),
(293, 'Transports entre établissements ou chantiers', '6182', 'Ce compte enregistre les frais liés aux transports de biens ou de personnes entre les différents établissements ou chantiers de l''entreprise.'),
(293, 'Transports administratifs', '6183', 'Ce compte enregistre les frais liés aux transports administratifs, tels que les frais de courrier ou de messagerie.'),

(295, 'Locations de terrains', '6221', 'Ce compte enregistre les frais de location de terrains payés par l''entreprise pour l''utilisation de terrains appartenant à des tiers.'),
(295, 'Locations de bâtiments', '6222', 'Ce compte enregistre les frais de location de bâtiments payés par l''entreprise pour l''utilisation de locaux appartenant à des tiers.'),
(295, 'Locations de matériels et outillages', '6223', 'Ce compte enregistre les frais de location de matériels et d''outillages payés par l''entreprise pour l''utilisation d''équipements appartenant à des tiers.'),
(295, 'Malis sur emballages', '6224', 'Ce compte enregistre les pertes financières résultant de la location d''emballages, généralement dues à des dommages ou à des pertes.'),
(295, 'Locations d''emballages', '6225', 'Ce compte enregistre les frais de location d''emballages payés par l''entreprise pour l''utilisation d''emballages appartenant à des tiers.'),
(295, 'Fermages et loyers du foncier', '6226', 'Ce compte enregistre les frais de location de terres agricoles ou de propriétés foncières payés par l''entreprise pour des activités agricoles ou immobilières.'),
(295, 'Locations et charges locatives diverses', '6228', 'Ce compte enregistre les frais de location et autres charges locatives payés par l''entreprise pour d''autres types de biens ou d''équipements.'),

(296, 'Crédit-bail immobilier', '6232', 'Ce compte enregistre les frais liés au crédit-bail immobilier, une forme de financement où l''entreprise loue un bien immobilier avec une option d''achat à la fin du contrat.'),
(296, 'Crédit-bail mobilier', '6233', 'Ce compte enregistre les frais liés au crédit-bail mobilier, une forme de financement où l''entreprise loue des équipements ou des biens mobiliers avec une option d''achat à la fin du contrat.'),
(296, 'Location-vente', '6234', 'Ce compte enregistre les frais liés à la location-vente, une transaction où l''entreprise loue un bien avec l''intention de l''acheter à la fin de la période de location.'),
(296, 'Autres contrats de location acquisition', '6238', 'Ce compte enregistre les frais liés à d''autres types de contrats de location acquisition qui ne rentrent pas dans les catégories précédentes.'),

(297, 'Entretien et réparations des biens immobiliers', '6241', 'Ce compte enregistre les frais liés à l''entretien et aux réparations des biens immobiliers de l''entreprise, tels que les bâtiments, les installations et les équipements fixes.'),
(297, 'Entretien et réparations des biens mobiliers', '6242', 'Ce compte enregistre les frais liés à l''entretien et aux réparations des biens mobiliers de l''entreprise, tels que les équipements, les machines et les véhicules.'),
(297, 'Maintenance', '6243', 'Ce compte enregistre les frais liés à la maintenance préventive et corrective des équipements et des installations de l''entreprise, visant à assurer leur bon fonctionnement et leur durabilité.'),
(297, 'Charges de démantèlement et remise en état', '6244', 'Ce compte enregistre les charges liées au démantèlement et à la remise en état des installations ou des équipements de l''entreprise, généralement en fin de vie utile.'),
(297, 'Autres entretiens et réparations', '6248', 'Ce compte enregistre les frais liés à d''autres types d''entretiens et de réparations qui ne rentrent pas dans les catégories précédentes.'),

(298, 'Assurances multirisques', '6251', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour une couverture multirisques, qui protège contre plusieurs types de risques, tels que les dommages matériels, les pertes financières et la responsabilité civile.'),
(298, 'Assurances matérielles de transport', '6252', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les biens matériels lors de leur transport, que ce soit par voie terrestre, maritime, aérienne ou ferroviaire.'),
(298, 'Assurances risques d''exploitation', '6253', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les risques spécifiques liés à son activité commerciale ou industrielle, tels que les pertes d''exploitation, les dommages causés par des tiers ou les interruptions d''activité.'),
(298, 'Assurances responsabilité du producteur', '6254', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir sa responsabilité en tant que producteur, notamment en cas de dommages ou de préjudices causés par ses produits.'),
(298, 'Assurances insolvabilité clients', '6255', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour se prémunir contre les risques d''insolvabilité de ses clients, garantissant ainsi le paiement des créances impayées.'),
(298, 'Assurances transport sur ventes', '6257', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les risques liés au transport des marchandises vendues à ses clients, assurant ainsi leur livraison et leur intégrité.'),
(298, 'Autres primes d''assurances', '6258', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour d''autres types de couvertures qui ne rentrent pas dans les catégories précédentes.'),

(299, 'Études et recherches', '6261', 'Ce compte enregistre les frais liés aux études et aux recherches menées par l''entreprise pour développer de nouveaux produits, améliorer les processus existants ou explorer de nouvelles opportunités commerciales.'),
(299, 'Documentation générale', '6265', 'Ce compte enregistre les frais liés à la documentation générale utilisée par l''entreprise, tels que les abonnements à des revues professionnelles, les achats de livres ou les frais d''accès à des bases de données.'),
(299, 'Documentation technique', '6266', 'Ce compte enregistre les frais liés à la documentation technique utilisée par l''entreprise, tels que les manuels d''utilisation, les spécifications techniques ou les plans de construction.'),

(300, 'Annonces, insertions', '6271', 'Ce compte enregistre les frais liés à la publication d''annonces et d''insertions publicitaires dans les médias, tels que les journaux, les magazines ou les sites web.'),
(300, 'Catalogues, imprimés publicitaires', '6272', 'Ce compte enregistre les frais liés à la création et à l''impression de catalogues et d''autres supports publicitaires utilisés par l''entreprise pour promouvoir ses produits ou ses services.'),
(300, 'Échantillons', '6273', 'Ce compte enregistre les frais liés à la distribution d''échantillons gratuits de produits par l''entreprise, dans le but de promouvoir leur vente ou leur utilisation.'),
(300, 'Foires et expositions', '6274', 'Ce compte enregistre les frais liés à la participation de l''entreprise à des foires commerciales, des salons professionnels ou des expositions, pour présenter ses produits ou ses services.'),
(300, 'Publications', '6275', 'Ce compte enregistre les frais liés à la publication de publications d''entreprise, telles que des magazines d''entreprise ou des bulletins d''information, destinées à informer et à communiquer avec les clients, les employés ou d''autres parties prenantes.'),
(300, 'Cadeaux à la clientèle', '6276', 'Ce compte enregistre les frais liés à l''achat de cadeaux destinés aux clients ou aux partenaires commerciaux de l''entreprise, dans le cadre d''actions de fidélisation ou de relations publiques.'),
(300, 'Frais de colloques, séminaires, conférences', '6277', 'Ce compte enregistre les frais liés à la participation de l''entreprise à des colloques, des séminaires ou des conférences, que ce soit en tant qu''organisateur ou en tant que participant.'),
(300, 'Autres charges de publicité et relations publiques', '6278', 'Ce compte enregistre les autres frais liés à la publicité et aux relations publiques qui ne rentrent pas dans les catégories précédentes.'),

(301, 'Frais de téléphone', '6281', 'Ce compte enregistre les frais liés aux communications téléphoniques effectuées par l''entreprise, que ce soit pour les appels locaux, nationaux ou internationaux.'),
(301, 'Frais de télex', '6282', 'Ce compte enregistre les frais liés à l''utilisation du télex, un système de communication par écrit utilisant des terminaux spécifiques et des lignes téléphoniques.'),
(301, 'Frais de télécopie', '6283', 'Ce compte enregistre les frais liés à l''utilisation de la télécopie, un système de transmission de documents à distance par voie téléphonique.'),
(301, 'Autres frais de télécommunications', '6288', 'Ce compte enregistre les autres frais liés aux communications électroniques ou téléphoniques qui ne rentrent pas dans les catégories précédentes.'),

(302, 'Frais sur titres (vente, garde)', '6311', 'Ce compte enregistre les frais liés à la détention et à la gestion des titres financiers par l''entreprise, tels que les frais de courtage, de conservation ou de gestion de portefeuille.'),
(302, 'Frais sur effets', '6312', 'Ce compte enregistre les frais liés à la gestion et au traitement des effets de commerce, tels que les frais de remise, d''encaissement ou de gestion de chèques et de traites.'),
(302, 'Location de coffres', '6313', 'Ce compte enregistre les frais liés à la location de coffres-forts dans les banques ou autres établissements financiers, utilisés pour la conservation de valeurs ou de documents importants.'),
(302, 'Commissions d''affacturage', '6314', 'Ce compte enregistre les commissions payées par l''entreprise à une société d''affacturage pour la gestion de ses créances clients, notamment l''assurance-crédit, le recouvrement et le financement.'),
(302, 'Commissions sur cartes de crédit', '6315', 'Ce compte enregistre les commissions payées par l''entreprise aux émetteurs de cartes de crédit pour l''utilisation de leurs services de paiement électronique par carte.'),
(302, 'Frais d''émission d''emprunts', '6316', 'Ce compte enregistre les frais liés à l''émission d''emprunts par l''entreprise, tels que les frais d''émission, de placement ou de garantie associés à l''émission de titres de dette.'),
(302, 'Frais sur instruments monnaie électronique', '6317', 'Ce compte enregistre les frais liés à l''utilisation d''instruments de monnaie électronique, tels que les cartes prépayées ou les portefeuilles électroniques, pour effectuer des transactions financières.'),
(302, 'Autres frais bancaires', '6318', 'Ce compte enregistre les autres frais bancaires payés par l''entreprise qui ne rentrent pas dans les catégories précédentes.'),

(303, 'Commissions et courtages sur ventes', '6322', 'Ce compte enregistre les commissions et les courtages payés par l''entreprise à des intermédiaires ou des agents pour la vente de ses produits ou services.'),
(303, 'Honoraires des professions règlementées', '6324', 'Ce compte enregistre les honoraires payés par l''entreprise à des professions réglementées, telles que les avocats, les experts-comptables ou les notaires, pour des services professionnels rendus.'),
(303, 'Frais d''actes et de contentieux', '6325', 'Ce compte enregistre les frais liés à la rédaction d''actes juridiques et aux procédures contentieuses, tels que les frais de notaire, les frais d''huissier ou les honoraires d''avocat.'),
(303, 'Rémunérations d''affacturage', '6326', 'Ce compte enregistre les rémunérations payées par l''entreprise à une société d''affacturage pour la gestion de ses créances clients, notamment l''assurance-crédit, le recouvrement et le financement.'),
(303, 'Rémunérations des autres prestataires de services', '6327', 'Ce compte enregistre les rémunérations payées par l''entreprise à d''autres prestataires de services pour des services rendus, tels que les consultants, les agences de communication ou les prestataires informatiques.'),
(303, 'Divers frais', '6328', 'Ce compte enregistre les autres frais de services qui ne rentrent pas dans les catégories précédentes, tels que les frais de nettoyage, de gardiennage ou de maintenance.'),

(305, 'Redevances pour brevets, licences', '6342', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de brevets ou de licences détenus par des tiers, permettant l''exploitation de technologies ou de propriétés intellectuelles protégées.'),
(305, 'Redevances pour logiciels', '6343', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de logiciels détenus par des tiers, permettant l''exploitation de programmes informatiques ou d''applications spécifiques.'),
(305, 'Redevances pour marques', '6344', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de marques détenues par des tiers, permettant l''utilisation de marques déposées ou de noms commerciaux protégés.'),
(305, 'Redevances pour site internet', '6345', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de sites internet ou de contenus en ligne détenus par des tiers, permettant l''accès à des plateformes web ou à des contenus spécifiques.'),
(305, 'Redevances pour concessions, droits et valeurs similaires', '6346', 'Ce compte enregistre les redevances payées par l''entreprise pour l''obtention de concessions, de droits ou de valeurs similaires détenus par des tiers, permettant l''utilisation de biens ou de services spécifiques.'),

(306, 'Cotisations', '6351', 'Ce compte enregistre les cotisations payées par l''entreprise à des organismes, associations ou syndicats, pour adhérer à des groupements professionnels, des chambres de commerce ou des organisations sectorielles.'),
(306, 'Concours divers', '6358', 'Ce compte enregistre les frais liés à la participation de l''entreprise à différents concours, compétitions ou prix, ainsi que les dons versés à des fondations ou des œuvres caritatives dans le cadre de concours ou d''événements.'),

(307, 'Personnel intérimaire', '6371', 'Ce compte enregistre les frais liés à l''emploi de personnel intérimaire ou temporaire, recruté par une agence d''intérim pour répondre à des besoins ponctuels ou temporaires de l''entreprise.'),
(307, 'Personnel détaché ou prêté à l''entité', '6372', 'Ce compte enregistre les frais liés à l''emploi de personnel détaché ou prêté à l''entreprise par une autre entité, telle qu''une société mère, une filiale ou une entreprise partenaire, pour une période déterminée.'),

(308, 'Frais de recrutement du personnel', '6381', 'Ce compte enregistre les frais liés au recrutement de personnel par l''entreprise, tels que les honoraires d''agences de recrutement, les frais de publicité pour les offres d''emploi ou les frais de sélection des candidats.'),
(308, 'Frais de déménagement', '6382', 'Ce compte enregistre les frais liés au déménagement de personnel, notamment les frais de transport, d''emballage, de stockage ou de réinstallation associés à un changement de résidence pour les besoins professionnels.'),
(308, 'Réceptions', '6383', 'Ce compte enregistre les frais liés à l''organisation de réceptions ou d''événements professionnels par l''entreprise, tels que les frais de restauration, de location de salle, d''animation ou de matériel événementiel.'),
(308, 'Missions', '6384', 'Ce compte enregistre les frais liés aux missions professionnelles effectuées par le personnel de l''entreprise, tels que les frais de déplacement, d''hébergement, de restauration ou les frais professionnels engagés lors de déplacements professionnels.'),
(308, 'Charges de copropriété', '6385', 'Ce compte enregistre les charges liées à la copropriété des locaux occupés par l''entreprise, telles que les charges de gestion, d''entretien, d''assurance ou de travaux communs.'),
(308, 'Charges externes diverses', '6388', 'Ce compte enregistre les autres charges externes supportées par l''entreprise qui ne rentrent pas dans les catégories précédentes, telles que les honoraires de consultants, les frais de formation externe ou les frais de communication externes.'),

(309, 'Impôts fonciers et taxes annexes', '6411', 'Ce compte enregistre les impôts fonciers et les taxes associées payés par l''entreprise sur ses biens immobiliers ou ses terrains, ainsi que les taxes annexes liées à la propriété immobilière.'),
(309, 'Patentes, licences et taxes annexes', '6412', 'Ce compte enregistre les patentes, licences et autres taxes similaires payées par l''entreprise pour l''exercice de ses activités commerciales ou professionnelles, ainsi que les taxes annexes associées.'),
(309, 'Taxes sur appointements et salaires', '6413', 'Ce compte enregistre les taxes ou cotisations sociales prélevées sur les salaires et les rémunérations versés par l''entreprise à ses employés, notamment les cotisations sociales patronales et salariales.'),
(309, 'Taxes d''apprentissage', '6414', 'Ce compte enregistre les taxes d''apprentissage payées par l''entreprise pour financer la formation des apprentis, conformément à la réglementation en vigueur sur l''apprentissage.'),
(309, 'Formation professionnelle continue', '6415', 'Ce compte enregistre les dépenses liées à la formation professionnelle continue des employés de l''entreprise, telles que les frais de formation, les frais pédagogiques ou les frais de déplacement associés à la formation.'),
(309, 'Autres impôts et taxes directs', '6418', 'Ce compte enregistre les autres impôts et taxes directs payés par l''entreprise qui ne rentrent pas dans les catégories précédentes, tels que l''impôt sur les sociétés, l''impôt sur le revenu des entreprises ou d''autres taxes similaires.'),

(311, 'Droits de mutation', '6461', 'Ce compte enregistre les droits de mutation payés par l''entreprise lors de l''acquisition ou du transfert de biens immobiliers ou de droits immobiliers, tels que les droits de mutation à titre onéreux ou les droits de mutation à titre gratuit.'),
(311, 'Droits de timbre', '6462', 'Ce compte enregistre les droits de timbre payés par l''entreprise sur certains actes ou documents légaux, tels que les actes notariés, les contrats ou les titres de propriété, conformément à la législation en vigueur sur les droits de timbre.'),
(311, 'Taxes sur les véhicules de sociétés', '6463', 'Ce compte enregistre les taxes annuelles payées par l''entreprise sur les véhicules de sociétés utilisés dans le cadre de son activité professionnelle, conformément à la législation en vigueur sur la fiscalité des véhicules de société.'),
(311, 'Vignettes', '6464', 'Ce compte enregistre les frais liés à l''achat de vignettes ou de certificats d''immatriculation pour les véhicules utilisés par l''entreprise, permettant leur circulation sur les routes ou autoroutes soumises à péage.'),
(311, 'Autres droits', '6468', 'Ce compte enregistre les autres droits ou taxes spécifiques payés par l''entreprise qui ne rentrent pas dans les catégories précédentes, tels que les droits de succession, les droits de douane ou d''autres droits similaires.'),

(312, 'Pénalités d''assiette, impôts directs', '6471', 'Ce compte enregistre les pénalités d''assiette appliquées par l''administration fiscale sur les impôts directs, telles que l''impôt sur les sociétés, l''impôt sur le revenu des entreprises ou d''autres impôts similaires.'),
(312, 'Pénalités d''assiette, impôts indirects', '6472', 'Ce compte enregistre les pénalités d''assiette appliquées par l''administration fiscale sur les impôts indirects, tels que la TVA, la taxe sur les produits pétroliers ou d''autres taxes indirectes.'),
(312, 'Pénalités de recouvrement, impôts directs', '6473', 'Ce compte enregistre les pénalités de recouvrement appliquées par l''administration fiscale sur les impôts directs en cas de retard ou de non-paiement, conformément à la législation fiscale en vigueur.'),
(312, 'Pénalités de recouvrement, impôts indirects', '6474', 'Ce compte enregistre les pénalités de recouvrement appliquées par l''administration fiscale sur les impôts indirects en cas de retard ou de non-paiement, conformément à la législation fiscale en vigueur.'),
(312, 'Autres amendes pénales et fiscales', '6478', 'Ce compte enregistre les autres amendes pénales et fiscales payées par l''entreprise qui ne rentrent pas dans les catégories précédentes, telles que les amendes pour non-respect des obligations légales ou réglementaires.'),

(314, 'Clients', '6511', 'Ce compte enregistre les montants dus par les clients à l''entreprise pour des biens vendus ou des services rendus, mais pas encore payés. Il représente les créances commerciales de l''entreprise sur ses clients.'),
(314, 'Autres débiteurs', '6515', 'Ce compte enregistre les autres montants dus à l''entreprise par des tiers autres que les clients, tels que les avances versées, les créances diverses ou les autres débiteurs non classés dans les catégories précédentes.'),

(315, 'Quote-part transférée de bénéfices (comptabilité du gérant)', '6521', 'Ce compte enregistre la quote-part des bénéfices de l''entreprise transférée à la comptabilité du gérant, généralement dans le cadre d''une société de personnes où le gérant détient une part des bénéfices.'),
(315, 'Pertes imputées par transfert (comptabilité des associés non-gérants)', '6525', 'Ce compte enregistre les pertes imputées par transfert à la comptabilité des associés non-gérants, généralement dans le cadre d''une société de personnes où les associés non-gérants supportent une part des pertes de l''entreprise.'),

(316, 'Immobilisations incorporelles', '6541', 'Ce compte enregistre les immobilisations incorporelles de l''entreprise, telles que les brevets, les marques, les logiciels informatiques ou les droits d''exploitation.'),
(316, 'Immobilisations corporelles', '6542', 'Ce compte enregistre les immobilisations corporelles de l''entreprise, telles que les terrains, les bâtiments, les machines, les équipements ou les véhicules utilisés dans le cadre de l''activité professionnelle.'),

(319, 'Indemnités de fonction et autres rémunérations d''administrateurs', '6581', 'Ce compte enregistre les indemnités de fonction et autres rémunérations versées aux administrateurs de l''entreprise pour leurs services rendus. Il peut également inclure d''autres types de rémunérations spécifiques aux administrateurs.'),
(319, 'Dons', '6582', 'Ce compte enregistre les dons faits par l''entreprise à des organismes de charité ou à des causes sociales. Les dons peuvent être en nature ou en espèces et sont généralement destinés à soutenir des initiatives philanthropiques.'),
(319, 'Mécénat', '6583', 'Ce compte enregistre les dépenses liées au mécénat culturel ou artistique de l''entreprise. Le mécénat implique généralement le soutien financier ou en nature à des projets culturels, artistiques ou patrimoniaux, sans attente de contrepartie commerciale.'),
(319, 'Autres charges diverses', '6588', 'Ce compte enregistre les autres charges diverses qui ne rentrent pas dans les catégories précédentes. Il peut inclure divers frais et dépenses qui ne sont pas directement liés aux activités opérationnelles de l''entreprise.'),

(320, 'sur risques à court terme', '6591', 'Ce compte enregistre les charges pour dépréciations et provisions liées aux risques à court terme encourus par l''entreprise. Ces provisions sont constituées pour couvrir les pertes potentielles résultant de risques spécifiques survenant à court terme.'),
(320, 'sur stocks', '6592', 'Ce compte enregistre les charges pour dépréciations et provisions liées aux stocks de l''entreprise. Ces provisions sont constituées pour couvrir les pertes potentielles résultant de la dépréciation ou de l''obsolescence des stocks.'),
(320, 'sur créances', '6594', 'Ce compte enregistre les charges pour dépréciations et provisions liées aux créances de l''entreprise. Ces provisions sont constituées pour couvrir les pertes potentielles résultant du non-paiement ou du paiement partiel des créances par les débiteurs.'),
(320, 'Autres charges pour dépréciations et provisions pour risques à court terme', '6598', 'Ce compte enregistre les autres charges pour dépréciations et provisions liées aux risques à court terme qui ne rentrent pas dans les catégories précédentes. Il peut inclure des provisions pour d''autres types de risques spécifiques à court terme.'),

(321, 'Appointements salaires et commissions', '6611', 'Ce compte enregistre les appointements, salaires et commissions versés aux employés de l''entreprise pour leur travail. Il inclut les rémunérations de base, les commissions basées sur les ventes ou les performances, ainsi que d''autres paiements salariaux.'),
(321, 'Primes et gratifications', '6612', 'Ce compte enregistre les primes et gratifications versées aux employés de l''entreprise en récompense de leur performance exceptionnelle, de leur ancienneté ou pour d''autres raisons spécifiques.'),
(321, 'Congés payés', '6613', 'Ce compte enregistre les charges liées aux congés payés accordés aux employés de l''entreprise. Il inclut les salaires versés pendant les périodes de congé annuel ou de congé de maladie, ainsi que les cotisations sociales associées.'),
(321, 'Indemnités de préavis, de licenciement et de recherche d''embauche', '6614', 'Ce compte enregistre les indemnités versées aux employés de l''entreprise dans le cadre de préavis de licenciement, de licenciement ou de recherche d''emploi. Ces indemnités peuvent être dues à la fin d''un contrat de travail ou à d''autres circonstances.'),
(321, 'Indemnités de maladie versées aux travailleurs', '6615', 'Ce compte enregistre les indemnités de maladie versées aux travailleurs de l''entreprise en cas de congé de maladie. Ces indemnités sont destinées à compenser la perte de salaire due à l''incapacité de travailler en raison de la maladie.'),
(321, 'Supplément familial', '6616', 'Ce compte enregistre les suppléments familiaux versés aux employés de l''entreprise en fonction de leur situation familiale. Il peut s''agir de prestations sociales destinées à soutenir les familles des employés, telles que les allocations familiales ou les prestations pour enfants à charge.'),
(321, 'Avantages en nature', '6617', 'Ce compte enregistre la valeur des avantages en nature fournis aux employés de l''entreprise en plus de leur salaire en espèces. Les avantages en nature peuvent inclure le logement, la voiture de fonction, les repas ou d''autres avantages non monétaires.'),
(321, 'Autres rémunérations directes', '6618', 'Ce compte enregistre les autres rémunérations directes versées aux employés de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des paiements spécifiques liés à des conditions de travail particulières ou à des avantages sociaux spécifiques.'),

(322, 'Appointements salaires et commissions', '6621', 'Ce compte enregistre les appointements, salaires et commissions versés aux employés de l''entreprise pour leur travail. Il inclut les rémunérations de base, les commissions basées sur les ventes ou les performances, ainsi que d''autres paiements salariaux.'),
(322, 'Primes et gratifications', '6622', 'Ce compte enregistre les primes et gratifications versées aux employés de l''entreprise en récompense de leur performance exceptionnelle, de leur ancienneté ou pour d''autres raisons spécifiques.'),
(322, 'Congés payés', '6623', 'Ce compte enregistre les charges liées aux congés payés accordés aux employés de l''entreprise. Il inclut les salaires versés pendant les périodes de congé annuel ou de congé de maladie, ainsi que les cotisations sociales associées.'),
(322, 'Indemnités de préavis, de licenciement et de recherche d''embauche', '6624', 'Ce compte enregistre les indemnités versées aux employés de l''entreprise dans le cadre de préavis de licenciement, de licenciement ou de recherche d''emploi. Ces indemnités peuvent être dues à la fin d''un contrat de travail ou à d''autres circonstances.'),
(322, 'Indemnités de maladie versées aux travailleurs', '6625', 'Ce compte enregistre les indemnités de maladie versées aux travailleurs de l''entreprise en cas de congé de maladie. Ces indemnités sont destinées à compenser la perte de salaire due à l''incapacité de travailler en raison de la maladie.'),
(322, 'Supplément familial', '6626', 'Ce compte enregistre les suppléments familiaux versés aux employés de l''entreprise en fonction de leur situation familiale. Il peut s''agir de prestations sociales destinées à soutenir les familles des employés, telles que les allocations familiales ou les prestations pour enfants à charge.'),
(322, 'Avantages en nature', '6627', 'Ce compte enregistre la valeur des avantages en nature fournis aux employés de l''entreprise en plus de leur salaire en espèces. Les avantages en nature peuvent inclure le logement, la voiture de fonction, les repas ou d''autres avantages non monétaires.'),
(322, 'Autres rémunérations directes', '6628', 'Ce compte enregistre les autres rémunérations directes versées aux employés de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des paiements spécifiques liés à des conditions de travail particulières ou à des avantages sociaux spécifiques.'),

(323, 'Indemnités de logement', '6631', 'Ce compte enregistre les indemnités de logement versées aux employés de l''entreprise pour compenser les frais liés au logement, tels que le loyer ou les frais de logement temporaires.'),
(323, 'Indemnités de représentation', '6632', 'Ce compte enregistre les indemnités de représentation versées aux employés de l''entreprise pour couvrir les frais liés à la représentation de l''entreprise lors d''événements officiels, de réunions avec des clients ou d''autres occasions professionnelles.'),
(323, 'Indemnités d''expatriation', '6633', 'Ce compte enregistre les indemnités d''expatriation versées aux employés de l''entreprise qui travaillent à l''étranger. Ces indemnités sont destinées à compenser les coûts supplémentaires associés à la vie à l''étranger, tels que le logement, les déplacements ou les frais de subsistance.'),
(323, 'Indemnités de transport', '6634', 'Ce compte enregistre les indemnités de transport versées aux employés de l''entreprise pour couvrir les frais de déplacement entre leur domicile et leur lieu de travail, ainsi que pour d''autres déplacements professionnels liés à leur emploi.'),
(323, 'Autres indemnités et avantages divers', '6638', 'Ce compte enregistre les autres indemnités et avantages divers versés aux employés de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des avantages tels que les remboursements de frais médicaux, les indemnités pour uniformes ou d''autres prestations spécifiques.'),

(324, 'Charges sociales sur rémunération du personnel national', '6641', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la rémunération versée à son personnel national. Ces charges sociales peuvent inclure les cotisations de sécurité sociale, les contributions aux régimes de retraite et d''assurance chômage, ainsi que d''autres charges sociales obligatoires.'),
(324, 'Charges sociales sur rémunération du personnel non national', '6642', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la rémunération versée à son personnel non national, tel que les expatriés ou les travailleurs détachés. Ces charges sociales peuvent inclure les cotisations de sécurité sociale, les contributions aux régimes de retraite et d''assurance chômage, ainsi que d''autres charges sociales obligatoires.'),

(325, 'Rémunération du travail de l''exploitant', '6661', 'Ce compte enregistre la rémunération versée à l''exploitant ou au dirigeant de l''entreprise pour son travail. Il peut s''agir de salaires, de dividendes ou d''autres formes de rémunération.'),
(325, 'Charges sociales', '6662', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la rémunération versée à l''exploitant ou au dirigeant de l''entreprise. Ces charges sociales peuvent inclure les cotisations de sécurité sociale, les contributions aux régimes de retraite et d''assurance chômage, ainsi que d''autres charges sociales obligatoires.'),

(326, 'Personnel intérimaire', '6671', 'Ce compte enregistre les coûts liés au personnel intérimaire employé par l''entreprise pour répondre à des besoins temporaires en main-d''œuvre. Ces coûts peuvent inclure les salaires, les charges sociales et les honoraires versés à l''agence d''intérim.'),
(326, 'Personnel détaché ou prêté à l''entité', '6672', 'Ce compte enregistre les coûts liés au personnel détaché ou prêté à l''entité par d''autres entreprises ou agences de travail temporaire. Ces coûts peuvent inclure les salaires, les charges sociales et les frais de mise à disposition.'),

(327, 'Versements aux syndicats et comités d''entreprise, d''établissement', '6681', 'Ce compte enregistre les versements effectués par l''entreprise aux syndicats et aux comités d''entreprise ou d''établissement. Ces versements peuvent être destinés à financer les activités syndicales, les œuvres sociales ou les actions des comités.'),
(327, 'Versements aux comités d''hygiène et de sécurité', '6682', 'Ce compte enregistre les versements effectués par l''entreprise aux comités d''hygiène et de sécurité. Ces versements peuvent être destinés à financer les activités de prévention des risques professionnels et à assurer la santé et la sécurité des travailleurs.'),
(327, 'Versements et contributions aux autres œuvres sociales', '6683', 'Ce compte enregistre les versements et contributions effectués par l''entreprise à d''autres œuvres sociales ou associations caritatives. Ces versements peuvent être destinés à soutenir des initiatives locales ou des projets sociaux spécifiques.'),
(327, 'Médecine du travail et pharmacie', '6684', 'Ce compte enregistre les charges liées à la médecine du travail et à la pharmacie pour les employés de l''entreprise. Il inclut les frais médicaux, les examens de santé, les médicaments et les services de santé au travail.'),
(327, 'Assurances et organismes de santé', '6685', 'Ce compte enregistre les charges liées aux assurances et aux organismes de santé pour les employés de l''entreprise. Il inclut les primes d''assurance maladie, les cotisations aux régimes de prévoyance et les frais médicaux non remboursés par l''assurance.'),
(327, 'Assurances retraite et fonds de pension', '6686', 'Ce compte enregistre les charges liées aux assurances retraite et aux fonds de pension pour les employés de l''entreprise. Il inclut les cotisations aux régimes de retraite complémentaire, les contributions aux plans d''épargne retraite et les frais de gestion des fonds de pension.'),
(327, 'Majorations et pénalités sociales', '6687', 'Ce compte enregistre les majorations et pénalités sociales imposées à l''entreprise en cas de non-respect des obligations sociales. Ces majorations peuvent être dues à des retards de paiement, des erreurs de déclaration ou d''autres infractions.'),
(327, 'Charges sociales diverses', '6688', 'Ce compte enregistre les autres charges sociales de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des charges telles que les cotisations de formation professionnelle, les contributions au financement de la sécurité sociale ou d''autres frais sociaux spécifiques.'),

(328, 'Emprunts obligataires', '6711', 'Ce compte enregistre les emprunts contractés par l''entreprise sous forme d''obligations. Les obligations sont des titres de créance émis par l''entreprise et vendus sur les marchés financiers. Les fonds ainsi obtenus sont généralement utilisés pour financer des investissements ou des projets spécifiques.'),
(328, 'Emprunts auprès des établissements de crédit', '6712', 'Ce compte enregistre les emprunts contractés par l''entreprise auprès des établissements de crédit tels que les banques et les institutions financières. Ces emprunts peuvent prendre la forme de prêts à court terme, de lignes de crédit renouvelables ou de facilités de crédit à long terme.'),
(328, 'Dettes liées à des participations', '6713', 'Ce compte enregistre les dettes contractées par l''entreprise en relation avec des participations dans d''autres entreprises ou entités. Ces dettes peuvent résulter de l''acquisition de participations minoritaires ou majoritaires dans d''autres entreprises, et sont généralement liées à des opérations de fusion-acquisition ou de développement stratégique.'),
(328, 'Primes de remboursements des obligations', '6714', 'Ce compte enregistre les primes de remboursement versées par l''entreprise lors du remboursement anticipé d''obligations. Les primes de remboursement sont des montants supplémentaires versés aux détenteurs d''obligations en cas de remboursement anticipé pour compenser la perte d''intérêts futurs.'),

(329, 'Intérêts dans loyers de location acquisition/crédit-bail immobilier', '6722', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de location acquisition ou crédit-bail immobilier qu''elle accorde à ses clients. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs immobiliers par l''entreprise.'),
(329, 'Intérêts dans loyers de location acquisition/crédit-bail mobilier', '6723', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de location acquisition ou crédit-bail mobilier qu''elle accorde à ses clients. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs mobiliers par l''entreprise.'),
(329, 'Intérêts dans loyers de location acquisition/location-vente', '6724', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de location acquisition ou location-vente qu''elle accorde à ses clients. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs par l''entreprise dans le cadre de contrats de location ou de location-vente.'),
(329, 'Intérêts dans loyers des autres locations acquisition', '6728', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de locations acquisition autres que celles spécifiées dans les comptes précédents. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs par l''entreprise dans le cadre de contrats de location.'),

(331, 'Avances reçues et dépôts créditeurs', '6741', 'Ce compte enregistre les avances reçues par l''entreprise de la part de tiers ainsi que les dépôts créditeurs. Les avances reçues sont des paiements anticipés effectués par les clients ou d''autres parties prenantes, tandis que les dépôts créditeurs représentent des fonds déposés auprès de l''entreprise par des tiers.'),
(331, 'Comptes courants bloqués', '6742', 'Ce compte enregistre les fonds déposés dans des comptes courants bloqués, c''est-à-dire des comptes où les fonds sont temporairement inaccessibles ou soumis à des restrictions de retrait.'),
(331, 'Intérêts sur obligations cautionnées', '6743', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les obligations cautionnées qu''elle a émises. Les obligations cautionnées sont des titres de créance assortis d''une garantie de remboursement fournie par un tiers, généralement une institution financière ou une compagnie d''assurance.'),
(331, 'Intérêts sur dettes commerciales', '6744', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les dettes commerciales qu''elle a contractées. Les dettes commerciales comprennent généralement les dettes fournisseurs et les dettes résultant d''achats à crédit.'),
(331, 'Intérêts bancaires et sur opérations de financement (escompte)', '6745', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les opérations de financement, y compris les intérêts bancaires et les intérêts résultant d''opérations d''escompte de créances commerciales.'),
(331, 'Intérêts sur dettes diverses', '6748', 'Ce compte enregistre les intérêts perçus par l''entreprise sur des dettes autres que celles spécifiées dans les comptes précédents. Il peut s''agir par exemple d''intérêts sur des prêts inter-entreprises ou des prêts à des tiers.'),

(334, 'Pertes sur cessions de titre de placement', '6771', 'Ce compte enregistre les pertes subies par l''entreprise lors de la cession de titres de placement. Ces pertes résultent généralement de la différence entre le prix de vente des titres et leur coût d''acquisition ou leur valeur comptable.'),
(334, 'Malis provenant d''attribution gratuite d''actions au personnel salarié et aux dirigeants', '6772', 'Ce compte enregistre les malis résultant de l''attribution gratuite d''actions au personnel salarié et aux dirigeants de l''entreprise. Ces malis correspondent à la différence entre la valeur des actions attribuées gratuitement et leur valeur comptable.'),

(335, 'sur rentes viagères', '6781', 'Ce compte enregistre les produits financiers perçus par l''entreprise sur les rentes viagères qu''elle a accordées. Les rentes viagères sont des paiements réguliers effectués par l''entreprise à un bénéficiaire pendant toute sa vie en échange d''un capital initial.'),
(335, 'sur opérations financières', '6782', 'Ce compte enregistre les produits financiers perçus par l''entreprise sur des opérations financières autres que celles spécifiées dans les comptes précédents. Il peut s''agir par exemple de produits sur des opérations de placement ou de produits sur des opérations de couverture de risques.'),
(335, 'sur instruments de trésorerie', '6784', 'Ce compte enregistre les produits financiers perçus par l''entreprise sur des instruments de trésorerie, tels que les comptes bancaires, les certificats de dépôt ou les billets de trésorerie.'),

(336, 'sur risques financiers', '6791', 'Ce compte enregistre les charges liées aux dépréciations et provisions pour risques financiers à court terme encourus par l''entreprise. Ces charges sont constituées pour couvrir les pertes potentielles résultant de risques financiers tels que les fluctuations des taux de change, des taux d''intérêt ou des prix des matières premières.'),
(336, 'sur titres de placement', '6795', 'Ce compte enregistre les charges liées aux dépréciations et provisions pour risques à court terme sur les titres de placement détenus par l''entreprise. Ces charges sont constituées pour couvrir les pertes potentielles résultant de la dépréciation de la valeur des titres de placement.'),
(336, 'Autres charges pour dépréciations et provisions pour risques à court terme financières', '6798', 'Ce compte enregistre d''autres charges liées aux dépréciations et provisions pour risques financiers à court terme qui ne sont pas spécifiquement couvertes par les comptes précédents. Ces charges sont constituées pour couvrir les pertes potentielles résultant de divers risques financiers.'),

(337, 'Dotations aux amortissements des immobilisations incorporelles', '6812', 'Ce compte enregistre les dotations aux amortissements comptabilisées par l''entreprise pour les immobilisations incorporelles, telles que les brevets, les licences et les logiciels. Les dotations aux amortissements représentent la répartition du coût d''acquisition ou de production de ces immobilisations sur leur durée d''utilisation prévue.'),
(337, 'Dotations aux amortissements des immobilisations corporelles', '6813', 'Ce compte enregistre les dotations aux amortissements comptabilisées par l''entreprise pour les immobilisations corporelles, telles que les bâtiments, les machines et le matériel. Les dotations aux amortissements représentent la répartition du coût d''acquisition ou de production de ces immobilisations sur leur durée d''utilisation prévue.'),

(338, 'Dotations aux provisions pour risques et charges', '6911', 'Ce compte enregistre les dotations aux provisions comptabilisées par l''entreprise pour couvrir les risques et charges identifiés mais non encore réalisés à la date de clôture de l''exercice financier. Les dotations aux provisions sont constituées pour anticiper les pertes probables ou les charges futures incertaines.'),
(338, 'Dotations aux dépréciations des immobilisations incorporelles', '6913', 'Ce compte enregistre les dotations aux dépréciations comptabilisées par l''entreprise pour les immobilisations incorporelles, telles que les brevets, les licences et les logiciels. Les dotations aux dépréciations sont constituées lorsque la valeur recouvrable d''une immobilisation incorporelle est inférieure à sa valeur nette comptable.'),
(338, 'Dotations aux dépréciations des immobilisations corporelles', '6914', 'Ce compte enregistre les dotations aux dépréciations comptabilisées par l''entreprise pour les immobilisations corporelles, telles que les bâtiments, les machines et le matériel. Les dotations aux dépréciations sont constituées lorsque la valeur recouvrable d''une immobilisation corporelle est inférieure à sa valeur nette comptable.'),

(339, 'Dotations aux provisions pour risques et charges', '6971', 'Ce compte enregistre les dotations aux provisions comptabilisées par l''entreprise pour couvrir les risques et charges identifiés mais non encore réalisés à la date de clôture de l''exercice financier. Les dotations aux provisions sont constituées pour anticiper les pertes probables ou les charges futures incertaines.'),
(339, 'Dotations aux dépréciations des immobilisations financières', '6972', 'Ce compte enregistre les dotations aux dépréciations comptabilisées par l''entreprise pour les immobilisations financières, telles que les participations dans d''autres sociétés ou les prêts accordés à des tiers. Les dotations aux dépréciations sont constituées lorsque la valeur recouvrable d''une immobilisation financière est inférieure à sa valeur nette comptable.'),

(340, 'dans la Région (7)', '7011', 'Ce compte enregistre les ventes effectuées dans la région spécifiée. Il est utilisé pour suivre les revenus générés par les ventes réalisées dans cette région.'),
(340, 'hors la Région (7)', '7012', 'Ce compte enregistre les ventes effectuées en dehors de la région spécifiée. Il est utilisé pour suivre les revenus générés par les ventes réalisées en dehors de cette région.'),
(340, 'Aux entités du groupe dans la Région', '7013', 'Ce compte enregistre les ventes réalisées dans la région spécifiée aux entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les revenus générés par les ventes internes au groupe dans cette région.'),
(340, 'Aux entités du groupe hors région', '7014', 'Ce compte enregistre les ventes réalisées en dehors de la région spécifiée aux entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les revenus générés par les ventes internes au groupe en dehors de cette région.'),
(340, 'Sur internet', '7015', 'Ce compte enregistre les ventes réalisées via des canaux de vente sur internet. Il est utilisé pour suivre les revenus générés par les ventes en ligne.'),
(340, 'Rabais, remises, ristournes accordés (non ventilés)', '7019', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur ses ventes, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur les ventes.'),

(341, 'dans la Région (7)', '7021', 'Ce compte enregistre les achats effectués dans la région spécifiée. Il est utilisé pour suivre les dépenses réalisées dans cette région.'),
(341, 'hors la Région (7)', '7022', 'Ce compte enregistre les achats effectués en dehors de la région spécifiée. Il est utilisé pour suivre les dépenses réalisées en dehors de cette région.'),
(341, 'aux entités du groupe dans la Région', '7023', 'Ce compte enregistre les achats effectués dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les achats internes au groupe dans cette région.'),
(341, 'Aux entités du groupe hors région', '7024', 'Ce compte enregistre les achats effectués en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les achats internes au groupe en dehors de cette région.'),
(341, 'Sur internet', '7025', 'Ce compte enregistre les achats réalisés via des canaux en ligne. Il est utilisé pour suivre les dépenses effectuées par le biais d''achats en ligne.'),
(341, 'Rabais, remises, ristournes accordes (non ventilés)', '7029', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur ses achats, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur les achats.'),

(342, 'dans la Région (7)', '7031', 'Ce compte enregistre les autres charges liées aux opérations effectuées dans la région spécifiée. Il est utilisé pour suivre les autres dépenses réalisées dans cette région.'),
(342, 'hors la Région (7)', '7032', 'Ce compte enregistre les autres charges liées aux opérations effectuées en dehors de la région spécifiée. Il est utilisé pour suivre les autres dépenses réalisées en dehors de cette région.'),
(342, 'aux entités du groupe dans la Région', '7033', 'Ce compte enregistre les autres charges liées aux opérations effectuées dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres dépenses internes au groupe dans cette région.'),
(342, 'aux entités du groupe hors région', '7034', 'Ce compte enregistre les autres charges liées aux opérations effectuées en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres dépenses internes au groupe en dehors de cette région.'),
(342, 'Sur internet', '7035', 'Ce compte enregistre les autres charges liées aux opérations réalisées via des canaux en ligne. Il est utilisé pour suivre les autres dépenses effectuées par le biais d''opérations en ligne.'),
(342, 'Rabais, remises, ristournes accordés (non ventilés)', '7039', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres charges, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur d''autres charges.'),

(343, 'dans la Région (7)', '7041', 'Ce compte enregistre les autres produits générés dans la région spécifiée. Il est utilisé pour suivre les autres revenus obtenus dans cette région.'),
(343, 'hors la Région (7)', '7042', 'Ce compte enregistre les autres produits générés en dehors de la région spécifiée. Il est utilisé pour suivre les autres revenus obtenus en dehors de cette région.'),
(343, 'aux entités du groupe dans la Région', '7043', 'Ce compte enregistre les autres produits générés dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus internes au groupe dans cette région.'),
(343, 'Aux entités du groupe hors Région', '7044', 'Ce compte enregistre les autres produits générés en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus internes au groupe en dehors de cette région.'),
(343, 'Sur internet', '7045', 'Ce compte enregistre les autres produits générés par le biais d''opérations en ligne. Il est utilisé pour suivre les autres revenus obtenus via des canaux en ligne.'),
(343, 'Rabais, remises, ristournes accordes (non ventilés)', '7049', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres produits, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur d''autres produits.'),

(344, 'dans la Région (7)', '7051', 'Ce compte enregistre les autres charges financières générées dans la région spécifiée. Il est utilisé pour suivre les autres frais financiers supportés dans cette région.'),
(344, 'hors la Région (7)', '7052', 'Ce compte enregistre les autres charges financières générées en dehors de la région spécifiée. Il est utilisé pour suivre les autres frais financiers supportés en dehors de cette région.'),
(344, 'aux entités du groupe dans la Région', '7053', 'Ce compte enregistre les autres charges financières générées dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres frais financiers internes au groupe dans cette région.'),
(344, 'aux entités du groupe hors région', '7054', 'Ce compte enregistre les autres charges financières générées en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres frais financiers internes au groupe en dehors de cette région.'),
(344, 'Sur internet', '7055', 'Ce compte enregistre les autres charges financières générées par le biais d''opérations en ligne. Il est utilisé pour suivre les autres frais financiers supportés via des canaux en ligne.'),
(344, 'Rabais, remises, ristournes accordés (non ventilés)', '7059', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres charges financières, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur d''autres charges financières.'),

(345, 'dans la Région (7)', '7061', 'Ce compte enregistre les autres produits financiers générés dans la région spécifiée. Il est utilisé pour suivre les autres revenus financiers obtenus dans cette région.'),
(345, 'hors la Région (7)', '7062', 'Ce compte enregistre les autres produits financiers générés en dehors de la région spécifiée. Il est utilisé pour suivre les autres revenus financiers obtenus en dehors de cette région.'),
(345, 'aux entités du groupe dans la Région', '7063', 'Ce compte enregistre les autres produits financiers générés dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus financiers internes au groupe dans cette région.'),
(345, 'aux entités du groupe hors Région', '7064', 'Ce compte enregistre les autres produits financiers générés en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus financiers internes au groupe en dehors de cette région.'),
(345, 'Sur internet', '7065', 'Ce compte enregistre les autres produits financiers générés par le biais d''opérations en ligne. Il est utilisé pour suivre les autres revenus financiers obtenus via des canaux en ligne.'),
(345, 'Rabais, remises, ristournes accordés', '7069', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres produits financiers.'),

(346, 'Ports, emballages perdus et autres frais facturés', '7071', 'Ce compte enregistre les frais liés aux ports, aux emballages perdus et à d''autres frais facturés.'),
(346, 'Commissions et courtages (8)', '7072', 'Ce compte enregistre les commissions et courtages facturés. Il est utilisé pour suivre les frais liés aux services de courtage et de commissionnement.'),
(346, 'Locations (8)', '7073', 'Ce compte enregistre les frais de location facturés. Il est utilisé pour suivre les frais associés à la location de biens ou de services.'),
(346, 'Bonis sur reprises et cessions d''emballages', '7074', 'Ce compte enregistre les bonus obtenus sur les reprises et les cessions d''emballages.'),
(346, 'Mise à disposition de personnel (8)', '7075', 'Ce compte enregistre les frais liés à la mise à disposition de personnel. Il est utilisé pour suivre les coûts associés à la fourniture de personnel à des tiers.'),
(346, 'Redevances pour brevets, logiciels, marques et droits similaires (8)', '7076', 'Ce compte enregistre les redevances perçues pour l''utilisation de brevets, de logiciels, de marques et de droits similaires.'),
(346, 'Services exploites dans l''intérêt du personnel', '7077', 'Ce compte enregistre les frais liés aux services exploités dans l''intérêt du personnel.'),
(346, 'Autres produits accessoires', '7078', 'Ce compte enregistre les autres produits accessoires générés par l''entreprise.'),

(351, 'Versées par l''Etat et les collectivités publiques', '7181', 'Ce compte enregistre les subventions versées par l''État et les collectivités publiques.'),
(351, 'Versées par les organismes internationaux', '7182', 'Ce compte enregistre les subventions versées par les organismes internationaux.'),
(351, 'Versées par des tiers', '7183', 'Ce compte enregistre les subventions versées par des tiers.'),

(353, 'Immobilisations corporelles (hors actif biologiques)', '7221', 'Ce compte enregistre les immobilisations corporelles, à l''exclusion des actifs biologiques.'),
(353, 'Immobilisations corporelles (actifs biologiques)', '7222', 'Ce compte enregistre les immobilisations corporelles qui sont des actifs biologiques.'),

(356, 'Produits en cours', '7341', 'Ce compte enregistre les produits en cours, c''est-à-dire les produits qui sont en cours de fabrication ou de production et qui ne sont pas encore terminés.'),
(356, 'Travaux en cours', '7342', 'Ce compte enregistre les travaux en cours, c''est-à-dire les travaux qui sont en cours de réalisation et qui ne sont pas encore achevés.'),

(357, 'Etudes en cours', '7351', 'Ce compte enregistre les études en cours, c''est-à-dire les projets d''études qui sont en cours de réalisation et qui ne sont pas encore achevés.'),
(357, 'Prestations de services en cours', '7352', 'Ce compte enregistre les prestations de services en cours, c''est-à-dire les services qui sont en cours de réalisation et qui ne sont pas encore achevés.'),

(359, 'Produits intermédiaires', '7371', 'Ce compte enregistre les produits intermédiaires, c''est-à-dire les produits qui sont générés au cours du processus de production mais qui ne sont pas encore des produits finis.'),
(359, 'Produits résiduels', '7372', 'Ce compte enregistre les produits résiduels, c''est-à-dire les produits qui restent après le processus de production et qui ne peuvent pas être vendus ou utilisés comme produits finis.'),

(361, 'Quote-part transférée de pertes (comptabilité du gérant)', '7521', 'Ce compte enregistre la quote-part transférée de pertes dans la comptabilité du gérant.'),
(361, 'Bénéfices attribués par transfert (comptabilité des associés non-gérants)', '7525', 'Ce compte enregistre les bénéfices attribués par transfert dans la comptabilité des associés non-gérants.'),

(362, 'Immobilisations incorporelles', '7541', 'Ce compte enregistre les immobilisations incorporelles, c''est-à-dire les actifs non matériels comme les brevets, les marques, les logiciels, etc.'),
(362, 'Immobilisations corporelles', '7542', 'Ce compte enregistre les immobilisations corporelles, c''est-à-dire les actifs matériels comme les terrains, les bâtiments, les équipements, etc.'),

(364, 'Indemnités de fonction et autres rémunérations d''administrateurs', '7581', 'Ce compte enregistre les indemnités de fonction et autres rémunérations versées aux administrateurs de l''entreprise.'),
(364, 'Indemnités d''assurances reçues', '7582', 'Ce compte enregistre les indemnités reçues de compagnies d''assurance.'),
(364, 'Autres produits divers', '7588', 'Ce compte enregistre d''autres produits divers qui ne rentrent pas dans les catégories précédentes.'),

(365, 'Sur risques à court terme', '7591', 'Ce compte enregistre les provisions pour risques à court terme liés à l''exploitation de l''entreprise.'),
(365, 'Sur stocks', '7593', 'Ce compte enregistre les provisions pour risques liés aux stocks de l''entreprise.'),
(365, 'Sur créances', '7594', 'Ce compte enregistre les provisions pour risques liés aux créances de l''entreprise.'),
(365, 'Sur autres charges pour dépréciations et provisions pour risques à court terme d''exploitation', '7598', 'Ce compte enregistre les provisions pour risques à court terme d''exploitation qui ne rentrent pas dans les catégories précédentes.'),

(366, 'Intérêts de prêts', '7712', 'Ce compte enregistre les intérêts perçus sur les prêts accordés par l''entreprise.'),
(366, 'Intérêts sur créances diverses', '7713', 'Ce compte enregistre les intérêts perçus sur les différentes créances de l''entreprise.'),

(367, 'Revenus des titres de participation', '7721', 'Ce compte enregistre les revenus provenant des titres de participation détenus par l''entreprise.'),
(367, 'Revenus autres titres immobilisés', '7722', 'Ce compte enregistre les revenus provenant d''autres titres immobilisés détenus par l''entreprise.'),

(369, 'Revenus des obligations', '7745', 'Ce compte enregistre les revenus provenant des obligations détenues par l''entreprise.'),
(369, 'Revenus des titres de placement', '7746', 'Ce compte enregistre les revenus provenant des titres de placement détenus par l''entreprise.'),

(373, 'sur rentes viagères', '7781', 'Ce compte enregistre les charges liées aux rentes viagères payées par l''entreprise.'),
(373, 'sur opérations financières', '7782', 'Ce compte enregistre les charges liées aux opérations financières de l''entreprise.'),
(373, 'sur instruments de trésorerie', '7784', 'Ce compte enregistre les charges liées aux instruments de trésorerie de l''entreprise.'),

(374, 'sur risques financiers', '7791', 'Ce compte enregistre les charges liées aux risques financiers de l''entreprise.'),
(374, 'sur titres de placement', '7795', 'Ce compte enregistre les charges liées aux titres de placement de l''entreprise.'),
(374, 'sur autres charges pour dépréciations et provisions pour risques à court terme financières', '7798', 'Ce compte enregistre les charges liées à d''autres dépréciations et provisions pour risques à court terme financières de l''entreprise.'),

(377, 'pour risques et charges', '7911', 'Ce compte enregistre les dotations aux provisions pour risques et charges de l''entreprise.'),
(377, 'des immobilisations incorporelles', '7913', 'Ce compte enregistre les dotations aux dépréciations des immobilisations incorporelles de l''entreprise.'),
(377, 'des immobilisations corporelles', '7914', 'Ce compte enregistre les dotations aux dépréciations des immobilisations corporelles de l''entreprise.'),

(378, 'pour risques et charges', '7971', 'Ce compte enregistre les dotations aux provisions pour risques et charges de l''entreprise.'),
(378, 'des immobilisations financières', '7972', 'Ce compte enregistre les dotations aux dépréciations des immobilisations financières de l''entreprise.'),

(419, 'Activités exercées dans l''État', '8911', 'Ce compte enregistre les activités exercées dans l''État.'),
(419, 'Activités exercées dans les autres États de la Région', '8912', 'Ce compte enregistre les activités exercées dans les autres États de la Région.'),
(419, 'Activités exercées hors Région', '8913', 'Ce compte enregistre les activités exercées hors Région.'),

(422, 'Dégrèvements', '8991', 'Ce compte enregistre les dégrèvements.'),
(422, 'Annulations pour pertes rétroactives', '8994', 'Ce compte enregistre les annulations pour pertes rétroactives.'),

(424, 'Crédits confirmés obtenus', '9011', 'Ce compte enregistre les crédits confirmés obtenus.'),
(424, 'Emprunts restant à encaisser', '9012', 'Ce compte enregistre les emprunts restant à encaisser.'),
(424, 'Facilités de financement renouvelables', '9013', 'Ce compte enregistre les facilités de financement renouvelables.'),
(424, 'Facilités d''émission', '9014', 'Ce compte enregistre les facilités d''émission.'),
(424, 'Autres engagements de financements obtenus', '9018', 'Ce compte enregistre les autres engagements de financements obtenus.'),

(425, 'Avals obtenus', '9021', 'Ce compte enregistre les avals obtenus.'),
(425, 'Cautions, garanties obtenues', '9022', 'Ce compte enregistre les cautions, garanties obtenues.'),
(425, 'Hypothèques obtenues', '9023', 'Ce compte enregistre les hypothèques obtenues.'),
(425, 'Effets endossés par des tiers', '9024', 'Ce compte enregistre les effets endossés par des tiers.'),
(425, 'Autres garanties obtenues', '9028', 'Ce compte enregistre les autres garanties obtenues.'),

(426, 'Achats de marchandises à terme', '9031', 'Ce compte enregistre les achats de marchandises à terme.'),
(426, 'Achats à termes de devises', '9032', 'Ce compte enregistre les achats à termes de devises.'),
(426, 'Commandes fermes des clients', '9033', 'Ce compte enregistre les commandes fermes des clients.'),
(426, 'Autres engagements réciproques', '9038', 'Ce compte enregistre les autres engagements réciproques.'),

(427, 'Abandons de créances conditionnels', '9041', 'Ce compte enregistre les abandons de créances conditionnels.'),
(427, 'Ventes avec clause de réserve de propriété', '9043', 'Ce compte enregistre les ventes avec clause de réserve de propriété.'),
(427, 'Divers engagements obtenus', '9048', 'Ce compte enregistre les divers engagements obtenus.'),
(427, 'ENGAGEMENTS ACCORDÉS 905 à 908', '9049', 'Ce compte enregistre les engagements accordés de 905 à 908.'),

(428, 'Crédits accordés non décaissés', '9051', 'Ce compte enregistre les crédits accordés mais non encore décaissés.'),
(428, 'Autres engagements de financement accordés', '9058', 'Ce compte enregistre les autres engagements de financement accordés.'),

(429, 'Avals obtenus', '9061', 'Ce compte enregistre les avals obtenus par l''entité.'),
(429, 'Cautions, garanties accordées', '9062', 'Ce compte enregistre les cautions et garanties accordées par l''entité.'),
(429, 'Hypothèques accordées', '9063', 'Ce compte enregistre les hypothèques accordées par l''entité.'),
(429, 'Effets endossés par l''entité', '9064', 'Ce compte enregistre les effets endossés par l''entité.'),
(429, 'Autres garanties accordées', '9068', 'Ce compte enregistre les autres garanties accordées par l''entité.'),

(430, 'Ventes de marchandises à terme', '9071', 'Ce compte enregistre les ventes de marchandises à terme effectuées par l''entité.'),
(430, 'Ventes à terme de devises', '9072', 'Ce compte enregistre les ventes à terme de devises effectuées par l''entité.'),
(430, 'Commandes fermes aux fournisseurs', '9073', 'Ce compte enregistre les commandes fermes passées aux fournisseurs par l''entité.'),
(430, 'Autres engagements réciproques', '9078', 'Ce compte enregistre les autres engagements réciproques de l''entité.'),

(431, 'Annulations conditionnelles de dettes', '9081', 'Ce compte enregistre les annulations conditionnelles de dettes par l''entité.'),
(431, 'Engagements de retraite', '9082', 'Ce compte enregistre les engagements de retraite pris par l''entité.'),
(431, 'Achats avec clause de réserve de propriété', '9083', 'Ce compte enregistre les achats effectués avec une clause de réserve de propriété par l''entité.'),
(431, 'Divers engagements accordés', '9088', 'Ce compte enregistre les autres engagements accordés par l''entité.'),

(444, 'en numéraire', '1011', 'Ce compte enregistre les apports en numéraire.'),
(444, 'en nature', '1015', 'Ce compte enregistre les apports en nature.'),

(445, 'en numéraire', '1021', 'Ce compte enregistre les apports en numéraire.'),
(445, 'en nature', '1025', 'Ce compte enregistre les apports en nature.'),

(447, 'Dotation consomptible', '1041', 'Cette catégorie de dotation est destinée à couvrir les charges consomptibles non prises en compte dans les autres catégories de dotations.'),
(447, 'Dotation consomptible inscrite au compte de résultat', '1049', 'Cette catégorie de dotation représente la part de la dotation consomptible qui est directement inscrite au compte de résultat, affectant ainsi le résultat net de l''entreprise.'),

(448, 'Écarts de réévaluation sur des biens sans droit de reprise', '1061', 'Ces écarts de réévaluation concernent les biens pour lesquels l''entreprise n''a pas le droit de les reprendre, tels que les immobilisations corporelles et financières.'),
(448, 'Écarts de réévaluation sur des biens sans droit de reprise immobilisations corporelle', '10611', 'Ces écarts de réévaluation portent spécifiquement sur les immobilisations corporelles pour lesquelles l''entreprise n''a pas le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens sans droit de reprise immobilisations financières', '10612', 'Ces écarts de réévaluation concernent les immobilisations financières pour lesquelles l''entreprise n''a pas le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens avec droit de reprise', '1062', 'Ces écarts de réévaluation concernent les biens pour lesquels l''entreprise a le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens avec droit de reprise immobilisations corporelles', '10621', 'Ces écarts de réévaluation portent spécifiquement sur les immobilisations corporelles pour lesquelles l''entreprise a le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens avec droit de reprise immobilisations-financière', '10622', 'Ces écarts de réévaluation concernent les immobilisations financières pour lesquelles l''entreprise a le droit de les reprendre.'),

(1411, 'État', '1411', 'Ce compte représente les transactions financières liées à l''État central. Il est utilisé pour enregistrer les opérations financières telles que les recettes et les dépenses de l''administration centrale de l''État.'),
(1412, 'Régions', '1412', 'Ce compte est dédié aux transactions financières des gouvernements régionaux. Il est utilisé pour suivre les recettes et les dépenses spécifiques aux régions administratives d''un pays.'),
(1413, 'Départements', '1413', 'Ce compte comptable enregistre les transactions financières des gouvernements départementaux. Il est utilisé pour suivre les recettes et les dépenses spécifiques aux départements ou aux subdivisions administratives similaires.'),
(1414, 'Communes et collectivités publiques décentralisées', '1414', 'Ce compte comptable est utilisé pour enregistrer les transactions financières des municipalités et des autres collectivités publiques décentralisées. Il comprend les recettes et les dépenses associées à ces entités locales.'),
(1415, 'Entités publiques ou mixtes', '1415', 'Ce compte est utilisé pour les transactions financières impliquant des entités publiques ou mixtes, telles que les entreprises publiques ou les partenariats public-privé.'),
(1416, 'Entités et organismes privés', '1416', 'Ce compte comptable est destiné à enregistrer les transactions financières impliquant des entités et des organismes privés, tels que les entreprises privées, les associations et les fondations.'),
(1417, 'Organismes internationaux', '1417', 'Ce compte est utilisé pour suivre les transactions financières avec des organismes internationaux tels que les Nations Unies, la Banque mondiale, le Fonds monétaire international, etc.'),
(1418, 'Autres', '1418', 'Ce compte est utilisé pour enregistrer toutes les transactions financières qui ne sont pas couvertes par les autres comptes spécifiés. Il peut inclure des transactions inhabituelles ou exceptionnelles, ainsi que d''autres types de transactions non spécifiées ailleurs.')

(464, 'Affectés', '1671', 'Ce compte enregistre les fonds reçus ou affectés à des projets ou à des activités spécifiques, avec des restrictions sur leur utilisation.'),
(464, 'Non affectés', '1672', 'Ce compte enregistre les fonds reçus ou non affectés à des projets ou à des activités spécifiques, avec une liberté d''utilisation plus large.'),
(464, 'Engagements au près donateur', '1679', 'Ce compte représente les engagements ou les promesses de dons faits par des donateurs ou des bailleurs de fonds.'),

(472, 'Dépôts', '1851', 'Ce compte enregistre les montants déposés auprès de tiers, généralement des banques, en garantie ou en prévision de transactions futures.'),
(472, 'Cautionnements', '1852', 'Ce compte enregistre les montants déposés comme caution ou garantie pour garantir l''exécution d''obligations contractuelles.'),

(473, 'sur emprunts obligataires', '1861', 'Ce compte enregistre les produits financiers liés aux emprunts obligataires émis par l''entreprise.'),
(473, 'sur emprunts et dettes auprès des établissements de crédits', '1862', 'Ce compte enregistre les produits financiers liés aux emprunts et dettes contractés auprès des établissements de crédit.'),
(473, 'sur avances reçues de l''Etat', '1863', 'Ce compte enregistre les produits financiers liés aux avances reçues de l''État.'),
(473, 'sur dépôts et cautionnements reçus', '1865', 'Ce compte enregistre les produits financiers liés aux dépôts et cautionnements reçus par l''entreprise.'),
(473, 'sur autres emprunts et dettes', '1868', 'Ce compte enregistre les produits financiers liés à d''autres emprunts et dettes contractés par l''entreprise.'),

(474, 'Dettes de location-acquisition/ crédit-bail immobilier', '1871', 'Ce compte enregistre les dettes liées aux opérations de location-acquisition ou de crédit-bail immobilier.'),
(474, 'Dettes de location - acquisition/ crédit -bail mobilier', '1872', 'Ce compte enregistre les dettes liées aux opérations de location-acquisition ou de crédit-bail mobilier.'),
(474, 'Dettes de location - acquisition/location-vente', '1873', 'Ce compte enregistre les dettes liées aux opérations de location-acquisition ou de location-vente.'),
(474, 'Intérêts courus', '1876', 'Ce compte enregistre les intérêts courus sur les dettes de l''entreprise.'),

(479, 'Provisions pour amendes et pénalités', '1981', 'Ce compte enregistre les provisions constituées pour couvrir les amendes et pénalités potentielles encourues par l''entreprise.'),
(479, 'Provisions pour démantèlement et remise en état', '1984', 'Ce compte enregistre les provisions constituées pour couvrir les coûts de démantèlement et de remise en état des biens de l''entreprise à la fin de leur vie utile.'),
(479, 'Provisions pour divers risques et charges', '1988', 'Ce compte enregistre les provisions constituées pour couvrir divers risques et charges non spécifiquement couverts par d''autres comptes de provisions.'),

(480, 'Usufruit temporaire', '2011', 'Ce compte enregistre les droits temporaires accordés à une partie pour utiliser et profiter des biens de l''entreprise sans en devenir propriétaire.'),
(480, 'Brevets, licences, concessions et droits similaires', '2012', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise tels que les brevets, les licences, les concessions et les droits similaires.'),
(480, 'Logiciels et sites internet', '2013', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise tels que les logiciels et les sites internet.'),
(480, 'Marques', '2014', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de marques commerciales ou de marques déposées.'),
(480, 'Autres', '2017', 'Ce compte enregistre d''autres actifs incorporels acquis par l''entreprise qui ne sont pas spécifiquement couverts par d''autres comptes.'),

(485, 'Brevets', '2121', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de brevets.'),
(485, 'Licences', '2122', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de licences.'),
(485, 'Concessions de service public', '2123', 'Ce compte enregistre les concessions accordées par les autorités publiques à l''entreprise pour fournir des services publics.'),
(485, 'Autres concessions et droits similaires', '2128', 'Ce compte enregistre d''autres concessions et droits similaires acquis par l''entreprise qui ne sont pas spécifiquement couverts par d''autres comptes.'),

(486, 'Logiciels', '2131', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de logiciels.'),
(486, 'Sites internet', '2132', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de sites internet.'),

(488, 'Indemnités de transfert aux joueurs', '2181', 'Ce compte enregistre les montants payés par l''entreprise en indemnités de transfert aux joueurs.'),

(489, 'Logiciels et sites internet', '2193', 'Ce compte enregistre les dépenses liées à l''acquisition ou au développement de logiciels et de sites internet.'),
(489, 'Autres droits et valeurs incorporels', '2198', 'Ce compte regroupe les autres droits et valeurs incorporels de l''entreprise qui ne sont pas spécifiquement mentionnés dans d''autres comptes.'),

(490, 'Terrains d''exploitation agricole', '2211', 'Ce compte enregistre la valeur des terrains utilisés pour des activités agricoles.'),
(490, 'Terrains d''exploitation forestière', '2212', 'Ce compte enregistre la valeur des terrains utilisés pour des activités forestières.'),
(490, 'Autres terrains', '2218', 'Ce compte regroupe la valeur des terrains qui ne sont pas spécifiquement liés aux activités agricoles ou forestières de l''entreprise.'),

(491, 'Terrains à bâtir', '2221', 'Ce compte enregistre la valeur des terrains destinés à la construction de bâtiments.'),
(491, 'Autres terrains nus', '2228', 'Ce compte regroupe la valeur des terrains nus qui ne sont pas destinés à la construction et qui ne sont pas spécifiquement liés aux activités agricoles ou forestières de l''entreprise.'),

(492, 'pour bâtiments industriels et agricoles', '2231', 'Ce compte enregistre la valeur des terrains bâtis destinés à des activités industrielles ou agricoles.'),
(492, 'pour bâtiments administratifs et commerciaux', '2232', 'Ce compte regroupe la valeur des terrains bâtis utilisés à des fins administratives ou commerciales.'),
(492, 'pour bâtiments affectés aux autres opérations professionnelles', '2234', 'Ce compte enregistre la valeur des terrains bâtis utilisés pour d''autres opérations professionnelles non spécifiquement liées à l''industrie, à l''agriculture, à l''administration ou au commerce.'),
(492, 'pour bâtiments affectés aux autres opérations non professionnelles', '2235', 'Ce compte regroupe la valeur des terrains bâtis utilisés pour d''autres opérations non professionnelles.'),
(492, 'Autres terrains bâtis', '2238', 'Ce compte enregistre la valeur des terrains bâtis qui ne rentrent pas dans les catégories précédentes.'),

(493, 'Plantation d''arbres et d''arbustes', '2241', 'Ce compte enregistre les dépenses liées à la plantation et à l''entretien d''arbres et d''arbustes sur les terrains de l''entreprise.'),
(493, 'Améliorations du fonds', '2245', 'Ce compte regroupe les dépenses visant à améliorer la qualité ou la valeur des terrains de l''entreprise.'),
(493, 'Autres travaux', '2248', 'Ce compte regroupe les dépenses liées à d''autres travaux réalisés sur les terrains de l''entreprise et qui ne rentrent pas dans les catégories précédentes.'),

(494, 'Parkings', '2261', 'Ce compte enregistre les dépenses liées à la construction ou à l''aménagement de parkings pour véhicules sur les terrains de l''entreprise.'),

(495, 'Terrains-immeubles de placement', '2281', 'Ce compte enregistre la valeur des terrains destinés à être conservés ou utilisés pour générer des revenus, tels que les terrains destinés à la location ou à la revente.'),
(495, 'Terrains des logements affectés au personnel', '2285', 'Ce compte enregistre la valeur des terrains utilisés pour la construction de logements destinés au personnel de l''entreprise.'),
(495, 'Terrains de location-acquisition', '2286', 'Ce compte enregistre la valeur des terrains acquis dans le cadre de contrats de location-acquisition.'),
(495, 'Divers terrains', '2288', 'Ce compte regroupe la valeur des terrains qui ne sont pas spécifiquement catégorisés dans d''autres comptes.'),

(496, 'Terrains agricoles et forestiers', '2291', 'Ce compte enregistre la valeur des terrains utilisés pour des activités agricoles ou forestières.'),
(496, 'Terrains nus', '2292', 'Ce compte enregistre la valeur des terrains qui ne sont pas encore développés ou aménagés.'),
(496, 'Autres terrains', '2298', 'Ce compte regroupe la valeur des terrains qui ne sont pas spécifiquement catégorisés dans d''autres comptes.'),

(497, 'Bâtiments industriels', '2311', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins industrielles.'),
(497, 'Bâtiments agricoles', '2312', 'Ce compte enregistre la valeur des bâtiments utilisés pour des activités agricoles.'),
(497, 'Bâtiments administratifs et commerciaux', '2313', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins administratives ou commerciales.'),
(497, 'Bâtiments affectés au logement du personnel', '2314', 'Ce compte enregistre la valeur des bâtiments utilisés pour loger le personnel de l''entreprise.'),
(497, 'Bâtiments-immeubles de placement', '2315', 'Ce compte enregistre la valeur des bâtiments détenus à des fins de placement immobilier.'),
(497, 'Bâtiments de location-acquisition', '2316', 'Ce compte enregistre la valeur des bâtiments acquis dans le cadre de contrats de location-acquisition.'),
(497, 'Edifices religieux et assimilés', '2317', 'Ce compte enregistre la valeur des édifices religieux et autres structures similaires.'),
(497, 'Autres bâtiments sur sol propre', '2318', 'Ce compte regroupe la valeur des bâtiments qui ne sont pas spécifiquement catégorisés dans d''autres comptes.'),

(498, 'Bâtiments industriels', '2321', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins industrielles.'),
(498, 'Bâtiments agricoles', '2322', 'Ce compte enregistre la valeur des bâtiments utilisés pour des activités agricoles.'),
(498, 'Bâtiments administratifs et commerciaux', '2323', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins administratives ou commerciales.'),
(498, 'Bâtiments affectés au logement du personnel', '2324', 'Ce compte enregistre la valeur des bâtiments utilisés pour loger le personnel de l''entreprise.'),
(498, 'Bâtiments-immeubles de placement', '2325', 'Ce compte enregistre la valeur des bâtiments détenus à des fins de placement immobilier.'),
(498, 'Bâtiments de location-acquisition', '2326', 'Ce compte enregistre la valeur des bâtiments acquis dans le cadre de contrats de location-acquisition.'),
(498, 'Edifices religieux et assimilés', '2327', 'Ce compte enregistre la valeur des édifices religieux et autres structures similaires.'),
(498, 'Autres bâtiments sur sol d''autrui', '2328', 'Ce compte regroupe la valeur des bâtiments construits sur un sol qui n''appartient pas à l''entreprise.'),

(499, 'Voies de terre', '2331', 'Ce compte enregistre la valeur des routes, chemins et autres voies terrestres.'),
(499, 'Voies de fer', '2332', 'Ce compte enregistre la valeur des voies ferrées.'),
(499, 'Voies d''eau', '2333', 'Ce compte enregistre la valeur des voies navigables telles que les canaux, les rivières et les fleuves.'),
(499, 'Barrages, digues', '2334', 'Ce compte enregistre la valeur des ouvrages construits pour retenir ou contrôler l''écoulement de l''eau.'),
(499, 'Pistes d''aérodrome', '2335', 'Ce compte enregistre la valeur des pistes utilisées pour les décollages et les atterrissages des aéronefs.'),
(499, 'Autres ouvrages d''infrastructures', '2338', 'Ce compte regroupe la valeur des autres ouvrages d''infrastructures qui ne sont pas spécifiquement inclus dans les comptes précédents.'),

(500, 'Installations complexes spécialisées sur sol propre', '2341', 'Ce compte enregistre la valeur des installations complexes et spécialisées construites sur un terrain appartenant à l''entreprise.'),
(500, 'Installations complexes spécialisées sur sol d''autrui', '2342', 'Ce compte enregistre la valeur des installations complexes et spécialisées construites sur un terrain appartenant à un tiers.'),
(500, 'Installations à caractère spécifique sur sol propre', '2343', 'Ce compte enregistre la valeur des installations à caractère spécifique construites sur un terrain appartenant à l''entreprise.'),
(500, 'Installations à caractère spécifique sur sol d''autrui', '2344', 'Ce compte enregistre la valeur des installations à caractère spécifique construites sur un terrain appartenant à un tiers.'),
(500, 'Aménagements et agencements des bâtiments', '2345', 'Ce compte enregistre la valeur des aménagements et agencements réalisés dans les bâtiments de l''entreprise pour les adapter à ses besoins spécifiques.'),

(501, 'Installations générales', '2351', 'Ce compte enregistre la valeur des installations générales réalisées dans les locaux de l''entreprise.'),
(501, 'Autres aménagements de bureaux', '2358', 'Ce compte enregistre la valeur des aménagements spécifiques réalisés dans les bureaux de l''entreprise.'),

(502, 'Autres installations et agencements des édifices religieux et assimilés', '2381', 'Ce compte enregistre la valeur des installations et agencements autres que les bâtiments religieux et assimilés.'),
(502, 'Autres installations et agencements des stades et autres infrastructures sportives', '2382', 'Ce compte enregistre la valeur des installations et agencements autres que les stades et autres infrastructures sportives.'),

(503, 'Bâtiments sur sol propre en cours', '2391', 'Ce compte enregistre la valeur des bâtiments en cours de construction sur sol propre.'),
(503, 'Bâtiments sur sol d''autrui en cours', '2392', 'Ce compte enregistre la valeur des bâtiments en cours de construction sur sol d''autrui.'),
(503, 'Aménagements, agencements et installations techniques en cours', '2394', 'Ce compte enregistre la valeur des aménagements, agencements et installations techniques en cours de réalisation.'),
(503, 'Aménagements de bureaux en cours', '2395', 'Ce compte enregistre la valeur des aménagements de bureaux en cours de réalisation.'),
(503, 'Bâtiments en cours-immeubles de placement', '2396', 'Ce compte enregistre la valeur des bâtiments en cours de construction affectés comme immeubles de placement.'),
(503, 'Autres installations et agencements en cours', '2398', 'Ce compte enregistre la valeur des autres installations et agencements en cours de réalisation.'),

(504, 'Matériel industriel', '2411', 'Ce compte enregistre la valeur du matériel industriel possédé par l''entreprise.'),
(504, 'Outillage industriel', '2412', 'Ce compte enregistre la valeur de l''outillage industriel possédé par l''entreprise.'),
(504, 'Matériel commercial', '2413', 'Ce compte enregistre la valeur du matériel commercial possédé par l''entreprise.'),
(504, 'Outillage commercial', '2414', 'Ce compte enregistre la valeur de l''outillage commercial possédé par l''entreprise.'),
(504, 'Matériel et outillage industriel et commercial de location-acquisition', '2416', 'Ce compte enregistre la valeur du matériel et de l''outillage industriel et commercial acquis en location-acquisition.'),

(505, 'Matériel agricole', '2421', 'Ce compte enregistre la valeur du matériel agricole possédé par l''entreprise.'),
(505, 'Outillage agricole', '2422', 'Ce compte enregistre la valeur de l''outillage agricole possédé par l''entreprise.'),
(505, 'Matériel et outillage agricole de location-acquisition', '2426', 'Ce compte enregistre la valeur du matériel et de l''outillage agricole acquis en location-acquisition.'),

(507, 'Matériel et mobilier de bureau', '2411', 'Ce compte enregistre la valeur du matériel et du mobilier de bureau possédés par l''entreprise.'),
(507, 'Matériel informatique et bureautique', '2442', 'Ce compte enregistre la valeur du matériel informatique et bureautique possédé par l''entreprise.'),
(507, 'Matériel et mobilier religieux', '2443', 'Ce compte enregistre la valeur du matériel et du mobilier religieux possédés par l''entreprise.'),
(507, 'Matériel et mobilier sportifs', '2444', 'Ce compte enregistre la valeur du matériel et du mobilier sportifs possédés par l''entreprise.'),
(507, 'Matériel et mobilier - immeubles de placement', '2445', 'Ce compte enregistre la valeur du matériel et du mobilier liés aux immeubles de placement possédés par l''entreprise.'),
(507, 'Matériel et mobilier de location-acquisition', '2446', 'Ce compte enregistre la valeur du matériel et du mobilier acquis en location-acquisition.'),
(507, 'Matériel et mobilier des logements du personnel', '2447', 'Ce compte enregistre la valeur du matériel et du mobilier des logements du personnel possédés par l''entreprise.'),

(508, 'Matériel automobile', '2451', 'Ce compte enregistre la valeur du matériel automobile possédé par l''entreprise.'),
(508, 'Matériel ferroviaire', '2452', 'Ce compte enregistre la valeur du matériel ferroviaire possédé par l''entreprise.'),
(508, 'Matériel fluvial, lagunaire', '2453', 'Ce compte enregistre la valeur du matériel fluvial et lagunaire possédé par l''entreprise.'),
(508, 'Matériel naval', '2454', 'Ce compte enregistre la valeur du matériel naval possédé par l''entreprise.'),
(508, 'Matériel aérien', '2455', 'Ce compte enregistre la valeur du matériel aérien possédé par l''entreprise.'),
(508, 'Matériel de transport de location - acquisition', '2456', 'Ce compte enregistre la valeur du matériel de transport acquis en location-acquisition.'),
(508, 'Matériel hippomobile', '2457', 'Ce compte enregistre la valeur du matériel hippomobile possédé par l''entreprise.'),
(508, 'Autres matériels de transports', '2458', 'Ce compte enregistre la valeur des autres matériels de transport possédés par l''entreprise.'),

(509, 'Cheptel, animaux de trait', '2461', 'Ce compte enregistre la valeur du cheptel et des animaux de trait possédés par l''entreprise.'),
(509, 'Cheptel, animaux reproducteurs', '2462', 'Ce compte enregistre la valeur du cheptel et des animaux reproducteurs possédés par l''entreprise.'),
(509, 'Animaux de garde', '2463', 'Ce compte enregistre la valeur des animaux de garde possédés par l''entreprise.'),
(509, 'Plantations agricoles', '2465', 'Ce compte enregistre la valeur des plantations agricoles possédées par l''entreprise.'),
(509, 'Autres actifs biologiques', '2468', 'Ce compte enregistre la valeur des autres actifs biologiques possédés par l''entreprise.'),

(510, 'Agencements et aménagements du matériel', '2471', 'Ce compte enregistre les coûts d''agencement et d''aménagement du matériel possédé par l''entreprise.')
(510, 'Agencements et aménagements des actifs biologiques', '2472', 'Ce compte enregistre les coûts d''agencement et d''aménagement des actifs biologiques possédés par l''entreprise.')
(510, 'Autres agencements, aménagements du matériel et des actifs biologiques', '2478', 'Ce compte enregistre les autres coûts d''agencement et d''aménagement du matériel et des actifs biologiques possédés par l''entreprise.')

(511, 'Collections et œuvres d''art', '2481', 'Ce compte enregistre la valeur des collections et des œuvres d''art possédées par l''entreprise.')
(511, 'Divers matériels et mobilier', '2488', 'Ce compte enregistre la valeur des divers matériels et mobilier possédés par l''entreprise.')

(512, 'Matériel et outillage industriel et commercial', '2491', 'Ce compte enregistre la valeur du matériel et de l''outillage industriel et commercial possédés par l''entreprise.')
(512, 'Matériel et outillage agricole', '2492', 'Ce compte enregistre la valeur du matériel et de l''outillage agricole possédés par l''entreprise.')
(512, 'Matériel d''emballage récupérable et identifiable', '2493', 'Ce compte enregistre la valeur du matériel d''emballage récupérable et identifiable possédé par l''entreprise.')
(512, 'Matériel et mobilier de bureau', '2494', 'Ce compte enregistre la valeur du matériel et du mobilier de bureau possédés par l''entreprise.')
(512, 'Matériel de transport', '2495', 'Ce compte enregistre la valeur du matériel de transport possédé par l''entreprise.')
(512, 'Actifs biologiques', '2496', 'Ce compte enregistre la valeur des actifs biologiques possédés par l''entreprise.')
(512, 'Agencements et aménagements du matériel et des actifs biologiques', '2497', 'Ce compte enregistre la valeur des agencements et aménagements du matériel et des actifs biologiques possédés par l''entreprise.')
(512, 'Autres matériels et actifs biologiques', '2498', 'Ce compte enregistre la valeur des autres matériels et actifs biologiques possédés par l''entreprise.')

(519, 'Prêts participatifs', '2711', 'Ce compte enregistre les prêts participatifs accordés par l''entreprise.'),
(519, 'Billets de fonds', '2713', 'Ce compte enregistre les billets de fonds détenus par l''entreprise.'),
(519, 'Titres prêtés', '2715', 'Ce compte enregistre les titres prêtés par l''entreprise.'),
(519, 'Autres prêts et créances', '2718', 'Ce compte enregistre les autres prêts et créances détenus par l''entreprise.'),

(520, 'Prêts immobiliers', '2721', 'Ce compte enregistre les prêts immobiliers accordés par l''entreprise.'),
(520, 'Prêts mobiliers et d''installation', '2722', 'Ce compte enregistre les prêts mobiliers et d''installation accordés par l''entreprise.'),
(520, 'Autres prêts au personnel', '2728', 'Ce compte enregistre les autres prêts accordés au personnel de l''entreprise.'),

(521, 'Retenues de garantie', '2731', 'Ce compte enregistre les sommes retenues par l''entreprise à titre de garantie.'),
(521, 'Fonds règlementé', '2733', 'Ce compte enregistre les fonds règlementés détenus par l''entreprise.'),
(521, 'Autres créances sur l''Etat', '2738', 'Ce compte enregistre les autres créances de l''entreprise sur l''État.'),

(522, 'Titres immobilisés de l''activité de portefeuille (T.I.A.P.)', '2741', 'Ce compte enregistre les titres immobilisés de l''activité de portefeuille (T.I.A.P.) de l''entreprise.')
(522, 'Titres participatifs', '2742', 'Ce compte enregistre les titres participatifs détenus par l''entreprise.')
(522, 'Certificats d''investissement', '2743', 'Ce compte enregistre les certificats d''investissement détenus par l''entreprise.')
(522, 'Parts de fonds commun de placement (F.C.P.)', '2744', 'Ce compte enregistre les parts de fonds commun de placement (F.C.P.) détenues par l''entreprise.')
(522, 'Obligations', '2745', 'Ce compte enregistre les obligations détenues par l''entreprise.')
(522, 'Autres titres immobilisés', '2748', 'Ce compte enregistre les autres titres immobilisés détenus par l''entreprise.')

(523, 'Dépôts pour loyers d''avance', '2751', 'Ce compte enregistre les dépôts effectués pour les loyers d''avance.')
(523, 'Dépôts pour l''électricité', '2752', 'Ce compte enregistre les dépôts effectués pour l''électricité.')
(523, 'Dépôts pour l''eau', '2753', 'Ce compte enregistre les dépôts effectués pour l''eau.')
(523, 'Dépôts pour le gaz', '2754', 'Ce compte enregistre les dépôts effectués pour le gaz.')
(523, 'Dépôts pour le téléphone, la télécopie', '2755', 'Ce compte enregistre les dépôts effectués pour le téléphone et la télécopie.')
(523, 'Autres dépôts et cautionnement', '2758', 'Ce compte enregistre les autres dépôts et cautionnements effectués.')

(524, 'Prêts et créances', '2761', 'Ce compte enregistre les prêts et créances accordés par l''entreprise.')
(524, 'Prêts au personnel', '2762', 'Ce compte enregistre les prêts accordés au personnel.')
(524, 'Créances sur l''Etat', '2763', 'Ce compte enregistre les créances sur l''État.')
(524, 'Titres immobilisés', '2764', 'Ce compte enregistre les titres immobilisés.')
(524, 'Dépôts et cautionnements versés', '2765', 'Ce compte enregistre les dépôts et cautionnements versés.')
(524, 'Immobilisations financières diverses', '2768', 'Ce compte enregistre les immobilisations financières diverses.')

(525, 'Créances diverses', '2781', 'Ce compte enregistre les créances diverses de l''entreprise.')
(525, 'Banques dépôts à terme et opérations assimilées', '2784', 'Ce compte enregistre les dépôts à terme et opérations assimilées effectués auprès des banques.')
(525, 'Or et métaux précieux', '2785', 'Ce compte enregistre les avoirs en or et métaux précieux de l''entreprise.')
(525, 'Autres immobilisations financières', '2788', 'Ce compte enregistre les autres immobilisations financières de l''entreprise.')

(527, 'Amortissements des brevets, licences, concessions et droits similaires', '2812', 'Ce compte enregistre les amortissements des brevets, licences, concessions et droits similaires de l''entreprise.')
(527, 'Amortissements des logiciels et sites internet', '2813', 'Ce compte enregistre les amortissements des logiciels et sites internet de l''entreprise.')
(527, 'Amortissements des marques', '2814', 'Ce compte enregistre les amortissements des marques de l''entreprise.')
(527, 'Amortissements des Indemnités de transfert aux joueurs', '2817', 'Ce compte enregistre les amortissements des indemnités de transfert aux joueurs de l''entreprise.')
(527, 'Amortissements des autres droits et valeurs incorporels', '2818', 'Ce compte enregistre les amortissements des autres droits et valeurs incorporels de l''entreprise.')

(528, 'Amortissements des travaux de mise en valeur des terrains', '2824', 'Ce compte enregistre les amortissements des travaux de mise en valeur des terrains de l''entreprise.'),

(529, 'Amortissements des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre', '2831', 'Ce compte enregistre les amortissements des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre de l''entreprise.'),
(529, 'Amortissements des bâtiments industriels agricoles, administratifs, commerciaux, religieux sur sol d''autrui', '2832', 'Ce compte enregistre les amortissements des bâtiments industriels, agricoles, administratifs, commerciaux, religieux sur sol d''autrui de l''entreprise.'),
(529, 'Amortissements des ouvrages d''infrastructure', '2833', 'Ce compte enregistre les amortissements des ouvrages d''infrastructure de l''entreprise.'),
(529, 'Amortissements des aménagements, agencements et installations techniques', '2834', 'Ce compte enregistre les amortissements des aménagements, agencements et installations techniques de l''entreprise.'),
(529, 'Amortissements des aménagements de bureaux', '2835', 'Ce compte enregistre les amortissements des aménagements de bureaux de l''entreprise.'),
(529, 'Amortissements des autres installations et agencements', '2838', 'Ce compte enregistre les amortissements des autres installations et agencements de l''entreprise.'),

(530, 'Amortissements du matériel et de l''outillage industriel et commercial', '2841', 'Ce compte enregistre les amortissements du matériel et de l''outillage industriel et commercial de l''entreprise.'),
(530, 'Amortissements du matériel et de l''outillage industriel agricole', '2842', 'Ce compte enregistre les amortissements du matériel et de l''outillage industriel agricole de l''entreprise.'),
(530, 'Amortissements du matériel d''emballage récupérable et identifiable', '2843', 'Ce compte enregistre les amortissements du matériel d''emballage récupérable et identifiable de l''entreprise.'),
(530, 'Amortissements du matériel et du mobilier', '2844', 'Ce compte enregistre les amortissements du matériel et du mobilier de l''entreprise.'),
(530, 'Amortissements du matériel de transport', '2845', 'Ce compte enregistre les amortissements du matériel de transport de l''entreprise.'),
(530, 'Amortissements des actifs biologiques', '2846', 'Ce compte enregistre les amortissements des actifs biologiques de l''entreprise.'),
(530, 'Amortissements des agencements et aménagements du matériel et des actifs biologiques', '2847', 'Ce compte enregistre les amortissements des agencements et aménagements du matériel et des actifs biologiques de l''entreprise.'),
(530, 'Amortissements des autres matériels', '2848', 'Ce compte enregistre les amortissements des autres matériels de l''entreprise.'),

(531, 'Dépréciations d''usufruit temporaire', '2901', 'Ce compte enregistre les dépréciations d''usufruit temporaire de l''entreprise.'),
(531, 'Dépréciations de l''immobilisation, destinée à la vente provenant de dons et legs non encore reçus', '2902', 'Ce compte enregistre les dépréciations de l''immobilisation, destinée à la vente provenant de dons et legs non encore reçus de l''entreprise.'),

(532, 'Dépréciations des brevets, licences, concessions et droits similaires', '2912', 'Ce compte enregistre les dépréciations des brevets, licences, concessions et droits similaires de l''entreprise.'),
(532, 'Dépréciations des logiciels et sites internet', '2913', 'Ce compte enregistre les dépréciations des logiciels et sites internet de l''entreprise.'),
(532, 'Dépréciations des marques', '2914', 'Ce compte enregistre les dépréciations des marques de l''entreprise.'),
(532, 'Dépréciations des autres droits et valeurs incorporels', '2918', 'Ce compte enregistre les dépréciations des autres droits et valeurs incorporels de l''entreprise.'),
(532, 'Dépréciations des immobilisations incorporelles en cours', '2919', 'Ce compte enregistre les dépréciations des immobilisations incorporelles en cours de l''entreprise.'),

(533, 'Dépréciations des terrains agricoles et forestiers', '2921', 'Ce compte enregistre les dépréciations des terrains agricoles et forestiers de l''entreprise.'),
(533, 'Dépréciations des terrains nus', '2922', 'Ce compte enregistre les dépréciations des terrains nus de l''entreprise.'),
(533, 'Dépréciations des terrains bâtis', '2923', 'Ce compte enregistre les dépréciations des terrains bâtis de l''entreprise.'),
(533, 'Dépréciations des travaux de mise en valeur des terrains', '2924', 'Ce compte enregistre les dépréciations des travaux de mise en valeur des terrains de l''entreprise.'),
(533, 'Dépréciations des terrains aménagés', '2926', 'Ce compte enregistre les dépréciations des terrains aménagés de l''entreprise.'),
(533, 'Dépréciations des autres terrains', '2928', 'Ce compte enregistre les dépréciations des autres terrains de l''entreprise.'),
(533, 'Dépréciations des aménagements de terrains en cours', '2929', 'Ce compte enregistre les dépréciations des aménagements de terrains en cours de l''entreprise.'),

(534, 'Dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sol propre', '2931', 'Ce compte enregistre les dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre de l''entreprise.'),
(534, 'Dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui', '2932', 'Ce compte enregistre les dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui de l''entreprise.'),
(534, 'Dépréciations des ouvrages d''infrastructures', '2933', 'Ce compte enregistre les dépréciations des ouvrages d''infrastructures de l''entreprise.'),
(534, 'Dépréciations des aménagements, agencements et installations techniques', '2934', 'Ce compte enregistre les dépréciations des aménagements, agencements et installations techniques de l''entreprise.'),
(534, 'Dépréciations des aménagements de bureaux', '2935', 'Ce compte enregistre les dépréciations des aménagements de bureaux de l''entreprise.'),
(534, 'Dépréciations des autres installations et agencements ', '2938', 'Ce compte enregistre les dépréciations des autres installations et agencements de l''entreprise.'),
(534, 'Dépréciations des bâtiments et installations en cours', '2939', 'Ce compte enregistre les dépréciations des bâtiments et installations en cours de l''entreprise.'),

(535, 'Dépréciations du matériel et de l''outillage industriel et commercial', '2941', 'Ce compte enregistre les dépréciations du matériel et de l''outillage industriel et commercial de l''entreprise.'),
(535, 'Dépréciations du matériel et de l''outillage agricole', '2942', 'Ce compte enregistre les dépréciations du matériel et de l''outillage agricole de l''entreprise.'),
(535, 'Dépréciations du matériel d''emballage récupérable et identifiable', '2943', 'Ce compte enregistre les dépréciations du matériel d''emballage récupérable et identifiable de l''entreprise.'),
(535, 'Dépréciations du matériel et du mobilier', '2944', 'Ce compte enregistre les dépréciations du matériel et du mobilier de l''entreprise.'),
(535, 'Dépréciations du matériel de transport', '2945', 'Ce compte enregistre les dépréciations du matériel de transport de l''entreprise.'),
(535, 'Dépréciations des actifs biologiques', '2946', 'Ce compte enregistre les dépréciations des actifs biologiques de l''entreprise.'),
(535, 'Dépréciations des aménagements et agencements du matériel et des actifs biologiques ', '2947', 'Ce compte enregistre les dépréciations des aménagements et agencements du matériel et des actifs biologiques de l''entreprise.'),
(535, 'Dépréciations des autres matériels', '2948', 'Ce compte enregistre les dépréciations des autres matériels de l''entreprise.'),
(535, 'Dépréciations de matériel en cours', '2949', 'Ce compte enregistre les dépréciations de matériel en cours de l''entreprise.'),

(536, 'Dépréciations des avances et acomptes versés sur immobilisations incorporelles', '2951', 'Ce compte enregistre les dépréciations des avances et acomptes versés sur les immobilisations incorporelles de l''entreprise.'),
(536, 'Dépréciations des avances et acomptes versés sur immobilisations corporelles', '2952', 'Ce compte enregistre les dépréciations des avances et acomptes versés sur les immobilisations corporelles de l''entreprise.'),

(537, 'Dépréciations des titres de participations', '2961', 'Ce compte enregistre les dépréciations des titres de participations de l''entreprise.'),
(537, 'Dépréciations des participations dans les organismes professionnels', '2965', 'Ce compte enregistre les dépréciations des participations dans les organismes professionnels de l''entreprise.'),
(537, 'Dépréciations des parts des GIE', '2966', 'Ce compte enregistre les dépréciations des parts des groupements d''intérêt économique (GIE), de l''entreprise.'),
(537, 'Dépréciations des autres titres de participation', '2968', 'Ce compte enregistre les dépréciations des autres titres de participation de l''entreprise.'),

(538, 'Dépréciations des prêts et créances', '2971', 'Ce compte enregistre les dépréciations des prêts et créances de l''entreprise.'),
(538, 'Dépréciations des prêts au personnel', '2972', 'Ce compte enregistre les dépréciations des prêts accordés au personnel de l''entreprise.'),
(538, 'Dépréciations des créances sur l''Etat', '2973', 'Ce compte enregistre les dépréciations des créances de l''entreprise sur l''Etat.'),
(538, 'Dépréciations des titres immobilisés', '2974', 'Ce compte enregistre les dépréciations des titres immobilisés de l''entreprise.'),
(538, 'Dépréciations des dépôts et cautionnements versés', '2975', 'Ce compte enregistre les dépréciations des dépôts et cautionnements versés par l''entreprise.'),
(538, 'Dépréciations des créances rattachées à des participations et avances à des GIE', '2977', 'Ce compte enregistre les dépréciations des créances rattachées à des participations et avances à des groupements d''intérêt économique (GIE), de l''entreprise.'),
(538, 'Dépréciations des créances financières diverses', '2978', 'Ce compte enregistre les dépréciations des autres créances financières de l''entreprise.'),

(549, 'Emballages perdus', '3351', 'Ce compte enregistre la valeur des emballages perdus par l''entreprise.')
(549, 'Emballages récupérables non identifiables', '3352', 'Ce compte enregistre la valeur des emballages récupérables mais non identifiables par l''entreprise.')
(549, 'Emballages à usage mixte', '3353', 'Ce compte enregistre la valeur des emballages utilisés à la fois pour des produits vendus et des produits de l''entreprise.')
(549, 'Autres emballages', '3358', 'Ce compte enregistre la valeur des autres types d''emballages utilisés par l''entreprise.')

(553, 'Animaux', '3631', 'Ce compte enregistre la valeur des animaux détenus en stock par l''entreprise.')
(553, 'Végétaux', '3632', 'Ce compte enregistre la valeur des végétaux détenus en stock par l''entreprise.')
(553, 'Autres stocks (activités annexes)', '3638', 'Ce compte enregistre la valeur des autres types de stocks liés à des activités annexes de l''entreprise.')

(558, 'Stock en consignation', '3771', 'Ce compte enregistre la valeur des stocks placés en consignation, c''est-à-dire des biens détenus par l''entreprise mais appartenant à des tiers et destinés à être vendus ou utilisés ultérieurement.'),
(558, 'Stock en dépôt', '3772', 'Ce compte enregistre la valeur des stocks détenus en dépôt par l''entreprise, c''est-à-dire des biens qui sont entreposés chez l''entreprise pour le compte de tiers.'),

(567, 'Fournisseurs', '4011', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés.'),
(567, 'Fournisseurs sous-traitant', '4013', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs sous-traitants pour des biens ou des services achetés.'),
(567, 'Fournisseurs, réserves de propriété', '4016', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés, avec réserve de propriété.'),
(567, 'Fournisseurs, retenues de garantie', '4017', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés, avec retenue de garantie.');

(568, 'Fournisseurs, effets à payer', '4021', 'Ce compte enregistre les effets à payer par l''entreprise à ses fournisseurs pour des biens ou des services achetés.'),
(568, 'Fournisseurs sous-traitant, effets à payer', '4023', 'Ce compte enregistre les effets à payer par l''entreprise à ses fournisseurs sous-traitants pour des biens ou des services achetés.');

(569, 'Fournisseurs', '4081', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés.'),
(569, 'Fournisseurs sous-traitants', '4083', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs sous-traitants pour des biens ou des services achetés.'),
(569, 'Fournisseurs, intérêts courus', '4086', 'Ce compte enregistre les intérêts courus sur les dettes de l''entreprise envers ses fournisseurs.');

(570, 'Fournisseurs avances et acomptes versés', '4091', 'Ce compte enregistre les avances et acomptes versés par l''entreprise à ses fournisseurs pour des biens ou des services à recevoir.'),
(570, 'Fournisseurs sous-traitants avances et acomptes versés', '4093', 'Ce compte enregistre les avances et acomptes versés par l''entreprise à ses fournisseurs sous-traitants pour des biens ou des services à recevoir.'),
(570, 'Fournisseurs créances pour emballages et matériels à rendre', '4094', 'Ce compte enregistre les créances de l''entreprise sur ses fournisseurs pour des emballages et matériels à rendre.'),
(570, 'Fournisseurs, rabais, remises, ristournes et autres avoirs à obtenir', '4098', 'Ce compte enregistre les rabais, remises, ristournes et autres avoirs à obtenir de la part des fournisseurs.');

(573, 'Adhérents, chèques impayés', '4131', 'Ce compte enregistre les chèques impayés émis par les adhérents.'),
(573, 'Clients-usagers, chèques impayés', '4132', 'Ce compte enregistre les chèques impayés émis par les clients-usagers.'),
(573, 'Adhérents, Autres valeurs impayés', '4133', 'Ce compte enregistre les autres valeurs impayées émises par les adhérents.'),
(573, 'Clients-usagers, autres valeurs impayés', '4138', 'Ce compte enregistre les autres valeurs impayées émises par les clients-usagers.');

(574, 'Adhérents cotisations litigieuses ou douteuses', '4161', 'Ce compte enregistre les cotisations litigieuses ou douteuses émises par les adhérents.'),
(574, 'Créances-usagers, factures à établir', '4162', 'Ce compte enregistre les factures à établir dues par les clients-usagers.'),
(574, 'Adhérents, clients-usagers, intérêts courus', '4186', 'Ce compte enregistre les intérêts courus dus par les adhérents et les clients-usagers.');

(575, 'Adhérents, Clients-usagers créditeurs', '4191', 'Ce compte enregistre les montants dus par les adhérents et les clients-usagers qui ont un solde créditeur.'),
(575, 'Clients-usagers, avances et acomptes reçus', '4192', 'Ce compte enregistre les avances et acomptes reçus des clients-usagers.'),
(575, 'Clients-usagers, dettes pour emballages et matériels consignés', '4194', 'Ce compte enregistre les dettes pour emballages et matériels consignés des clients-usagers.'),
(575, 'Clients-usagers, rabais, remises, ristournes et autres avoirs à accorder', '4198', 'Ce compte enregistre les rabais, remises, ristournes et autres avoirs à accorder aux clients-usagers.'),

(576, 'Personnel, avances', '4211', 'Ce compte enregistre les avances faites au personnel.'),
(576, 'Personnel, acomptes', '4212', 'Ce compte enregistre les acomptes versés au personnel.'),
(576, 'Frais avancés et fournitures au personnel', '4213', 'Ce compte enregistre les frais avancés et les fournitures fournies au personnel.'),

(579, 'Assistance médicale', '4241', 'Ce compte enregistre les dépenses liées à l''assistance médicale fournie au personnel.'),
(579, 'Allocations familiales', '4242', 'Ce compte enregistre les allocations familiales versées au personnel.'),
(579, 'Organismes sociaux rattachés à l''entité', '4245', 'Ce compte enregistre les contributions versées aux organismes sociaux rattachés à l''entité.'),
(579, 'Autres œuvres sociales internes', '4248', 'Ce compte enregistre les dépenses liées à d''autres œuvres sociales internes à l''entité.'),

(580, 'Délégués du personnel', '4251', 'Ce compte enregistre les frais relatifs aux délégués du personnel.'),
(580, 'Syndicats et assimilés', '4252', 'Ce compte enregistre les frais relatifs aux syndicats et aux représentants du personnel assimilés.'),
(580, 'Autres représentants du personnel', '4258', 'Ce compte enregistre les frais relatifs à d''autres représentants du personnel.'),

(582, 'Personnel congés à payer', '4281', 'Ce compte enregistre les charges liées aux congés à payer pour le personnel.'),
(582, 'Autres charges à payer', '4286', 'Ce compte enregistre d''autres charges à payer.'),
(582, 'Produits à recevoir', '4287', 'Ce compte enregistre les produits à recevoir.'),

(583, 'Prestations familiales', '4311', 'Ce compte enregistre les cotisations sociales liées aux prestations familiales.'),
(583, 'Accidents de travail', '4312', 'Ce compte enregistre les cotisations sociales liées aux accidents de travail.'),
(583, 'Autres cotisations sociales', '4318', 'Ce compte enregistre les autres cotisations sociales.'),

(584, 'Caisse de retraite obligatoire', '4321', 'Ce compte enregistre les cotisations sociales versées à la caisse de retraite obligatoire.'),
(584, 'Caisse de retraite complémentaire', '4322', 'Ce compte enregistre les cotisations sociales versées à la caisse de retraite complémentaire.'),
(584, 'Autres caisses de retraites', '4328', 'Ce compte enregistre les cotisations sociales versées à d''autres caisses de retraites.'),

(585, 'Mutuelle de santé', '4331', 'Ce compte enregistre les cotisations sociales versées à la mutuelle de santé.'),
(585, 'Assurances retraite', '4332', 'Ce compte enregistre les cotisations sociales versées aux assurances retraite.'),
(585, 'Assurances et organismes de santé', '4333', 'Ce compte enregistre les cotisations sociales versées aux assurances et organismes de santé.'),

(586, 'Charges sociales sur gratifications à payer', '4381', 'Ce compte enregistre les charges sociales à payer sur les gratifications du personnel.'),
(586, 'Charges sociales sur congés à payer', '4382', 'Ce compte enregistre les charges sociales à payer sur les congés du personnel.'),
(586, 'Autres charges à payer', '4386', 'Ce compte enregistre d''autres charges à payer.'),
(586, 'Produits à recevoir', '4387', 'Ce compte enregistre les produits à recevoir.'),

(587, 'Impôts et taxes d''Etat', '4421', 'Ce compte enregistre les impôts et taxes dus à l''État.'),
(587, 'Impôts et taxes pour les collectivités publiques', '4422', 'Ce compte enregistre les impôts et taxes dus aux collectivités publiques.'),
(587, 'Impôts et taxes recouvrables sur des obligataires', '4423', 'Ce compte enregistre les impôts et taxes recouvrables sur des obligataires.'),
(587, 'Impôts et taxes recouvrables sur des adhérents et autres', '4424', 'Ce compte enregistre les impôts et taxes recouvrables sur des adhérents et autres.'),
(587, 'Droits de douane', '4426', 'Ce compte enregistre les droits de douane.'),
(587, 'Autres impôts et taxes', '4428', 'Ce compte enregistre d''autres impôts et taxes.'),

(592, 'Impôts général sur le revenu', '4471', 'Ce compte enregistre l''impôt général sur le revenu.'),
(592, 'Impôts sur salaires', '4472', 'Ce compte enregistre les impôts sur les salaires.'),
(592, 'Contribution nationale', '4473', 'Ce compte enregistre la contribution nationale.'),
(592, 'Contribution nationale de solidarité', '4474', 'Ce compte enregistre la contribution nationale de solidarité.'),
(592, 'Autres impôts et contributions', '4478', 'Ce compte enregistre d''autres impôts et contributions.'),

(593, 'Charges à payer', '4486', 'Ce compte enregistre les charges à payer.'),
(593, 'Produits à recevoir', '4487', 'Ce compte enregistre les produits à recevoir.'),

(594, 'État, Subvention à recevoir', '4491', 'Ce compte enregistre les subventions à recevoir de l''État.'),

(595, 'Apporteurs en nature', '4511', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires à la société.'),
(595, 'Apporteurs en numéraire', '4512', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires à la société.'),
(595, 'Adhérents, dirigeants, comptes courants', '4515', 'Ce compte enregistre les sommes déposées par les adhérents, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants.'),

(596, 'Apporteurs en nature', '4521', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires lors de la création de la société.'),
(596, 'Apporteurs en numéraire', '4522', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires lors de la création de la société.'),
(596, 'Fondateurs, dirigeants, comptes courants', '4525', 'Ce compte enregistre les sommes déposées par les fondateurs, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants lors de la création de la société.'),

(597, 'Apporteurs en nature', '4531', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(597, 'Apporteurs en numéraire', '4532', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(597, 'Membres, dirigeants, comptes courants', '4535', 'Ce compte enregistre les sommes déposées par les membres, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants.'),

(598, 'Apporteurs en nature', '4541', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(598, 'Apporteurs en numéraire', '4542', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(598, 'Adhérents, dirigeants, comptes courants', '4545', 'Ce compte enregistre les sommes déposées par les adhérents ou dirigeants sous forme de comptes courants.'),

(599, 'Congrégations religieuses et assimilées', '4561', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des congrégations religieuses ou entités similaires.'),
(599, 'Waqf et assimilés', '4562', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des Waqf ou entités similaires.'),

(600, 'Mécènes et assimilés', '4571', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des mécènes ou entités similaires.'),
(600, 'Bénévoles et assimilés', '4572', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des bénévoles ou entités similaires.'),

(605, 'Bailleurs-fonds d''administration à recevoir', '4692', 'Ce compte enregistre les montants dus aux bailleurs de fonds pour les frais administratifs à recevoir.'),
(605, 'Etat-Fonds d''administration à recevoir', '4693', 'Ce compte enregistre les montants dus à l''État pour les frais administratifs à recevoir.'),
(605, 'Autres tiers ou organismes de financement assimilés Fonds d''administration à recevoir', '4694', 'Ce compte enregistre les montants dus à d''autres tiers ou organismes de financement pour les frais administratifs à recevoir.'),

(606, 'Débiteurs divers', '4711', 'Ce compte enregistre les montants dus à l''entreprise par des débiteurs divers qui ne sont pas spécifiquement classés ailleurs dans le système comptable.'),
(606, 'Créditeurs divers', '4712', 'Ce compte enregistre les montants dus par l''entreprise à des créditeurs divers qui ne sont pas spécifiquement classés ailleurs dans le système comptable.'),
(606, 'Créditeurs, dons en nature courant non consommés', '4713', 'Ce compte enregistre les dons en nature reçus par l''entreprise qui n''ont pas encore été consommés ou utilisés dans ses opérations courantes.'),
(606, 'Débiteurs divers-retenues de garantie', '4717', 'Ce compte enregistre les montants dus à l''entreprise par des débiteurs divers, avec des retenues de garantie ou des provisions pour des réclamations potentielles.'),
(606, 'Bons de souscription d''actions et d''obligations', '4719', 'Ce compte enregistre les bons de souscription d''actions et d''obligations émis par l''entreprise, qui donnent le droit à leur détenteur de souscrire à de nouvelles actions ou obligations à des conditions spécifiées.'),

(607, 'Créances sur cessions de titres de placement', '4721', 'Ce compte enregistre les créances découlant de la cession de titres de placement, c''est-à-dire les montants dus à l''entreprise résultant de la vente de titres de placement.'),
(607, 'Versements restant à effectuer sur titres de placement non libérés', '4726', 'Ce compte enregistre les montants restant à verser sur des titres de placement qui n''ont pas encore été entièrement libérés ou payés.'),

(608, "Subventions d'investissement à recevoir", '4731', "Ce compte enregistre les subventions accordées à l'entreprise pour financer des investissements spécifiques qui n'ont pas encore été reçues."),
(608, "Subventions d'exploitation à recevoir", '4732', "Ce compte enregistre les subventions accordées à l'entreprise pour soutenir ses activités opérationnelles courantes qui n'ont pas encore été reçues."),
(608, "Subventions d'équilibre à recevoir", '4733', "Ce compte enregistre les subventions accordées à l'entreprise pour maintenir son équilibre financier qui n'ont pas encore été reçues."),
(608, 'Autres subventions à recevoir', '4738', 'Ce compte enregistre d''autres types de subventions à recevoir qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(608, 'Subventions à reverser', '4739', 'Ce compte enregistre les subventions que l''entreprise doit reverser à d''autres entités ou organismes conformément à des accords ou des réglementations spécifiques.'),

(609, 'Compte de répartition périodique des charges', '4746', 'Ce compte est utilisé pour répartir périodiquement les charges sur plusieurs périodes comptables, généralement pour des charges qui ne peuvent pas être directement imputées à une seule période.'),
(609, 'Compte de répartition périodique des produits', '4747', 'Ce compte est utilisé pour répartir périodiquement les produits sur plusieurs périodes comptables, généralement pour des produits qui ne peuvent pas être directement attribués à une seule période.')

(613, 'Diminution des créances d''exploitation et HAO', '4781', 'Ce compte enregistre les diminutions des créances d''exploitation et des créances hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Diminution des créances d''exploitation', '47811', 'Ce sous-compte enregistre spécifiquement les diminutions des créances résultant des opérations d''exploitation de l''entreprise.'),
(613, 'Diminution des créances HAO', '47818', 'Ce sous-compte enregistre spécifiquement les diminutions des créances hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Diminution des créances financières', '4782', 'Ce compte enregistre les diminutions des créances financières de l''entreprise.'),
(613, 'Augmentation des dettes d''exploitation et HAO', '4783', 'Ce compte enregistre les augmentations des dettes d''exploitation et des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Augmentation des dettes d''exploitation', '47831', 'Ce sous-compte enregistre spécifiquement les augmentations des dettes résultant des opérations d''exploitation de l''entreprise.'),
(613, 'Augmentation des dettes HAO', '47838', 'Ce sous-compte enregistre spécifiquement les augmentations des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Augmentation des dettes financières', '4784', 'Ce compte enregistre les augmentations des dettes financières de l''entreprise.'),
(613, "Différences d'évaluation sur instruments de trésorerie", '4786', "Ce compte enregistre les différences entre la valeur comptable et la valeur de marché des instruments de trésorerie."),
(613, "Différences compensées par couverture de change", '4788', "Ce compte enregistre les différences compensées par des opérations de couverture de change pour minimiser les risques de change de l'entreprise."),

(614, 'Augmentation des créances d''exploitation et HAO', '4791', 'Ce compte enregistre les augmentations des créances d''exploitation et des créances hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Augmentation des créances d''exploitation', '47911', 'Ce sous-compte enregistre spécifiquement les augmentations des créances résultant des opérations d''exploitation de l''entreprise.'),
(614, 'Augmentation des créances HAO', '47918', 'Ce sous-compte enregistre spécifiquement les augmentations des créances hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Augmentation des créances financières', '4792', 'Ce compte enregistre les augmentations des créances financières de l''entreprise.'),
(614, 'Diminution des dettes d''exploitation et HAO', '4793', 'Ce compte enregistre les diminutions des dettes d''exploitation et des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Diminution des dettes d''exploitation', '47931', 'Ce sous-compte enregistre spécifiquement les diminutions des dettes résultant des opérations d''exploitation de l''entreprise.'),
(614, 'Diminution des dettes HAO', '47938', 'Ce sous-compte enregistre spécifiquement les diminutions des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Diminution des dettes financières', '4794', 'Ce compte enregistre les diminutions des dettes financières de l''entreprise.'),
(614, 'Différences d''évaluation sur instruments de trésorerie', '4797', 'Ce compte enregistre les différences entre la valeur comptable et la valeur de marché des instruments de trésorerie.'),
(614, 'Différences compensées par couverture de change', '4798', 'Ce compte enregistre les différences compensées par des opérations de couverture de change pour minimiser les risques de change de l''entreprise.'),

(615, 'Fournisseurs, immobilisations incorporelles', '4811', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour l''acquisition d''immobilisations incorporelles, telles que les brevets, les licences ou les logiciels.'),
(615, 'Fournisseurs, immobilisations corporelles', '4812', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour l''acquisition d''immobilisations corporelles, telles que les équipements, les machines ou les bâtiments.'),
(615, 'Versements restant à effectuer sur titres de placement non libérés', '4813', 'Ce compte enregistre les montants restant à verser sur des titres de placement qui n''ont pas encore été entièrement libérés ou payés.'),
(615, 'Fournisseurs, réserves de propriété-immobilisations', '4816', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs qui ont accordé une réserve de propriété sur des immobilisations, c''est-à-dire une clause stipulant que la propriété de l''immobilisation n''est transférée à l''acheteur qu''après le paiement complet.'),
(615, 'Fournisseurs, réserve de propriété-immobilisations incorporelles', '48161', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une réserve de propriété sur des immobilisations incorporelles.'),
(615, 'Fournisseurs, réserves de propriété-immobilisations corporelles', '48162', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une réserve de propriété sur des immobilisations corporelles.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations', '4817', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs qui ont retenu une garantie sur des immobilisations, généralement pour assurer la qualité ou la conformité des biens livrés.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations incorporelles', '48171', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une retenue de garantie sur des immobilisations incorporelles.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations corporelles', '48172', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une retenue de garantie sur des immobilisations corporelles.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations', '4818', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore été reçues ou enregistrées dans les comptes de l''entreprise.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations incorporelles', '48181', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore été reçues ou enregistrées dans les comptes de l''entreprise, concernant des immobilisations incorporelles.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations corporelles', '48182', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore été reçues ou enregistrées dans les comptes de l''entreprise, concernant des immobilisations corporelles.'),

(617, 'Créances, en compte, immobilisation incorporelles', '4851', 'Ce compte enregistre les créances sur des tiers pour des immobilisations incorporelles qui sont comptabilisées en compte.'),
(617, 'Créances, en compte, immobilisation corporelles', '4852', 'Ce compte enregistre les créances sur des tiers pour des immobilisations corporelles qui sont comptabilisées en compte.'),
(617, 'Créances, immobilisation financières', '4856', 'Ce compte enregistre les créances sur des tiers pour des immobilisations financières.'),
(617, 'Créances, retenues de garantie sur cession d''immobilisation', '4857', 'Ce compte enregistre les créances sur des tiers pour des retenues de garantie sur la cession d''immobilisation.'),
(617, 'Créances sur cession d''immobilisations, facture à établir', '4858', 'Ce compte enregistre les créances sur des tiers pour des cessions d''immobilisations pour lesquelles une facture doit encore être établie.'),

(618, 'Dettes des dons et legs d''immobilisations', '4861', 'Ce compte enregistre les dettes de l''entreprise liées aux dons et legs d''immobilisations qu''elle a reçus.'),
(618, 'Créances reçues sur dons et legs d''immobilisation', '4865', 'Ce compte enregistre les créances de l''entreprise découlant des dons et legs d''immobilisations qu''elle a reçus.'),

(619, 'Créditeurs, dons en nature HAO non consommés', '4881', 'Ce compte enregistre les montants dus par l''entreprise pour des dons en nature hors activités ordinaires (HAO) qui n''ont pas encore été consommés ou utilisés dans ses opérations courantes.'),

(621, 'Dépréciations des créances litigieuses', '4911', 'Ce compte enregistre les dépréciations comptables appliquées aux créances litigieuses, c''est-à-dire les montants estimés comme irrécouvrables en raison de litiges ou de contestations.'),
(621, 'Dépréciations des créances douteuses', '4912', 'Ce compte enregistre les dépréciations comptables appliquées aux créances douteuses, c''est-à-dire les montants estimés comme présentant un risque de non-paiement en raison de l''incertitude quant à la solvabilité du débiteur.'),

(626, 'Dépréciations des créances sur cessions d''immobilisations', '4985', 'Ce compte enregistre les dépréciations comptables appliquées aux créances résultant de cessions d''immobilisations, c''est-à-dire les montants estimés comme irrécouvrables ou présentant un risque de non-paiement.'),
(626, 'Dépréciations des autres créances H.A.O.', '4988', 'Ce compte enregistre les dépréciations comptables appliquées aux autres créances hors activités ordinaires (H.A.O.), c''est-à-dire les montants estimés comme irrécouvrables ou présentant un risque de non-paiement, mais qui ne sont pas spécifiquement liés à des cessions d''immobilisations.'),

(627, 'Provisions pour risques sur opérations d''exploitation', '4991', 'Ce compte enregistre les provisions comptables constituées pour couvrir les risques potentiels liés aux opérations d''exploitation de l''entreprise, tels que les litiges, les garanties ou les pertes sur créances.'),
(627, 'Provisions pour risques sur opérations H.A.O.', '4998', 'Ce compte enregistre les provisions comptables constituées pour couvrir les risques potentiels liés aux autres opérations hors activités ordinaires (H.A.O.) de l''entreprise, qui ne sont pas spécifiquement liés aux opérations d''exploitation.'),

(628, 'Titres du Trésor à court terme', '5011', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Trésor à court terme, qui sont des titres de dette émis par le gouvernement et ayant une échéance de moins d''un an.'),
(628, 'Titres d''organismes financiers', '5012', 'Ce compte enregistre les investissements de l''entreprise dans des titres émis par des organismes financiers, tels que des obligations ou des actions, et ayant une échéance de moins d''un an.'),
(628, 'Bons de caisse à court terme', '5013', 'Ce compte enregistre les investissements de l''entreprise dans des bons de caisse à court terme, qui sont des titres de créance émis par des institutions financières et ayant une échéance de moins d''un an.'),
(628, 'Frais d''acquisition des titres de trésor et bons de caisse', '5016', 'Ce compte enregistre les frais d''acquisition supportés par l''entreprise lors de l''achat de titres du Trésor et de bons de caisse, tels que les commissions ou les frais de courtage.'),

(629, 'Actions cotées', '5022', 'Ce compte enregistre les investissements de l''entreprise dans des actions cotées en bourse, c''est-à-dire des actions dont le cours est publié sur un marché financier.'),
(629, 'Actions non cotées', '5023', 'Ce compte enregistre les investissements de l''entreprise dans des actions non cotées en bourse, c''est-à-dire des actions qui ne sont pas négociées sur un marché financier public.'),
(629, 'Autres actions', '5025', 'Ce compte enregistre les investissements de l''entreprise dans d''autres types d''actions qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(629, 'Frais d''acquisition des obligations', '5026', 'Ce compte enregistre les frais d''acquisition supportés par l''entreprise lors de l''achat d''obligations, tels que les commissions ou les frais de courtage.'),

(630, 'Obligations cotées', '5032', 'Ce compte enregistre les investissements de l''entreprise dans des obligations cotées en bourse, c''est-à-dire des obligations dont le cours est publié sur un marché financier.'),
(630, 'Obligations non cotées', '5033', 'Ce compte enregistre les investissements de l''entreprise dans des obligations non cotées en bourse, c''est-à-dire des obligations qui ne sont pas négociées sur un marché financier public.'),
(630, 'Autres obligations', '5035', 'Ce compte enregistre les investissements de l''entreprise dans d''autres types d''obligations qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(630, 'Frais d''acquisition d''obligations', '5036', 'Ce compte enregistre les frais d''acquisition supportés par l''entreprise lors de l''achat d''obligations, tels que les commissions ou les frais de courtage.'),

(631, 'Bons de souscription d''actions', '5042', 'Ce compte enregistre les bons de souscription d''actions émis par l''entreprise, qui donnent le droit à leur détenteur de souscrire à de nouvelles actions de l''entreprise à un prix prédéterminé.'),
(631, 'Bons de souscription d''obligations', '5043', 'Ce compte enregistre les bons de souscription d''obligations émis par l''entreprise, qui donnent le droit à leur détenteur de souscrire à de nouvelles obligations de l''entreprise à un prix prédéterminé.'),

(633, 'Titres du trésor et bons de caisse à court terme', '5061', 'Ce compte regroupe les investissements de l''entreprise dans des titres du Trésor et des bons de caisse à court terme, représentant des instruments de placement à court terme émis par le gouvernement ou des institutions financières.'),
(633, 'Actions', '5062', 'Ce compte regroupe les investissements de l''entreprise dans des actions, représentant des parts de propriété dans des sociétés.'),
(633, 'Obligations', '5063', 'Ce compte regroupe les investissements de l''entreprise dans des obligations, représentant des titres de créance émis par des gouvernements, des sociétés ou d''autres entités.'),

(638, 'Chèque de voyage', '5185', 'Ce compte enregistre les chèques de voyage détenus par l''entreprise, qui sont des instruments de paiement prépayés utilisés comme alternative aux espèces lors de voyages internationaux.'),
(638, 'Coupons échus', '5186', 'Ce compte enregistre les coupons échus, c''est-à-dire les intérêts qui n''ont pas été encaissés par les détenteurs d''obligations à leur date d''échéance.'),
(638, 'Intérêts échus des obligations', '5187', 'Ce compte enregistre les intérêts échus mais non encore payés sur les obligations détenues par l''entreprise, qui doivent être comptabilisés comme une charge à payer.'),

(639, 'Banques en monnaie nationale', '5211', 'Ce compte enregistre les soldes détenus par l''entreprise dans des comptes bancaires libellés dans la monnaie nationale du pays.'),
(639, 'Banques en devises', '5215', 'Ce compte enregistre les soldes détenus par l''entreprise dans des comptes bancaires libellés dans des devises étrangères autres que la monnaie nationale.'),

(644, 'Banque, intérêts courus charges à payer', '5261', 'Ce compte enregistre les intérêts sur des charges qui ont été accumulés mais qui n''ont pas encore été payés par l''entreprise.'),
(644, 'Banque, intérêts courus produits à recevoir', '5267', 'Ce compte enregistre les intérêts sur des produits qui ont été accumulés mais qui n''ont pas encore été reçus par l''entreprise.'),

(648, 'Etablissements financiers, intérêts courus charges à payer', '5361', 'Ce compte enregistre les intérêts sur des charges qui ont été accumulés mais qui n''ont pas encore été payés par l''entreprise auprès d''établissements financiers.'),
(648, 'Etablissements financiers, intérêts courus produits à recevoir', '5367', 'Ce compte enregistre les intérêts sur des produits qui ont été accumulés mais qui n''ont pas encore été reçus par l''entreprise de la part d''établissements financiers.'),

(668, 'Achats de biens et services liés à l''activité dans l''Etat partie', '6011', 'Ce compte enregistre les dépenses d''achat de biens et services nécessaires à l''activité de l''entreprise réalisées dans l''État partie.'),
(668, 'Achats de biens et services liés à l''activité dans la Région', '6012', 'Ce compte enregistre les dépenses d''achat de biens et services nécessaires à l''activité de l''entreprise réalisées dans la région spécifiée.'),
(668, 'Achats de biens et services liés à l''activité hors Région', '6013', 'Ce compte enregistre les dépenses d''achat de biens et services nécessaires à l''activité de l''entreprise réalisées en dehors de la région spécifiée.'),
(668, 'Frais sur achats de biens et services liés à l''activité', '6015', 'Ce compte enregistre les frais associés aux achats de biens et services nécessaires à l''activité de l''entreprise, tels que les frais de transport, de manutention, etc.'),
(668, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6019', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de biens et services, qui n''ont pas été ventilés dans des comptes spécifiques.'),

(669, 'Achats de marchandises et matières premières dans l''Etat partie', '6021', 'Ce compte enregistre les dépenses d''achat de marchandises et de matières premières réalisées dans l''État partie.'),
(669, 'Achats de marchandises et matières premières dans la Région', '6022', 'Ce compte enregistre les dépenses d''achat de marchandises et de matières premières réalisées dans la région spécifiée.'),
(669, 'Achats de marchandises et matières premières hors Région', '6023', 'Ce compte enregistre les dépenses d''achat de marchandises et de matières premières réalisées en dehors de la région spécifiée.'),
(669, 'Frais sur achats de marchandises et matières', '6025', 'Ce compte enregistre les frais associés aux achats de marchandises et de matières premières, tels que les frais de transport, de manutention, etc.'),
(669, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6029', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de marchandises et matières premières, qui n''ont pas été ventilés dans des comptes spécifiques.'),

(670, 'Variations des stocks de biens et services liés à l''activité', '6031', 'Ce compte enregistre les variations des stocks de biens et services nécessaires à l''activité de l''entreprise.'),
(670, 'Variations des stocks de marchandises', '6032', 'Ce compte enregistre les variations des stocks de marchandises détenues par l''entreprise.'),
(670, 'Variations des stocks de matières premières et fournitures liées', '6033', 'Ce compte enregistre les variations des stocks de matières premières et de fournitures liées utilisées par l''entreprise.'),
(670, 'Variations des stocks d''autres approvisionnements', '6034', 'Ce compte enregistre les variations des stocks d''autres types d''approvisionnements détenus par l''entreprise.'),
(670, 'Variations de stocks de dons en nature à distribuer', '6035', 'Ce compte enregistre les variations des stocks de dons en nature à distribuer, c''est-à-dire les biens donnés à l''entreprise mais pas encore distribués.'),

(671, 'Matières consommables', '6041', 'Ce compte enregistre les achats de matières consommables utilisées dans le processus de production ou dans d''autres activités de l''entreprise.'),
(671, 'Matières combustibles', '6042', 'Ce compte enregistre les achats de matières combustibles utilisées dans le processus de production ou dans d''autres activités de l''entreprise.'),
(671, 'Produits d''entretien', '6043', 'Ce compte enregistre les achats de produits d''entretien utilisés pour maintenir les installations et l''équipement de l''entreprise en bon état de fonctionnement.'),
(671, 'Frais sur achats matières et fournitures consommables', '6045', 'Ce compte enregistre les frais associés aux achats de matières et de fournitures consommables, tels que les frais de transport, de manutention, etc.'),
(671, 'Fournitures de magasin', '6046', 'Ce compte enregistre les achats de fournitures de magasin utilisées pour soutenir les opérations quotidiennes de l''entreprise, telles que les fournitures de bureau, les fournitures de nettoyage, etc.'),
(671, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6049', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de matières et fournitures, qui n''ont pas été ventilés dans des comptes spécifiques.'),

(672, 'Fournitures non stockables-Eau', '6051', 'Ce compte enregistre les achats de fournitures non stockables liées à l''eau, telles que les frais d''approvisionnement en eau.'),
(672, 'Fournitures non stockables-Electricité', '6052', 'Ce compte enregistre les achats de fournitures non stockables liées à l''électricité, telles que les frais d''approvisionnement en électricité.'),
(672, 'Fournitures non stockables-Autres énergies', '6053', 'Ce compte enregistre les achats de fournitures non stockables liées à d''autres formes d''énergie, telles que le gaz, le fioul, etc.'),
(672, 'Fournitures d''entretien non stockables', '6054', 'Ce compte enregistre les achats de fournitures d''entretien non stockables utilisées pour maintenir les installations et l''équipement de l''entreprise en bon état de fonctionnement.'),
(672, 'Fournitures de bureau non stockables', '6055', 'Ce compte enregistre les achats de fournitures de bureau non stockables utilisées pour soutenir les opérations quotidiennes de l''entreprise.'),
(672, 'Achat de petit matériel et outillage', '6056', 'Ce compte enregistre les achats de petit matériel et d''outillage utilisés dans le processus de production ou dans d''autres activités de l''entreprise.'),
(672, 'Achats d''études et prestations de services', '6057', 'Ce compte enregistre les achats de services d''études et de prestations de services externes réalisés par l''entreprise.'),
(672, 'Achats de travaux, matériels et équipements', '6058', 'Ce compte enregistre les achats de travaux, de matériels et d''équipements réalisés par l''entreprise pour ses activités.'),
(672, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6059', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures et prestations de services, qui n''ont pas été ventilés dans des comptes spécifiques.'),

(673, 'Billetteries', '6061', 'Ce compte enregistre les achats de billets pour des événements ou des transports.'),
(673, 'Tombola et autres jeux', '6062', 'Ce compte enregistre les achats de billets ou de fournitures pour des jeux de hasard ou des loteries.'),
(673, 'Bons d''achats', '6063', 'Ce compte enregistre les achats de bons d''achats utilisés pour des récompenses, des cadeaux ou des promotions.'),
(673, 'Voyages et sorties', '6064', 'Ce compte enregistre les achats liés aux voyages et sorties d''entreprise.'),
(673, 'Autres activités', '6068', 'Ce compte regroupe les achats liés à d''autres activités non spécifiquement couvertes par les comptes précédents.'),

(674, 'Emballages perdus', '6081', 'Ce compte enregistre les achats d''emballages qui sont perdus ou endommagés pendant le processus de production ou de transport.'),
(674, 'Emballages récupérables non identifiables', '6082', 'Ce compte enregistre les achats d''emballages qui peuvent être récupérés mais dont l''identification précise n''est pas possible.'),
(674, 'Emballages à usage mixte', '6083', 'Ce compte enregistre les achats d''emballages qui peuvent être utilisés à des fins multiples.'),
(674, 'Frais sur achats d''emballages', '6085', 'Ce compte enregistre les frais associés aux achats d''emballages, tels que les frais de transport, de manutention, etc.'),
(674, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6089', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats d''emballages, qui n''ont pas été ventilés dans des comptes spécifiques.'),

(678, 'Voyages et déplacements', '6181', 'Ce compte enregistre les dépenses liées aux voyages et déplacements des employés de l''entreprise pour des missions professionnelles.'),
(678, 'Transports administratifs', '6183', 'Ce compte enregistre les dépenses liées aux transports administratifs effectués par l''entreprise, tels que les déplacements pour des réunions ou des visites de clients.'),

(681, 'Locations de terrains', '6221', 'Ce compte enregistre les dépenses liées à la location de terrains pour une période déterminée.'),
(681, 'Locations de bâtiments', '6222', 'Ce compte enregistre les dépenses liées à la location de bâtiments pour une période déterminée.'),
(681, 'Locations de matériels et outillage', '6223', 'Ce compte enregistre les dépenses liées à la location de matériels et d''outillage pour une période déterminée.'),
(681, 'Malis sur emballages', '6224', 'Ce compte enregistre les pertes sur les emballages loués.'),
(681, 'Locations d''emballages', '6225', 'Ce compte enregistre les dépenses liées à la location d''emballages pour une période déterminée.'),
(681, 'Fermages et loyers du foncier', '6226', 'Ce compte enregistre les dépenses liées à la location de terrains agricoles (fermages) ou de biens fonciers (loyers).'),
(681, 'Locations et charges locatives diverses', '6228', 'Ce compte enregistre les dépenses liées à d''autres types de locations et de charges locatives qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(682, 'Crédit-bail immobilier', '6232', 'Ce compte enregistre les dépenses liées aux contrats de crédit-bail immobilier, où une entreprise loue un bien immobilier avec une option d''achat à la fin du contrat.'),
(682, 'Crédit-bail mobilier', '6233', 'Ce compte enregistre les dépenses liées aux contrats de crédit-bail mobilier, où une entreprise loue des biens mobiliers avec une option d''achat à la fin du contrat.'),
(682, 'Location-vente', '6234', 'Ce compte enregistre les dépenses liées aux contrats de location-vente, où une entreprise loue un bien avec l''intention de l''acheter à la fin du contrat.'),
(682, 'Autres contrats de location-acquisition', '6238', 'Ce compte enregistre les dépenses liées à d''autres types de contrats de location-acquisition qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(683, 'Entretien et répartition des biens immobiliers', '6241', 'Ce compte enregistre les dépenses liées à l''entretien et à la réparation des biens immobiliers de l''entreprise, tels que les bâtiments et les terrains.'),
(683, 'Entretien et répartition des biens mobiliers', '6242', 'Ce compte enregistre les dépenses liées à l''entretien et à la réparation des biens mobiliers de l''entreprise, tels que le matériel et les équipements.'),
(683, 'Maintenance', '6243', 'Ce compte enregistre les dépenses liées à la maintenance préventive et corrective des équipements et des installations de l''entreprise.'),
(683, 'Charges de démantèlement et remise en état', '6244', 'Ce compte enregistre les charges liées au démantèlement et à la remise en état des biens de l''entreprise à la fin de leur cycle de vie.'),
(683, 'Autres entretiens et répartitions', '6248', 'Ce compte enregistre les dépenses liées à d''autres types d''entretiens et de réparations qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(684, 'Assurances multirisques', '6251', 'Ce compte enregistre les primes d''assurance pour une police d''assurance multirisque, qui couvre plusieurs types de risques.'),
(684, 'Assurances matériel de transport', '6252', 'Ce compte enregistre les primes d''assurance pour le matériel de transport de l''entreprise, tels que les véhicules et les machines.'),
(684, 'Assurances risques d''exploitation', '6253', 'Ce compte enregistre les primes d''assurance pour les risques liés à l''exploitation de l''entreprise, tels que les pertes d''exploitation et les responsabilités civiles.'),
(684, 'Autres primes d''assurances', '6258', 'Ce compte enregistre les primes d''assurance pour d''autres types de risques qui ne sont pas spécifiquement couverts par les comptes précédents.');

(685, 'Etudes et recherches', '6261', 'Ce compte enregistre les dépenses liées aux études et aux recherches menées par l''entreprise pour développer de nouveaux produits ou améliorer ses processus.'),
(685, 'Documentation générale', '6265', 'Ce compte enregistre les dépenses liées à la documentation générale de l''entreprise, telle que la création et la gestion de documents administratifs.'),
(685, 'Documentation technique', '6266', 'Ce compte enregistre les dépenses liées à la documentation technique de l''entreprise, telle que la création de manuels d''utilisation et de guides techniques.');

(686, 'Annonces, insertions', '6271', 'Ce compte enregistre les dépenses liées aux annonces et aux insertions publicitaires dans les médias.'),
(686, 'Catalogues, imprimés publicitaires', '6272', 'Ce compte enregistre les dépenses liées à la création et à la diffusion de catalogues et d''imprimés publicitaires.'),
(686, 'Congrès, universités et assimilés', '6273', 'Ce compte enregistre les dépenses liées à la participation à des congrès, des universités et des événements similaires.'),
(686, 'Manifestations', '6274', 'Ce compte enregistre les dépenses liées à l''organisation de manifestations, telles que des salons professionnels et des expositions.'),
(686, 'Publications', '6275', 'Ce compte enregistre les dépenses liées à la publication de documents promotionnels, tels que des brochures et des dépliants.'),
(686, 'Frais de colloques, séminaires, conférences', '6277', 'Ce compte enregistre les frais liés à la participation à des colloques, des séminaires et des conférences.'),
(686, 'Autres charges de publicité et relations publiques', '6278', 'Ce compte enregistre d''autres charges liées à la publicité et aux relations publiques qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(687, 'Frais de téléphone', '6281', 'Ce compte enregistre les frais liés aux communications téléphoniques de l''entreprise, y compris les abonnements et les frais d''utilisation.'),
(687, 'Frais de télécopie', '6283', 'Ce compte enregistre les frais liés à l''envoi et à la réception de télécopies par l''entreprise.'),
(687, 'Frais d''internet', '6284', 'Ce compte enregistre les frais liés à l''accès à Internet et aux services en ligne utilisés par l''entreprise.'),
(687, 'Autres frais de télécommunication', '6288', 'Ce compte enregistre d''autres frais liés aux communications et aux télécommunications qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(688, 'Frais sur titres (vente, garde)', '6311', 'Ce compte enregistre les frais liés à la vente et à la garde de titres, tels que les frais de courtage et les frais de garde.'),
(688, 'Frais sur effets', '6312', 'Ce compte enregistre les frais liés aux effets financiers, tels que les frais de traitement des chèques et des virements.'),
(688, 'Locations de coffres', '6313', 'Ce compte enregistre les frais liés à la location de coffres-forts pour le stockage de biens de valeur.'),
(688, 'Commissions sur cartes de crédit', '6315', 'Ce compte enregistre les commissions payées par l''entreprise pour l''utilisation de cartes de crédit dans ses transactions.'),
(688, 'Frais d''émission d''emprunts', '6316', 'Ce compte enregistre les frais liés à l''émission d''emprunts, tels que les frais de dossier et les frais de placement.'),
(688, 'Frais sur instruments de monnaie électronique', '6317', 'Ce compte enregistre les frais liés à l''utilisation d''instruments de monnaie électronique, tels que les frais de traitement des paiements électroniques.'),
(688, 'Autres frais bancaires', '6318', 'Ce compte enregistre d''autres frais bancaires qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(689, 'Commissions', '6322', 'Ce compte enregistre les commissions payées par l''entreprise pour divers services, tels que les commissions sur les ventes ou les commissions de courtage.'),
(689, 'Honoraires des professions règlementées', '6324', 'Ce compte enregistre les honoraires versés aux professions réglementées, telles que les honoraires des avocats, des experts-comptables, etc.'),
(689, 'Frais d''actes et de contentieux', '6325', 'Ce compte enregistre les frais liés aux actes juridiques et aux procédures contentieuses, tels que les frais de notaire et les frais de justice.'),
(689, 'Rémunérations des autres prestataires de services', '6327', 'Ce compte enregistre les rémunérations versées à d''autres prestataires de services qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(689, 'Divers frais', '6328', 'Ce compte enregistre les frais divers qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(691, 'Redevances pour brevets, licences', '6342', 'Ce compte enregistre les redevances payées pour l''utilisation de brevets et de licences.'),
(691, 'Redevances pour logiciels', '6343', 'Ce compte enregistre les redevances payées pour l''utilisation de logiciels.'),
(691, 'Redevances pour sites internet', '6345', 'Ce compte enregistre les redevances payées pour l''utilisation de sites internet.'),
(691, 'Redevances pour concessions, droits et valeurs similaires', '6346', 'Ce compte enregistre les redevances payées pour l''utilisation de concessions, de droits et de valeurs similaires.'),
(691, 'Autres redevances', '6248', 'Ce compte enregistre d''autres types de redevances qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(692, 'Cotisations', '6351', 'Ce compte enregistre les cotisations versées, telles que les cotisations sociales ou les cotisations syndicales.'),
(692, 'Concours divers', '6358', 'Ce compte enregistre les frais de participation à des concours et compétitions divers.'),

(694, 'Personnel intérimaire', '6371', 'Ce compte enregistre les dépenses liées au personnel intérimaire, c''est-à-dire les travailleurs temporaires embauchés pour une période déterminée.'),
(694, 'Personnel détaché ou prêté à l''entité', '6372', 'Ce compte enregistre les dépenses liées au personnel détaché ou prêté à l''entité, c''est-à-dire les employés mis à disposition par une autre entité ou entreprise.'),

(695, 'Frais de recrutement du personnel', '6381', 'Ce compte enregistre les frais liés au recrutement du personnel, tels que les honoraires des agences de recrutement ou les frais de publicité pour les postes vacants.'),
(695, 'Frais de déménagement', '6382', 'Ce compte enregistre les frais liés au déménagement du personnel, tels que les frais de transport ou les frais de logement temporaires.'),
(695, 'Réceptions', '6383', 'Ce compte enregistre les frais liés à l''organisation de réceptions, tels que les frais de restauration ou les frais de location de salles.'),
(695, 'Missions', '6384', 'Ce compte enregistre les frais liés aux missions professionnelles effectuées par le personnel, tels que les frais de déplacement ou les frais de subsistance.'),
(695, 'Charges de copropriété', '6385', 'Ce compte enregistre les charges liées à la copropriété des locaux utilisés par l''entreprise, telles que les frais d''entretien des parties communes ou les frais de gestion de la copropriété.'),
(695, 'Charges externes diverses', '6388', 'Ce compte enregistre les autres charges externes qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(696, 'Impôts fonciers et taxes annexes', '6411', 'Ce compte enregistre les impôts fonciers et les taxes annexes payés sur les biens immobiliers de l''entreprise, tels que la taxe foncière.'),
(696, 'Licences et taxes annexes', '6412', 'Ce compte enregistre les frais de licences et les taxes annexes payés pour exercer certaines activités, telles que les licences commerciales ou les taxes professionnelles.'),
(696, 'Taxes sur appointements et salaires', '6413', 'Ce compte enregistre les taxes prélevées sur les appointements et les salaires versés aux employés, telles que les cotisations sociales ou les contributions à la sécurité sociale.'),
(696, 'Taxes d''apprentissage', '6414', 'Ce compte enregistre les taxes versées pour financer l''apprentissage, telles que la taxe d''apprentissage.'),
(696, 'Formation professionnelle continue', '6415', 'Ce compte enregistre les dépenses liées à la formation professionnelle continue des employés, telles que les frais de formation ou les frais de certification.'),
(696, 'Patente ou contribution économique locale', '6416', 'Ce compte enregistre les taxes locales payées pour exercer une activité économique, telles que la patente ou la contribution économique locale.'),
(696, 'Autres impôts et taxes directs', '6418', 'Ce compte enregistre les autres impôts et taxes directs qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(698, 'Droits de mutation', '6461', 'Ce compte enregistre les droits de mutation payés par l''entreprise lors de l''acquisition de biens immobiliers ou de titres.'),
(698, 'Droits de timbre', '6462', 'Ce compte enregistre les droits de timbre payés par l''entreprise sur certains actes juridiques ou commerciaux.'),
(698, 'Vignettes', '6464', 'Ce compte enregistre les vignettes payées par l''entreprise pour certains types de véhicules ou de produits.'),
(698, 'Autres droits d''enregistrement', '6468', 'Ce compte enregistre les autres droits d''enregistrement payés par l''entreprise.');

(699, 'Pénalités d''assiette, impôts directs', '6471', 'Ce compte enregistre les pénalités perçues sur les impôts directs en raison d''erreurs ou d''irrégularités dans l''assiette fiscale.'),
(699, 'Pénalités d''assiette, impôts indirects', '6472', 'Ce compte enregistre les pénalités perçues sur les impôts indirects en raison d''erreurs ou d''irrégularités dans l''assiette fiscale.'),
(699, 'Pénalités de recouvrement, impôts directs', '6473', 'Ce compte enregistre les pénalités perçues sur les impôts directs en raison de retards ou de défauts de paiement.'),
(699, 'Pénalités de recouvrement, impôts indirects', '6474', 'Ce compte enregistre les pénalités perçues sur les impôts indirects en raison de retards ou de défauts de paiement.'),
(699, 'Autres pénalités et amendes fiscales', '6478', 'Ce compte enregistre les autres pénalités et amendes fiscales qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(702, 'Clients-usagers', '6511', 'Ce compte enregistre les montants dus par les clients ou usagers pour des biens ou services fournis par l''entreprise.'),
(702, 'Adhérents', '6512', 'Ce compte enregistre les montants dus par les adhérents ou membres pour des cotisations ou des frais associés à leur adhésion ou leur affiliation à l''entreprise.'),
(702, 'Autres débiteurs', '6515', 'Ce compte enregistre les montants dus par des tiers autres que les clients ou adhérents, tels que des avances ou des prêts accordés par l''entreprise.'),

(704, 'Dons en nature courant à distribuer non affectés', '6541', 'Ce compte enregistre les dons en nature courants à distribuer qui ne sont pas spécifiquement affectés à une fin particulière.'),
(704, 'Dons en nature courants à distribuer affectés', '6545', 'Ce compte enregistre les dons en nature courants à distribuer qui sont spécifiquement affectés à une fin particulière.'),

(707, 'Provisions sur risques à court terme', '6591', 'Ce compte enregistre les provisions constituées par l''entreprise pour faire face à des risques identifiés à court terme.'),
(707, 'Charges pour dépréciations sur stocks', '6593', 'Ce compte enregistre les charges liées à la dépréciation des stocks de l''entreprise.'),
(707, 'Charges pour dépréciations sur créances', '6594', 'Ce compte enregistre les charges liées à la dépréciation des créances de l''entreprise.'),
(707, 'Autres charges pour dépréciations et provisions pour risques à court terme', '6598', 'Ce compte enregistre d''autres charges liées aux dépréciations et aux provisions pour risques à court terme qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(708, 'Appointements salaires et commissions', '6611', 'Ce compte enregistre les dépenses liées aux salaires, appointements et commissions versés aux employés de l''entreprise.'),
(708, 'Primes et gratifications', '6612', 'Ce compte enregistre les dépenses liées aux primes et gratifications accordées aux employés de l''entreprise.'),
(708, 'Congés payés', '6613', 'Ce compte enregistre les dépenses liées aux congés payés accordés aux employés de l''entreprise.'),
(708, 'Indemnités de préavis et de licenciement', '6614', 'Ce compte enregistre les dépenses liées aux indemnités de préavis et de licenciement versées aux employés de l''entreprise.'),
(708, 'Indemnités de maladie versées aux travailleurs', '6615', 'Ce compte enregistre les dépenses liées aux indemnités de maladie versées aux travailleurs de l''entreprise.'),
(708, 'Supplément familial', '6616', 'Ce compte enregistre les dépenses liées au supplément familial versé aux employés de l''entreprise.'),
(708, 'Avantages en nature', '6617', 'Ce compte enregistre les dépenses liées aux avantages en nature fournis aux employés de l''entreprise.'),
(708, 'Autres rémunérations directes', '6618', 'Ce compte enregistre d''autres types de rémunérations directes versées aux employés de l''entreprise qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(709, 'Appointements salaires et commissions', '6621', 'Ce compte enregistre les dépenses liées aux salaires, appointements et commissions versés aux employés de l''entreprise.'),
(709, 'Primes et gratifications', '6622', 'Ce compte enregistre les dépenses liées aux primes et gratifications accordées aux employés de l''entreprise.'),
(709, 'Congés payés', '6623', 'Ce compte enregistre les dépenses liées aux congés payés accordés aux employés de l''entreprise.'),
(709, 'Indemnités de préavis et de licenciement', '6624', 'Ce compte enregistre les dépenses liées aux indemnités de préavis et de licenciement versées aux employés de l''entreprise.'),
(709, 'Indemnités de maladie versées aux travailleurs', '6625', 'Ce compte enregistre les dépenses liées aux indemnités de maladie versées aux travailleurs de l''entreprise.'),
(709, 'Supplément familial', '6626', 'Ce compte enregistre les dépenses liées au supplément familial versé aux employés de l''entreprise.'),
(709, 'Avantages en nature', '6627', 'Ce compte enregistre les dépenses liées aux avantages en nature fournis aux employés de l''entreprise.'),
(709, 'Autres rémunérations directes', '6628', 'Ce compte enregistre d''autres types de rémunérations directes versées aux employés de l''entreprise qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(710, 'Indemnités de logement', '6631', 'Ce compte enregistre les dépenses liées aux indemnités de logement accordées aux employés de l''entreprise.'),
(710, 'Indemnités de représentation', '6632', 'Ce compte enregistre les dépenses liées aux indemnités de représentation accordées aux employés de l''entreprise.'),
(710, 'Indemnités d''expatriation', '6633', 'Ce compte enregistre les dépenses liées aux indemnités d''expatriation accordées aux employés de l''entreprise lorsqu''ils travaillent à l''étranger.'),
(710, 'Indemnités de transport', '6634', 'Ce compte enregistre les dépenses liées aux indemnités de transport accordées aux employés de l''entreprise.'),
(710, 'Autres indemnités et avantages divers', '6638', 'Ce compte enregistre d''autres types d''indemnités et d''avantages divers accordés aux employés de l''entreprise qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(711, 'Charges sociales sur rémunération du personnel national', '6641', 'Ce compte enregistre les charges sociales liées à la rémunération du personnel national de l''entreprise.'),
(711, 'Charges sociales sur rémunération du personnel non national', '6642', 'Ce compte enregistre les charges sociales liées à la rémunération du personnel non national de l''entreprise.'),

(713, 'Personnel intérimaire', '6671', 'Ce compte enregistre les dépenses liées au personnel intérimaire employé par l''entreprise.'),
(713, 'Personnel détaché ou prêté à l''entité', '6672', 'Ce compte enregistre les dépenses liées au personnel détaché ou prêté à l''entreprise par d''autres entités.'),

(714, 'Versements aux syndicats et assimilés', '6681', 'Ce compte enregistre les versements aux syndicats et autres organisations similaires.'),
(714, 'Versements aux comités d''hygiène et de sécurité', '6682', 'Ce compte enregistre les versements aux comités d''hygiène et de sécurité au travail.'),
(714, 'Versements et contributions aux autres œuvres sociales', '6683', 'Ce compte enregistre les versements et contributions aux autres œuvres sociales et activités connexes.'),
(714, 'Médecine du travail et pharmacie', '6684', 'Ce compte enregistre les dépenses liées aux services de médecine du travail et d''achat de médicaments.'),
(714, 'Assurances et organismes de santé', '6685', 'Ce compte enregistre les paiements relatifs aux assurances santé et aux organismes de santé.'),
(714, 'Assurances retraite et fonds de pensions', '6686', 'Ce compte enregistre les dépenses liées aux assurances retraite et aux fonds de pensions.'),
(714, 'Majorations et pénalités sociales', '6687', 'Ce compte enregistre les majorations et pénalités liées aux charges sociales.'),
(714, 'Charges sociales diverses', '6688', 'Ce compte enregistre les autres charges sociales qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(716, 'Emprunts obligataires', '6711', 'Ce compte enregistre les emprunts contractés sous forme d''obligations.'),
(716, 'Emprunts auprès des établissements de crédit', '6712', 'Ce compte enregistre les emprunts contractés auprès des établissements de crédit.'),
(716, 'Primes de remboursement des obligations', '6713', 'Ce compte enregistre les primes de remboursement versées lors du remboursement anticipé des obligations.'),

(717, 'Intérêts dans loyers de location-acquisition/crédit-bail immobilier', '6721', 'Ce compte enregistre les intérêts perçus sur les loyers de location-acquisition ou de crédit-bail immobilier.'),
(717, 'Intérêts dans loyers de location-acquisition/crédit-bail mobilier', '6722', 'Ce compte enregistre les intérêts perçus sur les loyers de location-acquisition ou de crédit-bail mobilier.'),
(717, 'Intérêts dans loyers de location-acquisition/location-vente', '6723', 'Ce compte enregistre les intérêts perçus sur les loyers de location-acquisition ou de location-vente.'),
(717, 'Intérêts dans loyers des autres locations-acquisition', '6724', 'Ce compte enregistre les intérêts perçus sur les loyers des autres contrats de location-acquisition.'),

(719, 'Avances reçues et dépôts créditeurs', '6741', 'Ce compte enregistre les avances reçues et les dépôts créditeurs effectués par des tiers.'),
(719, 'Comptes courants bloqués', '6742', 'Ce compte enregistre les fonds détenus dans des comptes courants bloqués.'),
(719, 'Intérêts sur dettes commerciales', '6744', 'Ce compte enregistre les intérêts perçus sur les dettes commerciales.'),
(719, 'Intérêts bancaires et sur opérations de financement (escompte…)', '6745', 'Ce compte enregistre les intérêts perçus sur les opérations bancaires et de financement, y compris l''escompte.'),
(719, 'Intérêts sur dettes diverses', '6748', 'Ce compte enregistre les intérêts perçus sur d''autres types de dettes.'),

(721, 'Pertes sur cessions de titres de placement', '6771', 'Ce compte enregistre les pertes résultant de la cession de titres de placement.'),

(722, 'Sur rentes viagères', '6781', 'Ce compte enregistre les intérêts perçus sur les rentes viagères.'),
(722, 'Sur opérations financières', '6782', 'Ce compte enregistre les gains sur les opérations financières.'),

(723, 'Sur risques financiers', '6791', 'Ce compte enregistre les charges liées aux risques financiers.');
(723, 'Sur titres de placement', '6795', 'Ce compte enregistre les charges liées aux dépréciations et provisions pour risques sur les titres de placement.'),
(723, 'Autres charges pour dépréciations et provisions pour risques à court terme financières', '6798', 'Ce compte enregistre d''autres charges pour dépréciations et provisions pour risques à court terme financières.'),

(725, 'Dotations aux amortissements des immobilisations incorporelles', '6812', 'Ce compte enregistre les dotations aux amortissements des immobilisations incorporelles.'),
(725, 'Dotations aux amortissements des immobilisations corporelles', '6813', 'Ce compte enregistre les dotations aux amortissements des immobilisations corporelles.'),

(726, 'Dotations aux provisions pour risques et charges', '6911', 'Ce compte enregistre les dotations aux provisions pour risques et charges.'),
(726, 'Dotations aux dépréciations des immobilisations incorporelles', '6913', 'Ce compte enregistre les dotations aux dépréciations des immobilisations incorporelles.'),
(726, 'Dotations aux dépréciations des immobilisations corporelles', '6914', 'Ce compte enregistre les dotations aux dépréciations des immobilisations corporelles.'),

(727, 'Dotations aux dépréciations d''usufruit temporaire', '6951', 'Ce compte enregistre les dotations aux dépréciations d''usufruit temporaire.'),
(727, 'Dotations aux dépréciations d''immobilisations destinées à la vente provenant des dons et legs non reçues', '6952', 'Ce compte enregistre les dotations aux dépréciations d''immobilisations destinées à la vente provenant des dons et legs non reçues.'),

(728, 'Dotations aux provisions pour risques et charges', '6971', 'Ce compte enregistre les dotations aux provisions destinées à couvrir les risques et charges anticipés.'),
(728, 'Dotations aux dépréciations des immobilisations financières', '6972', 'Ce compte enregistre les dotations aux dépréciations des immobilisations financières, telles que les participations dans d''autres entreprises ou les titres de placement à long terme, afin de refléter leur valeur comptable réduite.'),

(732, 'Dons', '7041', 'Ce compte enregistre les revenus provenant de dons volontaires faits à l''entreprise, généralement sans contrepartie directe.'),
(732, 'Legs', '7042', 'Ce compte enregistre les revenus provenant d''héritages légués à l''entreprise après le décès d''une personne.'),
(732, 'Dîmes du culte', '7043', 'Ce compte enregistre les revenus provenant des contributions régulières des fidèles à des institutions religieuses.'),
(732, 'Zakat, Dîme, quête et assimilées', '7044', 'Ce compte enregistre les revenus provenant de prélèvements religieux ou de contributions volontaires collectées à des fins religieuses.'),
(732, 'Célébrations', '7045', 'Ce compte enregistre les revenus générés par des événements ou des célébrations organisés par l''entreprise.'),
(732, 'Mécénats', '7046', 'Ce compte enregistre les revenus provenant de mécènes ou de sponsors qui soutiennent financièrement l''entreprise ou ses activités.'),
(732, 'Parrainage', '7047', 'Ce compte enregistre les revenus provenant de partenariats de parrainage ou de sponsoring entre l''entreprise et d''autres entités.'),
(732, 'Autres revenus liés à la générosité', '7048', 'Ce compte enregistre les autres revenus liés à la générosité qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(733, 'Ventes de marchandises', '7051', 'Ce compte enregistre les revenus générés par la vente de biens marchands, tels que des produits physiques ou des marchandises.'),
(733, 'Services vendus', '7052', 'Ce compte enregistre les revenus générés par la fourniture de services par l''entreprise à ses clients.'),
(733, 'Ventes de produits finis', '7053', 'Ce compte enregistre les revenus générés par la vente de produits finis fabriqués par l''entreprise.'),
(733, 'Ventes de produits intermédiaires', '7054', 'Ce compte enregistre les revenus générés par la vente de produits intermédiaires ou semi-finis fabriqués par l''entreprise et destinés à être utilisés comme matières premières par d''autres entreprises.'),
(733, 'Ventes de produits résiduels', '7055', 'Ce compte enregistre les revenus générés par la vente de produits résiduels ou dérivés issus des processus de production de l''entreprise.'),

(736, 'Ventes de dons en nature', '7081', 'Ce compte enregistre les revenus générés par la vente de dons reçus sous forme de biens ou de produits.'),
(736, 'Revenus d''usufruit', '7082', 'Ce compte enregistre les revenus générés par la mise à disposition temporaire d''un bien ou d''un actif en échange d''un paiement régulier, tel que des loyers ou des redevances.'),

(748, 'Dons en nature courants reçus à distribuer', '7542', 'Ce compte enregistre les dons en nature courants reçus par l''entreprise et destinés à être distribués à des tiers.'),

(749, 'Indemnités d''assurances reçues', '7582', 'Ce compte enregistre les indemnités d''assurances reçues par l''entreprise en compensation de pertes ou de dommages couverts par une police d''assurance.'),
(749, 'Abandons de frais par les bénévoles', '7583', 'Ce compte enregistre les abandons de frais consentis par des bénévoles à l''entreprise.'),
(749, 'Autres produits divers', '7588', 'Ce compte enregistre les autres produits divers qui ne sont pas spécifiquement couverts par les comptes précédents.'),

(750, 'Reprises provisions sur risques à court terme', '7591', 'Ce compte enregistre les reprises de provisions sur risques à court terme précédemment constituées.'),
(750, 'Reprises de charges pour dépréciations sur stocks', '7593', 'Ce compte enregistre les reprises de charges pour dépréciations sur stocks précédemment constatées.'),
(750, 'Reprises de charges pour dépréciations sur créances', '7594', 'Ce compte enregistre les reprises de charges pour dépréciations sur créances précédemment constatées.'),
(750, 'Autres reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation', '7598', 'Ce compte enregistre les autres reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

(751, 'Intérêts de prêts', '7712', 'Ce compte enregistre les intérêts perçus sur les prêts accordés par l''entreprise.'),
(751, 'Intérêts sur créances diverses', '7713', 'Ce compte enregistre les intérêts perçus sur les créances diverses détenues par l''entreprise.'),

(752, 'Revenus des titres de participation', '7721', 'Ce compte enregistre les revenus provenant des titres de participation détenus par l''entreprise.'),
(752, 'Revenus autres titres immobilisés', '7722', 'Ce compte enregistre les revenus provenant d''autres titres immobilisés détenus par l''entreprise.'),

(754, 'Revenus des obligations', '7745', 'Ce compte enregistre les revenus provenant des obligations détenues par l''entreprise.'),
(754, 'Revenus des titres de placement', '7746', 'Ce compte enregistre les revenus provenant des titres de placement détenus par l''entreprise.'),
(754, 'Revenus des dépôts à terme et opérations assimilés', '7747', 'Ce compte enregistre les revenus provenant des dépôts à terme et des opérations assimilées détenus par l''entreprise.'),
(754, 'Autres revenus de placement', '7748', 'Ce compte enregistre les autres revenus de placement générés par l''entreprise.'),

(757, 'Gains sur rentes viagères', '7781', 'Ce compte enregistre les gains réalisés sur les rentes viagères détenues par l''entreprise.'),
(757, 'Gains sur opérations financières', '7782', 'Ce compte enregistre les gains réalisés sur les opérations financières effectuées par l''entreprise.'),

(758, 'Reprises de provisions sur risques financiers', '7791', 'Ce compte enregistre les reprises de provisions sur les risques financiers précédemment constituées par l''entreprise.'),
(758, 'Reprises de charges pour dépréciations sur titres de placement', '7795', 'Ce compte enregistre les reprises de charges pour dépréciations sur les titres de placement précédemment constatées par l''entreprise.'),
(758, 'Autre reprises de charges pour dépréciations et provisions pour risques à court terme financières', '7798', 'Ce compte enregistre d''autres reprises de charges pour dépréciations et provisions pour risques à court terme financières.'),

(761, 'Reprises de provision pour risques et charges', '7911', 'Ce compte enregistre les reprises de provisions pour risques et charges précédemment constituées par l''entreprise.'),
(761, 'Reprises de dépréciations des immobilisations incorporelles', '7913', 'Ce compte enregistre les reprises de dépréciations des immobilisations incorporelles précédemment constatées par l''entreprise.'),
(761, 'Reprises de dépréciations des immobilisations corporelles', '7914', 'Ce compte enregistre les reprises de dépréciations des immobilisations corporelles précédemment constatées par l''entreprise.'),

(762, 'Reprises de fonds affectés et provenant de dons et legs d''immobilisation', '7923', 'Ce compte enregistre les reprises de fonds affectés et provenant de dons et legs d''immobilisation précédemment constatées par l''entreprise.'),
(762, 'Reprises de fonds affectés à un projet spécifique', '7925', 'Ce compte enregistre les reprises de fonds affectés à un projet spécifique précédemment constatées par l''entreprise.'),
(762, 'Autres reprises de fonds affectés', '7928', 'Ce compte enregistre les autres reprises de fonds affectés précédemment constatées par l''entreprise.'),

(763, 'Reprises des dépréciations d''usufruit temporaire', '7951', 'Ce compte enregistre les reprises des dépréciations précédemment constatées sur l''usufruit temporaire par l''entreprise.'),
(763, 'Reprises des dépréciations d''immobilisation reçues destinées à la vente provenant des dons et legs', '7952', 'Ce compte enregistre les reprises des dépréciations précédemment constatées sur les immobilisations destinées à la vente provenant des dons et legs par l''entreprise.'),

(764, 'Reprises de fonds reportés provenant de la donation temporaire d''usufruit', '7961', 'Ce compte enregistre les reprises des fonds reportés provenant de la donation temporaire d''usufruit par l''entreprise.'),
(764, 'Reprises de fonds reportés provenant de dons et legs d''immobilisations reçues destinés à la vente', '7962', 'Ce compte enregistre les reprises des fonds reportés provenant de dons et legs d''immobilisations reçues destinés à la vente par l''entreprise.'),
(764, 'Autres reprises de fonds reporté', '7968', 'Ce compte enregistre les autres reprises de fonds reportés par l''entreprise.'),

(765, 'Reprises de provisions pour risques et charges', '7971', 'Ce compte enregistre les reprises de provisions pour risques et charges par l''entreprise.'),
(765, 'Reprises de dépréciations des immobilisations financières', '7972', 'Ce compte enregistre les reprises de dépréciations des immobilisations financières par l''entreprise.'),

(777, 'Dons en nature H.A.O. non affectés', '8311', 'Ce compte enregistre les dons en nature non affectés à des fins spécifiques par l''entreprise.'),
(777, 'Dons en nature H.A.O. affectés', '8315', 'Ce compte enregistre les dons en nature affectés à des fins spécifiques par l''entreprise.'),

(783, 'Dons en nature HAO vendus', '8411', 'Ce compte enregistre les dons en nature HAO vendus par l''entreprise.'),
(783, 'Prestations de services en nature HAO', '8412', 'Ce compte enregistre les prestations de services en nature HAO fournies par l''entreprise.'),
(783, 'Dons en nature HAO à distribuer', '8415', 'Ce compte enregistre les dons en nature HAO à distribuer par l''entreprise.');