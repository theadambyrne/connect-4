package info.scce.dime.process.models.interaction;

import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;
import java.util.stream.Collectors;
import java.util.Date;
import java.util.UUID;
import java.util.Optional;

import javax.enterprise.inject.spi.BeanManager;
import javax.inject.Inject;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import info.scce.dime.exception.GUIEncounteredSignal;
import info.scce.dime.exception.GUIEncounteredSignal.GUIInfo;
import info.scce.dime.process.CallFrame;
import info.scce.dime.process.DIMEProcess;
import info.scce.dime.process.DIMEProcessContext;
import info.scce.dime.process.JSONContext;
import info.scce.dime.process.ProcessCallFrame;
import info.scce.dime.util.CDIUtil;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

public final class Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpg implements DIMEProcess {


	// attributes shaping the context variables.
	public static class Context implements DIMEProcessContext {

		// bean manager
		private BeanManager beanManager;
		
		// current eventID
		private String eventId;
		
		// last MajorSIBId
		private String lastMajorSIBId;
		
		// current MajorGUI
		private GUIInfo majorGUIState = null;

		// stack variables
		private ProcessCallFrame callStack = new ProcessCallFrame();


		public info.scce.dime.process.JSONContext toJSON() {
			// this process has no context variables that need to be preserved
			return null;
        }
	}

	private enum SIB_ID {
	_b46FcWhaEe2Ts87gHbvjRg,
	_7521sWzJEe2dgMV8DHaeLg,
		;
	}

	private final BeanManager beanManager;

	@Inject
	public Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpg(final BeanManager beanManager) {
		this.beanManager = beanManager;
	}

	private Context createContext() {
		final Context ctx = new Context();
		ctx.beanManager = this.beanManager;

		// store inputs
		
		return ctx;
	}

	public Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpgResult execute(boolean isAuthenticationRequired) {
		final Context ctx = createContext();
		ctx.callStack.setAuthenticationRequired(isAuthenticationRequired);

		return executeInternal(ctx, SIB_ID._b46FcWhaEe2Ts87gHbvjRg);
	}
	
	
	public Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpgResult execute(ProcessCallFrame callStack) {
		final Context ctx = createContext();
		ctx.callStack = callStack;

		return executeInternal(ctx, SIB_ID._b46FcWhaEe2Ts87gHbvjRg);
	}

	@Override
	public Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpgResult continueExecution(ProcessCallFrame callStack, info.scce.dime.process.JSONContext context, String sibId, Object slgResult) {
		assert context == null;
		final Context ctx = new Context();
		ctx.beanManager = this.beanManager;
		ctx.callStack = callStack;

		switch (sibId) {
		case "_b46FcWhaEe2Ts87gHbvjRg": return executeInternal(ctx, continue_b46FcWhaEe2Ts87gHbvjRg(ctx, slgResult));
		case "_7521sWzJEe2dgMV8DHaeLg": return executeInternal(ctx, continue_7521sWzJEe2dgMV8DHaeLg(ctx, slgResult));
			default: throw new IllegalStateException("Unknown continuation point '" + sibId + '\'');
		}
	}

	private Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpgResult executeInternal(final Context ctx, final SIB_ID id) {
		SIB_ID curr = id;
		while (true) {
			switch (curr) {
				case _b46FcWhaEe2Ts87gHbvjRg: {
					curr = execute_b46FcWhaEe2Ts87gHbvjRg(ctx);
					break;
				}
				case _7521sWzJEe2dgMV8DHaeLg: {
					curr = execute_7521sWzJEe2dgMV8DHaeLg(ctx);
					break;
				}
				default: {
					throw new IllegalStateException("unhandled SIB container " + curr);
				}
			}
		}
	}
	
	/**
	 * The return type for this process. It stores the corresponding branch name 
	 * as well as the corresponding result for the branch.
	 */
	public static class Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpgResult implements info.scce.dime.process.DIMEProcessResult<Void> {
		private String branchName;
		private String branchId;
		
		public String getBranchName() {
			return branchName;
		}
		
		public String getBranchId() {
			return branchId;
		}
		

	}
	
	// model branches.


