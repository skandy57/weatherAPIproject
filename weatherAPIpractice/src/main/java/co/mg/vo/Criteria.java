package co.mg.vo;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class Criteria {

		private int pageNum;
		private int amount;
		
		private String type;
		private String keyword;
		
		private String sdate;
		private String edate;
		
		public Criteria() {
			this(1, 10);
		}
		public Criteria(int pageNum, int amount) {
			this.pageNum=pageNum;
			this.amount=amount;
		}
		public String[]getTypeArr(){
			return type==null?new String[] {}:type.split("");
		}
}
