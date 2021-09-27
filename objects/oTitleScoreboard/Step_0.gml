///@desc Read Score & Time

//Image alpha
if(image_alpha < 1){image_alpha += 0.25 / FPS;}
else{image_alpha = 1;}

//Read Score
if(scoreBoard && !scoreBoardReaded){
	var fileScore = file_text_open_read(SCOREBOARD);
	if(fileScore != -1){
		//Read
		var i = 0;
		while(!file_text_eof(fileScore)){
			scrScore[i] = file_text_read_real(fileScore);
			file_text_readln(fileScore);
			i++;
		}
		
		//Sort & Close
		array_sort(scrScore, false);
		file_text_close(fileScore);
		scoreBoardReaded = true;
	}
}

//Read Time
if(timeBoard && !timeBoardReaded){
	var fileTime = file_text_open_read(TIMEBOARD);
	
	if(fileTime != -1){		
		//Read
		var i = 0;
		while(!file_text_eof(fileTime)){
			scrTime[i] = file_text_read_real(fileTime);
			file_text_readln(fileTime);
			i++;
		}

		//Sort & Close
		array_sort(scrTime, false);
		file_text_close(fileTime);
		timeBoardReaded = true;
	}
}