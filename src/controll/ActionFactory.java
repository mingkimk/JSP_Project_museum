package controll;



import controller.action.Action;
import controller.action.EmailCheckAction;
import controller.action.EmailCheckFormAction;
import controller.action.ExhibitionDatailAction;
import controller.action.ExhibitionListAction;
import controller.action.ExhibitionFormAction;
import controller.action.MainAction;
import controller.action.MemberLoginAction;
import controller.action.MemberLoginCheckAction;
import controller.action.MemberLoginFormAction;
import controller.action.MemberLogoutAction;
import controller.action.MemberOkAction;
import controller.action.MemberRegisterAction;

import controller.action.MemberRegisterFormAction;

import controller.action.PaymentAction;
import controller.action.ReceiptAction;
import controller.action.ReviewDeleteAction;
import controller.action.ReviewDetailAction;
import controller.action.ReviewListAction;
import controller.action.ReviewWriteAction;
import controller.action.ReviewWriteFormAction;
import controller.action.ReviewUploadAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("log")) {
			action = new MemberLoginAction();
		}
		if (command.equals("logOut")) {
			action = new MemberLogoutAction();
		}
		if (command.equals("logForm")) {
			action = new MemberLoginFormAction();
		}
		if (command.equals("logcheck")) {
			action = new MemberLoginCheckAction();
		}
		if (command.equals("main")) {
			action = new MainAction();
		}
		if (command.equals("memberok")) {
			action = new MemberOkAction();
		}
		if (command.equals("register")) {
			action = new MemberRegisterAction();
		}
		if (command.equals("registerForm")) {
			action = new MemberRegisterFormAction();
		}
		if (command.equals("reviewWriteForm")) {
			action = new ReviewWriteFormAction();
		}
		if (command.equals("reviewWrite")) {
			action = new ReviewWriteAction();
		}
		if (command.equals("reviewList")) {
			action = new ReviewListAction();
		}
		if (command.equals("reviewDetail")) {
			action = new ReviewDetailAction();
		}
		if (command.equals("reviewDelete")) {
			action = new ReviewDeleteAction();
		}
		if (command.equals("upload")) {
			action = new ReviewUploadAction();
		}
		if (command.equals("emailcheck")) {
			action = new EmailCheckAction();
		}
		if (command.equals("emailCheckForm")) {
			action = new EmailCheckFormAction();
		}
		if (command.equals("ExhibitionForm")) {
			action = new ExhibitionFormAction();
		}
		if (command.equals("Exhibition")) {
			action = new ExhibitionListAction();
		}
		if (command.equals("exDetail")) {
			action = new ExhibitionDatailAction();
		}
		if (command.equals("payment")) {
			action = new PaymentAction();
		}
		if (command.equals("receipt")) {
			action = new ReceiptAction();
		}
		return action;
}
}
