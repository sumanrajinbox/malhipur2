<?php class Chapter {
    public function isChapterExisted($class_id, $subject_id, $chapter_name) {
        $Dbcon=new Dbcon();
        $stmt=$Dbcon->select_one_row("SELECT * from chapter WHERE class_id = '". $class_id . "' and subject_id = '".$subject_id."' and chapter_name = '".$chapter_name."' and status ='1'");

        if ($stmt) {
            return true;
        }

        else {
            // chapter not existed
            return false;
        }
    }

    // public function StoreChapter($class_id, $subject_id, $chapter_name) {

    //     $Dbcon=new Dbcon();

    //     $result=$Dbcon->only_query("INSERT INTO `chapter` (`id`, `class_id`, `subject_id`, `chapter_name`, `modified`, `status`) VALUES (NULL, '".$class_id."', '".$subject_id."', '".$chapter_name."', '".date("Y-m-d H:i:s")."', '1');");
    //     // check for successful store
    //     if ($result) {
    //         return $result;
    //     }
    //     else {
    //         return false;
    //     }
    // }

    public function show_chapter_android ($subject_id) {
        $Dbcon=new Dbcon();
        $all_data=$Dbcon ->select_all_row("SELECT 
            c.id AS chapter_id,
            c.class_id,
            c.chapter_name,
            cl.name as class_name FROM chapter AS c left join class as cl on c.class_id=cl.id WHERE c.subject_id='".$subject_id."' and c.status = 1");     




            return $all_data;
        }
    }