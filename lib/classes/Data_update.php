<?php
class Data_update
{
  private $response = array("error" => FALSE);

  public function update_student($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $fname = $post_data['fname'];
    $lname = $post_data['lname'];
    $email = $post_data['email'];
    $contact = $post_data['contact'];
    $class = $post_data['class'];
    $check_email = $conn->select_one_row('select * from profile as p ,users as u where p.email = "' . $email . '" or u.email ="' . $email . '"');
    if ($check_email) {
      $response[] = " email id is already exist unable to update it";

      // die();
    } else {
      $sql1 = 'UPDATE
    `profile` as p, `users` as u
  SET
    p.email = "' . $email . '",
     p.modified = "' . date("Y-m-d H:i:s") . '",
     u.modified = "' . date("Y-m-d H:i:s") . '",
    u.email = "' . $email . '"

  WHERE
  p.user_id = u.id 
  and 
  p.user_id = "' . $id . '"';
      $result2 = $conn->only_query($sql1);
    }
    $sql2 = 'UPDATE
  `profile` as p , course_details as cd
  SET
  p.first_name = "' . $fname . '",
  p.last_name = "' . $lname . '",
  p.contact = "' . $contact . '",
  p.modified = "' . date("Y-m-d H:i:s") . '",
  cd.class_id = "' . $class . '"
  WHERE
  p.user_id = "' . $id . '" 
  and
  cd.user_id = "' . $id . '"';
    $result = $conn->only_query($sql2);
    $sql3 = 'UPDATE
         course_details as cd
        SET
       
        cd.class_id = "' . $class . '",
        cd.modified = "' . date("Y-m-d H:i:s") . '"
      WHERE
       cd.user_id = "' . $id . '"
      ';
    $result = $conn->only_query($sql3);
    $response[] = "update successfully";
    return $response;
  }

  public function update_fee($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $amount = $post_data['amount'];
    $fee_sql = 'UPDATE
        `fee` as f 
        SET
        f.fee = "' . $amount . '",
        f.modified = "' . date("Y-m-d H:i:s") . '"
      WHERE
        f.id = "' . $id . '"
      ';
    $fee_result = $conn->only_query($fee_sql);
    $response[] = " update successfully";
    return $response;
  }
  public function update_subject($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $subject_name = $post_data['subject_name'];
    $fee_sql = 'UPDATE
        `subject` as s 
        SET
        s.subjectName = "' . $subject_name . '",
        s.modified = "' . date("Y-m-d H:i:s") . '"
      WHERE
        s.id = "' . $id . '"
      ';
    $fee_result = $conn->only_query($fee_sql);
    $response[] = "update successfully";
    return $response;
  }
  public function update_chapter($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $chapter_name = $post_data['name'];
    $chapter_sql = 'UPDATE
        `chapter` as c 
        SET
        c.chapter_name = "' . $chapter_name . '",
        c.modified = "' . date("Y-m-d H:i:s") . '"
      WHERE
        c.id = "' . $id . '"
      ';
    $chapter_result = $conn->only_query($chapter_sql);
    $response[] = "update successfully";
    return $response;
  }
  public function update_weq($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $question = $post_data['question'];
    $option1 = $post_data['option1'];
    $option2 = $post_data['option2'];
    $option3 = $post_data['option3'];
    $option4 = $post_data['option4'];
    $answer = $post_data['answer'];


    $eqs_sql = 'UPDATE
        `exam_question_setup` as eqs 
        SET
         eqs.question = "' . $question . '",
         eqs.option1 = "' . $option1 . '",
         eqs.option2 = "' . $option2 . '",
         eqs.option3 = "' . $option3 . '",
         eqs.option4 = "' . $option4 . '",
         eqs.answer = "' . $answer . '",
        eqs.modified = "' . date("Y-m-d H:i:s") . '"
      WHERE
        eqs.id = "' . $id . '"
      ';
    $eqs_result = $conn->only_query($eqs_sql);
    $response[] = "update successfully";
    return $response;
  }
  public function update_topic($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $question = $post_data['question'];
    $option1 = $post_data['option1'];
    $option2 = $post_data['option2'];
    $option3 = $post_data['option3'];
    $option4 = $post_data['option4'];
    $answer = $post_data['answer'];



    $eqs_sql = 'UPDATE
        `exam_question_setup` as eqs 
        SET
         eqs.question = "' . $question . '",
         eqs.option1 = "' . $option1 . '",
         eqs.option2 = "' . $option2 . '",
         eqs.option3 = "' . $option3 . '",
         eqs.option4 = "' . $option4 . '",
         eqs.answer = "' . $answer . '",
        eqs.modified = "' . date("Y-m-d H:i:s") . '"
      WHERE
        eqs.id = "' . $id . '"
      ';
    $eqs_result = $conn->only_query($eqs_sql);
    $response[] = "update successfully";
    return $response;
  }
  public function update_wet($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $current_time = date("Y-m-d H:i:s");
    $current_time = strtotime($current_time);
    $start_time = $post_data['start_time'];
    $end_time = $post_data['end_time'];

    $exam_start_time = strtotime($start_time);

    $exam_end_time = strtotime($end_time);
    // echo $exam_start_time;
    // echo"\n";
    // echo $exam_end_time;


    if ($exam_start_time < $exam_end_time && $current_time <= $exam_start_time) {
      $wet_sql = 'UPDATE
    `exam_title_master` as etm
    SET
     etm.start_time = "' . $start_time . '",
     etm.end_time = "' . $end_time . '",
     etm.modified = "' . date("Y-m-d H:i:s") . '"
  WHERE
    etm.id = "' . $id . '"
  ';
      $wet_result = $conn->only_query($wet_sql);
      $response[] = "update successfully";
    } else {

      $response[] = "please check date and time, Note : start_time should be less than end_time and current_time should be greater than or equal to start_time  ";
    }

    return $response;
  }
  public function update_class($conn, $id, $required_field, $post_data)
  {
    foreach ($required_field as $key => $value) {
      $check_data = array_key_exists($key, $post_data);
      if ($check_data) {
        //  echo "ok";
      } else {
        $response[] = ($key . "  <-- field required ");
        return $response;
        die();
      }
    }
    $name = $post_data['name'];
    $class_sql = 'UPDATE
        `class` as c 
        SET
         c.name = "' . $name . '",
         c.modified = "'. date("Y-m-d H:i:s") .'"
      WHERE
        c.id = "' . $id.'"
      ';
    $class_result = $conn->only_query($class_sql);
    $response[] = "update successfully";
    return $response;
  }
}// end class 
