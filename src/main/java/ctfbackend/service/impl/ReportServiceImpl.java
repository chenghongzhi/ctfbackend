package ctfbackend.service.impl;

import ctfbackend.bean.Report;
import ctfbackend.dao.ReportDao;
import ctfbackend.service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ReportServiceImpl implements ReportService
{
	@Autowired
	private ReportDao reportMapper;


	@Override
	public Report select(Long id) {
		Report report = reportMapper.getById(id);
		return report;
	}

	@Override
	public void delete(Long id) {
		reportMapper.deleteById((long)id);
	}

	@Override
	public List<Report> list() {
		List<Report> reports = reportMapper.getAllReport();
		return reports;
	}

	@Override
	public List<Report> selectByStuId(Long stuid) {
		List<Report> reports = reportMapper.selectByStuId(stuid);
		return reports;
	}

	@Override
	public List<Report> selectByPage(Integer beginIndex, Integer pageSize) {
		return reportMapper.selectByPage(beginIndex,pageSize);
	}

	@Override
	public List<Report> selectByStuIdToPage(Long stuId, int currentPage, int pageSize) {
		return reportMapper.selectByStuIdToPage(stuId,currentPage,pageSize);
	}

	@Override
	public List<Report> selectByTmpIdToPage(Long tmpId, Long couId, int currentPage, int pageSize) {
		return reportMapper.selectByTmpIdToPage(tmpId,couId,currentPage,pageSize);
	}

}
