package info.black_kintai;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeOperation {
	
	private String start;
	private String end;

	 public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}



	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	

	// private String status;
	public String getDate() {
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		return  dateFormat.format(date);
	}

	public int getWorkDate(String start, String end) {
		int work_date = Integer.parseInt(end.substring(0,2)) - Integer.parseInt(start.substring(0,2));
		return work_date;
	}

	public int[] getWorkTime(String start, String end) {
		int end_hour = Integer.parseInt(end.substring(4,6));
		int start_hour = Integer.parseInt(start.substring(4,6));
		int end_min = Integer.parseInt(end.substring(7,9));
		int start_min = Integer.parseInt(start.substring(7,9));
		int end_sec = Integer.parseInt(end.substring(10,12));
		int start_sec = Integer.parseInt(start.substring(10,12));
		int temp_time = ((60 * 60 * end_hour) + (60 * end_min) + end_sec) - ((60 * 60 * start_hour) + (60 * start_min) + start_sec);
		int[] work_time= new int[3];
		work_time[0] = temp_time/(60 * 60);
		work_time[1] = (temp_time/60) - (work_time[0] * 60);
		work_time[2] = temp_time - (work_time[1] * 60);
		
		return work_time;
		
	}

}
