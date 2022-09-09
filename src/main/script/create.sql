create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
create table adresse (id bigint generated by default as identity, code_postal bigint, numero bigint, pays varchar(255), rue varchar(255), ville varchar(255), primary key (id));
create table contentieux (id bigint generated by default as identity, date_contentieux date, motif varchar(255), regle boolean, emprunt_contentieux_id bigint not null, primary key (id));
create table devise (code varchar(255) not null, echange double, nom varchar(255), primary key (code));
create table emprunt (id bigint generated by default as identity, date_debut_emprunt date, date_fin_emprunt date, code_abonne bigint, code_exemplaire bigint, primary key (id));
create table exemplaire (numero_exemplaire bigint generated by default as identity, etat_physique varchar(255), usage_exemplaire varchar(255), code_oeuvre bigint, primary key (numero_exemplaire));
create table oeuvre (id_publication bigint generated by default as identity, auteur varchar(255), editeur varchar(255), titre varchar(255), primary key (id_publication));
create table personne (type_pers varchar(2) not null, id bigint not null, active boolean not null, date_naissance date, email varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), date_debut_abonnement date, date_fin_abonnement date, code_adr_principale bigint, primary key (id));
create table personne_role (personne_id bigint not null, app_roles_role_id bigint not null);
create table role_personne (role_id bigint generated by default as identity, description varchar(255), role_name varchar(255), primary key (role_id));
alter table contentieux add constraint UK_jo3kp2lcn5f4sxcjk0hak3535 unique (emprunt_contentieux_id);
alter table role_personne add constraint UK_ofqjfvbjlyxvdcsnhc3xrpv1j unique (role_name);
alter table contentieux add constraint FKbgvv4ml40qsub3xwp4p0m2jb0 foreign key (emprunt_contentieux_id) references emprunt;
alter table emprunt add constraint FKri6jcf6i8sgk9jl3msgyxsqqx foreign key (code_abonne) references personne;
alter table emprunt add constraint FK9ihf6kwu69j50pn614ehmcmr3 foreign key (code_exemplaire) references exemplaire;
alter table exemplaire add constraint FKtpm06vaemxaed13x7ka052h1m foreign key (code_oeuvre) references oeuvre;
alter table personne add constraint FKiq84c92eb9ea694hxhd9ylfg foreign key (code_adr_principale) references adresse;
alter table personne_role add constraint FK3ufsyc2rjemm742vbtd3ft6xx foreign key (app_roles_role_id) references role_personne;
alter table personne_role add constraint FKqaakes1qbu8ik2fe6tsmnep2m foreign key (personne_id) references personne;
