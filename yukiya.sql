CREATE TABLE users (
    user_id           int ,
    username            varchar(100),
    password            varchar(100),
    address            varchar(100),
    primary key(user_id) 
);
CREATE TABLE pizza (
    pizza_id            int ,
    name            varchar(80),
    primary key(pizza_id) 

);
CREATE TABLE pizza_store (
    store_id            int ,
    name            varchar(20),
    place    varchar(30),
    pizza_id   int ,
    primary key(store_id), 
    foreign key (pizza_id) references pizza(pizza_id)
);
CREATE TABLE pizza_topping (
    to_id            int ,
    name            varchar(20),
    price    int,
    pizza_id   int ,
    primary key(to_id) ,
    foreign key (pizza_id) references pizza(pizza_id)
);

CREATE TABLE pizza_dough(
    do_id            int ,
    name            varchar(100),
    pizza_id   int ,
    primary key(do_id) ,
    foreign key (pizza_id) references pizza(pizza_id)
);

CREATE TABLE pizza_sauce(
    sa_id            int ,
    name            varchar(80),
    pizza_id   int ,
    primary key(sa_id) ,
    foreign key (pizza_id) references pizza(pizza_id)
);

