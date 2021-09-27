///@desc Variable
image_alpha = 0;
scoreBoard = file_exists(SCOREBOARD);
timeBoard = file_exists(TIMEBOARD);
scoreBoardReaded = false;
timeBoardReaded = false;
scrScore = array_create(3, 0);
scrTime = array_create(3, 0);