-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema barrancabermeja
-- -----------------------------------------------------
-- Base de datos para gestion y consultas de Barrancabermeja
DROP SCHEMA IF EXISTS `barrancabermeja` ;

-- -----------------------------------------------------
-- Schema barrancabermeja
--
-- Base de datos para gestion y consultas de Barrancabermeja
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `barrancabermeja` DEFAULT CHARACTER SET utf8 ;
USE `barrancabermeja` ;

-- -----------------------------------------------------
-- Table `barrancabermeja`.`comunas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `barrancabermeja`.`comunas` (
  `id_comuna` INT NOT NULL AUTO_INCREMENT,
  `comuna` VARCHAR(4) NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_comuna`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `barrancabermeja`.`barrios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `barrancabermeja`.`barrios` (
  `id_barrio` INT NOT NULL AUTO_INCREMENT,
  `id_comuna` INT NOT NULL,
  `nombre` VARCHAR(200) NULL,
  PRIMARY KEY (`id_barrio`),
  INDEX `fk_barrios_comunas_idx` (`id_comuna` ASC),
  CONSTRAINT `fk_barrios_comunas`
    FOREIGN KEY (`id_comuna`)
    REFERENCES `barrancabermeja`.`comunas` (`id_comuna`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `barrancabermeja`.`comunas`
-- -----------------------------------------------------
START TRANSACTION;
USE `barrancabermeja`;
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (1, '1', 'COMUNA 1');
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (2, '2', 'COMUNA 2');
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (3, '3', 'COMUNA 3');
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (4, '4', 'COMUNA 4');
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (5, '5', 'COMUNA 5');
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (6, '6', 'COMUNA 6');
INSERT INTO `barrancabermeja`.`comunas` (`id_comuna`, `comuna`, `descripcion`) VALUES (7, '7', 'COMUNA 7');

COMMIT;


-- -----------------------------------------------------
-- Data for table `barrancabermeja`.`barrios`
-- -----------------------------------------------------
START TRANSACTION;
USE `barrancabermeja`;
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (1, 1, 'Arenal');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (2, 1, 'Buenos Aires');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (3, 1, 'Buenos Aires II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (4, 1, 'Cardales');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (5, 1, 'Colombia');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (6, 1, 'David Nuñez Cala');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (7, 1, 'El Cruce');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (8, 1, 'El Dorado');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (9, 1, 'El Recreo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (10, 1, 'Gonzalo Jiménez de Quesada');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (11, 1, 'Invasión San Luis');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (12, 1, 'Isla del Zapato');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (13, 1, 'La campana');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (14, 1, 'La Victoria');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (15, 1, 'La Victoria II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (16, 1, 'Las Margaritas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (17, 1, 'Las Playas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (18, 1, 'Palmira');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (19, 1, 'San Francisco');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (20, 1, 'Sector Comercial y Muelle');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (21, 1, 'Tres Unidos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (22, 1, 'Urb. Nuevo Palmira');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (23, 2, 'Aguas Claras');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (24, 2, 'Ciudad Bolívar');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (25, 2, 'Galán Gómez');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (26, 2, 'Olaya Herrera');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (27, 2, 'Parnaso');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (28, 2, 'Barrio Pueblo Nuevo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (29, 2, 'Barrio Torcoroma');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (30, 2, 'Barrio Uribe Uribe');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (31, 2, 'Barrio Villa Luz');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (32, 3, 'Algarrobos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (33, 3, 'Alto De Los Ángeles');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (34, 3, 'Altos De La Virgen J.V.C');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (35, 3, 'Altos Del Rosario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (36, 3, 'Asentamiento Humano Caminos De San Silvestre');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (37, 3, 'Belén');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (38, 3, 'Brisas Del 20 De Enero');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (39, 3, 'Campo Hermoso');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (40, 3, 'Ciudadela Pipatón');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (41, 3, 'Colinas Del Norte');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (42, 3, 'Colinas Del Sur J.V.C.');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (43, 3, 'Cortijillo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (44, 3, 'Cristo Rey');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (45, 3, 'Eduardo Rolón (Coviba)');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (46, 3, 'Internacional');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (47, 3, '22 De Marzo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (48, 3, 'Jerusalén');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (49, 3, 'Jorge Eliecer Gaitán');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (50, 3, 'La Castellana');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (51, 3, 'La Floresta');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (52, 3, 'La Gran Vía');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (53, 3, 'La Libertad');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (54, 3, 'La Paz');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (55, 3, 'La Paz II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (56, 3, 'Los Ficus J.V.C');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (57, 3, 'Luis Eleazar');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (58, 3, 'Novalito  J.V.C.');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (59, 3, 'Primero De Abril J.V.C.');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (60, 3, 'San Judas Tadeo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (61, 3, 'Santa Isabel');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (62, 3, 'Urbanización Brisas De La Libertad');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (63, 3, 'Urbanización Miradores Del Cacique');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (64, 3, 'Veinte De Enero');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (65, 3, 'Villa Maria Irida');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (66, 3, 'Villa Nueva');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (67, 3, 'Villas De Santa Isabel J.V.C.');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (68, 3, 'La Tora');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (69, 3, 'Las Camelias');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (70, 4, 'Altos Del Cincuentenario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (71, 4, 'Altos Del Cañaveral');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (72, 4, 'Antonia Santos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (73, 4, 'Autoconstrucción VII Etapa Cincuentenario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (74, 4, 'Bellavista');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (75, 4, 'Bosques De La Cira');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (76, 4, 'Bosques De La Cira II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (77, 4, 'Buenavista');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (78, 4, 'Buenavista II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (79, 4, 'Cincuentenario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (80, 4, 'Cincuentenario Vi Etapa Sector El Madrigal');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (81, 4, 'Ciudadela Del Cincuentenario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (82, 4, 'El Bosque');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (83, 4, 'El Castillo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (84, 4, 'El Palmar');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (85, 4, 'El Refugio');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (86, 4, 'J.V.C. Asentamiento Humano Nuevo Milenio Sur');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (87, 4, 'J.V.C. Villa Del Cincuentenario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (88, 4, 'Jose Antonio Galán');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (89, 4, 'La Liga');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (90, 4, 'La Península');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (91, 4, 'Las Brisas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (92, 4, 'Las Nieves');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (93, 4, 'Limonar');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (94, 4, 'Los Almendros');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (95, 4, 'Los Lagos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (96, 4, 'Los Naranjos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (97, 4, 'J.V.C. Los Nogales');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (98, 4, 'Los Pinos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (99, 4, 'Marsella');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (100, 4, 'J.V.C Miradores De La Ceiba');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (101, 4, 'Prados Del Cincuentenario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (102, 4, 'Planada Del Cerro');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (103, 4, 'Santa Bárbara');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (104, 4, 'Tamarindos Club');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (105, 4, 'J.V.C. Urbanización 2000');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (106, 4, 'J.V.C. Urbanización Villa Sandra');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (107, 4, 'Villa De Leyva');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (108, 4, 'J.V.C. Villa Olímpica');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (109, 4, 'Villa Rosa');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (110, 4, 'Yarima');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (111, 4, 'Los Mandarinos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (112, 5, 'Alcázar');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (113, 5, 'Asentamiento Humano Colinas Del Seminario');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (114, 5, 'Asentamiento Humano La Nueva Esperanza');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (115, 5, 'Asentamiento Humano Las Torres');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (116, 5, 'Asentamiento Humano Nuevo Milenio');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (117, 5, 'Barrancabermeja');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (118, 5, 'Campo Alegre');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (119, 5, 'Chapinero');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (120, 5, 'El Chico');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (121, 5, 'El Porvenir');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (122, 5, ' El Triunfo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (123, 5, ' Chapinero II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (124, 5, ' J.V.C. Ramaral');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (125, 5, 'J.V.C. Tierradentro II');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (126, 5, 'La Candelaria');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (127, 5, 'La Esperanza');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (128, 5, 'La Independencia');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (129, 5, 'Las Mercedes');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (130, 5, 'La Tora');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (131, 5, 'Las Américas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (132, 5, 'Las Camelias');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (133, 5, 'Las Malvinas Bajas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (134, 5, 'Los Rosales');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (135, 5, 'Malvinas Alta');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (136, 5, 'Primero De Mayo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (137, 5, 'San Pedro Claver');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (138, 5, 'San José De Provivienda');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (139, 5, 'San José Obrero');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (140, 5, 'Santa Ana');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (141, 5, 'Santander');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (142, 5, 'Simon Bolívar');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (143, 5, 'Tierra Adentro');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (144, 5, 'Urbanización Los Lagos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (145, 5, 'Versalles');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (146, 5, 'Villa Rosita');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (147, 6, 'Antonio Nariño');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (148, 6, 'Benjamín Herrera');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (149, 6, 'Boston');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (150, 6, 'Brisas De San Martin');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (151, 6, 'Brisas De Versalles J.V.C');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (152, 6, 'Brisas Del Oriente');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (153, 6, 'Corintos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (154, 6, 'Danubio');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (155, 6, 'J.V.C. Veinte De Agosto');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (156, 6, 'Kennedy');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (157, 6, 'Las Granjas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (158, 6, 'Los Álamos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (159, 6, 'Los Comuneros');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (160, 6, 'Oro Negro');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (161, 6, 'Puerta Del Sol');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (162, 6, 'Rafael Rangel');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (163, 6, 'San Pedro');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (164, 6, 'Urbanización Las Granjas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (165, 6, 'Veinte De Agosto');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (166, 6, 'Veinte De Julio');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (167, 6, 'Villa Del Coral');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (168, 6, 'Villa Fauda');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (169, 6, 'J.V.C. Los Reyes');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (170, 6, 'J.V.C 6 De Enero');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (171, 7, '16 De Marzo');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (172, 7, '9 De Abril');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (173, 7, 'Altos Del Campestre');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (174, 7, 'Asentamiento Humano Las Palmas');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (175, 7, 'Asentamiento Humano Villa Aura');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (176, 7, 'Campestre');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (177, 7, 'Colinas Del Campestre');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (178, 7, 'Divino Niño');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (179, 7, 'El Campin');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (180, 7, 'El Paraíso');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (181, 7, 'Las Flores');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (182, 7, 'Los Fundadores');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (183, 7, 'Maria Eugenia');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (184, 7, 'Minas Del Paraíso');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (185, 7, 'Nuevo Horizonte');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (186, 7, 'Pablo Acuña');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (187, 7, 'Prados Del Campestre');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (188, 7, 'Urbanización Los Corales');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (189, 7, 'Urbanización Minas Del Paraíso VI Etapa');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (190, 7, 'Vereda La Independencia');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (191, 7, 'Villarelis Dos');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (192, 7, 'Villarelis Uno');
INSERT INTO `barrancabermeja`.`barrios` (`id_barrio`, `id_comuna`, `nombre`) VALUES (193, 7, 'Villarelis Tres');

COMMIT;

