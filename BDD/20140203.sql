-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2014 at 03:17 PM
-- Server version: 5.5.35
-- PHP Version: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mabmakeup`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idMiembro` int(11) NOT NULL,
  `comentario` varchar(8000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `idMiembro`, `comentario`, `date`) VALUES
(3, 2, 'test1', '2013-12-27 18:23:23'),
(4, 2, 'test2', '2013-12-27 18:23:30'),
(5, 2, 'test3', '2013-12-27 18:23:35'),
(6, 2, 'asdasdasd', '2013-12-27 18:42:44'),
(7, 2, 'asdasdasd', '2013-12-27 18:42:48'),
(9, 2, 'jffljsiakd', '2014-01-15 22:55:35'),
(10, 2, 'hoy no vino', '2014-01-15 22:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_email_subject` varchar(120) NOT NULL,
  `version` varchar(30) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `company_name`, `company_email`, `company_email_subject`, `version`, `last_update`) VALUES
(1, 'La Sante Farmacia', 'info@lasante.com.ar', 'La Sante Farmacia', '1.1', '2013-04-09 10:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `config_secret`
--

CREATE TABLE IF NOT EXISTS `config_secret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_of_admin_licenses` int(11) NOT NULL,
  `number_of_user_licenses` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `config_secret`
--

INSERT INTO `config_secret` (`id`, `number_of_admin_licenses`, `number_of_user_licenses`) VALUES
(1, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE IF NOT EXISTS `fields` (
  `idcampo` varchar(50) NOT NULL,
  `nombreenform` varchar(50) NOT NULL,
  `campoFisico` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `width` varchar(50) DEFAULT NULL,
  `sortable` varchar(10) NOT NULL,
  `align` varchar(20) NOT NULL,
  `onlyNum` char(1) NOT NULL,
  `maxLenght` varchar(4) NOT NULL,
  `TipoCampo` varchar(20) NOT NULL,
  `sql` varchar(8000) DEFAULT NULL,
  `sqlMostarDescrp` varchar(8000) NOT NULL,
  `mask` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idcampo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`idcampo`, `nombreenform`, `campoFisico`, `display`, `width`, `sortable`, `align`, `onlyNum`, `maxLenght`, `TipoCampo`, `sql`, `sqlMostarDescrp`, `mask`) VALUES
('fields.align', 'align', 'fields.align', 'Align', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.campofisico', 'campofisico', 'fields.campofisico', 'Campo fisico', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.display', 'display', 'fields.display', 'Display', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.idcampo', 'idcampo', 'fields.idcampo', 'Id', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.mask', 'mask', 'fields.mask', 'Mascara', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.maxlenght', 'maxlenght', 'fields.maxlenght', 'Max Lenght', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.nombreenform', 'nombreenform', 'fields.nombreenform', 'Nombre en formulario', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.onlyNum', 'onlynum', 'fields.onlynum', 'Solo numeros', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.sortable', 'sortable', 'fields.sortable', 'Sortable', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.sql', 'sql', 'fields.sql', 'sql', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.sqlmostardescrp', 'sqlmostardescrp', 'fields.sqlmostardescrp', 'sql para mostar descrp', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.tipocampo', 'tipocampo', 'fields.tipocampo', 'Tipo de campo', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('fields.width', 'width', 'fields.width', 'Width', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('group.description', 'description', 'group.description', 'description', '200', 'true', 'left', '', '', 'text', '', '', NULL),
('group.id', 'id', 'group.id', 'id', '50', 'true', 'left', '', '', 'text', '', '', NULL),
('group.name', 'name', 'group.name', 'name', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('group_permission.id', 'id', 'group_permission.id', 'Id', '50', 'true', 'left', 'S', '', 'text', '', '', 'id'),
('group_permission.id_group', 'id_group', 'group_permission.id_group', 'Grupo', '100', 'true', 'left', 'S', '', 'select', 'SELECT `id` as id,CONCAT(`name`, '' - '' , `description`) as valor FROM `group`', '(SELECT CONCAT(`name`, '' - '' , `description`) as valor FROM `group` where group.id = group_permission.id_group\n)', ''),
('group_permission.id_menu', 'id_menu', 'group_permission.id_menu', 'Menu', '100', 'true', 'left', 'S', '', 'select', 'SELECT `id_org` as id,`id` as valor FROM `menu`', '(SELECT CONCAT(`id_org`, '' - '' , `id`) as valor FROM `menu` where menu.id_org = group_permission.id_menu)', ''),
('includes.IdInclude', 'IdInclude', 'includes.IdInclude', 'Id include', '100', 'true', 'left', '', '', 'text', '', '', 'Id del include'),
('includes.idmodulo', 'idmodulo', 'includes.idmodulo', 'Id del modulo', '100', 'true', 'left', '', '', 'select', 'SELECT `idmodulo` as id,`idmodulo` as valor FROM `module`', 'includes.idmodulo', ''),
('includes.orden', 'orden', 'includes.orden', 'Orden', '100', 'true', 'left', '', '', 'text', '', '', 'Orden del campo'),
('includes.path', 'path', 'includes.path', 'Path', '100', 'true', 'left', '', '', 'text', '', '', 'Direcci&oacute;n del objeto'),
('includes.type', 'type', 'includes.type', 'Type', '100', 'true', 'left', '', '', 'text', '', '', 'Tipo de objeto'),
('languajevar.descrp', 'descrp', 'languajevar.descrp', 'Descripci&oacute;n', '100', 'true', 'left', '', '', 'text', '', '', 'Descripci&oacute;n'),
('languajevar.idvar', 'idvar', 'languajevar.idvar', 'Id variable', '100', 'true', 'left', '', '', 'text', '', '', 'Id de variable'),
('languajevar.languaje', 'languaje', 'languajevar.languaje', 'Lenguaje', '100', 'true', 'left', '', '', 'select', 'SELECT `id` as id,`descrp` as valor FROM `languajes`', '0', ''),
('languajevar.module', 'module', 'languajevar.module', 'Modulo', '100', 'true', 'left', '', '', 'text', '', '', 'Modulo'),
('languajevar.observ', 'observ', 'languajevar.observ', 'Observaci&oacute;', '100', 'true', 'left', '', '', 'text', '', '', 'Observaci&oacute;'),
('lideres.descrp', 'descrp', 'lideres.descrp', 'Descripciòn', '100', 'true', 'left', 'N', '1000', 'text', NULL, '', NULL),
('lideres.id', 'id', 'lideres.id', 'Id', '50', 'true', 'left', 'S', '', 'text', NULL, '', NULL),
('lideres.nombre', 'nombre', 'lideres.nombre', 'Nombre', '100', 'true', 'left', 'N', '1000', 'text', NULL, '', NULL),
('menu.id', 'id', 'menu.id', 'id', '100', 'true', 'left', '', '', 'text', NULL, '', NULL),
('menu.idparent', 'idparent', 'menu.idparent', 'idParent', '100', 'true', 'left', '', '', 'select', 'SELECT `id` as id,`id` as valor FROM `menu`', 'menu.idparent', NULL),
('menu.id_org', 'id_org', 'menu.id_org', 'id general', '20', 'true', 'left', '', '', 'text', NULL, '', NULL),
('menu.link', 'link', 'menu.link', 'link', '100', 'true', '', '', '', 'text', NULL, '', NULL),
('menu.name', 'name', 'menu.name', 'Name', '100', 'true', 'left', '', '', 'text', NULL, '', NULL),
('menu.type', 'type', 'menu.type', 'Type', '70', 'true', 'left', '', '', 'text', NULL, '', NULL),
('miembros.consolidador', 'consolidador', 'miembros.consolidador', 'Consolidador', '100', 'true', 'left', '', '', 'text', '', '', ''),
('miembros.direccion', 'direccion', 'miembros.direccion', 'Direcciòn', '100', 'true', 'left', 'N', '1000', 'text', NULL, '', NULL),
('miembros.edad', 'edad', 'miembros.edad', 'Edad', '50', 'true', 'left', 'N', '', 'text', NULL, '', NULL),
('miembros.fechaIng', 'fechaIng', 'miembros.fechaing', 'Fecha Ingreso', '100', 'true', 'left', 'N', '', 'date', NULL, '', 'dd/mm/aaaa'),
('miembros.fnac', 'fnac', 'miembros.fnac', 'Fecha de nacimiento', '100', 'true', 'left', 'N', '', 'date', NULL, '', 'dd/mm/aaaa'),
('miembros.hscontacto', 'hscontacto', 'miembros.hscontacto', 'Hora de contacto', '100', 'true', 'left', 'N', '1000', 'text', NULL, '', NULL),
('miembros.id', 'id', 'miembros.id', 'id', '50', 'true', 'left', 's', '', 'text', NULL, '', NULL),
('miembros.invitador', 'invitador', 'miembros.invitador', 'Invitador', '100', 'true', 'left', 'N', '', 'text', NULL, '', NULL),
('miembros.lider', 'lider', 'miembros.lider', 'Lider', '100', 'true', 'left', 'N', '', 'select', 'SELECT `id` as id,`nombre` as valor FROM `lideres`', '(SELECT CONCAT(`id`, '' - '' , `nombre`) as valor FROM `lideres` where lideres.id = miembros.lider)', NULL),
('miembros.nombre', 'nombre', 'miembros.nombre', 'Nombre', '100', 'true', 'left', 'N', '1000', 'text', NULL, '', NULL),
('miembros.tel', 'tel', 'miembros.tel', 'Telèfono', '100', 'true', 'left', 'N', '1000', 'text', '', '', NULL),
('mistrabajos.comentario', 'comentario', 'mistrabajos.comentario', 'Comentario', '300', 'true', 'left', '', '', 'text', '', '', 'Comentario'),
('mistrabajos.fecha', 'fecha', 'mistrabajos.fecha', 'Fecha', '100', 'true', 'left', '', '', 'text', '', '', 'DD/MM/AAAA'),
('mistrabajos.id', 'id', 'mistrabajos.id', 'Id', '100', 'true', 'left', '', '', 'text', '', '', 'Id'),
('mistrabajos.imagen', 'imagen', 'mistrabajos.imagen', 'Imagen', '200', 'true', 'left', '', '', 'text', '', '', 'Nombre de la imagen'),
('module.dblclickfn', 'dblclickfn', 'module.dblclickfn', 'Doble click', '100', 'true', 'left', '', '', 'text', '', '', ''),
('module.from', 'from', 'module.from', 'From', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('module.idmodulo', 'idmodulo', 'module.idmodulo', 'Module Id', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('module.tablebase', 'tablebase', 'module.tablebase', 'Tabla Master', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('modulefields.hide', 'hide', 'modulefields.hide', 'hide', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('modulefields.idcampo', 'idcampo', 'modulefields.idcampo', 'Id del campo', '100', 'true', 'left', '', '', 'select', 'SELECT `idcampo` as id,`idcampo` as valor FROM `fields`', 'idcampo', NULL),
('modulefields.idmodulo', 'idmodulo', 'modulefields.idmodulo', 'Id del modulo', '100', 'true', 'left', '', '', 'select', 'SELECT `idmodulo` as id,`idmodulo` as valor FROM `module`', '(SELECT `idmodulo` as valor FROM `module` where module.idmodulo = modulefields.idmodulo)', NULL),
('modulefields.orden', 'orden', 'modulefields.orden', 'Orden', '100', 'true', 'left', '', '', 'text', '', '', NULL),
('modulefields.scope', 'scope', 'modulefields.scope', 'Scope', '100', 'true', 'left', '', '', 'select', 'SELECT `id` as id, `descrp` as valor FROM `scope`', '(SELECT CONCAT(`id`, '' - '' , `descrp`) as valor FROM `scope` where scope.id = modulefields.scope)', NULL),
('parametros.descrp', 'descrp', 'parametros.descrp', 'Descripci&oacute;n', '100', 'true', 'left', '', '', 'text', '', '', 'Valor para guia del administrador'),
('parametros.id', 'id', 'parametros.id', 'Id', '100', 'true', 'left', '', '', 'text', '', '', 'Id del parametro'),
('parametros.valor', 'valor', 'parametros.valor', 'Valor', '100', 'true', 'left', '', '', 'text', '', '', 'Valor del parametro'),
('user.description', 'description', 'user.description', 'Descripcion', '100', 'true', 'left', 'N', '', 'text', '', '', ''),
('user.email', 'email', 'user.email', 'Mail', '100', 'true', 'left', 'N', '', 'text', '', '', 'example@example.com'),
('user.id', 'id', 'user.id', 'Id', '100', 'true', 'left', 'S', '20', 'text', '', '', ''),
('user.internal_id', 'internal_id', 'user.internal_id', 'Id interno', '100', 'true', 'left', 'N', '', 'text', '', '', ''),
('user.lang', 'lang', 'user.lang', 'Lenguaje', '50', 'true', 'left', '', '', 'select', 'SELECT `id` as id,`descrp` as valor FROM `languajes`', '(SELECT CONCAT(`id`, '' - '' , `descrp`) as valor FROM `languajes` where languajes.id = user.lang)', ''),
('user.login', 'login', 'user.login', 'Login', '100', 'true', 'left', 'N', '100', 'text', '', '', ''),
('user.name', 'name', 'user.name', 'Nombre', '100', 'true', 'left', 'N', '100', 'text', '', '', 'Nombre'),
('user.password', 'password', 'user.password', 'Password', '100', 'true', 'left', 'N', '', 'text', '', '', 'Password'),
('user.surname', 'surname', 'user.surname', 'Apellido', '100', 'true', 'left', 'N', '100', 'text', '', '', 'Apellido'),
('user.telephone', 'telephone', 'user.telephone', 'Telefono', '100', 'true', 'left', 'N', '', 'text', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `description`) VALUES
(1, 'root', 'Total access'),
(2, 'supervisor', 'Supervisor de consolidadores');

-- --------------------------------------------------------

--
-- Table structure for table `group_paperwork`
--

CREATE TABLE IF NOT EXISTS `group_paperwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(150) NOT NULL,
  `paperwork_member` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `group_paperwork`
--

INSERT INTO `group_paperwork` (`id`, `name`, `description`, `paperwork_member`) VALUES
(3, 'Todos', 'todos', '1');

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE IF NOT EXISTS `group_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=507 ;

--
-- Dumping data for table `group_permission`
--

INSERT INTO `group_permission` (`id`, `id_group`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(271, 1, 28),
(272, 1, 29),
(493, 1, 55),
(492, 1, 50),
(491, 1, 49),
(490, 1, 48),
(489, 1, 47),
(485, 1, 39),
(486, 1, 40),
(487, 1, 41),
(488, 1, 42),
(494, 1, 56),
(495, 2, 2),
(496, 2, 29),
(497, 2, 1),
(498, 2, 29),
(499, 2, 47),
(500, 2, 48),
(501, 2, 49),
(502, 2, 50),
(503, 1, 57),
(504, 1, 58),
(505, 1, 59),
(506, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `includes`
--

CREATE TABLE IF NOT EXISTS `includes` (
  `IdInclude` int(11) NOT NULL AUTO_INCREMENT,
  `IdModulo` varchar(50) NOT NULL,
  `Path` varchar(800) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Orden` int(11) NOT NULL,
  PRIMARY KEY (`IdInclude`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `includes`
--

INSERT INTO `includes` (`IdInclude`, `IdModulo`, `Path`, `Type`, `Orden`) VALUES
(14, 'section_list', 'themes/default/modules/section_list/configs/default.conf.php', 'php', 24),
(15, 'section_list', 'themes/default/modules/section_list/css/default.css', 'css', 25),
(16, 'section_list', 'themes/default/modules/section_list/js/section_list.js', 'js', 26),
(17, 'section_list', 'themes/default/modules/section_list/js/section_list_fancybox.js', 'js', 27),
(25, 'module_list', 'css/default.css', 'css', 25),
(26, 'module_list', 'js/generic_list_generator.js.php', 'js', 26),
(27, 'module_list', 'js/generic_fancybox.js', 'js', 27),
(28, 'module_list', 'libs/js/jquery.json.js', 'js', 28),
(29, 'module_list', 'libs/js/jquery.base64.js', 'js', 29),
(30, 'GENERIC', 'libs/js/ajquery1.8.2.min.js', 'js', 1),
(31, 'GENERIC', 'libs/js/bjquery-ui.custom.min.js', 'js', 2),
(32, 'GENERIC', 'libs/js/jixedbar.0.5.js', 'js', 3),
(34, 'GENERIC', 'libs/js/jquery.calculator.min.js', 'js', 5),
(35, 'GENERIC', 'libs/js/ldatePicker.js', 'js', 6),
(36, 'GENERIC', 'libs/js/zdefault.js', 'js', 7),
(41, 'GENERIC', 'css/datePicker.css', 'css', 12),
(42, 'GENERIC', 'css/default.css', 'css', 13),
(43, 'GENERIC', 'css/fancybox.css', 'css', 14),
(44, 'GENERIC', 'css/flexigrid.css', 'css', 15),
(45, 'GENERIC', 'css/jx.bar.css', 'css', 16),
(46, 'GENERIC', 'css/reset.css', 'css', 17),
(47, 'GENERIC', 'css/screen.css', 'css', 18),
(48, 'GENERIC', 'js/a_highcharts.js', 'js', 19),
(49, 'GENERIC', 'js/default_theme.js', 'js', 20),
(50, 'GENERIC', 'js/exporting.js', 'js', 21),
(51, 'GENERIC', 'js/flexigrid.js', 'js', 22),
(52, 'GENERIC', 'js/jquery.fancybox.js', 'js', 23),
(55, 'fields_list', 'js/generic_list_generator.js.php', 'js', 26),
(56, 'fields_list', 'js/generic_fancybox.js', 'js', 27),
(57, 'fields_list', 'libs/js/jquery.json.js', 'js', 28),
(58, 'fields_list', 'libs/js/jquery.base64.js', 'js', 29),
(60, 'moduleFields_list', 'css/default2.css', 'css', 25),
(61, 'moduleFields_list', 'js/generic_list_generator.js.php', 'js', 26),
(62, 'moduleFields_list', 'js/generic_fancybox.js', 'js', 27),
(63, 'moduleFields_list', 'libs/js/jquery.json.js', 'js', 28),
(64, 'moduleFields_list', 'libs/js/jquery.base64.js', 'js', 29),
(65, 'menu_list', 'js/generic_list_generator.js.php', 'js', 26),
(66, 'menu_list', 'js/generic_fancybox.js', 'js', 27),
(68, 'menu_list', 'css/default2.css', 'css', 25),
(69, 'menu_list', 'libs/js/jquery.json.js', 'js', 28),
(70, 'menu_list', 'libs/js/jquery.base64.js', 'js', 29),
(71, 'miembros', 'libs/js/jquery.base64.js', 'js', 29),
(72, 'miembros', 'libs/js/jquery.json.js', 'js', 28),
(73, 'miembros', 'css/default2.css', 'css', 25),
(74, 'miembros', 'js/generic_fancybox.js', 'js', 27),
(75, 'miembros', 'js/generic_list_generator.js.php', 'js', 26),
(76, 'lideres', 'libs/js/jquery.base64.js', 'js', 29),
(77, 'lideres', 'libs/js/jquery.json.js', 'js', 28),
(78, 'lideres', 'css/default2.css', 'css', 25),
(79, 'lideres', 'js/generic_fancybox.js', 'js', 27),
(80, 'lideres', 'js/generic_list_generator.js.php', 'js', 26),
(81, 'users_list', 'libs/js/jquery.base64.js', 'js', 29),
(82, 'users_list', 'libs/js/jquery.json.js', 'js', 28),
(83, 'users_list', 'css/default2.css', 'css', 25),
(84, 'users_list', 'js/generic_fancybox.js', 'js', 27),
(85, 'users_list', 'js/generic_list_generator.js.php', 'js', 26),
(86, 'group_permission', 'libs/js/jquery.base64.js', 'js', 29),
(87, 'group_permission', 'libs/js/jquery.json.js', 'js', 28),
(88, 'group_permission', 'css/default2.css', 'css', 25),
(89, 'group_permission', 'js/generic_fancybox.js', 'js', 27),
(90, 'group_permission', 'js/generic_list_generator.js.php', 'js', 26),
(91, 'group_list', 'libs/js/jquery.base64.js', 'js', 29),
(92, 'group_list', 'libs/js/jquery.json.js', 'js', 28),
(93, 'group_list', 'css/default2.css', 'css', 25),
(94, 'group_list', 'js/generic_fancybox.js', 'js', 27),
(95, 'group_list', 'js/generic_list_generator.js.php', 'js', 26),
(96, 'parametros', 'libs/js/jquery.base64.js', 'js', 29),
(97, 'parametros', 'libs/js/jquery.json.js', 'js', 28),
(98, 'parametros', 'css/default2.css', 'css', 25),
(99, 'parametros', 'js/generic_fancybox.js', 'js', 27),
(100, 'parametros', 'js/generic_list_generator.js.php', 'js', 26),
(101, 'includes', 'libs/js/jquery.base64.js', 'js', 29),
(102, 'includes', 'libs/js/jquery.json.js', 'js', 28),
(103, 'includes', 'css/default2.css', 'css', 25),
(104, 'includes', 'js/generic_fancybox.js', 'js', 27),
(105, 'includes', 'js/generic_list_generator.js.php', 'js', 26),
(106, 'languajevar', 'js/generic_list_generator.js.php', 'js', 26),
(107, 'languajevar', 'js/generic_fancybox.js', 'js', 27),
(108, 'languajevar', 'css/default2.css', 'css', 25),
(109, 'languajevar', 'libs/js/jquery.json.js', 'js', 28),
(110, 'languajevar', 'libs/js/jquery.base64.js', 'js', 29),
(111, 'cargarmistrabajos', 'js/generic_list_generator.js.php', 'js', 26),
(112, 'cargarmistrabajos', 'js/generic_fancybox.js', 'js', 27),
(113, 'cargarmistrabajos', 'css/default2.css', 'css', 25),
(114, 'cargarmistrabajos', 'libs/js/jquery.json.js', 'js', 28),
(115, 'cargarmistrabajos', 'libs/js/jquery.base64.js', 'js', 29),
(116, 'cargarmistrabajos', 'libs/js/ldatePicker.js', 'js', 30);

-- --------------------------------------------------------

--
-- Table structure for table `languajes`
--

CREATE TABLE IF NOT EXISTS `languajes` (
  `id` varchar(3) NOT NULL,
  `descrp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languajes`
--

INSERT INTO `languajes` (`id`, `descrp`) VALUES
('eng', 'English'),
('es', 'Español');

-- --------------------------------------------------------

--
-- Table structure for table `languajevar`
--

CREATE TABLE IF NOT EXISTS `languajevar` (
  `idVar` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `languaje` varchar(3) NOT NULL,
  `descrp` varchar(8000) NOT NULL,
  `observ` varchar(8000) NOT NULL,
  PRIMARY KEY (`idVar`,`module`,`languaje`),
  KEY `languaje` (`languaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languajevar`
--

INSERT INTO `languajevar` (`idVar`, `module`, `languaje`, `descrp`, `observ`) VALUES
('btnSave', 'GENERIC', 'es', 'Guardar', ''),
('btnSaveClose', 'GENERIC', 'es', 'Guardar y cerrar', ''),
('btnSaveContinue', 'GENERIC', 'es', 'Guardar y continuar', ''),
('build_module', 'MENU', 'es', 'Modulo de construcciòn', 'punto de submenu de modulo de construcciòn'),
('cargarmistrabajos', 'MENU', 'es', 'Mis trabajos', 'Punto de submenu'),
('catalogos', 'MENU', 'es', 'Catalogos', 'Punto de submenu'),
('copy_item', 'GENERIC', 'es', 'Copiar', ''),
('del', 'GENERIC', 'es', 'Borrar', ''),
('deleteThisItem', 'GENERIC', 'es', '¿Està seguro que desea borrar el item ', ''),
('Description', 'GENERIC', 'es', 'Descripciòn', ''),
('developer', 'MENU', 'es', 'Diseñador de sistema', 'punto de menu de diseño de sistema'),
('edit', 'GENERIC', 'es', 'Editar', ''),
('fields_list', 'MENU', 'es', 'Lista de campos', 'Punto de submenu'),
('group_list', 'MENU', 'es', 'Lista de grupos', 'punto de submenu de modulo de construcciòn'),
('group_permission', 'MENU', 'es', 'Relaciòn Grupos - Menù', 'punto de submenu de modulo de construcciòn'),
('includes', 'MENU', 'es', 'Includes', 'punto de submenu de modulo de construcciòn'),
('languajevar', 'MENU', 'es', 'Variables de lenguaje', 'punto de submenu de modulo de construccin00270020style = '),
('lideres', 'MENU', 'es', 'Lìderes', 'Punto de submenu'),
('Logout', 'GENERIC', 'es', 'Logout', ''),
('menu_list', 'MENU', 'es', 'Lista de menùes', 'Punto de submenù'),
('miembros', 'MENU', 'es', 'Miembros', 'Punto de submenu'),
('moduleFields_list', 'MENU', 'es', 'Relaciòn Mòdulos - Campos', 'Punto de submenù'),
('module_list', 'MENU', 'es', 'Lista de mòdulos', 'Punto de submenu'),
('new_entry', 'GENERIC', 'es', 'Nuevo', ''),
('parametros', 'MENU', 'es', 'Par&aacute;metros', 'punto de submenu de modulo de construcciòn'),
('ReasonToLogout', 'GENERIC', 'es', '¿Cuàl es la razòn de salida del sistema?', ''),
('SelectAnItem', 'GENERIC', 'es', 'Debe seleccionar un item.', ''),
('users_list', 'MENU', 'es', 'Lista de usuarios', 'Punto de submenu'),
('user_management', 'MENU', 'es', 'Admin. de usuarios', 'Punto de menu de administraciòn de usuarios'),
('usuarios', 'MENU', 'es', 'Usuarios', 'Punto de submenu de administraciòn de usuarios');

-- --------------------------------------------------------

--
-- Table structure for table `lideres`
--

CREATE TABLE IF NOT EXISTS `lideres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) NOT NULL,
  `descrp` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lideres`
--

INSERT INTO `lideres` (`id`, `nombre`, `descrp`) VALUES
(1, 'Paulino Gonzalez', 'Pastor'),
(2, 'Haydee Montenegro', 'Pastora');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `table_name` varchar(64) NOT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`table_name`, `lastmodified`) VALUES
('tickets', '2013-09-23 14:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `login_logout`
--

CREATE TABLE IF NOT EXISTS `login_logout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `in_out` varchar(5) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reason` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logout_form`
--

CREATE TABLE IF NOT EXISTS `logout_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `logout_form`
--

INSERT INTO `logout_form` (`id`, `name`) VALUES
(3, 'SALIR DEL SISTEMA');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `id_user`, `id_group`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_org` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL DEFAULT '',
  `idParent` varchar(40) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_org`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_org`, `id`, `idParent`, `link`, `name`, `type`) VALUES
(28, 'developer', '', 'developer', 'developer', '0'),
(29, 'build_module', 'developer', 'build_module', 'Build Module', '1'),
(55, 'group_permission', 'build_module', 'group_permission', 'Grupo-Menu', '2'),
(47, 'catalogos', 'developer', 'catalogos', 'catalogos', '1'),
(48, 'lideres', 'catalogos', 'lideres', 'lideres', '2'),
(49, 'miembros', 'usuarios', 'miembros', 'miembros', '2'),
(50, 'users_list', 'usuarios', 'users_list', 'users_list', '2'),
(2, 'usuarios', 'user_management', 'usuarios', 'usuarios', '1'),
(1, 'user_management', '', 'user_management', 'user_management', '0'),
(39, 'module_list', 'build_module', 'module_list', 'Modules', '2'),
(40, 'menu_list', 'build_module', 'menu_list', 'Menues', '2'),
(41, 'fields_list', 'build_module', 'fields_list', 'Fields', '2'),
(42, 'moduleFields_list', 'build_module', 'moduleFields_list', 'Module - Fields', '2'),
(56, 'group_list', 'build_module', 'group_list', 'Grupos', '2'),
(57, 'parametros', 'catalogos', 'parametros', 'parametros', '2'),
(58, 'includes', 'build_module', 'includes', 'includes', '2'),
(59, 'languajevar', 'catalogos', 'languajevar', 'languajevar', '2'),
(60, 'cargarmistrabajos', 'build_module', 'cargarmistrabajos', 'Cargar mis trabajos', '2');

-- --------------------------------------------------------

--
-- Table structure for table `miembros`
--

CREATE TABLE IF NOT EXISTS `miembros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) NOT NULL,
  `fechaIng` date NOT NULL,
  `edad` int(11) NOT NULL,
  `fNac` date NOT NULL,
  `direccion` varchar(1000) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `lider` int(11) NOT NULL,
  `invitador` varchar(500) NOT NULL,
  `hsContacto` varchar(1000) NOT NULL,
  `consolidador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `miembros`
--

INSERT INTO `miembros` (`id`, `nombre`, `fechaIng`, `edad`, `fNac`, `direccion`, `tel`, `lider`, `invitador`, `hsContacto`, `consolidador`) VALUES
(2, 'daniel', '2013-12-20', 25, '1988-11-13', 'asdasd', '123123', 1, 'test', '88', NULL),
(3, 'test nombre', '0000-00-00', 25, '0000-00-00', 'test dire', '123123', 0, 'test inv', 'asd asd', NULL),
(4, 'test nombre', '2013-11-13', 25, '0000-00-00', 'test dire', '123123', 0, 'test inv', 'asd asd', NULL),
(5, 'test nombre', '2013-11-13', 25, '1988-11-13', 'test dire', '123123', 0, 'test inv', 'asd asd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mistrabajos`
--

CREATE TABLE IF NOT EXISTS `mistrabajos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `imagen` varchar(8000) NOT NULL,
  `comentario` varchar(8000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `mistrabajos`
--

INSERT INTO `mistrabajos` (`id`, `fecha`, `imagen`, `comentario`) VALUES
(1, '2014-02-05', 'd79712d6d9595f661588582556ae6eec_24x23.png', 'BASE Ut wisi enim ad minim veniam, quis nostrud exercitation vel illum dolore eu feugiat nulla facilisis. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros'),
(2, '2014-02-26', 'b6906e8d4d46223fb50e9646cc4d4426_120x120.jpg', 'BASE Nam liber tempor cum soluta nobis eleifend option congue nihil. Claritas est etiam processus dynamicus, qui sequitur mutationem. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros'),
(3, '2014-02-11', '0ccb6ff15783bcbd122c0184e1fe0eab_120x117.jpg', 'BASE Claritas est etiam processus dynamicus, qui sequitur mutationem. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros. Claritas est etiam processus dynamicus, qui sequitur mutationem.'),
(23, '2014-02-03', '23.jpg', ' asd asd sad sad asd');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `IdModulo` varchar(50) NOT NULL,
  `From` varchar(8000) DEFAULT NULL,
  `TableBase` varchar(50) DEFAULT NULL,
  `dblClickFn` varchar(100) NOT NULL,
  PRIMARY KEY (`IdModulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`IdModulo`, `From`, `TableBase`, `dblClickFn`) VALUES
('cargarmistrabajos', '', 'mistrabajos', ''),
('fields_list', '', 'fields', ''),
('group_list', '', 'group', ''),
('group_permission', '', 'group_permission', ''),
('includes', '', 'includes', ''),
('languajevar', '', 'languajevar', ''),
('lideres', '', 'lideres', ''),
('menu_list', '', 'menu', ''),
('miembros', '', 'miembros', 'true'),
('moduleFields_list', '', 'modulefields', ''),
('module_list', NULL, 'module', ''),
('parametros', '', 'parametros', ''),
('resource_list', NULL, 'resource', ''),
('users_list', '', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `modulefields`
--

CREATE TABLE IF NOT EXISTS `modulefields` (
  `idmodulo` varchar(50) NOT NULL,
  `idcampo` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  `scope` varchar(10) NOT NULL,
  `hide` varchar(10) NOT NULL,
  PRIMARY KEY (`idmodulo`,`idcampo`,`scope`),
  KEY `idCampo` (`idcampo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modulefields`
--

INSERT INTO `modulefields` (`idmodulo`, `idcampo`, `orden`, `scope`, `hide`) VALUES
('cargarmistrabajos', 'mistrabajos.comentario', 3, 'ED', ''),
('cargarmistrabajos', 'mistrabajos.comentario', 3, 'GR', ''),
('cargarmistrabajos', 'mistrabajos.comentario', 3, 'NR', ''),
('cargarmistrabajos', 'mistrabajos.fecha', 1, 'ED', ''),
('cargarmistrabajos', 'mistrabajos.fecha', 1, 'GR', ''),
('cargarmistrabajos', 'mistrabajos.fecha', 1, 'NR', ''),
('cargarmistrabajos', 'mistrabajos.id', 0, 'ED', ''),
('cargarmistrabajos', 'mistrabajos.id', 0, 'GR', ''),
('cargarmistrabajos', 'mistrabajos.id', 0, 'NR', ''),
('cargarmistrabajos', 'mistrabajos.id', 0, 'PK', ''),
('cargarmistrabajos', 'mistrabajos.imagen', 2, 'GR', ''),
('fields_list', 'fields.align', 7, 'ED', 'false'),
('fields_list', 'fields.align', 7, 'GR', 'false'),
('fields_list', 'fields.align', 7, 'NR', 'false'),
('fields_list', 'fields.campofisico', 3, 'ED', 'false'),
('fields_list', 'fields.campofisico', 3, 'GR', 'false'),
('fields_list', 'fields.campofisico', 3, 'NR', 'false'),
('fields_list', 'fields.display', 4, 'ED', 'false'),
('fields_list', 'fields.display', 4, 'GR', 'false'),
('fields_list', 'fields.display', 4, 'NR', 'false'),
('fields_list', 'fields.idcampo', 1, 'ED', 'false'),
('fields_list', 'fields.idcampo', 1, 'GR', 'false'),
('fields_list', 'fields.idcampo', 1, 'NR', 'false'),
('fields_list', 'fields.idcampo', 0, 'PK', 'false'),
('fields_list', 'fields.mask', 13, 'ED', 'false'),
('fields_list', 'fields.mask', 13, 'GR', 'false'),
('fields_list', 'fields.mask', 13, 'NR', 'false'),
('fields_list', 'fields.maxlenght', 9, 'ED', 'false'),
('fields_list', 'fields.maxlenght', 9, 'GR', 'false'),
('fields_list', 'fields.maxlenght', 9, 'NR', 'false'),
('fields_list', 'fields.nombreenform', 2, 'ED', 'false'),
('fields_list', 'fields.nombreenform', 2, 'GR', 'false'),
('fields_list', 'fields.nombreenform', 2, 'NR', 'false'),
('fields_list', 'fields.onlyNum', 8, 'ED', 'false'),
('fields_list', 'fields.onlyNum', 8, 'GR', 'false'),
('fields_list', 'fields.onlyNum', 8, 'NR', 'false'),
('fields_list', 'fields.sortable', 6, 'ED', 'false'),
('fields_list', 'fields.sortable', 6, 'GR', 'false'),
('fields_list', 'fields.sortable', 6, 'NR', 'false'),
('fields_list', 'fields.sql', 11, 'ED', 'false'),
('fields_list', 'fields.sql', 11, 'GR', 'false'),
('fields_list', 'fields.sql', 11, 'NR', 'false'),
('fields_list', 'fields.sqlmostardescrp', 12, 'ED', 'false'),
('fields_list', 'fields.sqlmostardescrp', 12, 'GR', 'false'),
('fields_list', 'fields.sqlmostardescrp', 12, 'NR', 'false'),
('fields_list', 'fields.tipocampo', 10, 'ED', 'false'),
('fields_list', 'fields.tipocampo', 10, 'GR', 'false'),
('fields_list', 'fields.tipocampo', 10, 'NR', 'false'),
('fields_list', 'fields.width', 5, 'ED', 'false'),
('fields_list', 'fields.width', 5, 'GR', 'false'),
('fields_list', 'fields.width', 5, 'NR', 'false'),
('group_list', 'group.description', 2, 'ED', ''),
('group_list', 'group.description', 2, 'GR', 'false'),
('group_list', 'group.description', 2, 'NR', ''),
('group_list', 'group.id', 0, 'ED', ''),
('group_list', 'group.id', 0, 'GR', 'true'),
('group_list', 'group.id', 0, 'NR', ''),
('group_list', 'group.id', 0, 'PK', ''),
('group_list', 'group.name', 1, 'ED', ''),
('group_list', 'group.name', 1, 'GR', 'false'),
('group_list', 'group.name', 1, 'NR', ''),
('group_permission', 'group_permission.id', 0, 'ED', ''),
('group_permission', 'group_permission.id', 0, 'GR', 'false'),
('group_permission', 'group_permission.id', 0, 'NR', ''),
('group_permission', 'group_permission.id', 0, 'PK', 'false'),
('group_permission', 'group_permission.id_group', 1, 'ED', ''),
('group_permission', 'group_permission.id_group', 1, 'GR', 'false'),
('group_permission', 'group_permission.id_group', 1, 'NR', ''),
('group_permission', 'group_permission.id_menu', 2, 'ED', ''),
('group_permission', 'group_permission.id_menu', 2, 'GR', 'false'),
('group_permission', 'group_permission.id_menu', 2, 'NR', ''),
('includes', 'includes.IdInclude', 0, 'ED', ''),
('includes', 'includes.IdInclude', 0, 'GR', ''),
('includes', 'includes.IdInclude', 0, 'NR', ''),
('includes', 'includes.IdInclude', 0, 'PK', ''),
('includes', 'includes.idmodulo', 1, 'ED', ''),
('includes', 'includes.idmodulo', 1, 'GR', ''),
('includes', 'includes.idmodulo', 1, 'NR', ''),
('includes', 'includes.orden', 2, 'ED', ''),
('includes', 'includes.orden', 2, 'GR', ''),
('includes', 'includes.orden', 2, 'NR', ''),
('includes', 'includes.path', 3, 'ED', ''),
('includes', 'includes.path', 3, 'GR', ''),
('includes', 'includes.path', 3, 'NR', ''),
('includes', 'includes.type', 4, 'ED', ''),
('includes', 'includes.type', 4, 'GR', ''),
('includes', 'includes.type', 4, 'NR', ''),
('languajevar', 'languajevar.descrp', 1, 'ED', ''),
('languajevar', 'languajevar.descrp', 1, 'GR', ''),
('languajevar', 'languajevar.descrp', 1, 'NR', ''),
('languajevar', 'languajevar.idvar', 0, 'ED', ''),
('languajevar', 'languajevar.idvar', 0, 'GR', ''),
('languajevar', 'languajevar.idvar', 0, 'NR', ''),
('languajevar', 'languajevar.idvar', 0, 'PK', ''),
('languajevar', 'languajevar.languaje', 2, 'ED', ''),
('languajevar', 'languajevar.languaje', 2, 'GR', ''),
('languajevar', 'languajevar.languaje', 2, 'NR', ''),
('languajevar', 'languajevar.module', 3, 'ED', ''),
('languajevar', 'languajevar.module', 3, 'GR', ''),
('languajevar', 'languajevar.module', 3, 'NR', ''),
('languajevar', 'languajevar.observ', 4, 'ED', ''),
('languajevar', 'languajevar.observ', 4, 'GR', ''),
('languajevar', 'languajevar.observ', 4, 'NR', ''),
('lideres', 'lideres.descrp', 2, 'GR', 'false'),
('lideres', 'lideres.id', 0, 'GR', 'false'),
('lideres', 'lideres.id', 0, 'PK', 'false'),
('lideres', 'lideres.nombre', 1, 'GR', 'false'),
('menu_list', 'menu.id', 2, 'ED', 'false'),
('menu_list', 'menu.id', 2, 'GR', 'false'),
('menu_list', 'menu.id', 2, 'NR', 'false'),
('menu_list', 'menu.idparent', 3, 'ED', 'false'),
('menu_list', 'menu.idparent', 3, 'GR', 'false'),
('menu_list', 'menu.idparent', 3, 'NR', 'false'),
('menu_list', 'menu.id_org', 0, 'ED', 'true'),
('menu_list', 'menu.id_org', 0, 'GR', 'true'),
('menu_list', 'menu.id_org', 0, 'NR', 'true'),
('menu_list', 'menu.id_org', 0, 'PK', 'true'),
('menu_list', 'menu.link', 4, 'ED', 'false'),
('menu_list', 'menu.link', 4, 'GR', 'false'),
('menu_list', 'menu.link', 4, 'NR', 'false'),
('menu_list', 'menu.name', 5, 'ED', 'false'),
('menu_list', 'menu.name', 5, 'GR', 'false'),
('menu_list', 'menu.name', 5, 'NR', 'false'),
('menu_list', 'menu.type', 6, 'ED', 'false'),
('menu_list', 'menu.type', 6, 'GR', 'false'),
('menu_list', 'menu.type', 6, 'NR', 'false'),
('miembros', 'miembros.consolidador', 14, 'ED', ''),
('miembros', 'miembros.consolidador', 14, 'GR', ''),
('miembros', 'miembros.consolidador', 14, 'NR', ''),
('miembros', 'miembros.direccion', 5, 'ED', 'false'),
('miembros', 'miembros.direccion', 5, 'GR', 'false'),
('miembros', 'miembros.direccion', 5, 'NR', 'false'),
('miembros', 'miembros.edad', 4, 'ED', 'false'),
('miembros', 'miembros.edad', 4, 'GR', 'false'),
('miembros', 'miembros.edad', 4, 'NR', 'false'),
('miembros', 'miembros.fechaIng', 2, 'ED', 'false'),
('miembros', 'miembros.fechaIng', 2, 'GR', 'false'),
('miembros', 'miembros.fechaIng', 2, 'NR', 'false'),
('miembros', 'miembros.fnac', 3, 'ED', 'false'),
('miembros', 'miembros.fnac', 3, 'GR', 'false'),
('miembros', 'miembros.fnac', 3, 'NR', 'false'),
('miembros', 'miembros.hscontacto', 9, 'ED', 'false'),
('miembros', 'miembros.hscontacto', 9, 'GR', 'false'),
('miembros', 'miembros.hscontacto', 9, 'NR', 'false'),
('miembros', 'miembros.id', 0, 'ED', 'false'),
('miembros', 'miembros.id', 0, 'GR', 'false'),
('miembros', 'miembros.id', 0, 'NR', 'false'),
('miembros', 'miembros.id', 0, 'PK', 'false'),
('miembros', 'miembros.invitador', 8, 'ED', 'false'),
('miembros', 'miembros.invitador', 8, 'GR', 'false'),
('miembros', 'miembros.invitador', 8, 'NR', 'false'),
('miembros', 'miembros.lider', 7, 'ED', 'false'),
('miembros', 'miembros.lider', 7, 'GR', 'false'),
('miembros', 'miembros.lider', 7, 'NR', 'false'),
('miembros', 'miembros.nombre', 1, 'ED', 'false'),
('miembros', 'miembros.nombre', 1, 'GR', 'false'),
('miembros', 'miembros.nombre', 1, 'NR', 'false'),
('miembros', 'miembros.tel', 6, 'ED', 'false'),
('miembros', 'miembros.tel', 6, 'GR', 'false'),
('miembros', 'miembros.tel', 6, 'NR', 'false'),
('moduleFields_list', 'modulefields.idcampo', 2, 'ED', 'false'),
('moduleFields_list', 'modulefields.idcampo', 2, 'GR', 'false'),
('moduleFields_list', 'modulefields.idcampo', 2, 'NR', 'false'),
('moduleFields_list', 'modulefields.idcampo', 2, 'PK', 'false'),
('moduleFields_list', 'modulefields.idmodulo', 1, 'ED', 'false'),
('moduleFields_list', 'modulefields.idmodulo', 1, 'GR', 'false'),
('moduleFields_list', 'modulefields.idmodulo', 1, 'NR', 'false'),
('moduleFields_list', 'modulefields.idmodulo', 1, 'PK', 'false'),
('moduleFields_list', 'modulefields.orden', 5, 'ED', 'false'),
('moduleFields_list', 'modulefields.orden', 5, 'GR', 'false'),
('moduleFields_list', 'modulefields.orden', 5, 'NR', 'false'),
('moduleFields_list', 'modulefields.scope', 4, 'ED', 'false'),
('moduleFields_list', 'modulefields.scope', 4, 'GR', 'false'),
('moduleFields_list', 'modulefields.scope', 4, 'NR', 'false'),
('moduleFields_list', 'modulefields.scope', 4, 'PK', 'false'),
('module_list', 'module.dblclickfn', 3, 'ED', 'false'),
('module_list', 'module.dblclickfn', 3, 'GR', 'false'),
('module_list', 'module.dblclickfn', 3, 'NR', 'false'),
('module_list', 'module.from', 1, 'ED', ''),
('module_list', 'module.from', 1, 'GR', 'false'),
('module_list', 'module.from', 1, 'NR', ''),
('module_list', 'module.idmodulo', 0, 'ED', ''),
('module_list', 'module.idmodulo', 0, 'GR', 'false'),
('module_list', 'module.idmodulo', 0, 'NR', ''),
('module_list', 'module.idmodulo', 0, 'PK', ''),
('module_list', 'module.tablebase', 2, 'ED', ''),
('module_list', 'module.tablebase', 2, 'GR', 'false'),
('module_list', 'module.tablebase', 2, 'NR', ''),
('parametros', 'parametros.descrp', 2, 'ED', ''),
('parametros', 'parametros.descrp', 2, 'GR', ''),
('parametros', 'parametros.descrp', 2, 'NR', ''),
('parametros', 'parametros.id', 0, 'ED', ''),
('parametros', 'parametros.id', 0, 'GR', ''),
('parametros', 'parametros.id', 0, 'NR', ''),
('parametros', 'parametros.id', 0, 'PK', ''),
('parametros', 'parametros.valor', 1, 'ED', ''),
('parametros', 'parametros.valor', 1, 'GR', ''),
('parametros', 'parametros.valor', 1, 'NR', ''),
('users_list', 'user.description', 7, 'ED', ''),
('users_list', 'user.description', 7, 'GR', 'false'),
('users_list', 'user.description', 7, 'NR', ''),
('users_list', 'user.email', 6, 'ED', ''),
('users_list', 'user.email', 6, 'GR', 'false'),
('users_list', 'user.email', 6, 'NR', ''),
('users_list', 'user.id', 0, 'ED', ''),
('users_list', 'user.id', 0, 'GR', 'false'),
('users_list', 'user.id', 0, 'NR', ''),
('users_list', 'user.id', 0, 'PK', 'false'),
('users_list', 'user.internal_id', 1, 'ED', ''),
('users_list', 'user.internal_id', 1, 'GR', 'false'),
('users_list', 'user.internal_id', 1, 'NR', ''),
('users_list', 'user.lang', 9, 'ED', ''),
('users_list', 'user.lang', 9, 'GR', 'false'),
('users_list', 'user.lang', 9, 'NR', ''),
('users_list', 'user.login', 2, 'ED', ''),
('users_list', 'user.login', 2, 'GR', 'false'),
('users_list', 'user.login', 2, 'NR', ''),
('users_list', 'user.name', 3, 'ED', ''),
('users_list', 'user.name', 3, 'GR', 'false'),
('users_list', 'user.name', 3, 'NR', ''),
('users_list', 'user.password', 5, 'ED', ''),
('users_list', 'user.password', 5, 'GR', 'false'),
('users_list', 'user.password', 5, 'NR', ''),
('users_list', 'user.surname', 4, 'ED', ''),
('users_list', 'user.surname', 4, 'GR', 'false'),
('users_list', 'user.surname', 4, 'NR', ''),
('users_list', 'user.telephone', 8, 'ED', ''),
('users_list', 'user.telephone', 8, 'GR', 'false'),
('users_list', 'user.telephone', 8, 'NR', '');

-- --------------------------------------------------------

--
-- Table structure for table `paperwork`
--

CREATE TABLE IF NOT EXISTS `paperwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_machine` int(11) NOT NULL,
  `Id_order` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(5) NOT NULL,
  `reset_counter` int(11) NOT NULL,
  `nr_of_tickets` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `max_waiting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `paperwork`
--

INSERT INTO `paperwork` (`id`, `id_machine`, `Id_order`, `id_parent`, `name`, `description`, `priority`, `title`, `reset_counter`, `nr_of_tickets`, `count`, `max_waiting`) VALUES
(1, 1, 1, 0, 'Turnos', 'turnos', 1, 'R', 0, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
  `id` varchar(100) NOT NULL,
  `valor` varchar(8000) NOT NULL,
  `descrp` varchar(8000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parametros`
--

INSERT INTO `parametros` (`id`, `valor`, `descrp`) VALUES
('TituloHome', 'Este es el titulo traido dede la bdd', 'Titulo de la home');

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE IF NOT EXISTS `scope` (
  `id` varchar(10) NOT NULL,
  `descrp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`id`, `descrp`) VALUES
('ED', 'Edici&oacute;n'),
('GR', 'Grilla'),
('NR', 'Nuevo Registro'),
('PK', 'Primary Key');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `internal_id` varchar(150) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='esto es por ejemplo: un cajero del banco' AUTO_INCREMENT=115 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `internal_id`, `login`, `name`, `surname`, `password`, `email`, `description`, `telephone`, `lang`, `active`) VALUES
(1, '', 'root', 'root', 'Root', 'admin', 'admin@admin.com', 'Admin', '47235004', 'es', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `languajevar`
--
ALTER TABLE `languajevar`
  ADD CONSTRAINT `languajevar_ibfk_1` FOREIGN KEY (`languaje`) REFERENCES `languajes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `languajevar_ibfk_2` FOREIGN KEY (`languaje`) REFERENCES `languajes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modulefields`
--
ALTER TABLE `modulefields`
  ADD CONSTRAINT `modulefields_ibfk_1` FOREIGN KEY (`idmodulo`) REFERENCES `module` (`IdModulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulefields_ibfk_2` FOREIGN KEY (`idcampo`) REFERENCES `fields` (`idcampo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulefields_ibfk_3` FOREIGN KEY (`idmodulo`) REFERENCES `module` (`IdModulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulefields_ibfk_4` FOREIGN KEY (`idcampo`) REFERENCES `fields` (`idcampo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
