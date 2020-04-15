<?php 
class Media_operation extends Myconn {

    public function delete_media(int $id, $status=0) {
        $sql='UPDATE video as v
LEFT JOIN pdf as p ON p.video_id=v.id left join thumb as t on t.video_id=v.id SET v.status="'.$status.'",
        p.status="'.$status.'",
        t.status="'.$status.'",
        v.modified="'.date( "Y-m-d H: i:s" ).'",
            p.modified="'.date( "Y-m-d H:i:s" ).'",
            t.modified="'.date( "Y-m-d H:i:s" ).'"

            WHERE v.id="'.$id.'"';
$result=$this->only_query($sql, true);
        return $result;
    }

    public function verify_video(int $id) {
        $result=$this->select_one_row('select * from video where id = "'.$id.'"', true);
        return $result;
    }
    public function verify_pdf(int $id) {
        $result=$this->select_one_row('select * from pdf where id = "'.$id.'"', true);
        return $result;
    }
    public function verify_thumb(int $id) {
        $result=$this->select_one_row('select * from thumb where id = "'.$id.'"', true);
        return $result;
    }

}