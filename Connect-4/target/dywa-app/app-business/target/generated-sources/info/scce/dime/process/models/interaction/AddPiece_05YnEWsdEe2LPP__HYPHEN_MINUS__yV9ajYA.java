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

public final class AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYA implements DIMEProcess {


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

		// direct dataflow variables.
		private java.lang.Long startIndex_1UX58WsdEe2LPP__HYPHEN_MINUS__yV9ajYA;
		private java.lang.Long startTurn_TmgJ4WwJEe2izKycOTLADg;
		private de.ls5.dywa.generated.entity.models.app.Board startBoard_T11Y4WtlEe2yLYR6JjFIQg;
		private de.ls5.dywa.generated.entity.models.app.Board PlaceCoinSuccessBoard_Wgt1EWwFEe2iyKycOTLADg;

		public info.scce.dime.process.JSONContext toJSON() {
			// this process has no context variables that need to be preserved
			return null;
        }
	}

	private enum SIB_ID {
	_05dfkWsdEe2LPP__HYPHEN_MINUS__yV9ajYA,
	_OxptUGtlEe2yLYR6JjFIQg,
		;
	}

	private final BeanManager beanManager;

	@Inject
	public AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYA(final BeanManager beanManager) {
		this.beanManager = beanManager;
	}

	private Context createContext(de.ls5.dywa.generated.entity.models.app.Board board, java.lang.Long index, java.lang.Long turn) {
		final Context ctx = new Context();
		ctx.beanManager = this.beanManager;

		// store inputs
		ctx.startTurn_TmgJ4WwJEe2izKycOTLADg = turn;
		ctx.startBoard_T11Y4WtlEe2yLYR6JjFIQg = board;
		ctx.startIndex_1UX58WsdEe2LPP__HYPHEN_MINUS__yV9ajYA = index;
		
		return ctx;
	}

	public AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult execute(boolean isAuthenticationRequired,de.ls5.dywa.generated.entity.models.app.Board board, java.lang.Long index, java.lang.Long turn) {
		final Context ctx = createContext(board, index, turn);
		ctx.callStack.setAuthenticationRequired(isAuthenticationRequired);

		return executeInternal(ctx, SIB_ID._OxptUGtlEe2yLYR6JjFIQg);
	}
	
	

	@Override
	public AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult continueExecution(ProcessCallFrame callStack, info.scce.dime.process.JSONContext context, String sibId, Object slgResult) {
		assert context == null;
		final Context ctx = new Context();
		ctx.beanManager = this.beanManager;
		ctx.callStack = callStack;

		switch (sibId) {
			default: throw new IllegalStateException("Unknown continuation point '" + sibId + '\'');
		}
	}

	private AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult executeInternal(final Context ctx, final SIB_ID id) {
		SIB_ID curr = id;
		while (true) {
			switch (curr) {
				case _05dfkWsdEe2LPP__HYPHEN_MINUS__yV9ajYA: {
					return execute_05dfkWsdEe2LPP__HYPHEN_MINUS__yV9ajYA(ctx);
				}
				case _OxptUGtlEe2yLYR6JjFIQg: {
					curr = execute_OxptUGtlEe2yLYR6JjFIQg(ctx);
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
	public static class AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult implements info.scce.dime.process.DIMEProcessResult<Void> {
		private String branchName;
		private String branchId;
		private SuccessReturn success;
		
		public AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult(SuccessReturn success) {
			this.branchName = "success";
			this.branchId = "_05dfkWsdEe2LPP__HYPHEN_MINUS__yV9ajYA";
			this.success = success;
		}
		
		public String getBranchName() {
			return branchName;
		}
		
		public String getBranchId() {
			return branchId;
		}
		
		public SuccessReturn getSuccessReturn() {
			return success;
		}

	}
	
	// model branches.
		/**
		 * Interface definition for return type of branch <code>success</code>.
		 */
		public interface SuccessReturn {
			public de.ls5.dywa.generated.entity.models.app.Board getBoard();
		}
	
		/**
		 * Return type of branch <code>success</code> accessing the 
		 * corresponding values in the process context, instead of storing
		 * the values locally.
		 */
		static class SuccessReturnImpl implements SuccessReturn {

			private final Context ctx;

	        SuccessReturnImpl(Context ctx) {
	            this.ctx = ctx;
	        }

			public de.ls5.dywa.generated.entity.models.app.Board getBoard() {
				return ctx.PlaceCoinSuccessBoard_Wgt1EWwFEe2iyKycOTLADg;
			}
		}
		


	// sibs
	// container for graph i/o 'success'.
	public AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult execute_05dfkWsdEe2LPP__HYPHEN_MINUS__yV9ajYA(final Context ctx) {
		return new AddPiece_05YnEWsdEe2LPP__HYPHEN_MINUS__yV9ajYAResult(new SuccessReturnImpl(ctx));
	}
	// container for atomic SIB 'PlaceCoin'.
	public SIB_ID execute_OxptUGtlEe2yLYR6JjFIQg(final Context ctx) {
		try {
			final de.ls5.dywa.generated.entity.models.app.Board result = info.scce.dime.app.demo.Game.placeCoin(ctx.startBoard_T11Y4WtlEe2yLYR6JjFIQg, ctx.startTurn_TmgJ4WwJEe2izKycOTLADg, ctx.startIndex_1UX58WsdEe2LPP__HYPHEN_MINUS__yV9ajYA);
			ctx.PlaceCoinSuccessBoard_Wgt1EWwFEe2iyKycOTLADg = result;
		}
		catch (Exception e) {
			e.printStackTrace();
			// branch 'failure'
			throw new IllegalStateException("SIB 'PlaceCoin' has no successor defined for branch 'failure'");
		}
		// branch 'success'
		return SIB_ID._05dfkWsdEe2LPP__HYPHEN_MINUS__yV9ajYA;
	}
	
}  
