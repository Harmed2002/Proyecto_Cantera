/*
Navicat MariaDB Data Transfer

Source Server         : ServerCantera
Source Server Version : 100420
Source Host           : localhost:3321
Source Database       : cantera

Target Server Type    : MariaDB
Target Server Version : 100420
File Encoding         : 65001

Date: 2021-11-21 18:12:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `ciud_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `ciud_codigo` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `ciud_nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `ciud_coddpto` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `ciud_estado` char(1) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`ciud_id`),
  KEY `ciud_coddpto` (`ciud_coddpto`,`ciud_codigo`) USING BTREE,
  KEY `ciud_codigo` (`ciud_codigo`) USING BTREE,
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`ciud_coddpto`) REFERENCES `states` (`dpto_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', '001', 'MEDELLÍN', '005', 'A');
INSERT INTO `cities` VALUES ('2', '001', 'BARRANQUILLA', '008', 'A');
INSERT INTO `cities` VALUES ('3', '001', 'BOGOTÁ', '011', 'A');
INSERT INTO `cities` VALUES ('4', '001', 'CARTAGENA', '013', 'A');
INSERT INTO `cities` VALUES ('5', '001', 'TUNJA', '015', 'A');
INSERT INTO `cities` VALUES ('6', '001', 'MANIZALES', '017', 'A');
INSERT INTO `cities` VALUES ('7', '001', 'FLORENCIA', '018', 'A');
INSERT INTO `cities` VALUES ('8', '001', 'POPAYÁN', '019', 'A');
INSERT INTO `cities` VALUES ('9', '001', 'VALLEDUPAR', '020', 'A');
INSERT INTO `cities` VALUES ('10', '001', 'MONTERÍA', '023', 'A');
INSERT INTO `cities` VALUES ('11', '001', 'AGUA DE DIOS', '025', 'A');
INSERT INTO `cities` VALUES ('12', '001', 'QUIBDÓ', '027', 'A');
INSERT INTO `cities` VALUES ('13', '001', 'NEIVA', '041', 'A');
INSERT INTO `cities` VALUES ('14', '001', 'RIOHACHA', '044', 'A');
INSERT INTO `cities` VALUES ('15', '001', 'SANTA MARTA', '047', 'A');
INSERT INTO `cities` VALUES ('16', '001', 'VILLAVICENCIO', '050', 'A');
INSERT INTO `cities` VALUES ('17', '001', 'PASTO', '052', 'A');
INSERT INTO `cities` VALUES ('18', '001', 'CÚCUTA', '054', 'A');
INSERT INTO `cities` VALUES ('19', '001', 'ARMENIA', '063', 'A');
INSERT INTO `cities` VALUES ('20', '001', 'PEREIRA', '066', 'A');
INSERT INTO `cities` VALUES ('21', '001', 'BUCARAMANGA', '068', 'A');
INSERT INTO `cities` VALUES ('22', '001', 'SINCELEJO', '070', 'A');
INSERT INTO `cities` VALUES ('23', '001', 'IBAGUÉ', '073', 'A');
INSERT INTO `cities` VALUES ('24', '001', 'CALI', '076', 'A');
INSERT INTO `cities` VALUES ('25', '001', 'ARAUCA', '081', 'A');
INSERT INTO `cities` VALUES ('26', '001', 'YOPAL', '085', 'A');
INSERT INTO `cities` VALUES ('27', '001', 'MOCOA', '086', 'A');
INSERT INTO `cities` VALUES ('28', '001', 'SAN ANDRÉS', '088', 'A');
INSERT INTO `cities` VALUES ('29', '001', 'LETICIA', '091', 'A');
INSERT INTO `cities` VALUES ('30', '001', 'INÍRIDA', '094', 'A');
INSERT INTO `cities` VALUES ('31', '001', 'SAN JOSÉ DEL GUAVIARE', '095', 'A');
INSERT INTO `cities` VALUES ('32', '001', 'MITÚ', '097', 'A');
INSERT INTO `cities` VALUES ('33', '001', 'PUERTO CARREÑO', '099', 'A');
INSERT INTO `cities` VALUES ('34', '002', 'ABEJORRAL', '005', 'A');
INSERT INTO `cities` VALUES ('35', '003', 'ABREGO', '054', 'A');
INSERT INTO `cities` VALUES ('36', '004', 'ABRIAQUÍ', '005', 'A');
INSERT INTO `cities` VALUES ('37', '006', 'ACHÍ', '013', 'A');
INSERT INTO `cities` VALUES ('38', '006', 'ACANDÍ', '027', 'A');
INSERT INTO `cities` VALUES ('39', '006', 'ACEVEDO', '041', 'A');
INSERT INTO `cities` VALUES ('40', '006', 'ACACÍAS', '050', 'A');
INSERT INTO `cities` VALUES ('41', '010', 'AGUAZUL', '085', 'A');
INSERT INTO `cities` VALUES ('42', '011', 'AGUACHICA', '020', 'A');
INSERT INTO `cities` VALUES ('43', '013', 'AGUADAS', '017', 'A');
INSERT INTO `cities` VALUES ('44', '013', 'AGUSTÍN CODAZZI', '020', 'A');
INSERT INTO `cities` VALUES ('45', '013', 'AGRADO', '041', 'A');
INSERT INTO `cities` VALUES ('46', '013', 'AGUADA', '068', 'A');
INSERT INTO `cities` VALUES ('47', '015', 'CHAMEZA', '085', 'A');
INSERT INTO `cities` VALUES ('48', '015', 'CALAMAR', '095', 'A');
INSERT INTO `cities` VALUES ('49', '016', 'AIPE', '041', 'A');
INSERT INTO `cities` VALUES ('50', '019', 'ALBÁN', '025', 'A');
INSERT INTO `cities` VALUES ('51', '019', 'ALBÁN', '052', 'A');
INSERT INTO `cities` VALUES ('52', '020', 'ALGECIRAS', '041', 'A');
INSERT INTO `cities` VALUES ('53', '020', 'ALBANIA', '068', 'A');
INSERT INTO `cities` VALUES ('54', '020', 'ALCALÁ', '076', 'A');
INSERT INTO `cities` VALUES ('55', '021', 'ALEJANDRÍA', '005', 'A');
INSERT INTO `cities` VALUES ('56', '022', 'ALMEIDA', '015', 'A');
INSERT INTO `cities` VALUES ('57', '022', 'ALMAGUER', '019', 'A');
INSERT INTO `cities` VALUES ('58', '022', 'ALDANA', '052', 'A');
INSERT INTO `cities` VALUES ('59', '024', 'ALPUJARRA', '073', 'A');
INSERT INTO `cities` VALUES ('60', '025', 'ALTO BAUDO', '027', 'A');
INSERT INTO `cities` VALUES ('61', '025', 'EL RETORNO', '095', 'A');
INSERT INTO `cities` VALUES ('62', '026', 'ALTAMIRA', '041', 'A');
INSERT INTO `cities` VALUES ('63', '026', 'ALVARADO', '073', 'A');
INSERT INTO `cities` VALUES ('64', '029', 'ALBANIA', '018', 'A');
INSERT INTO `cities` VALUES ('65', '030', 'AMAGÁ', '005', 'A');
INSERT INTO `cities` VALUES ('66', '030', 'ALTOS DEL ROSARIO', '013', 'A');
INSERT INTO `cities` VALUES ('67', '030', 'ALGARROBO', '047', 'A');
INSERT INTO `cities` VALUES ('68', '030', 'AMBALEMA', '073', 'A');
INSERT INTO `cities` VALUES ('69', '031', 'AMALFI', '005', 'A');
INSERT INTO `cities` VALUES ('70', '032', 'ASTREA', '020', 'A');
INSERT INTO `cities` VALUES ('71', '034', 'ANDES', '005', 'A');
INSERT INTO `cities` VALUES ('72', '035', 'ANAPOIMA', '025', 'A');
INSERT INTO `cities` VALUES ('73', '035', 'ALBANIA', '044', 'A');
INSERT INTO `cities` VALUES ('74', '036', 'ANGELÓPOLIS', '005', 'A');
INSERT INTO `cities` VALUES ('75', '036', 'ANCUYÁ', '052', 'A');
INSERT INTO `cities` VALUES ('76', '036', 'ANDALUCÍA', '076', 'A');
INSERT INTO `cities` VALUES ('77', '038', 'ANGOSTURA', '005', 'A');
INSERT INTO `cities` VALUES ('78', '040', 'ANORÍ', '005', 'A');
INSERT INTO `cities` VALUES ('79', '040', 'ANOLAIMA', '025', 'A');
INSERT INTO `cities` VALUES ('80', '041', 'ANSERMANUEVO', '076', 'A');
INSERT INTO `cities` VALUES ('81', '042', 'SANTAFÉ DE ANTIOQUIA', '005', 'A');
INSERT INTO `cities` VALUES ('82', '042', 'ARENAL', '013', 'A');
INSERT INTO `cities` VALUES ('83', '042', 'ANSERMA', '017', 'A');
INSERT INTO `cities` VALUES ('84', '043', 'ANZOÁTEGUI', '073', 'A');
INSERT INTO `cities` VALUES ('85', '044', 'ANZA', '005', 'A');
INSERT INTO `cities` VALUES ('86', '045', 'APARTADÓ', '005', 'A');
INSERT INTO `cities` VALUES ('87', '045', 'BECERRIL', '020', 'A');
INSERT INTO `cities` VALUES ('88', '045', 'APÍA', '066', 'A');
INSERT INTO `cities` VALUES ('89', '047', 'AQUITANIA', '015', 'A');
INSERT INTO `cities` VALUES ('90', '050', 'ARANZAZU', '017', 'A');
INSERT INTO `cities` VALUES ('91', '050', 'ARGELIA', '019', 'A');
INSERT INTO `cities` VALUES ('92', '050', 'ATRATO', '027', 'A');
INSERT INTO `cities` VALUES ('93', '051', 'ARBOLETES', '005', 'A');
INSERT INTO `cities` VALUES ('94', '051', 'ARCABUCO', '015', 'A');
INSERT INTO `cities` VALUES ('95', '051', 'ARBOLEDA', '052', 'A');
INSERT INTO `cities` VALUES ('96', '051', 'ARBOLEDAS', '054', 'A');
INSERT INTO `cities` VALUES ('97', '051', 'ARATOCA', '068', 'A');
INSERT INTO `cities` VALUES ('98', '052', 'ARJONA', '013', 'A');
INSERT INTO `cities` VALUES ('99', '053', 'ARBELÁEZ', '025', 'A');
INSERT INTO `cities` VALUES ('100', '053', 'ARACATACA', '047', 'A');
INSERT INTO `cities` VALUES ('101', '054', 'ARGELIA', '076', 'A');
INSERT INTO `cities` VALUES ('102', '055', 'ARGELIA', '005', 'A');
INSERT INTO `cities` VALUES ('103', '055', 'ARMERO', '073', 'A');
INSERT INTO `cities` VALUES ('104', '058', 'ARIGUANÍ', '047', 'A');
INSERT INTO `cities` VALUES ('105', '059', 'ARMENIA', '005', 'A');
INSERT INTO `cities` VALUES ('106', '060', 'BOSCONIA', '020', 'A');
INSERT INTO `cities` VALUES ('107', '062', 'ARROYOHONDO', '013', 'A');
INSERT INTO `cities` VALUES ('108', '065', 'ARAUQUITA', '081', 'A');
INSERT INTO `cities` VALUES ('109', '067', 'ATACO', '073', 'A');
INSERT INTO `cities` VALUES ('110', '068', 'AYAPEL', '023', 'A');
INSERT INTO `cities` VALUES ('111', '073', 'BAGADÓ', '027', 'A');
INSERT INTO `cities` VALUES ('112', '074', 'BARRANCO DE LOBA', '013', 'A');
INSERT INTO `cities` VALUES ('113', '075', 'BALBOA', '019', 'A');
INSERT INTO `cities` VALUES ('114', '075', 'BAHÍA SOLANO', '027', 'A');
INSERT INTO `cities` VALUES ('115', '075', 'BALBOA', '066', 'A');
INSERT INTO `cities` VALUES ('116', '077', 'BAJO BAUDÓ', '027', 'A');
INSERT INTO `cities` VALUES ('117', '077', 'BARBOSA', '068', 'A');
INSERT INTO `cities` VALUES ('118', '078', 'BARANOA', '008', 'A');
INSERT INTO `cities` VALUES ('119', '078', 'BARAYA', '041', 'A');
INSERT INTO `cities` VALUES ('120', '078', 'BARRANCAS', '044', 'A');
INSERT INTO `cities` VALUES ('121', '079', 'BARBOSA', '005', 'A');
INSERT INTO `cities` VALUES ('122', '079', 'BUENAVISTA', '023', 'A');
INSERT INTO `cities` VALUES ('123', '079', 'BARBACOAS', '052', 'A');
INSERT INTO `cities` VALUES ('124', '079', 'BARICHARA', '068', 'A');
INSERT INTO `cities` VALUES ('125', '081', 'BARRANCABERMEJA', '068', 'A');
INSERT INTO `cities` VALUES ('126', '083', 'BELÉN', '052', 'A');
INSERT INTO `cities` VALUES ('127', '086', 'BELMIRA', '005', 'A');
INSERT INTO `cities` VALUES ('128', '086', 'BELTRÁN', '025', 'A');
INSERT INTO `cities` VALUES ('129', '086', 'BELÉN DE BAJIRÁ', '027', 'A');
INSERT INTO `cities` VALUES ('130', '087', 'BELÉN', '015', 'A');
INSERT INTO `cities` VALUES ('131', '088', 'BELLO', '005', 'A');
INSERT INTO `cities` VALUES ('132', '088', 'BELALCÁZAR', '017', 'A');
INSERT INTO `cities` VALUES ('133', '088', 'BELÉN DE UMBRÍA', '066', 'A');
INSERT INTO `cities` VALUES ('134', '090', 'BERBEO', '015', 'A');
INSERT INTO `cities` VALUES ('135', '090', 'CANALETE', '023', 'A');
INSERT INTO `cities` VALUES ('136', '090', 'DIBULLA', '044', 'A');
INSERT INTO `cities` VALUES ('137', '091', 'BETANIA', '005', 'A');
INSERT INTO `cities` VALUES ('138', '092', 'BETÉITIVA', '015', 'A');
INSERT INTO `cities` VALUES ('139', '092', 'BETULIA', '068', 'A');
INSERT INTO `cities` VALUES ('140', '093', 'BETULIA', '005', 'A');
INSERT INTO `cities` VALUES ('141', '094', 'BELÉN DE LOS ANDAQUIES', '018', 'A');
INSERT INTO `cities` VALUES ('142', '095', 'BITUIMA', '025', 'A');
INSERT INTO `cities` VALUES ('143', '097', 'BOAVITA', '015', 'A');
INSERT INTO `cities` VALUES ('144', '098', 'DISTRACCIÓN', '044', 'A');
INSERT INTO `cities` VALUES ('145', '099', 'BOJACÁ', '025', 'A');
INSERT INTO `cities` VALUES ('146', '099', 'BOJAYA', '027', 'A');
INSERT INTO `cities` VALUES ('147', '099', 'BOCHALEMA', '054', 'A');
INSERT INTO `cities` VALUES ('148', '100', 'BOLÍVAR', '019', 'A');
INSERT INTO `cities` VALUES ('149', '100', 'BOLÍVAR', '076', 'A');
INSERT INTO `cities` VALUES ('150', '101', 'CIUDAD BOLÍVAR', '005', 'A');
INSERT INTO `cities` VALUES ('151', '101', 'BOLÍVAR', '068', 'A');
INSERT INTO `cities` VALUES ('152', '104', 'BOYACÁ', '015', 'A');
INSERT INTO `cities` VALUES ('153', '106', 'BRICEÑO', '015', 'A');
INSERT INTO `cities` VALUES ('154', '107', 'BRICEÑO', '005', 'A');
INSERT INTO `cities` VALUES ('155', '109', 'BUENAVISTA', '015', 'A');
INSERT INTO `cities` VALUES ('156', '109', 'BUCARASICA', '054', 'A');
INSERT INTO `cities` VALUES ('157', '109', 'BUENAVENTURA', '076', 'A');
INSERT INTO `cities` VALUES ('158', '110', 'BUENOS AIRES', '019', 'A');
INSERT INTO `cities` VALUES ('159', '110', 'EL MOLINO', '044', 'A');
INSERT INTO `cities` VALUES ('160', '110', 'BARRANCA DE UPÍA', '050', 'A');
INSERT INTO `cities` VALUES ('161', '110', 'BUESACO', '052', 'A');
INSERT INTO `cities` VALUES ('162', '110', 'BUENAVISTA', '070', 'A');
INSERT INTO `cities` VALUES ('163', '111', 'BUENAVISTA', '063', 'A');
INSERT INTO `cities` VALUES ('164', '111', 'GUADALAJARA DE BUGA', '076', 'A');
INSERT INTO `cities` VALUES ('165', '113', 'BURITICÁ', '005', 'A');
INSERT INTO `cities` VALUES ('166', '113', 'BUGALAGRANDE', '076', 'A');
INSERT INTO `cities` VALUES ('167', '114', 'BUSBANZÁ', '015', 'A');
INSERT INTO `cities` VALUES ('168', '120', 'CÁCERES', '005', 'A');
INSERT INTO `cities` VALUES ('169', '120', 'CABRERA', '025', 'A');
INSERT INTO `cities` VALUES ('170', '121', 'CABRERA', '068', 'A');
INSERT INTO `cities` VALUES ('171', '122', 'CAICEDONIA', '076', 'A');
INSERT INTO `cities` VALUES ('172', '123', 'CACHIPAY', '025', 'A');
INSERT INTO `cities` VALUES ('173', '124', 'CABUYARO', '050', 'A');
INSERT INTO `cities` VALUES ('174', '124', 'CAIMITO', '070', 'A');
INSERT INTO `cities` VALUES ('175', '124', 'CAJAMARCA', '073', 'A');
INSERT INTO `cities` VALUES ('176', '125', 'CAICEDO', '005', 'A');
INSERT INTO `cities` VALUES ('177', '125', 'CÁCOTA', '054', 'A');
INSERT INTO `cities` VALUES ('178', '125', 'HATO COROZAL', '085', 'A');
INSERT INTO `cities` VALUES ('179', '126', 'CAJICÁ', '025', 'A');
INSERT INTO `cities` VALUES ('180', '126', 'CALIMA', '076', 'A');
INSERT INTO `cities` VALUES ('181', '128', 'CACHIRÁ', '054', 'A');
INSERT INTO `cities` VALUES ('182', '129', 'CALDAS', '005', 'A');
INSERT INTO `cities` VALUES ('183', '130', 'CAJIBÍO', '019', 'A');
INSERT INTO `cities` VALUES ('184', '130', 'CALARCA', '063', 'A');
INSERT INTO `cities` VALUES ('185', '130', 'CANDELARIA', '076', 'A');
INSERT INTO `cities` VALUES ('186', '131', 'CALDAS', '015', 'A');
INSERT INTO `cities` VALUES ('187', '132', 'CAMPOALEGRE', '041', 'A');
INSERT INTO `cities` VALUES ('188', '132', 'CALIFORNIA', '068', 'A');
INSERT INTO `cities` VALUES ('189', '134', 'CAMPAMENTO', '005', 'A');
INSERT INTO `cities` VALUES ('190', '135', 'CAMPOHERMOSO', '015', 'A');
INSERT INTO `cities` VALUES ('191', '135', 'EL CANTÓN DEL SAN PABLO', '027', 'A');
INSERT INTO `cities` VALUES ('192', '136', 'LA SALINA', '085', 'A');
INSERT INTO `cities` VALUES ('193', '137', 'CAMPO DE LA CRUZ', '008', 'A');
INSERT INTO `cities` VALUES ('194', '137', 'CALDONO', '019', 'A');
INSERT INTO `cities` VALUES ('195', '138', 'CAÑASGORDAS', '005', 'A');
INSERT INTO `cities` VALUES ('196', '139', 'MANÍ', '085', 'A');
INSERT INTO `cities` VALUES ('197', '140', 'CALAMAR', '013', 'A');
INSERT INTO `cities` VALUES ('198', '141', 'CANDELARIA', '008', 'A');
INSERT INTO `cities` VALUES ('199', '142', 'CARACOLÍ', '005', 'A');
INSERT INTO `cities` VALUES ('200', '142', 'CALOTO', '019', 'A');
INSERT INTO `cities` VALUES ('201', '145', 'CARAMANTA', '005', 'A');
INSERT INTO `cities` VALUES ('202', '147', 'CAREPA', '005', 'A');
INSERT INTO `cities` VALUES ('203', '147', 'CAPITANEJO', '068', 'A');
INSERT INTO `cities` VALUES ('204', '147', 'CARTAGO', '076', 'A');
INSERT INTO `cities` VALUES ('205', '148', 'EL CARMEN DE VIBORAL', '005', 'A');
INSERT INTO `cities` VALUES ('206', '148', 'CAPARRAPÍ', '025', 'A');
INSERT INTO `cities` VALUES ('207', '148', 'CARMEN DE APICALÁ', '073', 'A');
INSERT INTO `cities` VALUES ('208', '150', 'CAROLINA', '005', 'A');
INSERT INTO `cities` VALUES ('209', '150', 'CARTAGENA DEL CHAIRÁ', '018', 'A');
INSERT INTO `cities` VALUES ('210', '150', 'CARMEN DEL DARIEN', '027', 'A');
INSERT INTO `cities` VALUES ('211', '150', 'CASTILLA LA NUEVA', '050', 'A');
INSERT INTO `cities` VALUES ('212', '151', 'CAQUEZA', '025', 'A');
INSERT INTO `cities` VALUES ('213', '152', 'CARCASÍ', '068', 'A');
INSERT INTO `cities` VALUES ('214', '152', 'CASABIANCA', '073', 'A');
INSERT INTO `cities` VALUES ('215', '154', 'CAUCASIA', '005', 'A');
INSERT INTO `cities` VALUES ('216', '154', 'CARMEN DE CARUPA', '025', 'A');
INSERT INTO `cities` VALUES ('217', '160', 'CANTAGALLO', '013', 'A');
INSERT INTO `cities` VALUES ('218', '160', 'CÉRTEGUI', '027', 'A');
INSERT INTO `cities` VALUES ('219', '160', 'CEPITÁ', '068', 'A');
INSERT INTO `cities` VALUES ('220', '161', 'CERRO SAN ANTONIO', '047', 'A');
INSERT INTO `cities` VALUES ('221', '161', 'CARURU', '097', 'A');
INSERT INTO `cities` VALUES ('222', '162', 'CERINZA', '015', 'A');
INSERT INTO `cities` VALUES ('223', '162', 'CERETÉ', '023', 'A');
INSERT INTO `cities` VALUES ('224', '162', 'CERRITO', '068', 'A');
INSERT INTO `cities` VALUES ('225', '162', 'MONTERREY', '085', 'A');
INSERT INTO `cities` VALUES ('226', '167', 'CHARALÁ', '068', 'A');
INSERT INTO `cities` VALUES ('227', '168', 'CHIMÁ', '023', 'A');
INSERT INTO `cities` VALUES ('228', '168', 'CHAGUANÍ', '025', 'A');
INSERT INTO `cities` VALUES ('229', '168', 'CHAPARRAL', '073', 'A');
INSERT INTO `cities` VALUES ('230', '169', 'CHARTA', '068', 'A');
INSERT INTO `cities` VALUES ('231', '170', 'CHIBOLO', '047', 'A');
INSERT INTO `cities` VALUES ('232', '170', 'DOSQUEBRADAS', '066', 'A');
INSERT INTO `cities` VALUES ('233', '172', 'CHIGORODÓ', '005', 'A');
INSERT INTO `cities` VALUES ('234', '172', 'CHINAVITA', '015', 'A');
INSERT INTO `cities` VALUES ('235', '172', 'CHINÁCOTA', '054', 'A');
INSERT INTO `cities` VALUES ('236', '174', 'CHINCHINÁ', '017', 'A');
INSERT INTO `cities` VALUES ('237', '174', 'CHITAGÁ', '054', 'A');
INSERT INTO `cities` VALUES ('238', '175', 'CHIMICHAGUA', '020', 'A');
INSERT INTO `cities` VALUES ('239', '175', 'CHÍA', '025', 'A');
INSERT INTO `cities` VALUES ('240', '176', 'CHIQUINQUIRÁ', '015', 'A');
INSERT INTO `cities` VALUES ('241', '176', 'CHIMA', '068', 'A');
INSERT INTO `cities` VALUES ('242', '178', 'CHIRIGUANÁ', '020', 'A');
INSERT INTO `cities` VALUES ('243', '178', 'CHIPAQUE', '025', 'A');
INSERT INTO `cities` VALUES ('244', '179', 'CHIPATÁ', '068', 'A');
INSERT INTO `cities` VALUES ('245', '180', 'CHISCAS', '015', 'A');
INSERT INTO `cities` VALUES ('246', '181', 'CHOACHÍ', '025', 'A');
INSERT INTO `cities` VALUES ('247', '182', 'CHINÚ', '023', 'A');
INSERT INTO `cities` VALUES ('248', '183', 'CHITA', '015', 'A');
INSERT INTO `cities` VALUES ('249', '183', 'CHOCONTÁ', '025', 'A');
INSERT INTO `cities` VALUES ('250', '185', 'CHITARAQUE', '015', 'A');
INSERT INTO `cities` VALUES ('251', '187', 'CHIVATÁ', '015', 'A');
INSERT INTO `cities` VALUES ('252', '188', 'CICUCO', '013', 'A');
INSERT INTO `cities` VALUES ('253', '189', 'CIÉNEGA', '015', 'A');
INSERT INTO `cities` VALUES ('254', '189', 'CIÉNAGA DE ORO', '023', 'A');
INSERT INTO `cities` VALUES ('255', '189', 'CIÉNAGA', '047', 'A');
INSERT INTO `cities` VALUES ('256', '190', 'CISNEROS', '005', 'A');
INSERT INTO `cities` VALUES ('257', '190', 'CIRCASIA', '063', 'A');
INSERT INTO `cities` VALUES ('258', '190', 'CIMITARRA', '068', 'A');
INSERT INTO `cities` VALUES ('259', '197', 'COCORNÁ', '005', 'A');
INSERT INTO `cities` VALUES ('260', '200', 'COGUA', '025', 'A');
INSERT INTO `cities` VALUES ('261', '200', 'COELLO', '073', 'A');
INSERT INTO `cities` VALUES ('262', '200', 'MIRAFLORES', '095', 'A');
INSERT INTO `cities` VALUES ('263', '203', 'COLÓN', '052', 'A');
INSERT INTO `cities` VALUES ('264', '204', 'CÓMBITA', '015', 'A');
INSERT INTO `cities` VALUES ('265', '204', 'COLOSO', '070', 'A');
INSERT INTO `cities` VALUES ('266', '205', 'CURILLO', '018', 'A');
INSERT INTO `cities` VALUES ('267', '205', 'CONDOTO', '027', 'A');
INSERT INTO `cities` VALUES ('268', '205', 'CONCORDIA', '047', 'A');
INSERT INTO `cities` VALUES ('269', '206', 'CONCEPCIÓN', '005', 'A');
INSERT INTO `cities` VALUES ('270', '206', 'COLOMBIA', '041', 'A');
INSERT INTO `cities` VALUES ('271', '206', 'CONVENCIÓN', '054', 'A');
INSERT INTO `cities` VALUES ('272', '207', 'CONSACA', '052', 'A');
INSERT INTO `cities` VALUES ('273', '207', 'CONCEPCIÓN', '068', 'A');
INSERT INTO `cities` VALUES ('274', '209', 'CONCORDIA', '005', 'A');
INSERT INTO `cities` VALUES ('275', '209', 'CONFINES', '068', 'A');
INSERT INTO `cities` VALUES ('276', '210', 'CONTADERO', '052', 'A');
INSERT INTO `cities` VALUES ('277', '211', 'CONTRATACIÓN', '068', 'A');
INSERT INTO `cities` VALUES ('278', '212', 'COPACABANA', '005', 'A');
INSERT INTO `cities` VALUES ('279', '212', 'CÓRDOBA', '013', 'A');
INSERT INTO `cities` VALUES ('280', '212', 'COPER', '015', 'A');
INSERT INTO `cities` VALUES ('281', '212', 'CORINTO', '019', 'A');
INSERT INTO `cities` VALUES ('282', '212', 'CÓRDOBA', '063', 'A');
INSERT INTO `cities` VALUES ('283', '214', 'COTA', '025', 'A');
INSERT INTO `cities` VALUES ('284', '215', 'CORRALES', '015', 'A');
INSERT INTO `cities` VALUES ('285', '215', 'CÓRDOBA', '052', 'A');
INSERT INTO `cities` VALUES ('286', '215', 'COROZAL', '070', 'A');
INSERT INTO `cities` VALUES ('287', '217', 'COROMORO', '068', 'A');
INSERT INTO `cities` VALUES ('288', '217', 'COYAIMA', '073', 'A');
INSERT INTO `cities` VALUES ('289', '218', 'COVARACHÍA', '015', 'A');
INSERT INTO `cities` VALUES ('290', '219', 'COLÓN', '086', 'A');
INSERT INTO `cities` VALUES ('291', '220', 'CRAVO NORTE', '081', 'A');
INSERT INTO `cities` VALUES ('292', '221', 'COVEÑAS', '070', 'A');
INSERT INTO `cities` VALUES ('293', '222', 'CLEMENCIA', '013', 'A');
INSERT INTO `cities` VALUES ('294', '223', 'CUBARÁ', '015', 'A');
INSERT INTO `cities` VALUES ('295', '223', 'CUBARRAL', '050', 'A');
INSERT INTO `cities` VALUES ('296', '223', 'CUCUTILLA', '054', 'A');
INSERT INTO `cities` VALUES ('297', '224', 'CUCAITA', '015', 'A');
INSERT INTO `cities` VALUES ('298', '224', 'CUCUNUBÁ', '025', 'A');
INSERT INTO `cities` VALUES ('299', '224', 'CUASPUD', '052', 'A');
INSERT INTO `cities` VALUES ('300', '225', 'NUNCHÍA', '085', 'A');
INSERT INTO `cities` VALUES ('301', '226', 'CUÍTIVA', '015', 'A');
INSERT INTO `cities` VALUES ('302', '226', 'CUMARAL', '050', 'A');
INSERT INTO `cities` VALUES ('303', '226', 'CUNDAY', '073', 'A');
INSERT INTO `cities` VALUES ('304', '227', 'CUMBAL', '052', 'A');
INSERT INTO `cities` VALUES ('305', '228', 'CURUMANÍ', '020', 'A');
INSERT INTO `cities` VALUES ('306', '229', 'CURITÍ', '068', 'A');
INSERT INTO `cities` VALUES ('307', '230', 'CHALÁN', '070', 'A');
INSERT INTO `cities` VALUES ('308', '230', 'OROCUÉ', '085', 'A');
INSERT INTO `cities` VALUES ('309', '232', 'CHÍQUIZA', '015', 'A');
INSERT INTO `cities` VALUES ('310', '233', 'CUMBITARA', '052', 'A');
INSERT INTO `cities` VALUES ('311', '233', 'EL ROBLE', '070', 'A');
INSERT INTO `cities` VALUES ('312', '233', 'DAGUA', '076', 'A');
INSERT INTO `cities` VALUES ('313', '234', 'DABEIBA', '005', 'A');
INSERT INTO `cities` VALUES ('314', '235', 'EL CARMEN DE CHUCURÍ', '068', 'A');
INSERT INTO `cities` VALUES ('315', '235', 'GALERAS', '070', 'A');
INSERT INTO `cities` VALUES ('316', '236', 'CHIVOR', '015', 'A');
INSERT INTO `cities` VALUES ('317', '236', 'DOLORES', '073', 'A');
INSERT INTO `cities` VALUES ('318', '237', 'DON MATÍAS', '005', 'A');
INSERT INTO `cities` VALUES ('319', '238', 'DUITAMA', '015', 'A');
INSERT INTO `cities` VALUES ('320', '238', 'EL COPEY', '020', 'A');
INSERT INTO `cities` VALUES ('321', '239', 'DURANIA', '054', 'A');
INSERT INTO `cities` VALUES ('322', '240', 'EBÉJICO', '005', 'A');
INSERT INTO `cities` VALUES ('323', '240', 'CHACHAGÜÍ', '052', 'A');
INSERT INTO `cities` VALUES ('324', '243', 'EL ÁGUILA', '076', 'A');
INSERT INTO `cities` VALUES ('325', '244', 'EL CARMEN DE BOLÍVAR', '013', 'A');
INSERT INTO `cities` VALUES ('326', '244', 'EL COCUY', '015', 'A');
INSERT INTO `cities` VALUES ('327', '244', 'ELÍAS', '041', 'A');
INSERT INTO `cities` VALUES ('328', '245', 'EL COLEGIO', '025', 'A');
INSERT INTO `cities` VALUES ('329', '245', 'EL CARMEN DE ATRATO', '027', 'A');
INSERT INTO `cities` VALUES ('330', '245', 'EL BANCO', '047', 'A');
INSERT INTO `cities` VALUES ('331', '245', 'EL CALVARIO', '050', 'A');
INSERT INTO `cities` VALUES ('332', '245', 'EL CARMEN', '054', 'A');
INSERT INTO `cities` VALUES ('333', '245', 'EL GUACAMAYO', '068', 'A');
INSERT INTO `cities` VALUES ('334', '246', 'EL CAIRO', '076', 'A');
INSERT INTO `cities` VALUES ('335', '247', 'EL DONCELLO', '018', 'A');
INSERT INTO `cities` VALUES ('336', '248', 'EL GUAMO', '013', 'A');
INSERT INTO `cities` VALUES ('337', '248', 'EL ESPINO', '015', 'A');
INSERT INTO `cities` VALUES ('338', '248', 'EL CERRITO', '076', 'A');
INSERT INTO `cities` VALUES ('339', '250', 'EL BAGRE', '005', 'A');
INSERT INTO `cities` VALUES ('340', '250', 'EL PASO', '020', 'A');
INSERT INTO `cities` VALUES ('341', '250', 'EL LITORAL DEL SAN JUAN', '027', 'A');
INSERT INTO `cities` VALUES ('342', '250', 'EL CHARCO', '052', 'A');
INSERT INTO `cities` VALUES ('343', '250', 'EL TARRA', '054', 'A');
INSERT INTO `cities` VALUES ('344', '250', 'EL PEÑÓN', '068', 'A');
INSERT INTO `cities` VALUES ('345', '250', 'EL DOVIO', '076', 'A');
INSERT INTO `cities` VALUES ('346', '250', 'PAZ DE ARIPORO', '085', 'A');
INSERT INTO `cities` VALUES ('347', '251', 'EL CASTILLO', '050', 'A');
INSERT INTO `cities` VALUES ('348', '254', 'EL PEÑOL', '052', 'A');
INSERT INTO `cities` VALUES ('349', '255', 'EL PLAYÓN', '068', 'A');
INSERT INTO `cities` VALUES ('350', '256', 'EL PAUJIL', '018', 'A');
INSERT INTO `cities` VALUES ('351', '256', 'EL TAMBO', '019', 'A');
INSERT INTO `cities` VALUES ('352', '256', 'EL ROSARIO', '052', 'A');
INSERT INTO `cities` VALUES ('353', '258', 'EL PEÑÓN', '025', 'A');
INSERT INTO `cities` VALUES ('354', '258', 'EL PIÑON', '047', 'A');
INSERT INTO `cities` VALUES ('355', '258', 'EL TABLÓN DE GÓMEZ', '052', 'A');
INSERT INTO `cities` VALUES ('356', '260', 'EL ROSAL', '025', 'A');
INSERT INTO `cities` VALUES ('357', '260', 'EL TAMBO', '052', 'A');
INSERT INTO `cities` VALUES ('358', '261', 'EL ZULIA', '054', 'A');
INSERT INTO `cities` VALUES ('359', '263', 'PORE', '085', 'A');
INSERT INTO `cities` VALUES ('360', '263', 'EL ENCANTO', '091', 'A');
INSERT INTO `cities` VALUES ('361', '264', 'ENTRERRIOS', '005', 'A');
INSERT INTO `cities` VALUES ('362', '264', 'ENCINO', '068', 'A');
INSERT INTO `cities` VALUES ('363', '265', 'GUARANDA', '070', 'A');
INSERT INTO `cities` VALUES ('364', '266', 'ENVIGADO', '005', 'A');
INSERT INTO `cities` VALUES ('365', '266', 'ENCISO', '068', 'A');
INSERT INTO `cities` VALUES ('366', '268', 'EL PEÑÓN', '013', 'A');
INSERT INTO `cities` VALUES ('367', '268', 'EL RETÉN', '047', 'A');
INSERT INTO `cities` VALUES ('368', '268', 'ESPINAL', '073', 'A');
INSERT INTO `cities` VALUES ('369', '269', 'FACATATIVÁ', '025', 'A');
INSERT INTO `cities` VALUES ('370', '270', 'EL DORADO', '050', 'A');
INSERT INTO `cities` VALUES ('371', '270', 'FALAN', '073', 'A');
INSERT INTO `cities` VALUES ('372', '271', 'FLORIÁN', '068', 'A');
INSERT INTO `cities` VALUES ('373', '272', 'FIRAVITOBA', '015', 'A');
INSERT INTO `cities` VALUES ('374', '272', 'FILADELFIA', '017', 'A');
INSERT INTO `cities` VALUES ('375', '272', 'FILANDIA', '063', 'A');
INSERT INTO `cities` VALUES ('376', '275', 'FLANDES', '073', 'A');
INSERT INTO `cities` VALUES ('377', '275', 'FLORIDA', '076', 'A');
INSERT INTO `cities` VALUES ('378', '276', 'FLORESTA', '015', 'A');
INSERT INTO `cities` VALUES ('379', '276', 'FLORIDABLANCA', '068', 'A');
INSERT INTO `cities` VALUES ('380', '279', 'FOMEQUE', '025', 'A');
INSERT INTO `cities` VALUES ('381', '279', 'FONSECA', '044', 'A');
INSERT INTO `cities` VALUES ('382', '279', 'RECETOR', '085', 'A');
INSERT INTO `cities` VALUES ('383', '281', 'FOSCA', '025', 'A');
INSERT INTO `cities` VALUES ('384', '282', 'FREDONIA', '005', 'A');
INSERT INTO `cities` VALUES ('385', '283', 'FRESNO', '073', 'A');
INSERT INTO `cities` VALUES ('386', '284', 'FRONTINO', '005', 'A');
INSERT INTO `cities` VALUES ('387', '286', 'FUNZA', '025', 'A');
INSERT INTO `cities` VALUES ('388', '287', 'FUENTE DE ORO', '050', 'A');
INSERT INTO `cities` VALUES ('389', '287', 'FUNES', '052', 'A');
INSERT INTO `cities` VALUES ('390', '288', 'FÚQUENE', '025', 'A');
INSERT INTO `cities` VALUES ('391', '288', 'FUNDACIÓN', '047', 'A');
INSERT INTO `cities` VALUES ('392', '290', 'FLORENCIA', '019', 'A');
INSERT INTO `cities` VALUES ('393', '290', 'FUSAGASUGÁ', '025', 'A');
INSERT INTO `cities` VALUES ('394', '293', 'GACHANTIVÁ', '015', 'A');
INSERT INTO `cities` VALUES ('395', '293', 'GACHALA', '025', 'A');
INSERT INTO `cities` VALUES ('396', '295', 'GAMARRA', '020', 'A');
INSERT INTO `cities` VALUES ('397', '295', 'GACHANCIPÁ', '025', 'A');
INSERT INTO `cities` VALUES ('398', '296', 'GALAPA', '008', 'A');
INSERT INTO `cities` VALUES ('399', '296', 'GAMEZA', '015', 'A');
INSERT INTO `cities` VALUES ('400', '296', 'GALÁN', '068', 'A');
INSERT INTO `cities` VALUES ('401', '297', 'GACHETÁ', '025', 'A');
INSERT INTO `cities` VALUES ('402', '298', 'GARZÓN', '041', 'A');
INSERT INTO `cities` VALUES ('403', '298', 'GAMBITA', '068', 'A');
INSERT INTO `cities` VALUES ('404', '299', 'GARAGOA', '015', 'A');
INSERT INTO `cities` VALUES ('405', '299', 'GAMA', '025', 'A');
INSERT INTO `cities` VALUES ('406', '300', 'HATILLO DE LOBA', '013', 'A');
INSERT INTO `cities` VALUES ('407', '300', 'COTORRA', '023', 'A');
INSERT INTO `cities` VALUES ('408', '300', 'FORTUL', '081', 'A');
INSERT INTO `cities` VALUES ('409', '300', 'SABANALARGA', '085', 'A');
INSERT INTO `cities` VALUES ('410', '302', 'GÉNOVA', '063', 'A');
INSERT INTO `cities` VALUES ('411', '306', 'GIRALDO', '005', 'A');
INSERT INTO `cities` VALUES ('412', '306', 'GIGANTE', '041', 'A');
INSERT INTO `cities` VALUES ('413', '306', 'GINEBRA', '076', 'A');
INSERT INTO `cities` VALUES ('414', '307', 'GIRARDOT', '025', 'A');
INSERT INTO `cities` VALUES ('415', '307', 'GIRÓN', '068', 'A');
INSERT INTO `cities` VALUES ('416', '308', 'GIRARDOTA', '005', 'A');
INSERT INTO `cities` VALUES ('417', '310', 'GÓMEZ PLATA', '005', 'A');
INSERT INTO `cities` VALUES ('418', '310', 'GONZÁLEZ', '020', 'A');
INSERT INTO `cities` VALUES ('419', '312', 'GRANADA', '025', 'A');
INSERT INTO `cities` VALUES ('420', '313', 'GRANADA', '005', 'A');
INSERT INTO `cities` VALUES ('421', '313', 'GRANADA', '050', 'A');
INSERT INTO `cities` VALUES ('422', '313', 'GRAMALOTE', '054', 'A');
INSERT INTO `cities` VALUES ('423', '315', 'GUADALUPE', '005', 'A');
INSERT INTO `cities` VALUES ('424', '315', 'SÁCAMA', '085', 'A');
INSERT INTO `cities` VALUES ('425', '317', 'GUACAMAYAS', '015', 'A');
INSERT INTO `cities` VALUES ('426', '317', 'GUACHETÁ', '025', 'A');
INSERT INTO `cities` VALUES ('427', '317', 'GUACHUCAL', '052', 'A');
INSERT INTO `cities` VALUES ('428', '318', 'GUARNE', '005', 'A');
INSERT INTO `cities` VALUES ('429', '318', 'GUAPI', '019', 'A');
INSERT INTO `cities` VALUES ('430', '318', 'GUAMAL', '047', 'A');
INSERT INTO `cities` VALUES ('431', '318', 'GUAMAL', '050', 'A');
INSERT INTO `cities` VALUES ('432', '318', 'GUÁTICA', '066', 'A');
INSERT INTO `cities` VALUES ('433', '318', 'GUACA', '068', 'A');
INSERT INTO `cities` VALUES ('434', '318', 'GUACARÍ', '076', 'A');
INSERT INTO `cities` VALUES ('435', '319', 'GUADALUPE', '041', 'A');
INSERT INTO `cities` VALUES ('436', '319', 'GUAMO', '073', 'A');
INSERT INTO `cities` VALUES ('437', '320', 'GUADUAS', '025', 'A');
INSERT INTO `cities` VALUES ('438', '320', 'GUAITARILLA', '052', 'A');
INSERT INTO `cities` VALUES ('439', '320', 'GUADALUPE', '068', 'A');
INSERT INTO `cities` VALUES ('440', '320', 'ORITO', '086', 'A');
INSERT INTO `cities` VALUES ('441', '321', 'GUATAPE', '005', 'A');
INSERT INTO `cities` VALUES ('442', '322', 'GUATEQUE', '015', 'A');
INSERT INTO `cities` VALUES ('443', '322', 'GUASCA', '025', 'A');
INSERT INTO `cities` VALUES ('444', '322', 'GUAPOTÁ', '068', 'A');
INSERT INTO `cities` VALUES ('445', '323', 'GUALMATÁN', '052', 'A');
INSERT INTO `cities` VALUES ('446', '324', 'GUATAQUÍ', '025', 'A');
INSERT INTO `cities` VALUES ('447', '324', 'GUAVATÁ', '068', 'A');
INSERT INTO `cities` VALUES ('448', '325', 'GUAYATÁ', '015', 'A');
INSERT INTO `cities` VALUES ('449', '325', 'MAPIRIPÁN', '050', 'A');
INSERT INTO `cities` VALUES ('450', '325', 'SAN LUIS DE PALENQUE', '085', 'A');
INSERT INTO `cities` VALUES ('451', '326', 'GUATAVITA', '025', 'A');
INSERT INTO `cities` VALUES ('452', '327', 'GÜEPSA', '068', 'A');
INSERT INTO `cities` VALUES ('453', '328', 'GUAYABAL DE SIQUIMA', '025', 'A');
INSERT INTO `cities` VALUES ('454', '330', 'MESETAS', '050', 'A');
INSERT INTO `cities` VALUES ('455', '332', 'GÜICÁN', '015', 'A');
INSERT INTO `cities` VALUES ('456', '335', 'GUAYABETAL', '025', 'A');
INSERT INTO `cities` VALUES ('457', '339', 'GUTIÉRREZ', '025', 'A');
INSERT INTO `cities` VALUES ('458', '343', 'BARRANCO MINAS', '094', 'A');
INSERT INTO `cities` VALUES ('459', '344', 'HACARÍ', '054', 'A');
INSERT INTO `cities` VALUES ('460', '344', 'HATO', '068', 'A');
INSERT INTO `cities` VALUES ('461', '347', 'HELICONIA', '005', 'A');
INSERT INTO `cities` VALUES ('462', '347', 'HERRÁN', '054', 'A');
INSERT INTO `cities` VALUES ('463', '347', 'HERVEO', '073', 'A');
INSERT INTO `cities` VALUES ('464', '349', 'HOBO', '041', 'A');
INSERT INTO `cities` VALUES ('465', '349', 'HONDA', '073', 'A');
INSERT INTO `cities` VALUES ('466', '350', 'LA APARTADA', '023', 'A');
INSERT INTO `cities` VALUES ('467', '350', 'LA MACARENA', '050', 'A');
INSERT INTO `cities` VALUES ('468', '352', 'ILES', '052', 'A');
INSERT INTO `cities` VALUES ('469', '352', 'ICONONZO', '073', 'A');
INSERT INTO `cities` VALUES ('470', '353', 'HISPANIA', '005', 'A');
INSERT INTO `cities` VALUES ('471', '354', 'IMUÉS', '052', 'A');
INSERT INTO `cities` VALUES ('472', '355', 'INZÁ', '019', 'A');
INSERT INTO `cities` VALUES ('473', '356', 'IPIALES', '052', 'A');
INSERT INTO `cities` VALUES ('474', '357', 'IQUIRA', '041', 'A');
INSERT INTO `cities` VALUES ('475', '359', 'ISNOS', '041', 'A');
INSERT INTO `cities` VALUES ('476', '360', 'ITAGUI', '005', 'A');
INSERT INTO `cities` VALUES ('477', '361', 'ITUANGO', '005', 'A');
INSERT INTO `cities` VALUES ('478', '361', 'ISTMINA', '027', 'A');
INSERT INTO `cities` VALUES ('479', '362', 'IZA', '015', 'A');
INSERT INTO `cities` VALUES ('480', '364', 'JARDÍN', '005', 'A');
INSERT INTO `cities` VALUES ('481', '364', 'JAMBALÓ', '019', 'A');
INSERT INTO `cities` VALUES ('482', '364', 'JAMUNDÍ', '076', 'A');
INSERT INTO `cities` VALUES ('483', '367', 'JENESANO', '015', 'A');
INSERT INTO `cities` VALUES ('484', '368', 'JERICÓ', '005', 'A');
INSERT INTO `cities` VALUES ('485', '368', 'JERICÓ', '015', 'A');
INSERT INTO `cities` VALUES ('486', '368', 'JERUSALÉN', '025', 'A');
INSERT INTO `cities` VALUES ('487', '368', 'JESÚS MARÍA', '068', 'A');
INSERT INTO `cities` VALUES ('488', '370', 'URIBE', '050', 'A');
INSERT INTO `cities` VALUES ('489', '370', 'JORDÁN', '068', 'A');
INSERT INTO `cities` VALUES ('490', '372', 'JUAN DE ACOSTA', '008', 'A');
INSERT INTO `cities` VALUES ('491', '372', 'JUNÍN', '025', 'A');
INSERT INTO `cities` VALUES ('492', '372', 'JURADÓ', '027', 'A');
INSERT INTO `cities` VALUES ('493', '376', 'LA CEJA', '005', 'A');
INSERT INTO `cities` VALUES ('494', '377', 'LABRANZAGRANDE', '015', 'A');
INSERT INTO `cities` VALUES ('495', '377', 'LA CALERA', '025', 'A');
INSERT INTO `cities` VALUES ('496', '377', 'LABATECA', '054', 'A');
INSERT INTO `cities` VALUES ('497', '377', 'LA BELLEZA', '068', 'A');
INSERT INTO `cities` VALUES ('498', '377', 'LA CUMBRE', '076', 'A');
INSERT INTO `cities` VALUES ('499', '378', 'LA ARGENTINA', '041', 'A');
INSERT INTO `cities` VALUES ('500', '378', 'HATONUEVO', '044', 'A');
INSERT INTO `cities` VALUES ('501', '378', 'LA CRUZ', '052', 'A');
INSERT INTO `cities` VALUES ('502', '380', 'LA ESTRELLA', '005', 'A');
INSERT INTO `cities` VALUES ('503', '380', 'LA CAPILLA', '015', 'A');
INSERT INTO `cities` VALUES ('504', '380', 'LA DORADA', '017', 'A');
INSERT INTO `cities` VALUES ('505', '381', 'LA FLORIDA', '052', 'A');
INSERT INTO `cities` VALUES ('506', '383', 'LA GLORIA', '020', 'A');
INSERT INTO `cities` VALUES ('507', '383', 'LA CELIA', '066', 'A');
INSERT INTO `cities` VALUES ('508', '385', 'LA LLANADA', '052', 'A');
INSERT INTO `cities` VALUES ('509', '385', 'LA ESPERANZA', '054', 'A');
INSERT INTO `cities` VALUES ('510', '385', 'LANDÁZURI', '068', 'A');
INSERT INTO `cities` VALUES ('511', '386', 'LA MESA', '025', 'A');
INSERT INTO `cities` VALUES ('512', '388', 'LA MERCED', '017', 'A');
INSERT INTO `cities` VALUES ('513', '390', 'LA PINTADA', '005', 'A');
INSERT INTO `cities` VALUES ('514', '390', 'LA TOLA', '052', 'A');
INSERT INTO `cities` VALUES ('515', '392', 'LA SIERRA', '019', 'A');
INSERT INTO `cities` VALUES ('516', '394', 'LA PALMA', '025', 'A');
INSERT INTO `cities` VALUES ('517', '396', 'LA PLATA', '041', 'A');
INSERT INTO `cities` VALUES ('518', '397', 'LA VEGA', '019', 'A');
INSERT INTO `cities` VALUES ('519', '397', 'LA PAZ', '068', 'A');
INSERT INTO `cities` VALUES ('520', '398', 'LA PEÑA', '025', 'A');
INSERT INTO `cities` VALUES ('521', '398', 'LA PLAYA', '054', 'A');
INSERT INTO `cities` VALUES ('522', '399', 'LA UNIÓN', '052', 'A');
INSERT INTO `cities` VALUES ('523', '400', 'LA UNIÓN', '005', 'A');
INSERT INTO `cities` VALUES ('524', '400', 'LA JAGUA DE IBIRICO', '020', 'A');
INSERT INTO `cities` VALUES ('525', '400', 'LEJANÍAS', '050', 'A');
INSERT INTO `cities` VALUES ('526', '400', 'LA VIRGINIA', '066', 'A');
INSERT INTO `cities` VALUES ('527', '400', 'LA UNIÓN', '070', 'A');
INSERT INTO `cities` VALUES ('528', '400', 'LA UNIÓN', '076', 'A');
INSERT INTO `cities` VALUES ('529', '400', 'TÁMARA', '085', 'A');
INSERT INTO `cities` VALUES ('530', '401', 'LA VICTORIA', '015', 'A');
INSERT INTO `cities` VALUES ('531', '401', 'LA TEBAIDA', '063', 'A');
INSERT INTO `cities` VALUES ('532', '402', 'LA VEGA', '025', 'A');
INSERT INTO `cities` VALUES ('533', '403', 'LA UVITA', '015', 'A');
INSERT INTO `cities` VALUES ('534', '403', 'LA VICTORIA', '076', 'A');
INSERT INTO `cities` VALUES ('535', '405', 'LEIVA', '052', 'A');
INSERT INTO `cities` VALUES ('536', '405', 'LOS PATIOS', '054', 'A');
INSERT INTO `cities` VALUES ('537', '405', 'LA CHORRERA', '091', 'A');
INSERT INTO `cities` VALUES ('538', '406', 'LEBRÍJA', '068', 'A');
INSERT INTO `cities` VALUES ('539', '407', 'VILLA DE LEYVA', '015', 'A');
INSERT INTO `cities` VALUES ('540', '407', 'LENGUAZAQUE', '025', 'A');
INSERT INTO `cities` VALUES ('541', '407', 'LA PEDRERA', '091', 'A');
INSERT INTO `cities` VALUES ('542', '408', 'LÉRIDA', '073', 'A');
INSERT INTO `cities` VALUES ('543', '410', 'LA MONTAÑITA', '018', 'A');
INSERT INTO `cities` VALUES ('544', '410', 'TAURAMENA', '085', 'A');
INSERT INTO `cities` VALUES ('545', '411', 'LIBORINA', '005', 'A');
INSERT INTO `cities` VALUES ('546', '411', 'LINARES', '052', 'A');
INSERT INTO `cities` VALUES ('547', '411', 'LÍBANO', '073', 'A');
INSERT INTO `cities` VALUES ('548', '413', 'LLORÓ', '027', 'A');
INSERT INTO `cities` VALUES ('549', '417', 'LORICA', '023', 'A');
INSERT INTO `cities` VALUES ('550', '418', 'LÓPEZ', '019', 'A');
INSERT INTO `cities` VALUES ('551', '418', 'LOS ANDES', '052', 'A');
INSERT INTO `cities` VALUES ('552', '418', 'LOURDES', '054', 'A');
INSERT INTO `cities` VALUES ('553', '418', 'LOS SANTOS', '068', 'A');
INSERT INTO `cities` VALUES ('554', '418', 'LOS PALMITOS', '070', 'A');
INSERT INTO `cities` VALUES ('555', '419', 'LOS CÓRDOBAS', '023', 'A');
INSERT INTO `cities` VALUES ('556', '420', 'LA JAGUA DEL PILAR', '044', 'A');
INSERT INTO `cities` VALUES ('557', '421', 'LURUACO', '008', 'A');
INSERT INTO `cities` VALUES ('558', '425', 'MACEO', '005', 'A');
INSERT INTO `cities` VALUES ('559', '425', 'MACANAL', '015', 'A');
INSERT INTO `cities` VALUES ('560', '425', 'MEDIO ATRATO', '027', 'A');
INSERT INTO `cities` VALUES ('561', '425', 'MACARAVITA', '068', 'A');
INSERT INTO `cities` VALUES ('562', '426', 'MACHETA', '025', 'A');
INSERT INTO `cities` VALUES ('563', '427', 'MAGÜI', '052', 'A');
INSERT INTO `cities` VALUES ('564', '429', 'MAJAGUAL', '070', 'A');
INSERT INTO `cities` VALUES ('565', '430', 'MAGANGUÉ', '013', 'A');
INSERT INTO `cities` VALUES ('566', '430', 'MADRID', '025', 'A');
INSERT INTO `cities` VALUES ('567', '430', 'MEDIO BAUDÓ', '027', 'A');
INSERT INTO `cities` VALUES ('568', '430', 'MAICAO', '044', 'A');
INSERT INTO `cities` VALUES ('569', '430', 'TRINIDAD', '085', 'A');
INSERT INTO `cities` VALUES ('570', '430', 'LA VICTORIA', '091', 'A');
INSERT INTO `cities` VALUES ('571', '432', 'MÁLAGA', '068', 'A');
INSERT INTO `cities` VALUES ('572', '433', 'MALAMBO', '008', 'A');
INSERT INTO `cities` VALUES ('573', '433', 'MAHATES', '013', 'A');
INSERT INTO `cities` VALUES ('574', '433', 'MANZANARES', '017', 'A');
INSERT INTO `cities` VALUES ('575', '435', 'MALLAMA', '052', 'A');
INSERT INTO `cities` VALUES ('576', '436', 'MANATÍ', '008', 'A');
INSERT INTO `cities` VALUES ('577', '436', 'MANTA', '025', 'A');
INSERT INTO `cities` VALUES ('578', '438', 'MEDINA', '025', 'A');
INSERT INTO `cities` VALUES ('579', '440', 'MARINILLA', '005', 'A');
INSERT INTO `cities` VALUES ('580', '440', 'MARGARITA', '013', 'A');
INSERT INTO `cities` VALUES ('581', '440', 'MARSELLA', '066', 'A');
INSERT INTO `cities` VALUES ('582', '440', 'VILLANUEVA', '085', 'A');
INSERT INTO `cities` VALUES ('583', '442', 'MARÍA LA BAJA', '013', 'A');
INSERT INTO `cities` VALUES ('584', '442', 'MARIPÍ', '015', 'A');
INSERT INTO `cities` VALUES ('585', '442', 'MARMATO', '017', 'A');
INSERT INTO `cities` VALUES ('586', '443', 'MANAURE', '020', 'A');
INSERT INTO `cities` VALUES ('587', '443', 'MARIQUITA', '073', 'A');
INSERT INTO `cities` VALUES ('588', '444', 'MARQUETALIA', '017', 'A');
INSERT INTO `cities` VALUES ('589', '444', 'MATANZA', '068', 'A');
INSERT INTO `cities` VALUES ('590', '446', 'MARULANDA', '017', 'A');
INSERT INTO `cities` VALUES ('591', '449', 'MELGAR', '073', 'A');
INSERT INTO `cities` VALUES ('592', '450', 'MERCADERES', '019', 'A');
INSERT INTO `cities` VALUES ('593', '450', 'MEDIO SAN JUAN', '027', 'A');
INSERT INTO `cities` VALUES ('594', '450', 'PUERTO CONCORDIA', '050', 'A');
INSERT INTO `cities` VALUES ('595', '455', 'MIRAFLORES', '015', 'A');
INSERT INTO `cities` VALUES ('596', '455', 'MIRANDA', '019', 'A');
INSERT INTO `cities` VALUES ('597', '456', 'MISTRATÓ', '066', 'A');
INSERT INTO `cities` VALUES ('598', '458', 'MONTECRISTO', '013', 'A');
INSERT INTO `cities` VALUES ('599', '460', 'MILÁN', '018', 'A');
INSERT INTO `cities` VALUES ('600', '460', 'NUEVA GRANADA', '047', 'A');
INSERT INTO `cities` VALUES ('601', '460', 'MIRITI - PARANÁ', '091', 'A');
INSERT INTO `cities` VALUES ('602', '461', 'MURILLO', '073', 'A');
INSERT INTO `cities` VALUES ('603', '464', 'MONGUA', '015', 'A');
INSERT INTO `cities` VALUES ('604', '464', 'MOMIL', '023', 'A');
INSERT INTO `cities` VALUES ('605', '464', 'MOGOTES', '068', 'A');
INSERT INTO `cities` VALUES ('606', '466', 'MONGUÍ', '015', 'A');
INSERT INTO `cities` VALUES ('607', '466', 'MONTELÍBANO', '023', 'A');
INSERT INTO `cities` VALUES ('608', '467', 'MONTEBELLO', '005', 'A');
INSERT INTO `cities` VALUES ('609', '468', 'MOMPÓS', '013', 'A');
INSERT INTO `cities` VALUES ('610', '468', 'MOLAGAVITA', '068', 'A');
INSERT INTO `cities` VALUES ('611', '469', 'MONIQUIRÁ', '015', 'A');
INSERT INTO `cities` VALUES ('612', '470', 'MONTENEGRO', '063', 'A');
INSERT INTO `cities` VALUES ('613', '473', 'MORALES', '013', 'A');
INSERT INTO `cities` VALUES ('614', '473', 'MORALES', '019', 'A');
INSERT INTO `cities` VALUES ('615', '473', 'MOSQUERA', '025', 'A');
INSERT INTO `cities` VALUES ('616', '473', 'MOSQUERA', '052', 'A');
INSERT INTO `cities` VALUES ('617', '473', 'MORROA', '070', 'A');
INSERT INTO `cities` VALUES ('618', '475', 'MURINDÓ', '005', 'A');
INSERT INTO `cities` VALUES ('619', '476', 'MOTAVITA', '015', 'A');
INSERT INTO `cities` VALUES ('620', '479', 'MORELIA', '018', 'A');
INSERT INTO `cities` VALUES ('621', '480', 'MUTATÁ', '005', 'A');
INSERT INTO `cities` VALUES ('622', '480', 'MUZO', '015', 'A');
INSERT INTO `cities` VALUES ('623', '480', 'NARIÑO', '052', 'A');
INSERT INTO `cities` VALUES ('624', '480', 'MUTISCUA', '054', 'A');
INSERT INTO `cities` VALUES ('625', '483', 'NARIÑO', '005', 'A');
INSERT INTO `cities` VALUES ('626', '483', 'NARIÑO', '025', 'A');
INSERT INTO `cities` VALUES ('627', '483', 'NÁTAGA', '041', 'A');
INSERT INTO `cities` VALUES ('628', '483', 'NATAGAIMA', '073', 'A');
INSERT INTO `cities` VALUES ('629', '486', 'NEIRA', '017', 'A');
INSERT INTO `cities` VALUES ('630', '486', 'NEMOCÓN', '025', 'A');
INSERT INTO `cities` VALUES ('631', '488', 'NILO', '025', 'A');
INSERT INTO `cities` VALUES ('632', '489', 'NIMAIMA', '025', 'A');
INSERT INTO `cities` VALUES ('633', '490', 'NECOCLÍ', '005', 'A');
INSERT INTO `cities` VALUES ('634', '490', 'OLAYA HERRERA', '052', 'A');
INSERT INTO `cities` VALUES ('635', '491', 'NOBSA', '015', 'A');
INSERT INTO `cities` VALUES ('636', '491', 'NOCAIMA', '025', 'A');
INSERT INTO `cities` VALUES ('637', '491', 'NÓVITA', '027', 'A');
INSERT INTO `cities` VALUES ('638', '494', 'NUEVO COLÓN', '015', 'A');
INSERT INTO `cities` VALUES ('639', '495', 'NECHÍ', '005', 'A');
INSERT INTO `cities` VALUES ('640', '495', 'NORCASIA', '017', 'A');
INSERT INTO `cities` VALUES ('641', '495', 'NUQUÍ', '027', 'A');
INSERT INTO `cities` VALUES ('642', '497', 'OBANDO', '076', 'A');
INSERT INTO `cities` VALUES ('643', '498', 'OCAÑA', '054', 'A');
INSERT INTO `cities` VALUES ('644', '498', 'OCAMONTE', '068', 'A');
INSERT INTO `cities` VALUES ('645', '500', 'OICATÁ', '015', 'A');
INSERT INTO `cities` VALUES ('646', '500', 'MOÑITOS', '023', 'A');
INSERT INTO `cities` VALUES ('647', '500', 'OIBA', '068', 'A');
INSERT INTO `cities` VALUES ('648', '501', 'OLAYA', '005', 'A');
INSERT INTO `cities` VALUES ('649', '502', 'ONZAGA', '068', 'A');
INSERT INTO `cities` VALUES ('650', '503', 'OPORAPA', '041', 'A');
INSERT INTO `cities` VALUES ('651', '504', 'ORTEGA', '073', 'A');
INSERT INTO `cities` VALUES ('652', '506', 'VENECIA', '025', 'A');
INSERT INTO `cities` VALUES ('653', '506', 'OSPINA', '052', 'A');
INSERT INTO `cities` VALUES ('654', '507', 'OTANCHE', '015', 'A');
INSERT INTO `cities` VALUES ('655', '508', 'OVEJAS', '070', 'A');
INSERT INTO `cities` VALUES ('656', '511', 'PACHAVITA', '015', 'A');
INSERT INTO `cities` VALUES ('657', '511', 'PACOA', '097', 'A');
INSERT INTO `cities` VALUES ('658', '513', 'PÁCORA', '017', 'A');
INSERT INTO `cities` VALUES ('659', '513', 'PADILLA', '019', 'A');
INSERT INTO `cities` VALUES ('660', '513', 'PACHO', '025', 'A');
INSERT INTO `cities` VALUES ('661', '514', 'PÁEZ', '015', 'A');
INSERT INTO `cities` VALUES ('662', '516', 'PAIPA', '015', 'A');
INSERT INTO `cities` VALUES ('663', '517', 'PAEZ', '019', 'A');
INSERT INTO `cities` VALUES ('664', '517', 'PAILITAS', '020', 'A');
INSERT INTO `cities` VALUES ('665', '518', 'PAJARITO', '015', 'A');
INSERT INTO `cities` VALUES ('666', '518', 'PAIME', '025', 'A');
INSERT INTO `cities` VALUES ('667', '518', 'PAICOL', '041', 'A');
INSERT INTO `cities` VALUES ('668', '518', 'PAMPLONA', '054', 'A');
INSERT INTO `cities` VALUES ('669', '520', 'PALMAR DE VARELA', '008', 'A');
INSERT INTO `cities` VALUES ('670', '520', 'FRANCISCO PIZARRO', '052', 'A');
INSERT INTO `cities` VALUES ('671', '520', 'PAMPLONITA', '054', 'A');
INSERT INTO `cities` VALUES ('672', '520', 'PALOCABILDO', '073', 'A');
INSERT INTO `cities` VALUES ('673', '520', 'PALMIRA', '076', 'A');
INSERT INTO `cities` VALUES ('674', '522', 'PANQUEBA', '015', 'A');
INSERT INTO `cities` VALUES ('675', '522', 'PALMAR', '068', 'A');
INSERT INTO `cities` VALUES ('676', '523', 'PALMITO', '070', 'A');
INSERT INTO `cities` VALUES ('677', '524', 'PALESTINA', '017', 'A');
INSERT INTO `cities` VALUES ('678', '524', 'PANDI', '025', 'A');
INSERT INTO `cities` VALUES ('679', '524', 'PALERMO', '041', 'A');
INSERT INTO `cities` VALUES ('680', '524', 'PALMAS DEL SOCORRO', '068', 'A');
INSERT INTO `cities` VALUES ('681', '524', 'LA PRIMAVERA', '099', 'A');
INSERT INTO `cities` VALUES ('682', '530', 'PARATEBUENO', '025', 'A');
INSERT INTO `cities` VALUES ('683', '530', 'PALESTINA', '041', 'A');
INSERT INTO `cities` VALUES ('684', '530', 'PUERTO ALEGRÍA', '091', 'A');
INSERT INTO `cities` VALUES ('685', '531', 'PAUNA', '015', 'A');
INSERT INTO `cities` VALUES ('686', '532', 'PATÍA', '019', 'A');
INSERT INTO `cities` VALUES ('687', '533', 'PAYA', '015', 'A');
INSERT INTO `cities` VALUES ('688', '533', 'PIAMONTE', '019', 'A');
INSERT INTO `cities` VALUES ('689', '533', 'PÁRAMO', '068', 'A');
INSERT INTO `cities` VALUES ('690', '535', 'PASCA', '025', 'A');
INSERT INTO `cities` VALUES ('691', '536', 'PUERTO ARICA', '091', 'A');
INSERT INTO `cities` VALUES ('692', '537', 'PAZ DE RÍO', '015', 'A');
INSERT INTO `cities` VALUES ('693', '540', 'POLICARPA', '052', 'A');
INSERT INTO `cities` VALUES ('694', '540', 'PUERTO NARIÑO', '091', 'A');
INSERT INTO `cities` VALUES ('695', '541', 'PEÑOL', '005', 'A');
INSERT INTO `cities` VALUES ('696', '541', 'PENSILVANIA', '017', 'A');
INSERT INTO `cities` VALUES ('697', '541', 'PEDRAZA', '047', 'A');
INSERT INTO `cities` VALUES ('698', '542', 'PESCA', '015', 'A');
INSERT INTO `cities` VALUES ('699', '543', 'PEQUE', '005', 'A');
INSERT INTO `cities` VALUES ('700', '545', 'PIJIÑO DEL CARMEN', '047', 'A');
INSERT INTO `cities` VALUES ('701', '547', 'PIEDECUESTA', '068', 'A');
INSERT INTO `cities` VALUES ('702', '547', 'PIEDRAS', '073', 'A');
INSERT INTO `cities` VALUES ('703', '548', 'PIENDAMÓ', '019', 'A');
INSERT INTO `cities` VALUES ('704', '548', 'PITAL', '041', 'A');
INSERT INTO `cities` VALUES ('705', '548', 'PIJAO', '063', 'A');
INSERT INTO `cities` VALUES ('706', '549', 'PIOJÓ', '008', 'A');
INSERT INTO `cities` VALUES ('707', '549', 'PINILLOS', '013', 'A');
INSERT INTO `cities` VALUES ('708', '549', 'PINCHOTE', '068', 'A');
INSERT INTO `cities` VALUES ('709', '550', 'PISBA', '015', 'A');
INSERT INTO `cities` VALUES ('710', '550', 'PELAYA', '020', 'A');
INSERT INTO `cities` VALUES ('711', '551', 'PITALITO', '041', 'A');
INSERT INTO `cities` VALUES ('712', '551', 'PIVIJAY', '047', 'A');
INSERT INTO `cities` VALUES ('713', '553', 'PUERTO SANTANDER', '054', 'A');
INSERT INTO `cities` VALUES ('714', '555', 'PLANETA RICA', '023', 'A');
INSERT INTO `cities` VALUES ('715', '555', 'PLATO', '047', 'A');
INSERT INTO `cities` VALUES ('716', '555', 'PLANADAS', '073', 'A');
INSERT INTO `cities` VALUES ('717', '558', 'POLONUEVO', '008', 'A');
INSERT INTO `cities` VALUES ('718', '560', 'PONEDERA', '008', 'A');
INSERT INTO `cities` VALUES ('719', '560', 'MANAURE', '044', 'A');
INSERT INTO `cities` VALUES ('720', '560', 'POTOSÍ', '052', 'A');
INSERT INTO `cities` VALUES ('721', '563', 'PRADO', '073', 'A');
INSERT INTO `cities` VALUES ('722', '563', 'PRADERA', '076', 'A');
INSERT INTO `cities` VALUES ('723', '564', 'PROVIDENCIA', '088', 'A');
INSERT INTO `cities` VALUES ('724', '565', 'PROVIDENCIA', '052', 'A');
INSERT INTO `cities` VALUES ('725', '568', 'PUERTO GAITÁN', '050', 'A');
INSERT INTO `cities` VALUES ('726', '568', 'PUERTO ASÍS', '086', 'A');
INSERT INTO `cities` VALUES ('727', '569', 'PUERTO CAICEDO', '086', 'A');
INSERT INTO `cities` VALUES ('728', '570', 'PUEBLO BELLO', '020', 'A');
INSERT INTO `cities` VALUES ('729', '570', 'PUEBLO NUEVO', '023', 'A');
INSERT INTO `cities` VALUES ('730', '570', 'PUEBLOVIEJO', '047', 'A');
INSERT INTO `cities` VALUES ('731', '571', 'PUERTO GUZMÁN', '086', 'A');
INSERT INTO `cities` VALUES ('732', '572', 'PUERTO BOYACÁ', '015', 'A');
INSERT INTO `cities` VALUES ('733', '572', 'PUERTO SALGAR', '025', 'A');
INSERT INTO `cities` VALUES ('734', '572', 'PUEBLO RICO', '066', 'A');
INSERT INTO `cities` VALUES ('735', '572', 'PUENTE NACIONAL', '068', 'A');
INSERT INTO `cities` VALUES ('736', '573', 'PUERTO COLOMBIA', '008', 'A');
INSERT INTO `cities` VALUES ('737', '573', 'PUERTO TEJADA', '019', 'A');
INSERT INTO `cities` VALUES ('738', '573', 'PUERTO LÓPEZ', '050', 'A');
INSERT INTO `cities` VALUES ('739', '573', 'PUERRES', '052', 'A');
INSERT INTO `cities` VALUES ('740', '573', 'PUERTO PARRA', '068', 'A');
INSERT INTO `cities` VALUES ('741', '573', 'LEGUÍZAMO', '086', 'A');
INSERT INTO `cities` VALUES ('742', '574', 'PUERTO ESCONDIDO', '023', 'A');
INSERT INTO `cities` VALUES ('743', '575', 'PUERTO WILCHES', '068', 'A');
INSERT INTO `cities` VALUES ('744', '576', 'PUEBLORRICO', '005', 'A');
INSERT INTO `cities` VALUES ('745', '577', 'PUERTO LLERAS', '050', 'A');
INSERT INTO `cities` VALUES ('746', '579', 'PUERTO BERRÍO', '005', 'A');
INSERT INTO `cities` VALUES ('747', '580', 'REGIDOR', '013', 'A');
INSERT INTO `cities` VALUES ('748', '580', 'QUÍPAMA', '015', 'A');
INSERT INTO `cities` VALUES ('749', '580', 'PUERTO LIBERTADOR', '023', 'A');
INSERT INTO `cities` VALUES ('750', '580', 'PULÍ', '025', 'A');
INSERT INTO `cities` VALUES ('751', '580', 'RÍO IRO', '027', 'A');
INSERT INTO `cities` VALUES ('752', '585', 'PUERTO NARE', '005', 'A');
INSERT INTO `cities` VALUES ('753', '585', 'PURACÉ', '019', 'A');
INSERT INTO `cities` VALUES ('754', '585', 'PUPIALES', '052', 'A');
INSERT INTO `cities` VALUES ('755', '585', 'PURIFICACIÓN', '073', 'A');
INSERT INTO `cities` VALUES ('756', '586', 'PURÍSIMA', '023', 'A');
INSERT INTO `cities` VALUES ('757', '590', 'PUERTO RICO', '050', 'A');
INSERT INTO `cities` VALUES ('758', '591', 'PUERTO TRIUNFO', '005', 'A');
INSERT INTO `cities` VALUES ('759', '591', 'PUERTO RONDÓN', '081', 'A');
INSERT INTO `cities` VALUES ('760', '592', 'PUERTO RICO', '018', 'A');
INSERT INTO `cities` VALUES ('761', '592', 'QUEBRADANEGRA', '025', 'A');
INSERT INTO `cities` VALUES ('762', '594', 'QUETAME', '025', 'A');
INSERT INTO `cities` VALUES ('763', '594', 'QUIMBAYA', '063', 'A');
INSERT INTO `cities` VALUES ('764', '594', 'QUINCHÍA', '066', 'A');
INSERT INTO `cities` VALUES ('765', '596', 'QUIPILE', '025', 'A');
INSERT INTO `cities` VALUES ('766', '599', 'RAMIRIQUÍ', '015', 'A');
INSERT INTO `cities` VALUES ('767', '599', 'APULO', '025', 'A');
INSERT INTO `cities` VALUES ('768', '599', 'RAGONVALIA', '054', 'A');
INSERT INTO `cities` VALUES ('769', '600', 'RÍO VIEJO', '013', 'A');
INSERT INTO `cities` VALUES ('770', '600', 'RÁQUIRA', '015', 'A');
INSERT INTO `cities` VALUES ('771', '600', 'RÍO QUITO', '027', 'A');
INSERT INTO `cities` VALUES ('772', '604', 'REMEDIOS', '005', 'A');
INSERT INTO `cities` VALUES ('773', '605', 'REMOLINO', '047', 'A');
INSERT INTO `cities` VALUES ('774', '606', 'REPELÓN', '008', 'A');
INSERT INTO `cities` VALUES ('775', '606', 'RESTREPO', '050', 'A');
INSERT INTO `cities` VALUES ('776', '606', 'RESTREPO', '076', 'A');
INSERT INTO `cities` VALUES ('777', '607', 'RETIRO', '005', 'A');
INSERT INTO `cities` VALUES ('778', '610', 'SAN JOSÉ DEL FRAGUA', '018', 'A');
INSERT INTO `cities` VALUES ('779', '612', 'RICAURTE', '025', 'A');
INSERT INTO `cities` VALUES ('780', '612', 'RICAURTE', '052', 'A');
INSERT INTO `cities` VALUES ('781', '614', 'RIOSUCIO', '017', 'A');
INSERT INTO `cities` VALUES ('782', '614', 'RÍO DE ORO', '020', 'A');
INSERT INTO `cities` VALUES ('783', '615', 'RIONEGRO', '005', 'A');
INSERT INTO `cities` VALUES ('784', '615', 'RIOSUCIO', '027', 'A');
INSERT INTO `cities` VALUES ('785', '615', 'RIVERA', '041', 'A');
INSERT INTO `cities` VALUES ('786', '615', 'RIONEGRO', '068', 'A');
INSERT INTO `cities` VALUES ('787', '616', 'RISARALDA', '017', 'A');
INSERT INTO `cities` VALUES ('788', '616', 'RIOBLANCO', '073', 'A');
INSERT INTO `cities` VALUES ('789', '616', 'RIOFRÍO', '076', 'A');
INSERT INTO `cities` VALUES ('790', '620', 'SAN CRISTÓBAL', '013', 'A');
INSERT INTO `cities` VALUES ('791', '621', 'RONDÓN', '015', 'A');
INSERT INTO `cities` VALUES ('792', '621', 'LA PAZ', '020', 'A');
INSERT INTO `cities` VALUES ('793', '621', 'ROBERTO PAYÁN', '052', 'A');
INSERT INTO `cities` VALUES ('794', '622', 'ROSAS', '019', 'A');
INSERT INTO `cities` VALUES ('795', '622', 'RONCESVALLES', '073', 'A');
INSERT INTO `cities` VALUES ('796', '622', 'ROLDANILLO', '076', 'A');
INSERT INTO `cities` VALUES ('797', '624', 'ROVIRA', '073', 'A');
INSERT INTO `cities` VALUES ('798', '624', 'SANTA ROSALÍA', '099', 'A');
INSERT INTO `cities` VALUES ('799', '628', 'SABANALARGA', '005', 'A');
INSERT INTO `cities` VALUES ('800', '631', 'SABANETA', '005', 'A');
INSERT INTO `cities` VALUES ('801', '632', 'SABOYÁ', '015', 'A');
INSERT INTO `cities` VALUES ('802', '634', 'SABANAGRANDE', '008', 'A');
INSERT INTO `cities` VALUES ('803', '638', 'SABANALARGA', '008', 'A');
INSERT INTO `cities` VALUES ('804', '638', 'SÁCHICA', '015', 'A');
INSERT INTO `cities` VALUES ('805', '642', 'SALGAR', '005', 'A');
INSERT INTO `cities` VALUES ('806', '645', 'SAN ANTONIO DEL TEQUENDAMA', '025', 'A');
INSERT INTO `cities` VALUES ('807', '646', 'SAMACÁ', '015', 'A');
INSERT INTO `cities` VALUES ('808', '647', 'SAN ANDRÉS', '005', 'A');
INSERT INTO `cities` VALUES ('809', '647', 'SAN ESTANISLAO', '013', 'A');
INSERT INTO `cities` VALUES ('810', '649', 'SAN CARLOS', '005', 'A');
INSERT INTO `cities` VALUES ('811', '649', 'SAN BERNARDO', '025', 'A');
INSERT INTO `cities` VALUES ('812', '650', 'SAN FERNANDO', '013', 'A');
INSERT INTO `cities` VALUES ('813', '650', 'SAN JUAN DEL CESAR', '044', 'A');
INSERT INTO `cities` VALUES ('814', '652', 'SAN FRANCISCO', '005', 'A');
INSERT INTO `cities` VALUES ('815', '653', 'SALAMINA', '017', 'A');
INSERT INTO `cities` VALUES ('816', '653', 'SAN CAYETANO', '025', 'A');
INSERT INTO `cities` VALUES ('817', '654', 'SAN JACINTO', '013', 'A');
INSERT INTO `cities` VALUES ('818', '655', 'SAN JACINTO DEL CAUCA', '013', 'A');
INSERT INTO `cities` VALUES ('819', '655', 'SABANA DE TORRES', '068', 'A');
INSERT INTO `cities` VALUES ('820', '656', 'SAN JERÓNIMO', '005', 'A');
INSERT INTO `cities` VALUES ('821', '657', 'SAN JUAN NEPOMUCENO', '013', 'A');
INSERT INTO `cities` VALUES ('822', '658', 'SAN JOSÉ DE LA MONTAÑA', '005', 'A');
INSERT INTO `cities` VALUES ('823', '658', 'SAN FRANCISCO', '025', 'A');
INSERT INTO `cities` VALUES ('824', '659', 'SAN JUAN DE URABÁ', '005', 'A');
INSERT INTO `cities` VALUES ('825', '660', 'SAN LUIS', '005', 'A');
INSERT INTO `cities` VALUES ('826', '660', 'SAN EDUARDO', '015', 'A');
INSERT INTO `cities` VALUES ('827', '660', 'SAHAGÚN', '023', 'A');
INSERT INTO `cities` VALUES ('828', '660', 'SAN JOSÉ DEL PALMAR', '027', 'A');
INSERT INTO `cities` VALUES ('829', '660', 'SALADOBLANCO', '041', 'A');
INSERT INTO `cities` VALUES ('830', '660', 'SABANAS DE SAN ANGEL', '047', 'A');
INSERT INTO `cities` VALUES ('831', '660', 'SALAZAR', '054', 'A');
INSERT INTO `cities` VALUES ('832', '662', 'SAMANÁ', '017', 'A');
INSERT INTO `cities` VALUES ('833', '662', 'SAN JUAN DE RÍO SECO', '025', 'A');
INSERT INTO `cities` VALUES ('834', '663', 'MAPIRIPANA', '094', 'A');
INSERT INTO `cities` VALUES ('835', '664', 'SAN PEDRO', '005', 'A');
INSERT INTO `cities` VALUES ('836', '664', 'SAN JOSÉ DE PARE', '015', 'A');
INSERT INTO `cities` VALUES ('837', '665', 'SAN PEDRO DE URABA', '005', 'A');
INSERT INTO `cities` VALUES ('838', '665', 'SAN JOSÉ', '017', 'A');
INSERT INTO `cities` VALUES ('839', '666', 'TARAIRA', '097', 'A');
INSERT INTO `cities` VALUES ('840', '667', 'SAN RAFAEL', '005', 'A');
INSERT INTO `cities` VALUES ('841', '667', 'SAN MARTÍN DE LOBA', '013', 'A');
INSERT INTO `cities` VALUES ('842', '667', 'SAN LUIS DE GACENO', '015', 'A');
INSERT INTO `cities` VALUES ('843', '668', 'SAN AGUSTÍN', '041', 'A');
INSERT INTO `cities` VALUES ('844', '669', 'SAN ANDRÉS', '068', 'A');
INSERT INTO `cities` VALUES ('845', '669', 'PUERTO SANTANDER', '091', 'A');
INSERT INTO `cities` VALUES ('846', '670', 'SAN ROQUE', '005', 'A');
INSERT INTO `cities` VALUES ('847', '670', 'SAN PABLO', '013', 'A');
INSERT INTO `cities` VALUES ('848', '670', 'SAN ANDRÉS SOTAVENTO', '023', 'A');
INSERT INTO `cities` VALUES ('849', '670', 'SAN CALIXTO', '054', 'A');
INSERT INTO `cities` VALUES ('850', '670', 'SAMPUÉS', '070', 'A');
INSERT INTO `cities` VALUES ('851', '670', 'SAN PEDRO', '076', 'A');
INSERT INTO `cities` VALUES ('852', '671', 'SALDAÑA', '073', 'A');
INSERT INTO `cities` VALUES ('853', '672', 'SAN ANTERO', '023', 'A');
INSERT INTO `cities` VALUES ('854', '673', 'SANTA CATALINA', '013', 'A');
INSERT INTO `cities` VALUES ('855', '673', 'SAN MATEO', '015', 'A');
INSERT INTO `cities` VALUES ('856', '673', 'SAN CAYETANO', '054', 'A');
INSERT INTO `cities` VALUES ('857', '673', 'SAN BENITO', '068', 'A');
INSERT INTO `cities` VALUES ('858', '674', 'SAN VICENTE', '005', 'A');
INSERT INTO `cities` VALUES ('859', '675', 'SANTA LUCÍA', '008', 'A');
INSERT INTO `cities` VALUES ('860', '675', 'SAN BERNARDO DEL VIENTO', '023', 'A');
INSERT INTO `cities` VALUES ('861', '675', 'SALAMINA', '047', 'A');
INSERT INTO `cities` VALUES ('862', '675', 'SAN ANTONIO', '073', 'A');
INSERT INTO `cities` VALUES ('863', '676', 'SAN MIGUEL DE SEMA', '015', 'A');
INSERT INTO `cities` VALUES ('864', '676', 'SANTA MARÍA', '041', 'A');
INSERT INTO `cities` VALUES ('865', '678', 'SAN CARLOS', '023', 'A');
INSERT INTO `cities` VALUES ('866', '678', 'SAMANIEGO', '052', 'A');
INSERT INTO `cities` VALUES ('867', '678', 'SAN BENITO ABAD', '070', 'A');
INSERT INTO `cities` VALUES ('868', '678', 'SAN LUIS', '073', 'A');
INSERT INTO `cities` VALUES ('869', '679', 'SANTA BÁRBARA', '005', 'A');
INSERT INTO `cities` VALUES ('870', '679', 'SAN GIL', '068', 'A');
INSERT INTO `cities` VALUES ('871', '680', 'SAN CARLOS DE GUAROA', '050', 'A');
INSERT INTO `cities` VALUES ('872', '680', 'SANTIAGO', '054', 'A');
INSERT INTO `cities` VALUES ('873', '681', 'SAN PABLO DE BORBUR', '015', 'A');
INSERT INTO `cities` VALUES ('874', '682', 'SANTA ROSA DE CABAL', '066', 'A');
INSERT INTO `cities` VALUES ('875', '682', 'SAN JOAQUÍN', '068', 'A');
INSERT INTO `cities` VALUES ('876', '683', 'SANTA ROSA', '013', 'A');
INSERT INTO `cities` VALUES ('877', '683', 'SAN JUAN DE ARAMA', '050', 'A');
INSERT INTO `cities` VALUES ('878', '683', 'SANDONÁ', '052', 'A');
INSERT INTO `cities` VALUES ('879', '684', 'SAN JOSÉ DE MIRANDA', '068', 'A');
INSERT INTO `cities` VALUES ('880', '685', 'SANTO TOMÁS', '008', 'A');
INSERT INTO `cities` VALUES ('881', '685', 'SAN BERNARDO', '052', 'A');
INSERT INTO `cities` VALUES ('882', '686', 'SANTA ROSA DE OSOS', '005', 'A');
INSERT INTO `cities` VALUES ('883', '686', 'SANTANA', '015', 'A');
INSERT INTO `cities` VALUES ('884', '686', 'SAN PELAYO', '023', 'A');
INSERT INTO `cities` VALUES ('885', '686', 'SAN JUANITO', '050', 'A');
INSERT INTO `cities` VALUES ('886', '686', 'SAN MIGUEL', '068', 'A');
INSERT INTO `cities` VALUES ('887', '686', 'SANTA ISABEL', '073', 'A');
INSERT INTO `cities` VALUES ('888', '687', 'SAN LORENZO', '052', 'A');
INSERT INTO `cities` VALUES ('889', '687', 'SANTUARIO', '066', 'A');
INSERT INTO `cities` VALUES ('890', '688', 'SANTA ROSA DEL SUR', '013', 'A');
INSERT INTO `cities` VALUES ('891', '689', 'SAN MARTÍN', '050', 'A');
INSERT INTO `cities` VALUES ('892', '689', 'SAN VICENTE DE CHUCURÍ', '068', 'A');
INSERT INTO `cities` VALUES ('893', '690', 'SANTO DOMINGO', '005', 'A');
INSERT INTO `cities` VALUES ('894', '690', 'SANTA MARÍA', '015', 'A');
INSERT INTO `cities` VALUES ('895', '690', 'SALENTO', '063', 'A');
INSERT INTO `cities` VALUES ('896', '692', 'SAN SEBASTIÁN DE BUENAVISTA', '047', 'A');
INSERT INTO `cities` VALUES ('897', '693', 'SANTA ROSA DE VITERBO', '015', 'A');
INSERT INTO `cities` VALUES ('898', '693', 'SAN SEBASTIÁN', '019', 'A');
INSERT INTO `cities` VALUES ('899', '693', 'SAN PABLO', '052', 'A');
INSERT INTO `cities` VALUES ('900', '694', 'SAN PEDRO DE CARTAGO', '052', 'A');
INSERT INTO `cities` VALUES ('901', '696', 'SANTA SOFÍA', '015', 'A');
INSERT INTO `cities` VALUES ('902', '696', 'SANTA BÁRBARA', '052', 'A');
INSERT INTO `cities` VALUES ('903', '697', 'EL SANTUARIO', '005', 'A');
INSERT INTO `cities` VALUES ('904', '698', 'SANTANDER DE QUILICHAO', '019', 'A');
INSERT INTO `cities` VALUES ('905', '699', 'SANTACRUZ', '052', 'A');
INSERT INTO `cities` VALUES ('906', '701', 'SANTA ROSA', '019', 'A');
INSERT INTO `cities` VALUES ('907', '702', 'SAN JUAN DE BETULIA', '070', 'A');
INSERT INTO `cities` VALUES ('908', '703', 'SAN ZENÓN', '047', 'A');
INSERT INTO `cities` VALUES ('909', '705', 'SANTA BÁRBARA', '068', 'A');
INSERT INTO `cities` VALUES ('910', '707', 'SANTA ANA', '047', 'A');
INSERT INTO `cities` VALUES ('911', '708', 'SAN MARCOS', '070', 'A');
INSERT INTO `cities` VALUES ('912', '710', 'SAN ALBERTO', '020', 'A');
INSERT INTO `cities` VALUES ('913', '711', 'VISTAHERMOSA', '050', 'A');
INSERT INTO `cities` VALUES ('914', '713', 'SAN ONOFRE', '070', 'A');
INSERT INTO `cities` VALUES ('915', '717', 'SAN PEDRO', '070', 'A');
INSERT INTO `cities` VALUES ('916', '718', 'SASAIMA', '025', 'A');
INSERT INTO `cities` VALUES ('917', '720', 'SATIVANORTE', '015', 'A');
INSERT INTO `cities` VALUES ('918', '720', 'SANTA BÁRBARA DE PINTO', '047', 'A');
INSERT INTO `cities` VALUES ('919', '720', 'SAPUYES', '052', 'A');
INSERT INTO `cities` VALUES ('920', '720', 'SARDINATA', '054', 'A');
INSERT INTO `cities` VALUES ('921', '720', 'SANTA HELENA DEL OPÓN', '068', 'A');
INSERT INTO `cities` VALUES ('922', '723', 'SATIVASUR', '015', 'A');
INSERT INTO `cities` VALUES ('923', '736', 'SEGOVIA', '005', 'A');
INSERT INTO `cities` VALUES ('924', '736', 'SESQUILÉ', '025', 'A');
INSERT INTO `cities` VALUES ('925', '736', 'SEVILLA', '076', 'A');
INSERT INTO `cities` VALUES ('926', '736', 'SARAVENA', '081', 'A');
INSERT INTO `cities` VALUES ('927', '740', 'SIACHOQUE', '015', 'A');
INSERT INTO `cities` VALUES ('928', '740', 'SIBATÉ', '025', 'A');
INSERT INTO `cities` VALUES ('929', '742', 'SINCÉ', '070', 'A');
INSERT INTO `cities` VALUES ('930', '743', 'SILVIA', '019', 'A');
INSERT INTO `cities` VALUES ('931', '743', 'SILVANIA', '025', 'A');
INSERT INTO `cities` VALUES ('932', '743', 'SILOS', '054', 'A');
INSERT INTO `cities` VALUES ('933', '744', 'SIMITÍ', '013', 'A');
INSERT INTO `cities` VALUES ('934', '745', 'SIMIJACA', '025', 'A');
INSERT INTO `cities` VALUES ('935', '745', 'SIPÍ', '027', 'A');
INSERT INTO `cities` VALUES ('936', '745', 'SITIONUEVO', '047', 'A');
INSERT INTO `cities` VALUES ('937', '745', 'SIMACOTA', '068', 'A');
INSERT INTO `cities` VALUES ('938', '749', 'SIBUNDOY', '086', 'A');
INSERT INTO `cities` VALUES ('939', '750', 'SAN DIEGO', '020', 'A');
INSERT INTO `cities` VALUES ('940', '753', 'SOATÁ', '015', 'A');
INSERT INTO `cities` VALUES ('941', '753', 'SAN VICENTE DEL CAGUÁN', '018', 'A');
INSERT INTO `cities` VALUES ('942', '754', 'SOACHA', '025', 'A');
INSERT INTO `cities` VALUES ('943', '755', 'SOCOTÁ', '015', 'A');
INSERT INTO `cities` VALUES ('944', '755', 'SOCORRO', '068', 'A');
INSERT INTO `cities` VALUES ('945', '755', 'SAN FRANCISCO', '086', 'A');
INSERT INTO `cities` VALUES ('946', '756', 'SONSON', '005', 'A');
INSERT INTO `cities` VALUES ('947', '756', 'SOLANO', '018', 'A');
INSERT INTO `cities` VALUES ('948', '757', 'SOCHA', '015', 'A');
INSERT INTO `cities` VALUES ('949', '757', 'SAN MIGUEL', '086', 'A');
INSERT INTO `cities` VALUES ('950', '758', 'SOLEDAD', '008', 'A');
INSERT INTO `cities` VALUES ('951', '758', 'SOPÓ', '025', 'A');
INSERT INTO `cities` VALUES ('952', '759', 'SOGAMOSO', '015', 'A');
INSERT INTO `cities` VALUES ('953', '760', 'SOPLAVIENTO', '013', 'A');
INSERT INTO `cities` VALUES ('954', '760', 'SOTARA', '019', 'A');
INSERT INTO `cities` VALUES ('955', '760', 'SANTIAGO', '086', 'A');
INSERT INTO `cities` VALUES ('956', '761', 'SOPETRÁN', '005', 'A');
INSERT INTO `cities` VALUES ('957', '761', 'SOMONDOCO', '015', 'A');
INSERT INTO `cities` VALUES ('958', '762', 'SORA', '015', 'A');
INSERT INTO `cities` VALUES ('959', '763', 'SOTAQUIRÁ', '015', 'A');
INSERT INTO `cities` VALUES ('960', '764', 'SORACÁ', '015', 'A');
INSERT INTO `cities` VALUES ('961', '769', 'SUBACHOQUE', '025', 'A');
INSERT INTO `cities` VALUES ('962', '770', 'SUAN', '008', 'A');
INSERT INTO `cities` VALUES ('963', '770', 'SAN MARTÍN', '020', 'A');
INSERT INTO `cities` VALUES ('964', '770', 'SUAZA', '041', 'A');
INSERT INTO `cities` VALUES ('965', '770', 'SUAITA', '068', 'A');
INSERT INTO `cities` VALUES ('966', '770', 'SUÁREZ', '073', 'A');
INSERT INTO `cities` VALUES ('967', '771', 'SUCRE', '070', 'A');
INSERT INTO `cities` VALUES ('968', '772', 'SUESCA', '025', 'A');
INSERT INTO `cities` VALUES ('969', '773', 'SUCRE', '068', 'A');
INSERT INTO `cities` VALUES ('970', '773', 'CUMARIBO', '099', 'A');
INSERT INTO `cities` VALUES ('971', '774', 'SUSACÓN', '015', 'A');
INSERT INTO `cities` VALUES ('972', '776', 'SUTAMARCHÁN', '015', 'A');
INSERT INTO `cities` VALUES ('973', '777', 'SUPÍA', '017', 'A');
INSERT INTO `cities` VALUES ('974', '777', 'SUPATÁ', '025', 'A');
INSERT INTO `cities` VALUES ('975', '777', 'PAPUNAUA', '097', 'A');
INSERT INTO `cities` VALUES ('976', '778', 'SUTATENZA', '015', 'A');
INSERT INTO `cities` VALUES ('977', '779', 'SUSA', '025', 'A');
INSERT INTO `cities` VALUES ('978', '780', 'TALAIGUA NUEVO', '013', 'A');
INSERT INTO `cities` VALUES ('979', '780', 'SUÁREZ', '019', 'A');
INSERT INTO `cities` VALUES ('980', '780', 'SURATÁ', '068', 'A');
INSERT INTO `cities` VALUES ('981', '781', 'SUTATAUSA', '025', 'A');
INSERT INTO `cities` VALUES ('982', '785', 'SOLITA', '018', 'A');
INSERT INTO `cities` VALUES ('983', '785', 'SUCRE', '019', 'A');
INSERT INTO `cities` VALUES ('984', '785', 'TABIO', '025', 'A');
INSERT INTO `cities` VALUES ('985', '786', 'TAMINANGO', '052', 'A');
INSERT INTO `cities` VALUES ('986', '787', 'TAMALAMEQUE', '020', 'A');
INSERT INTO `cities` VALUES ('987', '787', 'TADÓ', '027', 'A');
INSERT INTO `cities` VALUES ('988', '788', 'TANGUA', '052', 'A');
INSERT INTO `cities` VALUES ('989', '789', 'TÁMESIS', '005', 'A');
INSERT INTO `cities` VALUES ('990', '790', 'TARAZÁ', '005', 'A');
INSERT INTO `cities` VALUES ('991', '790', 'TASCO', '015', 'A');
INSERT INTO `cities` VALUES ('992', '791', 'TARQUI', '041', 'A');
INSERT INTO `cities` VALUES ('993', '792', 'TARSO', '005', 'A');
INSERT INTO `cities` VALUES ('994', '793', 'TAUSA', '025', 'A');
INSERT INTO `cities` VALUES ('995', '794', 'TAME', '081', 'A');
INSERT INTO `cities` VALUES ('996', '797', 'TENA', '025', 'A');
INSERT INTO `cities` VALUES ('997', '797', 'TESALIA', '041', 'A');
INSERT INTO `cities` VALUES ('998', '798', 'TENZA', '015', 'A');
INSERT INTO `cities` VALUES ('999', '798', 'TENERIFE', '047', 'A');
INSERT INTO `cities` VALUES ('1000', '798', 'TARAPACÁ', '091', 'A');
INSERT INTO `cities` VALUES ('1001', '799', 'TENJO', '025', 'A');
INSERT INTO `cities` VALUES ('1002', '799', 'TELLO', '041', 'A');
INSERT INTO `cities` VALUES ('1003', '800', 'UNGUÍA', '027', 'A');
INSERT INTO `cities` VALUES ('1004', '800', 'TEORAMA', '054', 'A');
INSERT INTO `cities` VALUES ('1005', '801', 'TERUEL', '041', 'A');
INSERT INTO `cities` VALUES ('1006', '804', 'TIBANÁ', '015', 'A');
INSERT INTO `cities` VALUES ('1007', '805', 'TIBACUY', '025', 'A');
INSERT INTO `cities` VALUES ('1008', '806', 'TIBASOSA', '015', 'A');
INSERT INTO `cities` VALUES ('1009', '807', 'TIMBÍO', '019', 'A');
INSERT INTO `cities` VALUES ('1010', '807', 'TIERRALTA', '023', 'A');
INSERT INTO `cities` VALUES ('1011', '807', 'TIBIRITA', '025', 'A');
INSERT INTO `cities` VALUES ('1012', '807', 'TIMANÁ', '041', 'A');
INSERT INTO `cities` VALUES ('1013', '808', 'TINJACÁ', '015', 'A');
INSERT INTO `cities` VALUES ('1014', '809', 'TITIRIBÍ', '005', 'A');
INSERT INTO `cities` VALUES ('1015', '809', 'TIMBIQUÍ', '019', 'A');
INSERT INTO `cities` VALUES ('1016', '810', 'TIQUISIO', '013', 'A');
INSERT INTO `cities` VALUES ('1017', '810', 'TIPACOQUE', '015', 'A');
INSERT INTO `cities` VALUES ('1018', '810', 'UNIÓN PANAMERICANA', '027', 'A');
INSERT INTO `cities` VALUES ('1019', '810', 'TIBÚ', '054', 'A');
INSERT INTO `cities` VALUES ('1020', '814', 'TOCA', '015', 'A');
INSERT INTO `cities` VALUES ('1021', '815', 'TOCAIMA', '025', 'A');
INSERT INTO `cities` VALUES ('1022', '816', 'TOGÜÍ', '015', 'A');
INSERT INTO `cities` VALUES ('1023', '817', 'TOCANCIPÁ', '025', 'A');
INSERT INTO `cities` VALUES ('1024', '819', 'TOLEDO', '005', 'A');
INSERT INTO `cities` VALUES ('1025', '820', 'TÓPAGA', '015', 'A');
INSERT INTO `cities` VALUES ('1026', '820', 'TOLEDO', '054', 'A');
INSERT INTO `cities` VALUES ('1027', '820', 'TONA', '068', 'A');
INSERT INTO `cities` VALUES ('1028', '820', 'SANTIAGO DE TOLÚ', '070', 'A');
INSERT INTO `cities` VALUES ('1029', '821', 'TORIBIO', '019', 'A');
INSERT INTO `cities` VALUES ('1030', '822', 'TOTA', '015', 'A');
INSERT INTO `cities` VALUES ('1031', '823', 'TOPAIPÍ', '025', 'A');
INSERT INTO `cities` VALUES ('1032', '823', 'TOLÚ VIEJO', '070', 'A');
INSERT INTO `cities` VALUES ('1033', '823', 'TORO', '076', 'A');
INSERT INTO `cities` VALUES ('1034', '824', 'TOTORÓ', '019', 'A');
INSERT INTO `cities` VALUES ('1035', '828', 'TRUJILLO', '076', 'A');
INSERT INTO `cities` VALUES ('1036', '832', 'TUBARÁ', '008', 'A');
INSERT INTO `cities` VALUES ('1037', '832', 'TUNUNGUÁ', '015', 'A');
INSERT INTO `cities` VALUES ('1038', '834', 'TULUÁ', '076', 'A');
INSERT INTO `cities` VALUES ('1039', '835', 'TURMEQUÉ', '015', 'A');
INSERT INTO `cities` VALUES ('1040', '835', 'TUMACO', '052', 'A');
INSERT INTO `cities` VALUES ('1041', '836', 'TURBACO', '013', 'A');
INSERT INTO `cities` VALUES ('1042', '837', 'TURBO', '005', 'A');
INSERT INTO `cities` VALUES ('1043', '837', 'TUTA', '015', 'A');
INSERT INTO `cities` VALUES ('1044', '838', 'TURBANÁ', '013', 'A');
INSERT INTO `cities` VALUES ('1045', '838', 'TÚQUERRES', '052', 'A');
INSERT INTO `cities` VALUES ('1046', '839', 'TUTAZÁ', '015', 'A');
INSERT INTO `cities` VALUES ('1047', '839', 'UBALÁ', '025', 'A');
INSERT INTO `cities` VALUES ('1048', '841', 'UBAQUE', '025', 'A');
INSERT INTO `cities` VALUES ('1049', '842', 'URAMITA', '005', 'A');
INSERT INTO `cities` VALUES ('1050', '842', 'UMBITA', '015', 'A');
INSERT INTO `cities` VALUES ('1051', '843', 'VILLA DE SAN DIEGO DE UBATE', '025', 'A');
INSERT INTO `cities` VALUES ('1052', '845', 'VILLA RICA', '019', 'A');
INSERT INTO `cities` VALUES ('1053', '845', 'UNE', '025', 'A');
INSERT INTO `cities` VALUES ('1054', '845', 'ULLOA', '076', 'A');
INSERT INTO `cities` VALUES ('1055', '847', 'URRAO', '005', 'A');
INSERT INTO `cities` VALUES ('1056', '847', 'URIBIA', '044', 'A');
INSERT INTO `cities` VALUES ('1057', '849', 'USIACURÍ', '008', 'A');
INSERT INTO `cities` VALUES ('1058', '851', 'ÚTICA', '025', 'A');
INSERT INTO `cities` VALUES ('1059', '854', 'VALDIVIA', '005', 'A');
INSERT INTO `cities` VALUES ('1060', '854', 'VALLE DE SAN JUAN', '073', 'A');
INSERT INTO `cities` VALUES ('1061', '855', 'VALENCIA', '023', 'A');
INSERT INTO `cities` VALUES ('1062', '855', 'URUMITA', '044', 'A');
INSERT INTO `cities` VALUES ('1063', '855', 'VALLE DE SAN JOSÉ', '068', 'A');
INSERT INTO `cities` VALUES ('1064', '856', 'VALPARAÍSO', '005', 'A');
INSERT INTO `cities` VALUES ('1065', '858', 'VEGACHÍ', '005', 'A');
INSERT INTO `cities` VALUES ('1066', '860', 'VALPARAÍSO', '018', 'A');
INSERT INTO `cities` VALUES ('1067', '861', 'VENECIA', '005', 'A');
INSERT INTO `cities` VALUES ('1068', '861', 'VENTAQUEMADA', '015', 'A');
INSERT INTO `cities` VALUES ('1069', '861', 'VÉLEZ', '068', 'A');
INSERT INTO `cities` VALUES ('1070', '861', 'VENADILLO', '073', 'A');
INSERT INTO `cities` VALUES ('1071', '862', 'VERGARA', '025', 'A');
INSERT INTO `cities` VALUES ('1072', '863', 'VERSALLES', '076', 'A');
INSERT INTO `cities` VALUES ('1073', '865', 'VALLE DEL GUAMUEZ', '086', 'A');
INSERT INTO `cities` VALUES ('1074', '867', 'VICTORIA', '017', 'A');
INSERT INTO `cities` VALUES ('1075', '867', 'VIANÍ', '025', 'A');
INSERT INTO `cities` VALUES ('1076', '867', 'VETAS', '068', 'A');
INSERT INTO `cities` VALUES ('1077', '869', 'VIJES', '076', 'A');
INSERT INTO `cities` VALUES ('1078', '870', 'VILLAHERMOSA', '073', 'A');
INSERT INTO `cities` VALUES ('1079', '871', 'VILLAGÓMEZ', '025', 'A');
INSERT INTO `cities` VALUES ('1080', '871', 'VILLA CARO', '054', 'A');
INSERT INTO `cities` VALUES ('1081', '872', 'VILLAVIEJA', '041', 'A');
INSERT INTO `cities` VALUES ('1082', '872', 'VILLANUEVA', '068', 'A');
INSERT INTO `cities` VALUES ('1083', '873', 'VIGÍA DEL FUERTE', '005', 'A');
INSERT INTO `cities` VALUES ('1084', '873', 'VILLANUEVA', '013', 'A');
INSERT INTO `cities` VALUES ('1085', '873', 'VILLAMARÍA', '017', 'A');
INSERT INTO `cities` VALUES ('1086', '873', 'VILLAPINZÓN', '025', 'A');
INSERT INTO `cities` VALUES ('1087', '873', 'VILLARRICA', '073', 'A');
INSERT INTO `cities` VALUES ('1088', '874', 'VILLANUEVA', '044', 'A');
INSERT INTO `cities` VALUES ('1089', '874', 'VILLA DEL ROSARIO', '054', 'A');
INSERT INTO `cities` VALUES ('1090', '875', 'VILLETA', '025', 'A');
INSERT INTO `cities` VALUES ('1091', '877', 'VITERBO', '017', 'A');
INSERT INTO `cities` VALUES ('1092', '878', 'VIOTÁ', '025', 'A');
INSERT INTO `cities` VALUES ('1093', '879', 'VIRACACHÁ', '015', 'A');
INSERT INTO `cities` VALUES ('1094', '883', 'SAN FELIPE', '094', 'A');
INSERT INTO `cities` VALUES ('1095', '884', 'PUERTO COLOMBIA', '094', 'A');
INSERT INTO `cities` VALUES ('1096', '885', 'YALÍ', '005', 'A');
INSERT INTO `cities` VALUES ('1097', '885', 'YACOPÍ', '025', 'A');
INSERT INTO `cities` VALUES ('1098', '885', 'YAGUARÁ', '041', 'A');
INSERT INTO `cities` VALUES ('1099', '885', 'YACUANQUER', '052', 'A');
INSERT INTO `cities` VALUES ('1100', '885', 'VILLAGARZÓN', '086', 'A');
INSERT INTO `cities` VALUES ('1101', '885', 'LA GUADALUPE', '094', 'A');
INSERT INTO `cities` VALUES ('1102', '886', 'CACAHUAL', '094', 'A');
INSERT INTO `cities` VALUES ('1103', '887', 'YARUMAL', '005', 'A');
INSERT INTO `cities` VALUES ('1104', '887', 'PANA PANA', '094', 'A');
INSERT INTO `cities` VALUES ('1105', '888', 'MORICHAL', '094', 'A');
INSERT INTO `cities` VALUES ('1106', '889', 'YAVARATÉ', '097', 'A');
INSERT INTO `cities` VALUES ('1107', '890', 'YOLOMBÓ', '005', 'A');
INSERT INTO `cities` VALUES ('1108', '890', 'YOTOCO', '076', 'A');
INSERT INTO `cities` VALUES ('1109', '892', 'YUMBO', '076', 'A');
INSERT INTO `cities` VALUES ('1110', '893', 'YONDÓ', '005', 'A');
INSERT INTO `cities` VALUES ('1111', '894', 'ZAMBRANO', '013', 'A');
INSERT INTO `cities` VALUES ('1112', '895', 'ZARAGOZA', '005', 'A');
INSERT INTO `cities` VALUES ('1113', '895', 'ZAPATOCA', '068', 'A');
INSERT INTO `cities` VALUES ('1114', '895', 'ZARZAL', '076', 'A');
INSERT INTO `cities` VALUES ('1115', '897', 'ZETAQUIRA', '015', 'A');
INSERT INTO `cities` VALUES ('1116', '898', 'ZIPACÓN', '025', 'A');
INSERT INTO `cities` VALUES ('1117', '899', 'ZIPAQUIRÁ', '025', 'A');
INSERT INTO `cities` VALUES ('1118', '960', 'ZAPAYÁN', '047', 'A');
INSERT INTO `cities` VALUES ('1119', '980', 'ZONA BANANERA', '047', 'A');

-- ----------------------------
-- Table structure for commodities
-- ----------------------------
DROP TABLE IF EXISTS `commodities`;
CREATE TABLE `commodities` (
  `matp_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `matp_descripcion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `matp_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `matp_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `matp_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`matp_id`),
  KEY `matp_usrcreacion` (`matp_usrcreacion`) USING BTREE,
  CONSTRAINT `commodities_ibfk_1` FOREIGN KEY (`matp_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Materias Primas';

-- ----------------------------
-- Records of commodities
-- ----------------------------
INSERT INTO `commodities` VALUES ('1', 'CRUDO', 'A', '1', '2021-11-15 01:54:08');
INSERT INTO `commodities` VALUES ('2', 'PIEDRA ZARANDA', 'A', '1', '2021-11-15 01:54:23');
INSERT INTO `commodities` VALUES ('3', 'MATERIAL EXTERNO', 'A', '1', '2021-11-15 01:54:37');

-- ----------------------------
-- Table structure for conceptsnovelties
-- ----------------------------
DROP TABLE IF EXISTS `conceptsnovelties`;
CREATE TABLE `conceptsnovelties` (
  `cncn_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `cncn_nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `cncn_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`cncn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of conceptsnovelties
-- ----------------------------
INSERT INTO `conceptsnovelties` VALUES ('1', 'CAMBIO DE VOLUMEN', 'A');
INSERT INTO `conceptsnovelties` VALUES ('2', 'CAMBIO DE TERCERO', 'A');

-- ----------------------------
-- Table structure for conceptspayments
-- ----------------------------
DROP TABLE IF EXISTS `conceptspayments`;
CREATE TABLE `conceptspayments` (
  `cncp_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `cncp_nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `cncp_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`cncp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of conceptspayments
-- ----------------------------
INSERT INTO `conceptspayments` VALUES ('1', 'VIATICOS', 'A');

-- ----------------------------
-- Table structure for constructions
-- ----------------------------
DROP TABLE IF EXISTS `constructions`;
CREATE TABLE `constructions` (
  `obra_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `obra_idcliente` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `obra_nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `obra_direccion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `obra_porcsuministro` int(5) unsigned NOT NULL,
  `obra_porctransporte` int(5) unsigned NOT NULL,
  `obra_obs` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `obra_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `obra_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `obra_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`obra_id`),
  KEY `obra_usrcreacion` (`obra_usrcreacion`),
  CONSTRAINT `constructions_ibfk_1` FOREIGN KEY (`obra_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Obras';

-- ----------------------------
-- Records of constructions
-- ----------------------------

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `pais_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `pais_codigo` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `pais_nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `pais_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`pais_id`),
  KEY `pais_codigo` (`pais_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'COL', 'COLOMBIA', 'A');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `clie_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `clie_identif` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `clie_dircorresp` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`clie_id`),
  KEY `clie_identif` (`clie_identif`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`clie_identif`) REFERENCES `persons` (`pers_identif`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `disp_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `disp_descripcion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `disp_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `disp_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `disp_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`disp_id`),
  KEY `disp_usrcreacion` (`disp_usrcreacion`) USING BTREE,
  CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`disp_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of devices
-- ----------------------------
INSERT INTO `devices` VALUES ('1', 'PLANTA DE TRITURACION', 'A', '1', '2021-11-15 01:48:19');
INSERT INTO `devices` VALUES ('2', 'ZARANDA', 'A', '1', '2021-11-15 01:48:31');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for fuelsshopcubitanks
-- ----------------------------
DROP TABLE IF EXISTS `fuelsshopcubitanks`;
CREATE TABLE `fuelsshopcubitanks` (
  `cubt_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `cubt_idcompra` int(12) unsigned NOT NULL,
  `cubt_volumen` int(12) NOT NULL,
  `cubt_unidad` enum('LT','MC','GL') COLLATE latin1_spanish_ci NOT NULL COMMENT 'LT Litros, MC Metros Cubicos, GL Galones',
  `cubt_observaciones` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `cubt_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `cubt_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `cubt_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`cubt_id`),
  KEY `cubt_idcompra` (`cubt_idcompra`) USING BTREE,
  KEY `cubt_usrcreacion` (`cubt_usrcreacion`) USING BTREE,
  CONSTRAINT `fuelsshopcubitanks_ibfk_1` FOREIGN KEY (`cubt_idcompra`) REFERENCES `fuelsshopping` (`ccmb_id`),
  CONSTRAINT `fuelsshopcubitanks_ibfk_2` FOREIGN KEY (`cubt_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of fuelsshopcubitanks
-- ----------------------------

-- ----------------------------
-- Table structure for fuelsshopping
-- ----------------------------
DROP TABLE IF EXISTS `fuelsshopping`;
CREATE TABLE `fuelsshopping` (
  `ccmb_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `ccmb_identifproveedor` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `ccmb_fechadescarga` date NOT NULL,
  `ccmb_numremision` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `ccmb_volumen` int(12) unsigned NOT NULL,
  `ccmb_unidad` enum('LT','MC','GL') COLLATE latin1_spanish_ci NOT NULL COMMENT 'LT Litros, MC Metros Cubicos, GL Galones',
  `ccmb_vlrunidad` int(12) NOT NULL,
  `ccmb_observaciones` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `ccmb_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `ccmb_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `ccmb_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`ccmb_id`),
  KEY `ccmb_idproveedor` (`ccmb_identifproveedor`) USING BTREE,
  KEY `ccmb_usrcreacion` (`ccmb_usrcreacion`) USING BTREE,
  CONSTRAINT `fuelsshopping_ibfk_2` FOREIGN KEY (`ccmb_usrcreacion`) REFERENCES `users` (`id`),
  CONSTRAINT `fuelsshopping_ibfk_3` FOREIGN KEY (`ccmb_identifproveedor`) REFERENCES `supplier` (`prov_identif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Compras de Combustible';

-- ----------------------------
-- Records of fuelsshopping
-- ----------------------------

-- ----------------------------
-- Table structure for machines
-- ----------------------------
DROP TABLE IF EXISTS `machines`;
CREATE TABLE `machines` (
  `maqn_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `maqn_placa` varchar(12) COLLATE latin1_spanish_ci DEFAULT '',
  `maqn_tipo` int(12) unsigned NOT NULL,
  `maqn_cubicaje` int(12) unsigned NOT NULL,
  `maqn_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `maqn_obs` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `maqn_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `maqn_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`maqn_id`),
  UNIQUE KEY `maqn_placa` (`maqn_placa`) USING BTREE,
  KEY `maqn_tipo` (`maqn_tipo`) USING BTREE,
  KEY `maqn_usrcreacion` (`maqn_usrcreacion`) USING BTREE,
  CONSTRAINT `machines_ibfk_1` FOREIGN KEY (`maqn_tipo`) REFERENCES `machinestypes` (`tmaq_id`),
  CONSTRAINT `machines_ibfk_2` FOREIGN KEY (`maqn_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of machines
-- ----------------------------

-- ----------------------------
-- Table structure for machinesmov
-- ----------------------------
DROP TABLE IF EXISTS `machinesmov`;
CREATE TABLE `machinesmov` (
  `mqmv_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `mqmv_idmaquina` int(12) unsigned NOT NULL,
  `mqmv_inicio` datetime NOT NULL,
  `mqmv_final` datetime NOT NULL,
  `mqmv_vlrhora` int(12) unsigned NOT NULL,
  `mqmv_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `mqmv_obs` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `mqmv_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `mqmv_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`mqmv_id`),
  KEY `mqmv_codmaquina` (`mqmv_idmaquina`) USING BTREE,
  KEY `mqmv_usrcreacion` (`mqmv_usrcreacion`) USING BTREE,
  CONSTRAINT `machinesmov_ibfk_1` FOREIGN KEY (`mqmv_idmaquina`) REFERENCES `machines` (`maqn_id`),
  CONSTRAINT `machinesmov_ibfk_2` FOREIGN KEY (`mqmv_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of machinesmov
-- ----------------------------

-- ----------------------------
-- Table structure for machinesobs
-- ----------------------------
DROP TABLE IF EXISTS `machinesobs`;
CREATE TABLE `machinesobs` (
  `mqdt_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `mqdt_idmaquina` int(12) unsigned NOT NULL,
  `mqdt_fecha` date NOT NULL,
  `mqdt_obs` text COLLATE latin1_spanish_ci NOT NULL,
  `mqdt_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `mqdt_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `mqdt_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`mqdt_id`),
  KEY `mqdt_codmaquina` (`mqdt_idmaquina`) USING BTREE,
  KEY `mqdt_usrcreacion` (`mqdt_usrcreacion`) USING BTREE,
  CONSTRAINT `machinesobs_ibfk_1` FOREIGN KEY (`mqdt_idmaquina`) REFERENCES `machines` (`maqn_id`),
  CONSTRAINT `machinesobs_ibfk_2` FOREIGN KEY (`mqdt_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of machinesobs
-- ----------------------------

-- ----------------------------
-- Table structure for machinespayments
-- ----------------------------
DROP TABLE IF EXISTS `machinespayments`;
CREATE TABLE `machinespayments` (
  `mqpg_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `mqpg_idmaquina` int(12) unsigned NOT NULL,
  `mqpg_fecha` date NOT NULL,
  `mqpg_concepto` int(2) unsigned NOT NULL,
  `mqpg_vlrpagado` int(12) unsigned NOT NULL,
  `mqpg_obs` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `mqpg_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `mqpg_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `mqpg_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`mqpg_id`),
  KEY `mqpg_codmaquina` (`mqpg_idmaquina`) USING BTREE,
  KEY `mqpg_usrcreacion` (`mqpg_usrcreacion`) USING BTREE,
  KEY `mqpg_concepto` (`mqpg_concepto`) USING BTREE,
  CONSTRAINT `machinespayments_ibfk_1` FOREIGN KEY (`mqpg_idmaquina`) REFERENCES `machines` (`maqn_id`),
  CONSTRAINT `machinespayments_ibfk_2` FOREIGN KEY (`mqpg_concepto`) REFERENCES `conceptspayments` (`cncp_id`),
  CONSTRAINT `machinespayments_ibfk_3` FOREIGN KEY (`mqpg_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of machinespayments
-- ----------------------------

-- ----------------------------
-- Table structure for machinestypes
-- ----------------------------
DROP TABLE IF EXISTS `machinestypes`;
CREATE TABLE `machinestypes` (
  `tmaq_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `tmaq_nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `tmaq_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`tmaq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of machinestypes
-- ----------------------------
INSERT INTO `machinestypes` VALUES ('1', 'Buldozer', 'A');
INSERT INTO `machinestypes` VALUES ('2', 'Cargador', 'A');
INSERT INTO `machinestypes` VALUES ('3', 'Retroexcavadora', 'A');
INSERT INTO `machinestypes` VALUES ('4', 'Planta', 'A');
INSERT INTO `machinestypes` VALUES ('5', 'Trituradora', 'A');
INSERT INTO `machinestypes` VALUES ('6', 'Volqueta', 'A');
INSERT INTO `machinestypes` VALUES ('7', 'Cubitanque', 'A');
INSERT INTO `machinestypes` VALUES ('8', 'Operador', 'A');

-- ----------------------------
-- Table structure for materials
-- ----------------------------
DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `mate_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `mate_codigo` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `mate_clasificacion` enum('MP','PR') COLLATE latin1_spanish_ci NOT NULL COMMENT 'MP materia prima, PR producto',
  `mate_descripcion` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `mate_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `mate_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `mate_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`mate_id`),
  UNIQUE KEY `mate_codigo` (`mate_codigo`) USING BTREE,
  KEY `mate_usrcreacion` (`mate_usrcreacion`) USING BTREE,
  CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`mate_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of materials
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
INSERT INTO `model_has_permissions` VALUES ('1', 'App\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('2', 'App\\User', '2');

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', 'App\\User', '1');
INSERT INTO `model_has_roles` VALUES ('2', 'App\\User', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'all', 'web', '2021-11-21 15:00:51', '2021-11-21 15:00:51');
INSERT INTO `permissions` VALUES ('2', 'ver', 'web', '2021-11-21 15:00:52', '2021-11-21 15:00:52');

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
  `pers_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `pers_identif` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `pers_tipoid` enum('CC','NIT') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'CC',
  `pers_razonsocial` varchar(120) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_primernombre` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_segnombre` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_primerapell` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_segapell` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_direccion` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_telefono` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_ciudad` char(3) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `pers_dpto` char(3) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `pers_email` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pers_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `pers_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `pers_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`pers_id`),
  KEY `pers_ciudad` (`pers_ciudad`) USING BTREE,
  KEY `pers_dpto` (`pers_dpto`) USING BTREE,
  KEY `pers_usrcreacion` (`pers_usrcreacion`) USING BTREE,
  KEY `pers_identif` (`pers_identif`),
  CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`pers_ciudad`) REFERENCES `cities` (`ciud_codigo`),
  CONSTRAINT `persons_ibfk_3` FOREIGN KEY (`pers_usrcreacion`) REFERENCES `users` (`id`),
  CONSTRAINT `persons_ibfk_4` FOREIGN KEY (`pers_dpto`) REFERENCES `states` (`dpto_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of persons
-- ----------------------------

-- ----------------------------
-- Table structure for productions
-- ----------------------------
DROP TABLE IF EXISTS `productions`;
CREATE TABLE `productions` (
  `prod_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `prod_idmaqdeposita` int(12) unsigned NOT NULL,
  `prod_iddispositivo` int(12) unsigned NOT NULL,
  `prod_materiaprima` int(12) unsigned NOT NULL,
  `prod_fecha` date NOT NULL,
  `prod_numviajes` int(12) unsigned NOT NULL,
  `prod_cubicaje` int(12) unsigned NOT NULL,
  `prod_volumen` int(12) unsigned NOT NULL COMMENT 'prod_numviajes * prod_cubicaje',
  `prod_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `prod_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `prod_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`prod_id`),
  KEY `prod_idmaqdeposita` (`prod_idmaqdeposita`) USING BTREE,
  KEY `prod_coddispositivo` (`prod_iddispositivo`) USING BTREE,
  KEY `prod_materiaprima` (`prod_materiaprima`) USING BTREE,
  KEY `prod_usrcreacion` (`prod_usrcreacion`) USING BTREE,
  CONSTRAINT `productions_ibfk_1` FOREIGN KEY (`prod_usrcreacion`) REFERENCES `users` (`id`),
  CONSTRAINT `productions_ibfk_2` FOREIGN KEY (`prod_idmaqdeposita`) REFERENCES `machines` (`maqn_id`),
  CONSTRAINT `productions_ibfk_3` FOREIGN KEY (`prod_iddispositivo`) REFERENCES `devices` (`disp_id`),
  CONSTRAINT `productions_ibfk_4` FOREIGN KEY (`prod_materiaprima`) REFERENCES `commodities` (`matp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of productions
-- ----------------------------

-- ----------------------------
-- Table structure for remissions
-- ----------------------------
DROP TABLE IF EXISTS `remissions`;
CREATE TABLE `remissions` (
  `remi_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `remi_idobra` int(12) unsigned NOT NULL,
  `remi_idsociedad` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `remi_fecha` date NOT NULL,
  `remi_numfactura` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `remi_obs` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `remi_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `remi_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `remi_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`remi_id`),
  KEY `remi_usrcreacion` (`remi_usrcreacion`) USING BTREE,
  KEY `remi_obra` (`remi_idobra`) USING BTREE,
  KEY `remi_idsociedad` (`remi_idsociedad`) USING BTREE,
  CONSTRAINT `remissions_ibfk_1` FOREIGN KEY (`remi_idobra`) REFERENCES `constructions` (`obra_id`),
  CONSTRAINT `remissions_ibfk_2` FOREIGN KEY (`remi_usrcreacion`) REFERENCES `users` (`id`),
  CONSTRAINT `remissions_ibfk_3` FOREIGN KEY (`remi_idsociedad`) REFERENCES `societies` (`soci_identif`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of remissions
-- ----------------------------

-- ----------------------------
-- Table structure for remissionsdetails
-- ----------------------------
DROP TABLE IF EXISTS `remissionsdetails`;
CREATE TABLE `remissionsdetails` (
  `dtrm_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `dtrm_idremision` int(12) unsigned NOT NULL,
  `dtrm_idmaterial` int(12) unsigned NOT NULL,
  `dtrm_cantdespachada` int(12) unsigned NOT NULL,
  `dtrm_precio` int(12) unsigned NOT NULL,
  PRIMARY KEY (`dtrm_id`),
  KEY `dtrm_codmaterial` (`dtrm_idmaterial`) USING BTREE,
  KEY `dtrm_idremision` (`dtrm_idremision`),
  CONSTRAINT `remissionsdetails_ibfk_1` FOREIGN KEY (`dtrm_idremision`) REFERENCES `remissions` (`remi_id`),
  CONSTRAINT `remissionsdetails_ibfk_2` FOREIGN KEY (`dtrm_idmaterial`) REFERENCES `materials` (`mate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of remissionsdetails
-- ----------------------------

-- ----------------------------
-- Table structure for remissionsnovelties
-- ----------------------------
DROP TABLE IF EXISTS `remissionsnovelties`;
CREATE TABLE `remissionsnovelties` (
  `rmnv_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `rmnv_idremision` int(12) unsigned NOT NULL,
  `rmnv_idconcepto` int(12) unsigned NOT NULL,
  `rmnv_nuevovalor` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `rmnv_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `rmnv_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `rmnv_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`rmnv_id`),
  KEY `rmnv_remision` (`rmnv_idremision`) USING BTREE,
  KEY `rmnv_concepto` (`rmnv_idconcepto`) USING BTREE,
  KEY `rmnv_usrcreacion` (`rmnv_usrcreacion`) USING BTREE,
  CONSTRAINT `remissionsnovelties_ibfk_1` FOREIGN KEY (`rmnv_idremision`) REFERENCES `remissions` (`remi_id`),
  CONSTRAINT `remissionsnovelties_ibfk_2` FOREIGN KEY (`rmnv_idconcepto`) REFERENCES `conceptsnovelties` (`cncn_id`),
  CONSTRAINT `remissionsnovelties_ibfk_3` FOREIGN KEY (`rmnv_usrcreacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of remissionsnovelties
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Super Admin', 'web', '2021-11-21 15:00:51', '2021-11-21 15:00:51');
INSERT INTO `roles` VALUES ('2', 'operario', 'web', '2021-11-21 15:00:52', '2021-11-21 15:00:52');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES ('1', '1');

-- ----------------------------
-- Table structure for societies
-- ----------------------------
DROP TABLE IF EXISTS `societies`;
CREATE TABLE `societies` (
  `soci_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `soci_identif` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `soci_nombrelogo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `soci_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`soci_id`),
  KEY `soci_identif` (`soci_identif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of societies
-- ----------------------------

-- ----------------------------
-- Table structure for states
-- ----------------------------
DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `dpto_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `dpto_codigo` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `dpto_nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `dpto_codpais` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `dpto_estado` char(1) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`dpto_id`),
  KEY `dpto_codpais` (`dpto_codpais`) USING BTREE,
  KEY `dpto_codigo` (`dpto_codigo`),
  CONSTRAINT `states_ibfk_1` FOREIGN KEY (`dpto_codpais`) REFERENCES `countries` (`pais_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of states
-- ----------------------------
INSERT INTO `states` VALUES ('1', '005', 'ANTIOQUIA', 'COL', 'A');
INSERT INTO `states` VALUES ('2', '008', 'ATLÁNTICO', 'COL', 'A');
INSERT INTO `states` VALUES ('3', '011', 'BOGOTÁ D.C', 'COL', 'A');
INSERT INTO `states` VALUES ('4', '013', 'BOLÍVAR', 'COL', 'A');
INSERT INTO `states` VALUES ('5', '015', 'BOYACÁ', 'COL', 'A');
INSERT INTO `states` VALUES ('6', '017', 'CALDAS', 'COL', 'A');
INSERT INTO `states` VALUES ('7', '018', 'CAQUETÁ', 'COL', 'A');
INSERT INTO `states` VALUES ('8', '019', 'CAUCA', 'COL', 'A');
INSERT INTO `states` VALUES ('9', '020', 'CESAR', 'COL', 'A');
INSERT INTO `states` VALUES ('10', '023', 'CÓRDOBA', 'COL', 'A');
INSERT INTO `states` VALUES ('11', '025', 'CUNDINAMARCA', 'COL', 'A');
INSERT INTO `states` VALUES ('12', '027', 'CHOCÓ', 'COL', 'A');
INSERT INTO `states` VALUES ('13', '041', 'HUILA', 'COL', 'A');
INSERT INTO `states` VALUES ('14', '044', 'LA GUAJIRA', 'COL', 'A');
INSERT INTO `states` VALUES ('15', '047', 'MAGDALENA', 'COL', 'A');
INSERT INTO `states` VALUES ('16', '050', 'META', 'COL', 'A');
INSERT INTO `states` VALUES ('17', '052', 'NARIÑO', 'COL', 'A');
INSERT INTO `states` VALUES ('18', '054', 'NORTE DE SANTANDER', 'COL', 'A');
INSERT INTO `states` VALUES ('19', '063', 'QUINDIO', 'COL', 'A');
INSERT INTO `states` VALUES ('20', '066', 'RISARALDA', 'COL', 'A');
INSERT INTO `states` VALUES ('21', '068', 'SANTANDER', 'COL', 'A');
INSERT INTO `states` VALUES ('22', '070', 'SUCRE', 'COL', 'A');
INSERT INTO `states` VALUES ('23', '073', 'TOLIMA', 'COL', 'A');
INSERT INTO `states` VALUES ('24', '076', 'VALLE DEL CAUCA', 'COL', 'A');
INSERT INTO `states` VALUES ('25', '081', 'ARAUCA', 'COL', 'A');
INSERT INTO `states` VALUES ('26', '085', 'CASANARE', 'COL', 'A');
INSERT INTO `states` VALUES ('27', '086', 'PUTUMAYO', 'COL', 'A');
INSERT INTO `states` VALUES ('28', '088', 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SAN', 'COL', 'A');
INSERT INTO `states` VALUES ('29', '091', 'AMAZONAS', 'COL', 'A');
INSERT INTO `states` VALUES ('30', '094', 'GUAINÍA', 'COL', 'A');
INSERT INTO `states` VALUES ('31', '095', 'GUAVIARE', 'COL', 'A');
INSERT INTO `states` VALUES ('32', '097', 'VAUPÉS', 'COL', 'A');
INSERT INTO `states` VALUES ('33', '099', 'VICHADA', 'COL', 'A');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `prov_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `prov_identif` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `prov_codactividad` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `prov_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`prov_id`),
  KEY `prov_identif` (`prov_identif`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`prov_identif`) REFERENCES `persons` (`pers_identif`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Proveedores';

-- ----------------------------
-- Records of supplier
-- ----------------------------

-- ----------------------------
-- Table structure for tankmachines
-- ----------------------------
DROP TABLE IF EXISTS `tankmachines`;
CREATE TABLE `tankmachines` (
  `tanq_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `tanq_idmaquina` int(12) unsigned NOT NULL,
  `tanq_fecha` date NOT NULL,
  `tanq_volumen` int(12) unsigned NOT NULL,
  `tanq_unidad` enum('LT','MC','GL') COLLATE latin1_spanish_ci NOT NULL COMMENT 'LT Litros, MC Metros Cubicos, GL Galones',
  `tanq_origen` enum('CT','CB','ES') COLLATE latin1_spanish_ci NOT NULL COMMENT 'CT Carrotanque, CB Cubitanque, ES Estacion de servicio',
  `tanq_docsoporte` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `tanq_observaciones` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `tanq_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `tanq_usrcreacion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `tanq_fcreacion` datetime NOT NULL,
  PRIMARY KEY (`tanq_id`),
  KEY `tanq_codmaquina` (`tanq_idmaquina`) USING BTREE,
  KEY `tanq_usrcreacion` (`tanq_usrcreacion`) USING BTREE,
  CONSTRAINT `tankmachines_ibfk_1` FOREIGN KEY (`tanq_usrcreacion`) REFERENCES `users` (`id`),
  CONSTRAINT `tankmachines_ibfk_2` FOREIGN KEY (`tanq_idmaquina`) REFERENCES `machines` (`maqn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of tankmachines
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usua_estado` enum('A','I') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `usua_creacion` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Administrador del sistema', 'admin@localhost.com', null, '$2y$10$rlyrVKXoKwAxOA72ji0/TeKDsZFyM9yQPPqRK8LI761A.nVfvt7RK', null, 'A', 'super-admin', '2021-11-21 15:00:51', '2021-11-21 15:00:51', null);
INSERT INTO `users` VALUES ('2', 'Operario', 'operario@localhost.com', null, '$2y$10$Ihow7Ne8meKaDxeDWVWL4uQsVueARgwAy4dLQYrvj/gMGAMBdG.FS', null, 'A', 'super-admin', '2021-11-21 15:00:51', '2021-11-21 15:00:51', null);
DROP TRIGGER IF EXISTS `ValidaPorcentajesIns`;
DELIMITER ;;
CREATE TRIGGER `ValidaPorcentajesIns` BEFORE INSERT ON `constructions` FOR EACH ROW BEGIN

	DECLARE valor1 CHAR(2);
	
	IF (NEW.obra_porcsuministro + NEW.obra_porctransporte) <> 100 THEN 
		SELECT PORC_DE_SUMAS_A100 INTO valor1 FROM obras WHERE obras.obra_consecutivo = NEW.obra_consecutivo;
	END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ValidaPorcentajesUpd`;
DELIMITER ;;
CREATE TRIGGER `ValidaPorcentajesUpd` BEFORE UPDATE ON `constructions` FOR EACH ROW BEGIN

	DECLARE valor1 CHAR(2);
	
	IF (NEW.obra_porcsuministro + NEW.obra_porctransporte) <> 100 THEN 
		SELECT NEGATIVE_VALUE_ONTRIGGER INTO valor1 FROM obras WHERE obras.obra_consecutivo = NEW.obra_consecutivo;
	END IF;
END
;;
DELIMITER ;
