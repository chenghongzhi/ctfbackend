package ctfbackend.service;
import ctfbackend.bean.Report;

import java.util.List;

public interface ReportService
{
	
	Report select(Long id);
	
	void delete(Long id);
	
	List<Report> list();
	
	List<Report> selectByStuId(Long stuid);

	List<Report> selectByPage( Integer beginIndex,Integer pageSize);

	List<Report> selectByStuIdToPage(Long stuId, int currentPage, int pageSize);

	List<Report> selectByTmpIdToPage(Long tmpId, Long couId, int currentPage, int pageSize);

}
