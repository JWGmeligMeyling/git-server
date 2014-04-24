package nl.tudelft.ewi.git.models;

import javax.validation.constraints.Pattern;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * This model represents a simplified view of a group or user in the Gitolite config.
 * 
 * @author michael
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class IdentifiableModel extends BaseModel {

	@Pattern(regexp = "^\\@?[a-zA-Z0-9]+$")
	private String name;

}
