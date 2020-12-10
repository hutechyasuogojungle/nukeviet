<?php

if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$page_title = $lang_module['main_content'];

require_once NV_ROOTDIR . '/modules/' . $module_file . '/global.functions.php';

$xtpl = new XTemplate('add.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
// $action = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=add';

$allData = getAllData();

$a = $nv_Request->assign('tencauhoi','post','');
$b = $nv_Request->assign('tentraloi','post','');

foreach ($allData as $data) {
    $xtpl->assign('DATA',$data);
    $xtpl->parse('main.loopData');
}

$xtpl->assign('LANG', $lang_module);
$xtpl->assign('ACTION', $action);
$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