	// sibs
	// Input class -- generated by info.scce.dime.generator.process.BackendProcessGeneratorHelper#renderInputClass(SIB)
	//   for SIB home _b46FcWhaEe2Ts87gHbvjRg
	private static class InputsForGUISIB_b46FcWhaEe2Ts87gHbvjRg {
	}
	
	
	// container for GUI SIB 'home'.
	public SIB_ID execute_b46FcWhaEe2Ts87gHbvjRg(final Context ctx) {
	
		
		final InputsForGUISIB_b46FcWhaEe2Ts87gHbvjRg inputs = new InputsForGUISIB_b46FcWhaEe2Ts87gHbvjRg();
		
		
		final CallFrame currentFrame = new CallFrame("info.scce.dime.process.models.interaction.Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpg:_b46FcWhaEe2Ts87gHbvjRg:_dddDUGaXEe2ffZDgDpg3pA", ctx, ctx.lastMajorSIBId);
		
		ctx.callStack.getCallFrames().add(currentFrame);
	
		GUIEncounteredSignal signal = new GUIEncounteredSignal(ctx.callStack, "_b46FcWhaEe2Ts87gHbvjRg", inputs);
		
		throw signal;
	}
	
	public SIB_ID continue_b46FcWhaEe2Ts87gHbvjRg(Context ctx, Object guiResult) {
		if(ctx.callStack.isAuthenticationRequired()) {
			final Subject shiroSubj = SecurityUtils.getSubject();
			if (!shiroSubj.isAuthenticated()) {
				GUIEncounteredSignal sig = new GUIEncounteredSignal(ctx.callStack, "_b46FcWhaEe2Ts87gHbvjRg");
				sig.setStatus(401);
				throw sig;
			}
		}
		
		ctx.callStack.getCallFrames().remove(ctx.callStack.getCallFrames().size()-1);
		
		final info.scce.dime.gui.models.gui.home.Home_dddDUGaXEe2ffZDgDpg3pAResult result = (info.scce.dime.gui.models.gui.home.Home_dddDUGaXEe2ffZDgDpg3pAResult) guiResult;
		if ("start_game_basic".equals(result.getBranchName())) {
			// branch 'start_game_basic'
			return SIB_ID._7521sWzJEe2dgMV8DHaeLg;
		}
		else {
			// unspecified branch, show same GUI again
			return execute_b46FcWhaEe2Ts87gHbvjRg(ctx);
		}
	}
	// container for graph abstraction 'Game' and sub process 'Game'.
	public SIB_ID execute_7521sWzJEe2dgMV8DHaeLg(final Context ctx) {
		final info.scce.dime.process.models.interaction.Game_kVZOMWy7Ee2dfcV8DHaeLg instance = new info.scce.dime.process.models.interaction.Game_kVZOMWy7Ee2dfcV8DHaeLg(ctx.beanManager);
	
		final CallFrame currentFrame = new CallFrame("info.scce.dime.process.models.interaction.Home_LWgagF__HYPHEN_MINUS__SEeakMeYoloYxpg:_7521sWzJEe2dgMV8DHaeLg", ctx, ctx.lastMajorSIBId);
		ctx.callStack.getCallFrames().add(currentFrame);
	
		final info.scce.dime.process.models.interaction.Game_kVZOMWy7Ee2dfcV8DHaeLg.Game_kVZOMWy7Ee2dfcV8DHaeLgResult result = instance.execute(ctx.callStack , null, null);
	
		return continue_7521sWzJEe2dgMV8DHaeLg(ctx, result);
	}
	
	public SIB_ID continue_7521sWzJEe2dgMV8DHaeLg(Context ctx, Object slgResult) {
		final info.scce.dime.process.models.interaction.Game_kVZOMWy7Ee2dfcV8DHaeLg.Game_kVZOMWy7Ee2dfcV8DHaeLgResult result = (info.scce.dime.process.models.interaction.Game_kVZOMWy7Ee2dfcV8DHaeLg.Game_kVZOMWy7Ee2dfcV8DHaeLgResult) slgResult;
		// clean up inner execution
		ctx.callStack.getCallFrames().remove(ctx.callStack.getCallFrames().size() - 1);
		
		switch(result.getBranchName()) {
			default: throw new IllegalStateException("SIB 'Game' has no successor defined for branch '" + result.getBranchName() + '\'');
		}
	}
	
}  
