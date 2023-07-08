-- initial schema:
CREATE TABLE properties(
    id          INTEGER NOT NULL auto_increment,
    CREATED_ON  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    APPLICATION VARCHAR(255),
    PROFILE     VARCHAR(255),
    LABEL       VARCHAR(255),
    PROP_KEY    VARCHAR(255),
    VALUE       VARCHAR(255),
    PRIMARY KEY (id)
);

-- product-service properties:
INSERT INTO properties (APPLICATION, PROFILE, LABEL, PROP_KEY, VALUE) VALUES
('products', 'default', 'latest', 'server.port', '8082'),
('products', 'default', 'latest', 'spring.datasource.url', 'jdbc:postgresql://localhost:5433/products_db'),
('products', 'default', 'latest', 'spring.datasource.username', 'postgres'),
('products', 'default', 'latest', 'spring.datasource.password', 'password'),
('products', 'default', 'latest', 'spring.datasource.flyway.baseline-on-migrate', 'true'),
('products', 'default', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka'),
('products', 'default', 'latest', 'eureka.instance.prefer-ip-address', 'true');

-- recipe-service properties:
INSERT INTO properties (APPLICATION, PROFILE, LABEL, PROP_KEY, VALUE) VALUES
('recipes', 'default', 'latest', 'server.port', '8081'),
('recipes', 'default', 'latest', 'spring.datasource.username', ':postgres'),
('recipes', 'default', 'latest', 'spring.datasource.url', 'jdbc:postgresql://localhost:5432/recipes_db'),
('recipes', 'default', 'latest', 'spring.datasource.password', 'password'),
('recipes', 'default', 'latest', 'spring.datasource.flyway.baseline-on-migrate', 'true'),
('recipes', 'default', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka}'),
('recipes', 'default', 'latest', 'eureka.instance.prefer-ip-address', 'true');