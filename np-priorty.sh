`` np_priority_scheduling(){
	int burst_time[20], process[0], waiting_time[0], turnaround_time[20], priority[20];
	int i, j, limit, sum=0, position, temp;
	float average_wait_time, average_turnaround_time;
	printf("Enter Total Number of Processes:\t");
	read limit

	printf("\Enter Burst Time and Priority for %d Processes\n", limit);
	for (( i=0; i <= $limit; i++ ))
	do
		printf("\nProcess[%d]n", i+1);
		printf("Process Burst Time:\t");
		#read dapat dito

		printf("Process Priority:\t");
		read prioriy[i]
		process[i] = i + 1;
	done

	for (( i=0; i < limit; i++ )) 
	do
		position = i;
		for (( j=i + 1; j < limit; j++))
		do
			if(priority[j] < priority[position])
			do
				position = j;	
			done
		done
		temp = priority[i];
		priority[i] = priority[position];
		priority[position] = temp;
		temp = burst_time[i];
		burst_time[i] = burst_time[position];
		burst_time[position] = temp;
		temp = process[i];
		process[i] = process[position];
		process[position] = temp;
	done
	waiting_time[0] = 0;
	for (( i=1; i < limit; i++))
	do
		waiting_time[i] = ;
		for (( j=0; j < i; j++))
		do
			waiting_time[i] = waiting_time[i] + burst_time[j];
		done
		sum = sum + waiting_time[i];
	done
	average_wait_time = sum / limit;
	sum = 0;
	printf("\nProcess ID\t\tBurst Time\t Waiting Time\t Turnaround Time\n");
	for (( i=0; i < limit; i++))
	do
		turnaround_time[i] = burst_time[i] + waiting_time[i];
		sum = sum + turnaround_time[i];
		printf("\nProcess[%d]\t\t%d\t\t %d\t\t %d\n", process[i], burst_time[i], 			waiting[i], turnaround_time[i];
	done
	average_turnaround_time = sum / limit;
	printf("\nAverage Waiting Time:\t%f", average_wait_time);
	printf("\nAverage Turnaround Time:\t%f\n", average_turnaround_time);
	return 0;

} ``