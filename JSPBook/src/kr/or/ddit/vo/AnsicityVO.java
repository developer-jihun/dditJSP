package kr.or.ddit.vo;

public class AnsicityVO {
	//멤버변수
	private int memId;
	private String memName;
	private String memAlias;
	//기본 생성자
	public AnsicityVO() {}
	//생성자
	public AnsicityVO(int memId, String memName,
			String memAlias) {
		this.memId = memId;
		this.memName = memName;
		this.memAlias = memAlias;
	}
	//getter/setter메소드
	public int getMemId() {
		return memId;
	}
	public void setMemId(int memId) {
		this.memId = memId;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemAlias() {
		return memAlias;
	}
	public void setMemAlias(String memAlias) {
		this.memAlias = memAlias;
	}
	@Override
	public String toString() {
		return "AnsicityVO [memId=" + memId + ", memName=" + memName + ", memAlias=" + memAlias + "]";
	}
	
}
