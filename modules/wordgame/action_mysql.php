<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 2-10-2010 20:59
 */

if (! defined('NV_IS_FILE_MODULES')) {
    die('Stop!!!');
}

$sql_drop_module = array();

$sql_drop_module[] = "DROP TABLE IF EXISTS " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_QuestionAnswer;";

$sql_create_module = $sql_drop_module;

$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_QuestionAnswer (
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    tenCauhoi varchar(255) NOT NULL DEFAULT '',
    tenTraloi varchar(255) NOT NULL DEFAULT '',
    add_time int(11) UNSIGNED NOT NULL DEFAULT 0,
    update_time int(11) UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;";

