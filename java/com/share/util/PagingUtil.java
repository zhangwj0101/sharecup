/** 
 * 2012-6-15 
 * PagingUtil.java 
 * author:��� 
 */

package com.share.util;

import java.util.List;

public class PagingUtil {

	public static Integer getPage(List list, String size) {
		int defaultSize = Integer.parseInt(size);
		int pageSize = 0;
		if (list.size() % defaultSize == 0) {
			pageSize = list.size() / defaultSize;
		} else {
			pageSize = list.size() / defaultSize + 1;
		}
		return pageSize;
	}

}
