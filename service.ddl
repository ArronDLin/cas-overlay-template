alter table RegisteredServiceImpl_Props drop foreign key FK3fjml3o6oemyis14qscasojp6;
alter table RegisteredServiceImpl_Props drop foreign key FK5c77ym3ew1tfcnj2ygl2d9hus;
drop table if exists hibernate_sequence;
drop table if exists RegisteredServiceImpl;
drop table if exists RegisteredServiceImpl_Props;
drop table if exists RegisteredServiceImplProperty;
create table hibernate_sequence (next_val bigint);
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
create table RegisteredServiceImpl (expression_type VARCHAR(15) DEFAULT 'ant' not null, id bigint not null, access_strategy longblob, attribute_release longblob, description varchar(255) not null, evaluation_order integer not null, logo varchar(255), logout_type integer, logout_url varchar(255), name varchar(255) not null, proxy_policy longblob, public_key longblob, required_handlers longblob, serviceId varchar(255) not null, theme varchar(255), username_attr longblob, primary key (id));
create table RegisteredServiceImpl_Props (AbstractRegisteredService_id bigint not null, properties_id bigint not null, properties_KEY varchar(255) not null, primary key (AbstractRegisteredService_id, properties_KEY));
create table RegisteredServiceImplProperty (id bigint not null, property_values longblob, primary key (id));
alter table RegisteredServiceImpl_Props add constraint UK_i2mjaqjwxpvurc6aefjkx5x97 unique (properties_id);
alter table RegisteredServiceImpl_Props add constraint FK3fjml3o6oemyis14qscasojp6 foreign key (properties_id) references RegisteredServiceImplProperty (id);
alter table RegisteredServiceImpl_Props add constraint FK5c77ym3ew1tfcnj2ygl2d9hus foreign key (AbstractRegisteredService_id) references RegisteredServiceImpl (id);

