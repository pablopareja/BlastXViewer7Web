package com.era7.bioinfo.iso.comm
{
	import com.era7.communication.interfaces.ServerUploadable;
	import com.era7.communication.model.BasicMapper;
	import com.era7.communication.xml.Parameters;
	import com.era7.communication.xml.Request;
	
	import flash.net.FileFilter;

	public class BlastMapper extends BasicMapper
	{
				
		/**
		 * 	Constructor
		 */
		public function BlastMapper()
		{			
			super();			
		}
		
		
		public function uploadBlastAndGetCoverageXML(serverUploadable:ServerUploadable):void{
			
			var request:Request = new Request();
			request.setMethod(RequestList.UPLOAD_BLAST_AND_GET_COVERAGE_XML_REQUEST);
			
			var parameters:Parameters = new Parameters();
			request.setParameters(parameters);
			
			var fileFilter:FileFilter = new FileFilter("XML files","*.xml");
			
			mainManager.uploadFile(request,serverUploadable,UrlManager.UPLOAD_BLAST_AND_GET_COVERAGE_XML_REQUEST,fileFilter);
		}
	}
}