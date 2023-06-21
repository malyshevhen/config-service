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
('product-service', 'default', 'latest', 'server.port', '8082'),
('product-service', 'default', 'latest', 'spring.datasource.url', 'jdbc:postgresql://localhost:5433/products_db'),
('product-service', 'default', 'latest', 'spring.datasource.username', 'postgres'),
('product-service', 'default', 'latest', 'spring.datasource.password', 'password'),
('product-service', 'default', 'latest', 'spring.datasource.flyway.baseline-on-migrate', 'true'),
('product-service', 'default', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka'),
('product-service', 'default', 'latest', 'eureka.instance.prefer-ip-address', 'true');

-- recipe-service properties:
INSERT INTO properties (APPLICATION, PROFILE, LABEL, PROP_KEY, VALUE) VALUES
('recipe-service', 'default', 'latest', 'server.port', '8081'),
('recipe-service', 'default', 'latest', 'spring.datasource.username', ':postgres'),
('recipe-service', 'default', 'latest', 'spring.datasource.url', 'jdbc:postgresql://localhost:5432/recipes_db'),
('recipe-service', 'default', 'latest', 'spring.datasource.password', 'password'),
('recipe-service', 'default', 'latest', 'spring.datasource.flyway.baseline-on-migrate', 'true'),
('recipe-service', 'default', 'latest', 'eureka.client.service-url.defaultZone', 'http://localhost:8761/eureka}'),
('recipe-service', 'default', 'latest', 'eureka.instance.prefer-ip-address', 'true');