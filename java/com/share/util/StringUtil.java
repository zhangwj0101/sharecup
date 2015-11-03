package com.share.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressWarnings("all")
/**
 * 工具类
 *
 */
public class StringUtil {

	/**
	 * 校验是否为空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNullOrBlank(String str) {
		return ((str == null) || str.equals("") || str.equalsIgnoreCase("null"));
	}

	/**
	 * 校验是否为数字
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNumber(String str) {
		byte[] chars = str.getBytes();
		for (byte b : chars) {
			if (b < '0' || b > '9') {
				return false;
			}
		}
		return true;
	}

	/**
	 * 字符串转码
	 * 
	 * @param text
	 * @param oldCharset
	 * @param newCharset
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public static String changeCharset(String text, String oldCharset,
			String newCharset) throws UnsupportedEncodingException {
		if (!isNullOrBlank(text)) {
			byte[] bytes = null;
			if (!isNullOrBlank(oldCharset)) {
				bytes = text.getBytes(oldCharset);
			} else {
				bytes = text.getBytes();
			}
			return new String(bytes, newCharset);
		}
		return text;
	}

	/**
	 * 将数字以逗号格式化，如把100000每隔3位用逗号隔开为100,000
	 */
	public static String formatNumber(long number, int byteLength) {
		String numberToFormat = number + "";
		int size = numberToFormat.length();

		if ((byteLength == 0) || byteLength > size) {
			return number + "";
		}

		char[] numbers = new char[numberToFormat.length()];
		numberToFormat.getChars(0, size, numbers, 0);

		String result = "";
		int n = 0;

		for (int i = size - 1; i >= 0; i--) {
			result = numbers[i] + result;
			n++;
			result = ((n % byteLength == 0) ? "," : "") + result;
		}

		return (result.startsWith(",") ? result.replaceFirst(",", "") : result);
	}

	/**
	 * 反转给定的字符串text
	 * 
	 * @param text
	 * @return
	 */
	public static String reverse(String text) {
		// return new StringBuffer(text).reverse();

		String result = "";
		char[] chars = new char[text.length()];
		text.getChars(0, text.length(), chars, 0);

		for (char c : chars) {
			result = c + result;
		}

		return result;
	}

	/**
	 * 日期格式化
	 * 
	 * @param formatPattern
	 * @param date
	 * @return
	 */
	public static String formatDate(String formatPattern, Date date) {
		SimpleDateFormat formatter = new SimpleDateFormat(formatPattern);
		return formatter.format(date);
	}

