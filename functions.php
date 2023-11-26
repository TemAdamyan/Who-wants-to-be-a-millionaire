<?php
include "config.php";

function checkReg($user_phone, $username){
    global $connection;

    $sql_phone_nums = "SELECT `phone` FROM `users` WHERE `phone` = ".$user_phone." AND `username` = '$username' ";
    $phone_numbers = mysqli_query($connection, $sql_phone_nums);
    $numbers_count = count(mysqli_fetch_all($phone_numbers));
    $status = array();
    if($numbers_count > 0){
        return false;
    }else{
        return true;
    }
}

function registration($name, $lastName,$username, $number, $age, $gender, $password,$nation)
{
    global $connection;
    $name_escape = mysqli_real_escape_string($connection, $name);
    $lastName_escape = mysqli_real_escape_string($connection, $lastName);
    $number_escape = mysqli_real_escape_string($connection, $number);
    $nation_escape = mysqli_real_escape_string($connection, $nation);
    $md5_password = md5($password);
    $username_escape =  mysqli_real_escape_string($connection, $username);
    $status = array();

    if (checkReg($number_escape,$username_escape)) {
        $sql = "INSERT INTO `users`(`name`,`surname`,`username`,`password`,`age`,`gender`,`phone`,`nationality`)
     VALUES
     ('$name_escape ','$lastName_escape','$username_escape','$md5_password',$age,$gender,'$number_escape','$nation_escape')
     ";
     try{
            mysqli_query($connection, $sql); 
            $status['status'] = 'ok';
            $status['msg'] = 'registered';
            return json_encode($status);
        
     }
     catch(Exception $e){
        $status['status'] = 'dublicate';
            $status['msg'] = 'not registered';
            return json_encode($status);
     }

    }else{
        $status['status'] = 'dublicate';
        $status['msg'] = 'դուք արդեն օգտագործել եք այս տվյալները';
        return json_encode($status);
    }

}


function sign_in($username, $password) {
    $password = md5($password);
    global $connection;
    $status = array();
    $sql_username = "SELECT `id`,`name` FROM `users` WHERE `username` = '$username' AND `password` = '$password' ";
    $username_query = mysqli_query($connection, $sql_username);

    $fetched = mysqli_fetch_all($username_query, MYSQLI_ASSOC);

    $numbers_count = count($fetched);
   
    if($numbers_count > 0){
        $status['status'] = true;
        $status['msg'] = 'Դուք հաջող գրանցվեցիք';
        $status['id'] = $fetched[0]['id'];
        $status['name'] = $fetched[0]['name'];
        return json_encode($status);
    }else{
        $status['status'] = false;
        $status['msg'] = 'Սխալ գաղտնաբառ';
        $status['id'] = false;
        $status['name'] = false;
        return json_encode($status);
    }
}

function getQuestion($level,$user_id) {
    global $connection;
    $level = intval($level);
    $level = ceil($level / 3);
    $question_query =   "SELECT DISTINCT `q`.`id` FROM `statistics` as `s` LEFT JOIN `questions` as `q` ON (`q`.`id` = `s`.`question_id`) WHERE `s`.`user_id` = $user_id";
    $question_result = mysqli_query($connection, $question_query);
    $id_result = [];

    while($res = mysqli_fetch_assoc($question_result)){
        $id_result[] = $res['id'];
    }
    if(count($id_result)>0){
        $array = implode(",",$id_result);
        $query = "SELECT `q`.`id`,`q`.`category`,`q`.`question`,`a`.`answer1`,`a`.`answer2`,`a`.`answer3`,`a`.`answer4`,`a`.`right_answer`
        FROM `questions` as `q`
        LEFT JOIN `answers` as `a` ON (`a`.`question_id` = `q`.`id`)
        WHERE `q`.`id` NOT IN  ($array) AND `q`.`hard_level`=$level ORDER BY RAND() LIMIT 1";
    }else{
        $query = "SELECT `q`.`id`,`q`.`category`,`q`.`question`,`a`.`answer1`,`a`.`answer2`,`a`.`answer3`,`a`.`answer4`,`a`.`right_answer`
        FROM `questions` as `q`
        LEFT JOIN `answers` as `a` ON (`a`.`question_id` = `q`.`id`) WHERE `q`.`hard_level`=$level
        ORDER BY RAND() LIMIT 1";
    }
    $result = mysqli_query($connection, $query);

    if (!$result) {
        die("Error: ".mysqli_error($connection));
    }
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);

    if(count($row) == 0){
        $query = "SELECT `q`.`id`,`q`.`category`,`q`.`question`,`a`.`answer1`,`a`.`answer2`,`a`.`answer3`,`a`.`answer4`,`a`.`right_answer`
        FROM `questions` as `q`
        LEFT JOIN `answers` as `a` ON (`a`.`question_id` = `q`.`id`) WHERE `q`.`hard_level`=$level
        ORDER BY RAND() LIMIT 1";
        $result = mysqli_query($connection,$query);
        $row = mysqli_fetch_all($result, MYSQLI_ASSOC);  
        return json_encode($row);
    }
    return json_encode($row);
}


function setAnswer($user,$level, $question_id, $answer_id, $status, $game_played){
    $user = intval($user);

    $level = intval($level);
    $question_id = intval($question_id);
    $answer_id = intval($answer_id);
    $game_played = intval($game_played);

    global $connection;
    $sql = "INSERT INTO `statistics`(`user_id`,`question_id`,`answer_id`,`status`,`levels_played`,`games_played`)
     VALUES
     ($user,$question_id,$answer_id,'$status',$level,$game_played)
     ";
    $result = mysqli_query($connection, $sql);

    if (!$result) {
    die("Error: " . mysqli_error($connection));
    }else{
        $status = array();
        $status['status'] = true;
        $status['msg'] = 'inserted';
        return json_encode($status); 
    }
}


function adminNewQuestion($question, $answer1, $answer2, $answer3, $answer4, $category, $right_answer, $hard_level){
    global $connection;
    $status = array();
    $query1 = "INSERT INTO `questions` (`question`, `category`, `hard_level`) VALUES ('$question', '$category', '$hard_level')";
    $query2 = "INSERT INTO `answers` (`question_id`, `answer1`, `answer2`, `answer3`, `answer4`, `right_answer`) 
    VALUES (LAST_INSERT_ID(),  '$answer1' ,'$answer2' , '$answer3','$answer4' ,'$right_answer')";
    $sql1 = mysqli_query($connection, $query1);
    $sql2 = mysqli_query($connection, $query2);
    if ($sql1 &&  $sql2) {
        $status['status'] = true;
        $status['msg'] = 'Datas has been sent to database';
        return json_encode($status);
    } else {
        $status['status'] = false;
        $status['msg'] = 'error';
        return json_encode($status);
    }
}


function final_message($user_id) {
    global $connection;
    $query = "SELECT `q`.`category` FROM `statistics` as `s` LEFT JOIN `questions` as `q` ON (`q`.`id` = `s`.`question_id`) WHERE  `s`.`user_id` = $user_id AND `status` = 0 GROUP BY `category` ORDER BY COUNT(*) DESC LIMIT 1"; 
    $result = mysqli_query($connection, $query);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    if(count($row)<1){
        $query = "SELECT `category` FROM `questions` ORDER BY rand() LIMIT 1"; 
        $result = mysqli_query($connection, $query);
        $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
        return json_encode($row);  
    }else{
        return json_encode($row);  
    }

}

?>
