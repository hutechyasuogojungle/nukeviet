<!--BEGIN: main-->
<table id="customers">
    <thead>
        <tr>
            <th style="text-align: center;">
                {LANG.stt}
            </th>
            <th style="text-align: center;">
                {LANG.tenCauhoi}
            </th>
            <th style="text-align: center;">
                {LANG.tenTraloi}
            </th>
            <th style="text-align: center;">
                {LANG.thoigianthem}
            </th>
            <th style="text-align: center;">
                {LANG.thoigianupdate}
            </th>
            <th style="text-align: center;">
                {LANG.edit}
            </th>
            <th style="text-align: center;">
                {LANG.del}
            </th>
        </tr>
    </thead>
    <tbody>
        <!-- BEGIN: loopData -->
        <tr>
            <td>
                {DATA.ID}
            </td>
            <td>
                {DATA.TENCAUHOI}
            </td>
            <td>
                {DATA.TENTRALOI}
            </td>
            <td>
                {DATA.ADDTIME}
            </td>
            <td>
                {DATA.UPDATETIME}
            </td>
            <td class="text-center">
                <a href="{ROW1.link_edit}" title="Chỉnh sửa"><em class="fa fa-edit fa-lg">&nbsp;</em></a>
            </td>
            <td>
                <a href="{ROW.link_delete}" onclick="alert('Xóa bài hát thành công');" title="Xóa"><em
                        class="fa fa-trash-o fa-lg">&nbsp;</em></a>
            </td>
        </tr>
        <!-- END: loopData -->
    </tbody>
</table>

<style>
    #customers {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #customers td,
    #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #customers tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #customers tr:hover {
        background-color: #ddd;
    }

    #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #4CAF50;
        color: white;
    }
</style>
<!--END: main-->