	/**
	 * 格式化当前日期，默认模式为yyyy-MM-dd HH:mm:ss
	 * 
	 * @param date
	 * @return
	 */
	public static String formatDate(Date date) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return formatter.format(date);
	}

	/**
	 * 日期相减
	 * 
	 * @param date1
	 * @param date2
	 * @return
	 */
	public static long dateSub(String date1, String date2) {
		if (date1 == null) {
			date1 = "0 0";
		}
		if (date2 == null) {
			date2 = "0 0";
		}
		date1 = date1.replaceAll("-", "").replaceAll(":", "").replaceAll(" ",
				"");
		date2 = date2.replaceAll("-", "").replaceAll(":", "").replaceAll(" ",
				"");
		long d1 = Long.parseLong(date1);
		long d2 = Long.parseLong(date2);
		return d2 - d1;
	}

	/**
	 * 按照正则表达式匹配格式
	 * 
	 * @param formatPattern
	 * @param text
	 * @return
	 */
	public static boolean canPattern(String formatPattern, String text) {
		Pattern p = Pattern.compile(formatPattern);
		Matcher m = p.matcher(text);
		return m.find();
	}

	/**
	 * 获取日期信息
	 * 
	 * @param offset
	 * @return
	 */
	public static String getDate(int offset) {
		Calendar calendar = Calendar.getInstance();
		String year = calendar.get(Calendar.YEAR) + "";
		String month = calendar.get(Calendar.MONTH) + 1 + "";
		if (month.length() == 1) {
			month = "0" + month;
		}
		String day = (calendar.get(Calendar.DAY_OF_MONTH) + offset) + "";
		if (day.length() == 1) {
			day = "0" + day;
		}
		return year + "-" + month + "-" + day;
	}

	/**
	 * 将List中的数据用seprator分隔
	 * 
	 * @param srcData
	 * @param separator
	 * @return
	 */
	public static String join(List srcData, String separator) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < srcData.size(); i++) {
			sb.append(srcData.get(i).toString()).append(separator);
		}
		String result = sb.toString();
		if (result.endsWith(separator)) {
			result = result.substring(0, (result.length() - 1));
		}
		return result;
	}

	/**
	 * 将数组中的数据用seprator分隔
	 * 
	 * @param srcData
	 * @param separator
	 * @return
	 */
	public static String join(Object[] srcData, String separator) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < srcData.length; i++) {
			sb.append(srcData[i].toString()).append(separator);
		}
		String result = sb.toString();
		if (result.endsWith(separator)) {
			result = result
					.substring(0, (result.length() - separator.length()));
		}
		return result;
	}

	/**
	 * 将Iterator中的数据用seprator分隔
	 * 
	 * @param srcData
	 * @param separator
	 * @return
	 */
	public static String join(Iterator srcData, String separator) {
		StringBuilder sb = new StringBuilder();
		while (srcData.hasNext()) {
			sb.append(srcData.next().toString()).append(separator);
		}
		String result = sb.toString();
		if (result.endsWith(separator)) {
			result = result.substring(0, (result.length() - 1));
		}
		return result;
	}

	/**
	 * 输出HashMap
	 */
	public static void print(Map map) {
		StringBuilder sb = new StringBuilder("\n");
		Iterator it = map.entrySet().iterator();
		while (it.hasNext()) {
			sb.append(it.next()).append("\n");
		}
		System.out.println(sb.toString());
	}

	/**
	 * 将template重复n次
	 * 
	 * @param template
	 * @param n
	 * @return
	 */
	public static String repeat(String template, int n) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < n; i++) {
			sb.append(template);
		}
		return sb.toString();
	}

	/**
	 * 输出
	 */
	public static void print(Object msg) {
		System.out.println("\n*****************************************");
		System.out.println(msg.toString());
		System.out.println("*****************************************\n");
	}

	/**
	 * 获取URL的domain
	 * 
	 * @param args
	 */
	public static String getDomain(String url) {
		Pattern p_domain = Pattern
				.compile(
						"http\\://[a-zA-Z0-9]{0,100}[.]{0,1}[^.\\s]*?\\.(com|cn|net|org|biz|info|cc|tv|mil|mobi|int|rec)",
						Pattern.CASE_INSENSITIVE);
		Matcher m_domain = p_domain.matcher(url);
		if (m_domain.find()) {
			return m_domain.group(0);
		}
		return url;
	}

	/**
	 * 转义
	 * 
	 * @param args
	 */
	public static String trans2Text(String text) {
		if (!StringUtil.isNullOrBlank(text)) {
			text = text.trim().replaceAll("&", "&amp;").replace("'", "&apos;")
					.replaceAll("\"", "&quot;");
		}
		return text;
	}

	/**
	 * 反转义
	 * 
	 * @param text
	 * @return
	 */
	public static String trans2Html(String text) {
		if (!StringUtil.isNullOrBlank(text)) {
			text = text.replaceAll("&amp;", "&").replace("&apos;", "'")
					.replaceAll("&quot;", "\"");
		}
		return text;
	}

	/**
	 * 去掉字符串两边指定的符号，如去掉"|3495|"两边的"|"
	 * 
	 * @param args
	 */
	public static String clearSide(String text, String seprator) {
		while (text.startsWith(seprator)) {
			text = text.substring(seprator.length());
		}
		while (text.endsWith(seprator)) {
			text = text.substring(0, text.length() - 1);
		}
		return text;
	}

	/**
	 * 获取最大值
	 * 
	 * @param ids
	 * @return
	 */
	public static String getMax(List<Integer> ids) {
		return Collections.max(ids) + "";
	}

	/**
	 * 获取随机数列
	 * 
	 * @param args
	 */
	public static List<String> getRandomList(int size, int max) {
		List<String> result = new ArrayList<String>();
		HashSet<String> set = new HashSet<String>();

		if (max < size) {
			size = max - 1;
		}

		while (result.size() != size) {
			int random = (int) (Math.random() * max);
			if (random <= 0) {
				random += 1;
			}
			String tmp = random + "";
			if (set.add(tmp)) {
				result.add(tmp);
			}
		}
		return result;
	}

	/**
	 * 获取随机数列，但是不能包括not
	 * 
	 * @param args
	 */
	public static List<String> getRandomList(int size, int max, int not) {
		List<String> result = new ArrayList<String>();
		HashSet<String> set = new HashSet<String>();

		while (result.size() != size) {
			int random = (int) (Math.random() * max);
			if (random <= 0) {
				random += 1;
			}
			String tmp = random + "";
			if (set.add(tmp) && tmp != (not + "")) {
				result.add(tmp);
			}
		}
		return result;
	}

	/**
	 * 获取指定长度的片段
	 * 
	 * @param args
	 */
	public static String getPart(String text, int length) {
		text = delHTMLTag(trans2Html(text));

		int count = text.length();
		if (length <= count) {
			return text.substring(0, length);
		} else {
			return text;
		}
	}

	/**
	 * 剔除HTML标签
	 * 
	 * @param htmlcontent
	 * @return
	 */
	public static String delHTMLTag(String htmlcontent) {
		String txtcontent = htmlcontent.replaceAll("</?[^>]+>", ""); // 剔出<html>的标签
		txtcontent = txtcontent.replaceAll("\\s*|\t|\r|\n", "");// 去除字符串中的空格,回车,换行符,制表符
		return txtcontent;
	}

	/**
	 * 剔除HTML标签
	 */
	public static String html2Text(String inputString) {
		String htmlStr = inputString; // 含html标签的字符串
		String textStr = "";
		java.util.regex.Pattern p_script;
		java.util.regex.Matcher m_script;
		java.util.regex.Pattern p_style;
		java.util.regex.Matcher m_style;
		java.util.regex.Pattern p_html;
		java.util.regex.Matcher m_html;

		try {
			String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; // 定义script的正则表达式{或<script>]*?>[\s\S]*?<\/script>
			// }
			String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; // 定义style的正则表达式{或<style>]*?>[\s\S]*?<\/style>
			// }
			String regEx_html = "<[^>]+>"; // 定义HTML标签的正则表达式

			p_script = java.util.regex.Pattern.compile(regEx_script,
					java.util.regex.Pattern.CASE_INSENSITIVE);
			m_script = p_script.matcher(htmlStr);
			htmlStr = m_script.replaceAll(""); // 过滤script标签

			p_style = java.util.regex.Pattern.compile(regEx_style,
					java.util.regex.Pattern.CASE_INSENSITIVE);
			m_style = p_style.matcher(htmlStr);
			htmlStr = m_style.replaceAll(""); // 过滤style标签

			p_html = java.util.regex.Pattern.compile(regEx_html,
					java.util.regex.Pattern.CASE_INSENSITIVE);
			m_html = p_html.matcher(htmlStr);
			htmlStr = m_html.replaceAll(""); // 过滤html标签

			textStr = htmlStr;

		} catch (Exception e) {
			System.err.println("Html2Text: " + e.getMessage());
		}

		return textStr;// 返回文本字符串
	}

	/**
	 * 获取汉字的拼音 字母Z使用了两个标签，这里有２７个值; i, u, v都不做声母, 跟随前面的字母
	 */
	private static char[] chartable = { '啊', '芭', '擦', '搭', '蛾', '发', '噶', '哈',
			'哈', '击', '喀', '垃', '妈', '拿', '哦', '啪', '期', '然', '撒', '塌', '塌',
			'塌', '挖', '昔', '压', '匝', '座' };

	private static char[] alphatable = { 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			'H', 'I',

			'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
			'W', 'X', 'Y', 'Z' };

	private static int[] table = new int[27];

	// 初始化
	{
		for (int i = 0; i < 27; ++i) {
			table[i] = gbValue(chartable[i]);
		}
	}

	/**
	 * 输入字符,得到他的声母,
	 * 
	 * @param ch
	 * @return
	 */
	// 英文字母返回对应的大写字母
	// 其他非简体汉字返回 '0'

	public static char CharToAlpha(char ch) {

		if (ch >= 'a' && ch <= 'z')
			return (char) (ch - 'a' + 'A');
		if (ch >= 'A' && ch <= 'Z')
			return ch;

		int gb = gbValue(ch);
		if (gb < table[0])
			return '0';

		int i;
		for (i = 0; i < 26; ++i) {
			if (match(i, gb))
				break;
		}
		if (i >= 26)
			return '0';
		else
			return alphatable[i];
	}

	/**
	 * 根据一个包含汉字的字符串返回一个汉字拼音首字母的字符串
	 * 
	 * @param SourceStr
	 * @return
	 */
	public static String StringToAlpha(String SourceStr) {
		String Result = "";
		int StrLength = SourceStr.length();
		int i;
		try {
			for (i = 0; i < StrLength; i++) {
				Result += CharToAlpha(SourceStr.charAt(i));
			}
		} catch (Exception e) {
			Result = "";
		}
		return Result;
	}

	private static boolean match(int i, int gb) {
		if (gb < table[i])
			return false;

		int j = i + 1;

		// 字母Z使用了两个标签
		while (j < 26 && (table[j] == table[i]))
			++j;

		if (j == 26)
			return gb <= table[j];
		else
			return gb < table[j];

	}

	/**
	 * 取出汉字的编码
	 * 
	 * @param ch
	 * @return
	 */
	private static int gbValue(char ch) {
		String str = new String();
		str += ch;
		try {
			byte[] bytes = str.getBytes("gb2312");
			if (bytes.length < 2)
				return 0;
			return (bytes[0] << 8 & 0xff00) + (bytes[1] & 0xff);
		} catch (Exception e) {
			return 0;
		}

	}

	public static List<String> delSpecialChar(String input) {
		List<String> result = new ArrayList<String>();
		String[] noneWord = new String[] { "你", "我", "他", "她", "它", "的", "是",
				"啊", "吧", "呢" };
		for (String string : noneWord) {
			if (input.contains(string)) {
				input = input.replaceAll(string, "*");
			}
		}
		Pattern chinesePattern = Pattern
				.compile("[^\u4e00-\u9fa5^0-9^a-z^A-Z]");
		Matcher m = chinesePattern.matcher(input);
		int preStart = 0;
		int start = 0;
		int end = 0;
		while (m.find()) {
			start = m.start();
			end = m.end();
			result.add(input.substring(preStart, start));
			preStart = end;
		}
		result.add(input.substring(end));
		return result;
	}

	/**
	 * MD5加密方法
	 * @param source
	 * @return
	 */
	public static String md5(String source) {
		StringBuffer sb = new StringBuffer(32);
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] array = md.digest(source.getBytes("utf-8"));
			for (int i = 0; i < array.length; i++) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).toUpperCase().substring(1, 3));
			}
		} catch (Exception e) {
			return null;
		}
		return sb.toString();
	}

}
