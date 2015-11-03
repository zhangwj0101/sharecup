
/***
 * 添加表单验证事件
 * @memberOf {TypeName} 
 */
function checkVal() {
	var gender = $("input:[name=regionType]:radio:checked").val();
	$("#username").bind("blur", function () {
		var checkusername = $("#username").val();
		if ($("#username").val() == "") {
			layer.alert("\u8bf7\u8f93\u5165\u60a8\u7684\u7528\u6237\u540d\uff01", 8, !1);
		} else {
			var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
			if (!info.test(checkusername)) {
				layer.alert("\u7528\u6237\u540d\u4e0d\u7b26\u5408\u89c4\u8303\uff01", 8, !1);
			} else {
				ajaxCheck("username", checkusername, "regionAjax");
			}
		}
	});
	$("#psw").bind("blur", function () {
		var values = $("#psw").val();
		if (values == "") {
			layer.alert("\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
		} else {
			var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
			if (!info.test(values)) {
				layer.alert("\u5bc6\u7801\u4e0d\u7b26\u5408\u89c4\u8303\uff01", 8, !1);
			} else {
			}
		}
	});
	$("#psw2").bind("blur", function () {
		var value1 = $("#psw").val();
		var value2 = $("#psw2").val();
		if (value2 == "") {
			layer.alert("\u786e\u8ba4\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
		} else {
			if (value1 == value2) {
			} else {
				layer.alert("\u4e24\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u76f8\u540c\uff01", 8, !1);
			}
		}
	});
	$("#answer").bind("blur", function () {
		var values = $("#answer").val();
		if (values.length == 0) {
			layer.alert("\u7b54\u6848\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
		} else {
			if (values.length > 10) {
				layer.alert("\u7b54\u6848\u592a\u957f\u4e86\uff01", 8, !1);
			} else {
				if (values.length < 3) {
					layer.alert("\u7b54\u6848\u592a\u77ed\u4e86\uff01", 8, !1);
				} else {
				}
			}
		}
	});
	$("#email").bind("blur", function () {
		var values = $("#email").val();
		if (values.length == 0) {
			layer.alert("\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
		} else {
			var info = /^(([a-zA-Z0-9_\.\-\+%])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})\s*)*([a-zA-Z0-9_\.\-\+%])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!info.test(values)) {
				layer.alert("\u90ae\u7bb1\u683c\u5f0f\u4e0d\u6b63\u786e\uff01", 8, !1);
			} else {
			}
		}
	});
	var names = ["name", "name1", "name2"];
	$.each(names, function (n, value) {
		$("#" + value).bind("blur", function () {
			var values = $("#" + value).val();
			if (values.length == 0) {
				layer.alert("\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
			} else {
				if (values.length > 50) {
					layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
				} else {
				}
			}
		});
	});
	var yuanxis = ["yuanxi", "yuanxi1", "yuanxi2"];
	$.each(yuanxis, function (n, value) {
		$("#" + value).bind("blur", function () {
			var values = $("#" + value).val();
			if (values.length == 0) {
				layer.alert("\u9662\u7cfb\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
			} else {
				if (values.length > 50) {
					layer.alert( "\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
				} else {
				}
			}
		});
	});
	var majors = ["major", "major1", "major2"];
	$.each(majors, function (n, value) {
		$("#" + value).bind("blur", function () {
			var values = $("#" + value).val();
			if (values.length == 0) {
				layer.alert("\u4e13\u4e1a\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
			} else {
				if (values.length > 50) {
					layer.alert( "\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
				} else {
				}
			}
		});
	});
	var codes = ["code", "code1", "code2"];
	$.each(codes, function (n, value) {
		$("#" + value).bind("blur", function () {
			var values = $("#" + value).val();
			if (values.length == 0) {
				layer.alert("\u5b66\u751f\u8bc1\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
			} else {
				if (values.length > 50) {
					layer.alert( "\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
				} else {
				}
			}
		});
	});
	var phones = ["phone", "phone1"];
	$.each(phones, function (n, value) {
		$("#" + value).bind("blur", function () {
			var values = $("#" + value).val();
			if (values.length == 0) {
				layer.alert("\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
			} else {
				var info1 = /^1\d{10}$/;
				if (!info1.test(values)) {
					layer.alert("\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e\uff01", 8, !1);
				} else {
				}
			}
		});
	});
	$("#tname").bind("blur", function () {
		var values = $("#tname").val();
		if (values.length > 100) {
			layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
		} else {
		}
	});
	$("#tmajor").bind("blur", function () {
		var values = $("#tmajor").val();
		if (values.length > 100) {
			layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
		} else {
		}
	});
	$("#title").bind("blur", function () {
		var values = $("#title").val();
		if (values.length > 100) {
			layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
		} else {
		}
	});
	$("#tphone").bind("blur", function () {
		var values = $("#tphone").val();
		var info1 = /^1\d{10}$/;
		if (values.length > 0) {
			if (!info1.test(values)) {
				layer.alert("教师手机号码格式不正确", 8, !1);
			} else {
			}
		}
	});
	$("#addr").bind("blur", function () {
		var values = $("#addr").val();
		if (values.length == 0) {
			layer.alert("\u8054\u7cfb\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
		} else {
			if (values.length > 200) {
				layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
			} else {
			}
		}
	});
}
/***
 * ajax 验证
 * @param {Object} parameter
 * @param {Object} value
 * @param {Object} url
 */
function ajaxCheck(parameter, value, url) {
	$.ajax({type:"post", url:url, data:parameter + "=" + value, ifModified:true, dataType:"json", success:function (data) {
		var message = eval("(" + data + ")");
		if (message[0].tip == "") {
		} else {
			layer.alert(message[0].tip, 8, !1);
		}
	}});
}

/**
 * 提交验证
 */
function checkedVal() {
	var flag1 = true;
	//用户名
	var checkusername = $("#username").val();
	if ($("#username").val() == "") {
		layer.alert("\u8bf7\u8f93\u5165\u60a8\u7684\u7528\u6237\u540d\uff01", 8, !1);
		return false;
	} else {
		var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
		if (!info.test(checkusername)) {
			layer.alert("\u7528\u6237\u540d\u4e0d\u7b26\u5408\u89c4\u8303\uff01", 8, !1);
			return false;			
		} else {
			url = "regionAjax";
			parameter = "username";
			value = checkusername;
			$.ajax({type:"post", url:url, data:parameter + "=" + value, ifModified:true, dataType:"json", success:function (data) {
				var message = eval("(" + data + ")");
				if (message[0].tip == "") {
					flag1 = true;
					var flag2 = true;
					var psw_value = $("#psw").val();
					if (psw_value == "") {
						layer.alert("\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
						return false;								
					} else {
						var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
						if (!info.test(psw_value)) {
							layer.alert("\u5bc6\u7801\u4e0d\u7b26\u5408\u89c4\u8303\uff01", 8, !1);
							return false;	
						} else {
							flag2 = true;
						}
					}
			//确认密码
					var flag3 = true;
					var psw2_value = $("#psw2").val();
					if (psw2_value == "") {
						layer.alert("\u786e\u8ba4\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
						return false;						
					} else {
						if (psw_value == psw2_value) {
							flag3 = true;
						} else {
							layer.alert("两次输入的密码不一致", 8, !1);
							return false;								
						}
					}
			//答案
					var flag4 = true;
					var answer_value = $("#answer").val();
					if (answer_value.length == 0) {
						layer.alert("\u7b54\u6848\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
						return false;							
					} else {
						if (answer_value.length > 10) {
							layer.alert("\u7b54\u6848\u592a\u957f\u4e86\uff01", 8, !1);
							return false;								
						} else {
							if (answer_value.length < 3) {
								layer.alert("\u7b54\u6848\u592a\u77ed\u4e86\uff01", 8, !1);
								return false;								
							} else {
								flag4 = true;
							}
						}
					}
			//email
					var flag5 = true;
					var email_value = $("#email").val();
					if (email_value.length == 0) {
						layer.alert("\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
						return false;						
					} else {
						var info = /^(([a-zA-Z0-9_\.\-\+%])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})\s*)*([a-zA-Z0-9_\.\-\+%])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
						if (!info.test(email_value)) {
							layer.alert("\u90ae\u7bb1\u683c\u5f0f\u4e0d\u6b63\u786e\uff01", 8, !1);
							return false;								
						} else {
							flag5 = true;
							url = "regionAjaxEmail";
							parameter = "email";
							value = email_value;
							$.ajax({type:"post", url:url, data:parameter + "=" + value, ifModified:true, dataType:"json", success:function (data) {
								var message = eval("(" + data + ")");
								if (message[0].tip == "") {
									flag1 = true;
			// 姓名
									var flag6 = true;
									var name_value = $("#name").val();
									if (name_value.length == 0) {
										layer.alert("\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
										return false;										
									} else {
										if (name_value.length > 50) {
											layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
											return false;												
										} else {
											flag6 = true;
										}
									}
			//院系
									var flag7 = true;
									var yuanxi_value = $("#yuanxi").val();
									if (yuanxi_value.length == 0) {
										layer.alert("\u9662\u7cfb\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
										return false;											
									} else {
										if (yuanxi_value.length > 50) {
											layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
											return false;												
										} else {
											flag7 = true;
										}
									}
			//专业
									var flag8 = true;
									var major_value = $("#major").val();
									if (major_value.length == 0) {
										layer.alert("\u4e13\u4e1a\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
										return false;										
									} else {
										if (major_value.length > 50) {
											layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
											return false;												
										} else {
											flag8 = true;
										}
									}
			//学生证号
									var flag9 = true;
									var code_value = $("#code").val();
									if (code_value.length == 0) {
										layer.alert("\u5b66\u751f\u8bc1\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
										return false;										
									} else {
										if (code_value.length > 50) {
											layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
											return false;												
										} else {
											flag9 = true;
										}
									}
			//手机号
									var flag10 = true;
									var phone_value = $("#phone").val();
									if (phone_value.length == 0) {
										layer.alert("\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
										return false;											
									} else {
										var info1 = /^1\d{10}$/;
										if (!info1.test(phone_value)) {
											layer.alert("\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e\uff01", 8, !1);
											return false;											
										} else {
											flag10 = true;
										}
									}
			//联系地址
									var flag11 = true;
									var addr_value = $("#addr").val();
									if (addr_value.length == 0) {
										layer.alert("\u8054\u7cfb\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
										return false;										
									} else {
										if (addr_value.length > 200) {
											layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
											return false;												
										} else {
											flag11 = true;
										}
									}
		//教师姓名
									var flag12 = true;
									var tname_value = $("#tname").val();
									if (tname_value.length > 100) {
										layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
										return false;
									} else {
										flag12 = true;
									}
		//教师专业
									var flag13 = true;
									var tmajor_value = $("#tmajor").val();
									if (tmajor_value.length > 100) {
										layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
										return false;
									} else {
										flag13 = true;
									}
		//职称
									var flag14 = true;
									var title_value = $("#title").val();
									if (title_value.length > 100) {
										layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
										return false;
									} else {
										flag14 = true;
									}
		//教师电话
									var flag15 = true;
									var tphone_value = $("#tphone").val();
									var info1 =  /^1\d{10}$/;
									if (tphone_value.length > 0) {
										if (!info1.test(tphone_value)) {
											layer.alert("教师手机号码格式不正确", 8, !1);
											return false;
										} else {
											flag15 = true;
										}
									}
									var regionType = $(":radio[name=regionType]:checked").val();
		//团队
									var flag16 = true;
									var flag17 = true;
									var flag18 = true;
									var flag19 = true;
									var flag20 = true;
									if (regionType == 1) {
										var names = ["name1"];
										var yuanxis = ["yuanxi1"];
										var majors = ["major1"];
										var codes = ["code1"];
										var has = $("#flag").val();
										if (has == "") {
										} else {
											names = ["name1", "name2"];
											yuanxis = ["yuanxi1", "yuanxi2"];
											majors = ["major1", "major2"];
											codes = ["code1", "code2"];
										}
										var flags1 = [true, true];
										$.each(names, function (n, value) {
											var values = $("#" + value).val();
											if (values.length == 0) {
												layer.alert("\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
												return false;
											} else {
												if (values.length > 50) {
													layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
													return false;
												} else {
													flags1[n] = true;
												}
											}
										});
										if (flags1[0] && flags1[1]) {
											flag16 = true;
										} else {
											flag16 = false;
										}
										var flags2 = [true, true];
										$.each(yuanxis, function (n, value) {
											var values = $("#" + value).val();
											if (values.length == 0) {
												layer.alert("\u9662\u7cfb\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
												return false;
											} else {
												if (values.length > 50) {
													layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
													return false;
												} else {
													flags2[n] = true;
												}
											}
										});
										if (flags2[0] && flags2[1]) {
											flag17 = true;
										} else {
											flag17 = false;
										}
										var flags3 = [true, true];
										$.each(majors, function (n, value) {
											var values = $("#" + value).val();
											if (values.length == 0) {
												layer.alert("\u4e13\u4e1a\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
												return false;
											} else {
												if (values.length > 50) {
													layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
													return false;
												} else {
													flags3[n] = true;
												}
											}
										});
										if (flags3[0] && flags3[1]) {
											flag18 = true;
										} else {
											flag18 = false;
										}
										var flags4 = [true, true];
										$.each(codes, function (n, value) {
											var values = $("#" + value).val();
											if (values.length == 0) {
												layer.alert("\u5b66\u751f\u8bc1\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01", 8, !1);
												return false;
											} else {
												if (values.length > 50) {
													layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
													return false;
												} else {
													flags4[n] = true;
												}
											}
										});
										if (flags4[0] && flags4[1]) {
											flag19 = true;
										} else {
											flag19 = false;
										}
									}
									if (flag1 && flag2 && flag3 && flag4 && flag5 && flag6 && flag7 && flag8 && flag9 && flag10 && flag11 && flag12 && flag13 && flag14 && flag15 && flag16 && flag17 && flag18 && flag19) {
										document.myform.submit();
									} else {
										layer.alert("\u5b57\u7b26\u592a\u957f\u4e86\uff01", 8, !1);
										return false;
									}
								} else {
									layer.alert(message[0].tip, 8, !1);
								}
							}});
						}
					}
				} else {
					layer.alert(message[0].tip, 8, !1);
				}
			}});
		}
	}
}

