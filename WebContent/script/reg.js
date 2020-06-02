function registerCheck() {
	if (document.frm.email.value.length == 0) {
		alert("email 써주세요.");
		frm.email.focus();
		return false;
	}
	if (document.frm.pass1.value.length == 0) {
		alert("암호는 반드시 입력해야 합니다.");
		frm.pass1.focus();
		return false;
	}
	if (document.frm.pass1.value != document.frm.pass2.value) {
		alert("암호가 일치하지 않습니다.");
		frm.pass2.focus();
		return false;
	}

	if (document.frm.name.value.length == 0) {
		alert("name 써주세요");
		frm.name.focus();
		return false;
	}
	if (document.frm.tel.value.length == 0) {
		alert("tel 써주세요");
		frm.tel.focus();
		return false;
	}
	return true;
}

function logCheck() {
	if (document.frm.email.value.length == 0) {
		alert("아이디를 써주세요");
		frm.email.focus();
		return false;
	}
	if (document.frm.pass1.value == "") {
		alert("암호는 반드시 입력해야 합니다.");
		frm.pass1.focus();
		return false;
	}
	return true;
}

function reviewCheck() {
	if (document.frm.email.value.length == 0) {
		alert("writer 입력하세요.");
		return false;
	}
	if (document.frm.title.value.length == 0) {
		alert("contents 입력하세요.");
		return false;
	}
	if (document.frm.content.value.length == 0) {
		alert("contents 입력하세요.");
		return false;
	}

	return true;
}


function ok () {
	if (document.frm.email.value.length == 0) {
		alert("writer 입력하세요.");
		return false;
	}
	if (document.frm.title.value.length == 0) {
		alert("contents 입력하세요.");
		return false;
	}
	if (document.frm.content.value.length == 0) {
		alert("contents 입력하세요.");
		return false;
	}

	return true;
}

function emailCheck() {
	if (document.frm.email.value == "") {
		alert('이메일 입력하여 주십시오.');
		document.formm.email.focus();
		return;
	}
	var url = "emailcheck?email=" + document.frm.email.value;
	window
			.open(url, "confirm",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function emailok(email) {
	opener.frm.email.value = document.frm.email.value;
	opener.frm.check.value = document.frm.email.value;
	self.close();
}

function joinCheck() {
	if (document.frm.email.value.length == 0) {
		alert("email 써주세요.");
		frm.email.focus();
		return false;
	}
	if (document.frm.pass1.value.length == 0) {
		alert("암호는 반드시 입력해야 합니다.");
		frm.pass1.focus();
		return false;
	}
	if (document.frm.pass1.value != document.frm.pass2.value) {
		alert("암호가 일치하지 않습니다.");
		frm.pass2.focus();
		return false;
	}

	if (document.frm.name.value.length == 0) {
		alert("name 써주세요");
		frm.name.focus();
		return false;
	}
	if (document.frm.tel.value.length == 0) {
		alert("tel 써주세요");
		frm.tel.focus();
		return false;
	}
	return true;
}
