<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 12/31/2009 0:51
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

function getAllData()
{
    global $module_data, $db;

    $data = array();

    $QuestionAnswer = NV_PREFIXLANG . '_' . $module_data . '_QuestionAnswer';

    $sql = 'SELECT * FROM ' . $QuestionAnswer;
    try {
        $query = $db->query($sql);
        while (list($id, $tenCauhoi, $tenTraloi, $add_time, $update_time) = $query->fetch(3)) {
            $data[] = array(
                "ID" => $id,
                "TENCAUHOI" => $tenCauhoi,
                "TENTRALOI" => $tenTraloi,
                "ADDTIME" => gmdate("Y/m/d H:i:s", $add_time),
                "UPDATETIME" =>  gmdate("Y/m/d H:i:s", $update_time)
            );
        }
    } catch (PDOException $e) {
        trigger_error($e->getMessage());
    }

    return $data;
}


function insert($idcasi, $idtheloai, $tenbaihat, $part, $img, $publish)
{
    global $module_data, $db;
    $value['idcasi'] = $idcasi;
    $value['idtheloai'] = $idtheloai;
    $value['tenbaihat'] = $tenbaihat;
    $value['thoigianthem'] = Time();
    $value['thoigiancapnhat'] = Time();
    $value['part'] = $part;
    $value['img'] = $img;
    $value['publish'] = $publish;

    $baihat = NV_PREFIXLANG . "_" . $module_data . "_baihat";
    $sth = $db->prepare('INSERT INTO ' . $baihat . '(idCasi,idTheloai,tenBaihat,add_time,update_time,part,img,publish) VALUES(:a,:b,:c,:d,:e,:f,:g,:h)');
    $sth->bindParam(':a', $value['idcasi'], PDO::PARAM_INT);
    $sth->bindParam(':b', $value['idtheloai'], PDO::PARAM_INT);
    $sth->bindParam(':c', $value['tenbaihat'], PDO::PARAM_STR);
    $sth->bindParam(':d', $value['thoigianthem'], PDO::PARAM_INT);
    $sth->bindParam(':e', $value['thoigiancapnhat'], PDO::PARAM_INT);
    $sth->bindParam(':f', $value['part'], PDO::PARAM_STR);
    $sth->bindParam(':g', $value['img'], PDO::PARAM_STR);
    $sth->bindParam(':h', $value['publish'], PDO::PARAM_STR);
    $sth->execute();
    return true;
}