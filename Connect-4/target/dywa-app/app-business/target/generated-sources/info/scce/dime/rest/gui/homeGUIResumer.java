// generated by info.scce.dime.generator.rest.GUIProgressGenerator#generateGUIResumer
package info.scce.dime.rest.gui;

@javax.transaction.Transactional(dontRollbackOn = info.scce.dime.exception.GUIEncounteredSignal.class)
@javax.ws.rs.Path("/continue/_dddDUGaXEe2ffZDgDpg3pA")
public class homeGUIResumer extends info.scce.dime.process.GUIResumer {
	
	@javax.inject.Inject
	private info.scce.dime.gui.ProcessResumer processResumer;
	
	// controller for fetching dywa file entities
	@javax.inject.Inject
	private de.ls5.dywa.generated.util.DomainFileController domainFileController;
	

	@javax.ws.rs.POST
	@javax.ws.rs.Path("start_game_basic/branch/public")
	@javax.ws.rs.Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
	@javax.ws.rs.Consumes(javax.ws.rs.core.MediaType.APPLICATION_JSON)
	public javax.ws.rs.core.Response continuestart_game_basicBranch(info.scce.dime.rest.gui.model._wx7LYWacEe24gf5J_KrBHgBranch output) {
		
		checkAuthentication(output.getCallStack(),"_dddDUGaXEe2ffZDgDpg3pA/start_game_basic");
		
		
		final info.scce.dime.gui.models.gui.home.Home_dddDUGaXEe2ffZDgDpg3pAResult guiResult = 
		new info.scce.dime.gui.models.gui.home.Home_dddDUGaXEe2ffZDgDpg3pAResult("start_game_basic");
		if(!"_dddDUGaXEe2ffZDgDpg3pA".equals(output.getCallStack().getCallFrames().get(output.getCallStack().getCallFrames().size()-1).getPointer().split(":")[2])){
					output.getCallStack().getCallFrames().get(output.getCallStack().getCallFrames().size()-1).setPointer(output.getCallStack().getCallFrames().get(output.getCallStack().getCallFrames().size()-1).getMajorGUI());
		}
		if(!output.getCallStack().getCallFrames().isEmpty()) {
		
			if(output.getCallStack().getCallFrames().get(output.getCallStack().getCallFrames().size() - 1).getPointer() == null) {
				return javax.ws.rs.core.Response.status(422).build();
			}
		}
		final Object result = this.processResumer.resumeFromGUI(output.getCallStack(), guiResult);
		return javax.ws.rs.core.Response.ok(result).build();
	}
	
}