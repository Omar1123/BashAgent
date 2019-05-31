-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2019 a las 05:11:07
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `TrackPeople`
--
CREATE DATABASE IF NOT EXISTS `Agent` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Agent`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_apis`
--

CREATE TABLE `server_apis` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_apis`
--

INSERT INTO `server_apis` (`id`, `name`, `ip`, `description`, `date`) VALUES
('62253806-828b-11e9-a290-3c075437c465', 'Ubuntu', 'http://192.168.1.13:3050', 'Ubuntu server testing', '2019-05-29'),
('9ac177b6-8343-11e9-a74c-3c075437c465', 'Parrot Security', 'http://192.168.1.17:3050', 'Parrot Security for network services', '2019-05-30'),
('c3407068-81c0-11e9-86fa-3c075437c465', 'Kali Linux', 'http://192.168.1.20:3050', 'Hacking Machine for services running', '2019-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_cpu`
--

CREATE TABLE `server_cpu` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `server_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_cpu`
--

INSERT INTO `server_cpu` (`id`, `server_id`, `name`) VALUES
('19e24c8d-af3a-4d85-a370-91a5d3dd3565', '62253806-828b-11e9-a290-3c075437c465', ''),
('23147f1b-fcf0-4111-82cc-5fb107a7db5c', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 0.6  3.3   652   641 root     Ssl+ /usr/lib/xorg/Xorg :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch'),
('4baa7ed5-4a22-4e7f-9573-66ba8c0b19c4', 'c3407068-81c0-11e9-86fa-3c075437c465', ''),
('56238c49-53b3-4d26-a7de-98ea2ffaf92a', '62253806-828b-11e9-a290-3c075437c465', '%CPU %MEM   PID  PPID USER     STAT COMMAND'),
('6702de79-e7ad-4835-8a2c-f8cc61e23215', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 0.2  2.7  1573  1332 root     Sl+  node main.js'),
('68f8d81f-926b-4663-8c3f-bcc34182fa6b', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 1.2 15.2   908   810 root     Rl+  /usr/bin/gnome-shell'),
('6fc17fa6-0f9d-40fb-9dcc-d54f5b6f1b6d', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 0.3  1.8   898   782 jake     Sl   nm-applet'),
('77d52b38-0342-492e-a2ab-7463e24878ab', '62253806-828b-11e9-a290-3c075437c465', ' 0.8  0.3   415     1 root     Ss   /lib/systemd/systemd-udevd'),
('7b8ea0aa-451f-43e4-9ca9-b93c41907f49', '62253806-828b-11e9-a290-3c075437c465', ' 0.1  2.2  1425  1405 jake     Sl+  node main.js'),
('948a9942-d704-4446-864e-9ccfbde138d2', 'c3407068-81c0-11e9-86fa-3c075437c465', '%CPU %MEM   PID  PPID USER     STAT COMMAND'),
('983a8cf7-1146-4b07-b723-b69c04873958', '9ac177b6-8343-11e9-a74c-3c075437c465', ''),
('9e1a38a8-15cb-478e-a6cd-79f47e19fb4d', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 0.3  2.0  1368   857 jake     Sl   mate-terminal'),
('a51c8752-820e-4505-96c0-81c2ef1c7746', '62253806-828b-11e9-a290-3c075437c465', ' 0.1  9.1  1117     1 mysql    Sl   /usr/sbin/mysqld --daemonize --pid-file=/run/mysqld/mysqld.pid'),
('a9b10296-b85d-4dbd-8635-3d96c1948209', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 0.5  2.1   671     1 root     Ssl  /usr/lib/packagekit/packagekitd'),
('abf7c104-6831-488e-9798-e63a58685b98', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 0.2  3.2   804   802 root     Sl+  /usr/lib/xorg/Xorg vt2 -displayfd 3 -auth /run/user/0/gdm/Xauthority -background none -noreset -keeptty -verbose 3'),
('b2e19790-e9b2-47b1-bc07-1d2890634848', '62253806-828b-11e9-a290-3c075437c465', ' 0.4  0.4     1     0 root     Ss   /sbin/init maybe-ubiquity'),
('b611832b-0780-49cf-aec6-ad7764772aa5', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 0.2  9.0   570   503 Debian-+ Sl+  /usr/bin/gnome-shell'),
('d48cbd57-fe42-4fc5-992f-457b928851c4', '9ac177b6-8343-11e9-a74c-3c075437c465', '%CPU %MEM   PID  PPID USER     STAT COMMAND'),
('df113058-b23c-4f88-845b-bf26c4f16d5a', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 0.1  1.6   853   782 jake     Sl   marco'),
('f5c7d93b-3259-4c05-a9ed-3df53791c49e', '62253806-828b-11e9-a290-3c075437c465', ' 0.1  1.2   806     1 root     Ssl  /usr/lib/snapd/snapd'),
('fd70bf86-a002-4e9c-8f4f-92fb000a74aa', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 0.2  2.3 12855  1375 jake     Sl+  node main.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_disk`
--

CREATE TABLE `server_disk` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `server_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_disk`
--

INSERT INTO `server_disk` (`id`, `server_id`, `name`) VALUES
('01839b49-8b42-4d1e-b17f-7dc98fabc0f5', 'c3407068-81c0-11e9-86fa-3c075437c465', 'tmpfs             204544     8968    195576   5% /run'),
('03da1514-870e-40df-8348-13753c076b5e', '9ac177b6-8343-11e9-a74c-3c075437c465', 'udev                 1010584        0     1010584   0% /dev'),
('0d033900-9e08-4c9f-93d4-d3b3be5960f6', 'c3407068-81c0-11e9-86fa-3c075437c465', 'udev             1004220        0   1004220   0% /dev'),
('1310e475-eb72-4239-a4de-3fdd8d94011a', '9ac177b6-8343-11e9-a74c-3c075437c465', ''),
('25b4a101-b8d9-44f1-8f48-f17872dca723', '62253806-828b-11e9-a290-3c075437c465', 'tmpfs             190100       0    190100   0% /run/user/1000'),
('2f3285d5-e21a-4bba-ab25-ab3679faecd1', '9ac177b6-8343-11e9-a74c-3c075437c465', '/dev/sda1           20192472 14924300     4219392  78% /'),
('4c0a7d6a-b2d1-4a21-9d23-c839d308680a', '62253806-828b-11e9-a290-3c075437c465', 'tmpfs             190104     940    189164   1% /run'),
('61eeeb4f-4b1d-4ec9-8cef-8e70fdceb817', 'c3407068-81c0-11e9-86fa-3c075437c465', 'tmpfs             204540       16    204524   1% /run/user/131'),
('64bc592f-4dd4-456f-b1b4-e866e1fff1cf', '62253806-828b-11e9-a290-3c075437c465', '/dev/sda2       21235896 4768500  15365624  24% /'),
('68feaa10-66cb-4dd7-84ae-b987cfb1544e', '62253806-828b-11e9-a290-3c075437c465', ''),
('6ac7f380-0cea-4039-b7c1-66c339ad5993', 'c3407068-81c0-11e9-86fa-3c075437c465', ''),
('6b66e4e6-b35a-4dbf-a72e-4c0cf30a0b84', '62253806-828b-11e9-a290-3c075437c465', 'tmpfs             950508       0    950508   0% /dev/shm'),
('6fe196b5-a029-4f8b-8d59-6bb74e5cc740', '9ac177b6-8343-11e9-a74c-3c075437c465', 'tmpfs                1026196        0     1026196   0% /sys/fs/cgroup'),
('8a10025a-417b-439c-8e35-8e282486ae2d', '62253806-828b-11e9-a290-3c075437c465', '/dev/loop1         93184   93184         0 100% /snap/core/6350'),
('8b4410d0-7edc-4cda-8ce8-9bd5e7776d03', 'c3407068-81c0-11e9-86fa-3c075437c465', 'tmpfs             204540       44    204496   1% /run/user/0'),
('9026319b-0f30-4341-ad4f-460e367a3f66', '9ac177b6-8343-11e9-a74c-3c075437c465', 'tmpfs                 205236       20      205216   1% /run/user/1000'),
('91682316-859d-43a3-9536-30c95c3388bc', 'c3407068-81c0-11e9-86fa-3c075437c465', 'tmpfs            1022700        0   1022700   0% /sys/fs/cgroup'),
('93263844-304e-46b6-8ad0-c48018d37c97', 'c3407068-81c0-11e9-86fa-3c075437c465', 'tmpfs            1022700        0   1022700   0% /dev/shm'),
('95ae3983-d75b-496b-9e0e-31940d076362', '62253806-828b-11e9-a290-3c075437c465', '/dev/loop0         90624   90624         0 100% /snap/core/6964'),
('975e703c-523b-4c95-832b-ab91fe99ff1c', '62253806-828b-11e9-a290-3c075437c465', 'tmpfs               5120       0      5120   0% /run/lock'),
('ae3df7f0-caec-466e-b6c2-de42fcff2599', '9ac177b6-8343-11e9-a74c-3c075437c465', 'tmpfs                1026196        0     1026196   0% /dev/shm'),
('b8b938e1-7a93-407a-a8ca-28a05b1ffe27', '9ac177b6-8343-11e9-a74c-3c075437c465', 'tmpfs                 205240     6032      199208   3% /run'),
('c0c503c4-b83a-4b41-8b7e-42279d6fa131', '62253806-828b-11e9-a290-3c075437c465', 'udev              920160       0    920160   0% /dev'),
('ddc1c960-747e-4c9c-b50b-76adeddcef18', 'c3407068-81c0-11e9-86fa-3c075437c465', '/dev/sda1       19911504 11393704   7483304  61% /'),
('e2245539-b1cd-430e-b882-aa4f45fa6d3b', '9ac177b6-8343-11e9-a74c-3c075437c465', 'tmpfs                   5120        4        5116   1% /run/lock'),
('e3c5b693-6ea8-4ddb-aca2-8fceb3d19a95', 'c3407068-81c0-11e9-86fa-3c075437c465', 'tmpfs               5120        0      5120   0% /run/lock'),
('fafc9ed3-0bf4-422e-a355-ceecc7f1150f', '62253806-828b-11e9-a290-3c075437c465', 'tmpfs             950508       0    950508   0% /sys/fs/cgroup');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_last_access`
--

CREATE TABLE `server_last_access` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `server_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_last_access`
--

INSERT INTO `server_last_access` (`id`, `server_id`, `name`) VALUES
('06e10cf4-ca9c-4763-9966-b37c04ce96d1', 'c3407068-81c0-11e9-86fa-3c075437c465', 'root     :1           :1               Tue May 28 22:56   still logged in'),
('13503fb9-dd94-4b95-a9c4-0bc6fd777815', '62253806-828b-11e9-a290-3c075437c465', 'jake     tty1                          Thu May 30 03:20 - crash  (00:04)'),
('300043a4-da9f-4bd1-936e-23450770b13c', '9ac177b6-8343-11e9-a74c-3c075437c465', 'jake     tty7         :0               Fri May 31 02:47   still logged in'),
('50d25fbf-e305-45a7-b5e4-d915b95ba53f', '9ac177b6-8343-11e9-a74c-3c075437c465', 'jake     tty7         :0               Sun Feb 17 22:31 - crash (102+03:14)'),
('5f1fa0ab-ee9a-479d-a16a-2cec5afe233d', 'c3407068-81c0-11e9-86fa-3c075437c465', 'reboot   system boot  4.15.0-kali2-amd Tue May 28 22:55   still running'),
('6ee6cb09-92ec-4227-a530-17c3146612d0', '62253806-828b-11e9-a290-3c075437c465', 'reboot   system boot  4.15.0-47-generi Thu May 30 03:24   still running'),
('829b0a54-03ac-48c1-bf2b-c684b191008a', '62253806-828b-11e9-a290-3c075437c465', 'jake     tty1                          Thu May 30 03:26   still logged in'),
('93aff1fd-11f2-4a6c-88cc-6dc1ace20b89', '62253806-828b-11e9-a290-3c075437c465', 'reboot   system boot  4.15.0-47-generi Thu May 30 03:14   still running'),
('9f1683d0-a175-4c44-bcc9-56dc12e4cd6b', 'c3407068-81c0-11e9-86fa-3c075437c465', 'reboot   system boot  4.15.0-kali2-amd Mon May 27 20:38   still running'),
('b0c9a03b-e8c7-45ae-aaeb-196cc89ae4ed', 'c3407068-81c0-11e9-86fa-3c075437c465', 'root     :1           :1               Mon May 27 20:40 - crash (1+02:15)'),
('c5194d89-5844-4b0c-bd6c-ceb8cf98f3b3', '9ac177b6-8343-11e9-a74c-3c075437c465', 'reboot   system boot  4.11.0-parrot6-a Fri May 31 02:46   still running'),
('cea943fb-5402-4b15-a17c-5f18251ac3b7', '62253806-828b-11e9-a290-3c075437c465', ''),
('d2627a2f-5aa5-40d3-b098-1637bb2d0ba3', '9ac177b6-8343-11e9-a74c-3c075437c465', 'reboot   system boot  4.11.0-parrot6-a Sun Feb 17 22:31   still running'),
('ee951967-b842-421f-b8c6-94b9fb76f98b', 'c3407068-81c0-11e9-86fa-3c075437c465', ''),
('ff8e3120-d97e-44a8-b420-9fe66a69c775', '9ac177b6-8343-11e9-a74c-3c075437c465', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_memory`
--

CREATE TABLE `server_memory` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `server_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_memory`
--

INSERT INTO `server_memory` (`id`, `server_id`, `name`) VALUES
('06e66ad8-d96d-4ba8-b080-3b636d753c91', '9ac177b6-8343-11e9-a74c-3c075437c465', '%MEM %CPU   PID  PPID USER     STAT COMMAND'),
('0c4c0b85-63d9-456f-b8b5-163df499e7e8', '62253806-828b-11e9-a290-3c075437c465', ''),
('0dad8200-be07-4904-b7df-43b651272d23', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 4.3  0.1  1091   810 root     Sl+  /usr/bin/gnome-software --gapplication-service'),
('1e7a9e65-246d-49ab-bfd5-53d0b89737b4', '62253806-828b-11e9-a290-3c075437c465', ' 9.1  0.1  1117     1 mysql    Sl   /usr/sbin/mysqld --daemonize --pid-file=/run/mysqld/mysqld.pid'),
('2328145f-f30e-4c57-b18d-6543453643f6', 'c3407068-81c0-11e9-86fa-3c075437c465', '%MEM %CPU   PID  PPID USER     STAT COMMAND'),
('33bc383a-53ea-4561-9b72-b501aeea4470', '62253806-828b-11e9-a290-3c075437c465', ' 2.2  0.1  1425  1405 jake     Sl+  node main.js'),
('3ca17afb-b740-46b2-9339-bc88eb59f6e4', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 9.0  0.2   570   503 Debian-+ Sl+  /usr/bin/gnome-shell'),
('42dec842-9e06-4371-b1b0-e19109efc6c3', '9ac177b6-8343-11e9-a74c-3c075437c465', ''),
('4e2c3cae-d883-4d9a-b98a-e2c28824a044', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 2.3  0.2 12855  1375 jake     Sl+  node main.js'),
('53eb234a-6506-4276-812a-3ec0465307c3', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 3.3  0.6   652   641 root     Ssl+ /usr/lib/xorg/Xorg :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch'),
('6e71e8d2-589e-4347-a1e1-fca823aa2d0d', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 3.3  0.0  1149   781 root     Ssl  /usr/lib/evolution/evolution-calendar-factory'),
('7febc96b-14f3-4223-8deb-d8f705010a4f', 'c3407068-81c0-11e9-86fa-3c075437c465', ''),
('908143f0-1679-4b86-bb40-8e5a8e827fc0', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 3.2  0.2   804   802 root     Sl+  /usr/lib/xorg/Xorg vt2 -displayfd 3 -auth /run/user/0/gdm/Xauthority -background none -noreset -keeptty -verbose 3'),
('a09a8221-139f-4ee6-9ce8-f3990155250c', '62253806-828b-11e9-a290-3c075437c465', ' 0.9  0.0   886     1 root     Ssl  /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers'),
('a9957a98-4d56-4bba-863a-66a144af2dcd', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 2.0  0.3  1368   857 jake     Sl   mate-terminal'),
('b53064b2-95b1-4fc1-a17a-02fd30e99134', '62253806-828b-11e9-a290-3c075437c465', ' 1.0  0.0   970     1 root     Ssl  /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal'),
('c87368e1-b6b7-46c7-af53-e61427185997', '62253806-828b-11e9-a290-3c075437c465', '%MEM %CPU   PID  PPID USER     STAT COMMAND'),
('d877d78b-336a-4ec7-b352-abfba32c01f1', '62253806-828b-11e9-a290-3c075437c465', ' 1.2  0.1   806     1 root     Ssl  /usr/lib/snapd/snapd'),
('d91ace11-28ff-4676-9a91-4dafd21d731b', 'c3407068-81c0-11e9-86fa-3c075437c465', ' 2.8  0.0  1187  1149 root     Sl   /usr/lib/evolution/evolution-calendar-factory-subprocess --factory contacts --bus-name org.gnome.evolution.dataserver.Subprocess.Backend.Calendarx1149x2 --own-path /org/gnome/evolution/dataserver/Subprocess/Backend'),
('e90d567d-f200-4a82-b23f-93b702e9552d', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 2.0  0.0   943   771 jake     Sl   /usr/bin/mate-screensaver --no-daemon'),
('f42f9beb-da6d-4109-a802-92ef496f358c', '9ac177b6-8343-11e9-a74c-3c075437c465', ' 2.1  0.0   869   782 jake     Sl   caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_reboot`
--

CREATE TABLE `server_reboot` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `server_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_reboot`
--

INSERT INTO `server_reboot` (`id`, `server_id`, `name`) VALUES
('036d84ba-0c9b-4f7b-9f26-9469aa4de513', 'c3407068-81c0-11e9-86fa-3c075437c465', 'reboot   system boot  4.15.0-kali2-amd Mon May 27 20:38   still running'),
('1a80c33e-9339-43e0-a355-39cdab173695', '9ac177b6-8343-11e9-a74c-3c075437c465', 'reboot   system boot  4.11.0-parrot6-a Sun Feb 17 22:31   still running'),
('21e93550-02b4-42e8-b527-6d9b74483c46', '9ac177b6-8343-11e9-a74c-3c075437c465', ''),
('26b710dd-c7e5-4673-8607-939945b02e09', 'c3407068-81c0-11e9-86fa-3c075437c465', 'reboot   system boot  4.15.0-kali2-amd Sun May 26 22:52   still running'),
('370865be-9651-49d5-826e-dbce4b6b2540', '62253806-828b-11e9-a290-3c075437c465', ''),
('6e15835c-a080-4c70-8664-54bc1201ce76', '62253806-828b-11e9-a290-3c075437c465', 'reboot   system boot  4.15.0-47-generi Wed May 29 03:59   still running'),
('757e34c4-6846-4ace-bf13-3e5a97f917ca', '62253806-828b-11e9-a290-3c075437c465', 'reboot   system boot  4.15.0-47-generi Thu May 30 03:14   still running'),
('89f68c96-0b28-40f4-84f4-650c8a7c7ff0', '9ac177b6-8343-11e9-a74c-3c075437c465', 'reboot   system boot  4.11.0-parrot6-a Fri May 31 02:46   still running'),
('9954e41a-a3ee-4cb5-bcd8-ee1980fda55b', '9ac177b6-8343-11e9-a74c-3c075437c465', 'reboot   system boot  4.11.0-parrot6-a Sat Oct 20 23:02   still running'),
('adbd47e0-f394-42b1-a3df-520aeea825f7', 'c3407068-81c0-11e9-86fa-3c075437c465', 'reboot   system boot  4.15.0-kali2-amd Tue May 28 22:55   still running'),
('d1e900bd-6cd7-4d37-b274-428e3de65f4b', '62253806-828b-11e9-a290-3c075437c465', 'reboot   system boot  4.15.0-47-generi Thu May 30 03:24   still running'),
('f54e75c5-7bf4-47bb-a131-51ddebb9957e', 'c3407068-81c0-11e9-86fa-3c075437c465', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_status`
--

CREATE TABLE `server_status` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `hostname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freeDisk` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usedDisk` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freeMem` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usedMem` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publicIp` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kernel` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `architecture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `server_status`
--

INSERT INTO `server_status` (`id`, `hostname`, `ip`, `freeDisk`, `usedDisk`, `freeMem`, `usedMem`, `publicIp`, `system`, `kernel`, `architecture`, `swap`, `average`) VALUES
('62253806-828b-11e9-a290-3c075437c465', 'jakejake', '192.168.1.13', '24G', '18G', '1323232', '1901016', '190.148.47.72', '-e Ubuntu 18.04.2 LTS', '4.15.0-47-generic', 'x86_64 64 Bit OS', '-e 2048, in GiB : 2', '-e  0,01, 0,21, 0,15'),
('9ac177b6-8343-11e9-a74c-3c075437c465', 'parrotparrot', '192.168.1.17', '23G', '7,4G', '156264', '2052396', '190.148.43.206', '-e Parrot 3.7 - JollyRoger', '4.11.0-parrot6-amd64', 'x86_64 64 Bit OS', '-e 2047, in GiB : 1.99902', '-e  0,08, 0,06, 0,26'),
('c3407068-81c0-11e9-86fa-3c075437c465', 'kalikali', '192.168.1.20', '23G', '11G', '447208', '2045404', '190.148.45.203', '-e Kali GNU/Linux Rolling', '4.15.0-kali2-amd64', 'x86_64 64 Bit OS', '-e 2046, in GiB : 1.99804', '-e  0.00, 0.00, 0.06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `server_apis`
--
ALTER TABLE `server_apis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `server_cpu`
--
ALTER TABLE `server_cpu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_84495A741844E6B7` (`server_id`);

--
-- Indices de la tabla `server_disk`
--
ALTER TABLE `server_disk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_87F4ACE21844E6B7` (`server_id`);

--
-- Indices de la tabla `server_last_access`
--
ALTER TABLE `server_last_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C40E50551844E6B7` (`server_id`);

--
-- Indices de la tabla `server_memory`
--
ALTER TABLE `server_memory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_93110DF31844E6B7` (`server_id`);

--
-- Indices de la tabla `server_reboot`
--
ALTER TABLE `server_reboot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B82FBD4A1844E6B7` (`server_id`);

--
-- Indices de la tabla `server_status`
--
ALTER TABLE `server_status`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `server_cpu`
--
ALTER TABLE `server_cpu`
  ADD CONSTRAINT `FK_84495A741844E6B7` FOREIGN KEY (`server_id`) REFERENCES `server_status` (`id`);

--
-- Filtros para la tabla `server_disk`
--
ALTER TABLE `server_disk`
  ADD CONSTRAINT `FK_87F4ACE21844E6B7` FOREIGN KEY (`server_id`) REFERENCES `server_status` (`id`);

--
-- Filtros para la tabla `server_last_access`
--
ALTER TABLE `server_last_access`
  ADD CONSTRAINT `FK_C40E50551844E6B7` FOREIGN KEY (`server_id`) REFERENCES `server_status` (`id`);

--
-- Filtros para la tabla `server_memory`
--
ALTER TABLE `server_memory`
  ADD CONSTRAINT `FK_93110DF31844E6B7` FOREIGN KEY (`server_id`) REFERENCES `server_status` (`id`);

--
-- Filtros para la tabla `server_reboot`
--
ALTER TABLE `server_reboot`
  ADD CONSTRAINT `FK_B82FBD4A1844E6B7` FOREIGN KEY (`server_id`) REFERENCES `server_status` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
